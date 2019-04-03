class CreateJobs < ActiveRecord::Migration[5.2]
  def change
    create_table :jobs do |t|
      t.integer :streetcred_mod
      t.string :cargo
      t.integer :cargo_value
      t.text :job_text
      t.belongs_to :npc, foreign_key: true

      t.timestamps
    end
  end
end
