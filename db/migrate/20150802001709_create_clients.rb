class CreateClients < ActiveRecord::Migration
  def change
    create_table :clients do |t|

      t.string   :company_name,       default: ""
      t.string   :first_name,         default: ""
      t.string   :last_name,          default: ""
      t.string   :phone,              default: ""
      t.string   :email,              default: ""
      t.string   :extention,          default: ""
      t.string   :fax,                default: ""
      t.string   :cell,               default: ""
      t.string   :address,            default: ""
      t.string   :city,               default: ""
      t.string   :state,              default: ""
      t.string   :zipcode,            default: ""
      t.string   :facebook,           default: ""
      t.string   :linkedin,           default: ""
      t.string   :tweeter,            default: ""
      t.string   :website,            default: ""
      t.string   :business_card,      default: ""
      t.timestamps
    end
  end
end
