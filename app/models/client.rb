class Client < ActiveRecord::Base

  mount_uploader :business_card, PhotoUploader

  def abby
    require 'tempfile'
    card = Tempfile.new('business_card')
    card.binmode
    stream = open(self.business_card.url)
    card.write(stream.read)
    stream.close
    card.close
    client = Abbyy::Client.new
sleep(1)
    client.process_business_card card.path, exportFormat: 'xml', imageSource: 'photo'
    client.get_task_status
sleep(1)
    self.params = client.get
    self.save
  ensure
    # ensuring every handle is closed, and ignoring exceptions, which could arise if handles already closed
    # or haven't been opened
    stream.close rescue nil
    card.close rescue nil
    card.unlink rescue nil
  end

  def process_params
    if self.params
      html_doc = Nokogiri::HTML(self.params)
      html_doc.css("field").each do |field|
        type = field['type']
        value = field.css('value').to_s.gsub('<value>', '').gsub('</value>','')
        if type.downcase == 'phone'
          self.phone = value
        elsif type.downcase == 'fax'
          self.fax = value
        elsif type.downcase == 'email'
          self.email = value
        elsif type.downcase == 'web'
          self.web = value
        elsif type.downcase == 'name'
          self.name = value
        elsif type.downcase == 'company'
          self.company = value
        elsif type.downcase == 'job'
          self.job = value
        elsif type.downcase == 'text'
          self.text = value
        end
        self.save
        puts type #+ ': ' + value
      end
    end
  end
end
