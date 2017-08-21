class CreateEmployers < ActiveRecord::Migration[5.0]
  def change
    create_table :employers do |t|
      t.string :name
      t.string :website
      t.string :location

      t.timestamps
    end
  end
end
