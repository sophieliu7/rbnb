class AddCatToTools < ActiveRecord::Migration[5.2]
  def change
    add_column :tools, :category, :string
    add_column :tools, :sub_category, :string
  end
end
