class CreateHikes < ActiveRecord::Migration[6.1]
  def change
    create_table :hikes do |t|
      t.references :trail, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true
      t.timestamp :started_at
      t.timestamp :ended_at

      t.timestamps
    end
  end
end
