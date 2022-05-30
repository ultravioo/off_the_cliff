class AddLevelToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :level, :string
  end
end
