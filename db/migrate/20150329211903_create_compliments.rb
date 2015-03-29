class CreateCompliments < ActiveRecord::Migration
  def change
    create_table :compliments do |t|
      t.string :message, null: false, default: ''
      t.timestamps null: false
    end
  end
end
