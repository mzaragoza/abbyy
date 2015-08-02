class Client < ActiveRecord::Base

  mount_uploader :business_card, PhotoUploader

  def send_to_abbyy
    unless self.business_card_url.to_s.empty?
      client = Abbyy::Client.new
      client.process_image self.business_card_url
    else
      'This client does not has a Business Card'
    end
  end
end
