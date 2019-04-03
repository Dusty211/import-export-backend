class CreateNpcs < ActiveRecord::Migration[5.2]
  def change
    create_table :npcs do |t|
      t.string :name
      t.integer :min_streetcred
      t.integer :max_streetcred
      t.integer :npc_karma

      t.timestamps
    end
  end
end
