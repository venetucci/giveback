class CreateDonations < ActiveRecord::Migration
  def change
    create_table :donations do |t|
      t.string :name,             null: false, default: ''
      t.string :email,            null: false, default: ''
      t.string :amount,           null: false, default: ''
      t.text :organization_note,  null: false, default: ''
      t.text :personal_note,      null: false, default: ''
      t.references :organization, null: false

      t.timestamps null: false
    end

    add_foreign_key :donations, :organizations
  end
end
