class Highscores < ActiveRecord::Migration
  def change
  	create_table :highscores do |t|
      t.text :name
      t.integer :score

      t.timestamps null: false
    end
  end
end
