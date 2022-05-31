class CreatePoints < ActiveRecord::Migration[6.1]
  def change
    create_table :points do |t|
      t.references :trail, null: false, foreign_key: true
      t.decimal :latitude
      t.decimal :longitude
      t.integer :elevation

      t.timestamps
    end
  end
end
