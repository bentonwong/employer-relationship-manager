class CreateJobs < ActiveRecord::Migration[5.0]
  def change
    create_table :jobs do |t|
      t.string :title
      t.string :posting_url
      t.text :description
      t.integer :employer_id
      t.integer :user_id

      t.timestamps
    end
  end
end
