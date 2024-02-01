class CreateGames < ActiveRecord::Migration[7.1]
  def change
    create_table :games do |t|
      t.string :title
      t.string :system
      t.text :description
      t.text :themes, array: true, default: []
      t.string :image
      t.integer :session_min_duration
      t.integer :session_max_duration
      t.string :player_age_range
      t.integer :price
      t.text :safety_details
      t.string :combat
      t.string :exploration
      t.string :roleplay
      t.string :experience
      t.text :platforms, array: true, default: []
      t.text :books_allowed
      t.boolean :homebrew_allowed, default: false
      t.text :player_preparation

      t.timestamps
    end
  end
end