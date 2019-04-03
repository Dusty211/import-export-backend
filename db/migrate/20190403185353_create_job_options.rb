class CreateJobOptions < ActiveRecord::Migration[5.2]
  def change
    create_table :job_options do |t|
      t.string :option_text
      t.integer :morality
      t.integer :criminality
      t.belongs_to :job, foreign_key: true

      t.timestamps
    end
  end
end
