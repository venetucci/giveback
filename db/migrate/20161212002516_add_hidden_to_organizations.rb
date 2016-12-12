class AddHiddenToOrganizations < ActiveRecord::Migration
  def change
    add_column :organizations, :hidden, :boolean, null: false, default: false
  end
end
