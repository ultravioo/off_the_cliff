class CreatePins < ActiveRecord::Migration[6.1]
  def change
    create_table :pins do |t|
      t.references :trail, null: false, foreign_key: true
      t.decimal :latitude
      t.decimal :longitude
      t.string :kind
      t.text :description

      t.timestamps
    end
  end
end
