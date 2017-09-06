class CreateCards < ActiveRecord::Migration[5.1]
  def change
    create_table :cards do |t|
      t.integer :card_id
      t.string :playerclass
      t.string :cardtype
      t.string :name
      t.string :set
      t.string :text
      t.integer :cost
      t.integer :attack
      t.integer :health
      t.string :rarity
      t.boolean :collectible
      t.string :flavor
      t.string :race
      t.string :targeting_arrow_text
      t.string :faction
      t.string :durability
    end
  end
end
