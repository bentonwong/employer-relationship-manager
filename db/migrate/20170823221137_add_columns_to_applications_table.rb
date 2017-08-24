class AddColumnsToApplicationsTable < ActiveRecord::Migration[5.0]
  def change
    add_column :applications, :title, :string
    add_column :applications, :description, :string
    add_column :applications, :employer, :string
    add_column :applications, :location, :string
    add_column :applications, :link, :string
    add_column :applications, :date, :date
    add_column :applications, :resume, :string
    add_column :applications, :cover_letter, :string
  end
end
