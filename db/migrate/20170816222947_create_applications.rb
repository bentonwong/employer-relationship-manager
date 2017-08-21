class CreateApplications < ActiveRecord::Migration[5.0]
  def change
    create_table :applications do |t|
      t.string :status
      t.date :date
      t.integer :job_id
      t.text :notes

      t.timestamps
    end
  end
end
