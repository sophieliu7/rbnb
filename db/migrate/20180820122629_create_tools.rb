class CreateTools < ActiveRecord::Migration[5.2]
  def change
    create_table :tools do |t|
      t.string :name
      t.float :price_per_day
      t.text :description
      t.string :place
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
