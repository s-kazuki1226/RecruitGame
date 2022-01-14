class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :model
      t.string :game_id
      t.string :discord_id
      t.string :comment

      t.timestamps
    end
  end
end
