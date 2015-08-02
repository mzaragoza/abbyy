class CreateClients < ActiveRecord::Migration
  def change
    create_table :clients do |t|

      t.string   :phone,              default: ""
      t.string   :email,              default: ""
      t.string   :web,                default: ""
      t.string   :address,            default: ""
      t.string   :name,               default: ""
      t.string   :company,            default: ""
      t.string   :job,                default: ""
      t.string   :fax,                default: ""
      t.text     :text
      t.string   :business_card,      default: ""
      t.text     :params
      t.timestamps
    end
  end
end
