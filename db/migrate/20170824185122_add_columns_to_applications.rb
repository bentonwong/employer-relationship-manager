class AddColumnsToApplications < ActiveRecord::Migration[5.0]
  def change
    add_column :applications, :company, :string
    add_column :applications, :location, :string
    add_column :applications, :description, :text
    add_column :applications, :link, :string
    add_column :applications, :date, :date
    add_column :applications, :status, :string
    add_column :applications, :notes, :text
    add_column :applications, :resume, :string
    add_column :applications, :cover_letter, :text
  end
end
