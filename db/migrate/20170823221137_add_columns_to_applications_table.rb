class AddColumnsToApplicationsTable < ActiveRecord::Migration[5.0]
  def change
    add_column :applications, :title, :string
    add_column :applications, :description, :string
    add_column :applications, :employer, :string
    add_column :applications, :location, :string
    add_column :applications, :link, :string
    add_column :applications, :date_applied, :date
  end
end
