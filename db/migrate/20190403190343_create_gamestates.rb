class CreateGamestates < ActiveRecord::Migration[5.2]
  def change
    create_table :gamestates do |t|
      t.string :company_name
      t.integer :cash
      t.integer :luck
      t.integer :karma
      t.integer :heat
      t.integer :streetcred
      t.integer :xships
      t.integer :ship_lvl
      t.integer :xmercs
      t.string :savename
      t.string :avatar
      t.string :style
      t.belongs_to :user, foreign_key: true

      t.timestamps
    end
  end
end
