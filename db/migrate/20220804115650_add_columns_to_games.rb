class AddColumnsToGames < ActiveRecord::Migration[6.1]
  def change
    add_column :games, :title, :string
    add_column :games, :body, :text
    add_column :games, :user_id, :integer
  end
end
