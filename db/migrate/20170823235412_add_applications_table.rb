class AddApplicationsTable < ActiveRecord::Migration[5.0]
  def change
    create_table :applications do |t|
      t.string :title

      t.timestamps
    end
  end
end
