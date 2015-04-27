class AddSortOrderAndFeaturedContentToOrganizations < ActiveRecord::Migration
  def change
    add_column :organizations, :sort_order,       :integer, null: false, default: 0
    add_column :organizations, :featured_content, :string,  null: false, default: ''
  end
end
