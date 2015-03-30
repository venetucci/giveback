class CreateOrganizations < ActiveRecord::Migration
  def change
    create_table :organizations do |t|
      t.string :name, null: false, default: ''
      t.text :description, null: false, default: ''
      t.string :reason_to_donate, null: false, default: ''
      t.string :slug, null: false, default: ''
      t.string :info_url, null: false, default: ''
      t.string :donation_url, null: false, default: ''

      t.timestamps null: false
    end
  end
end
