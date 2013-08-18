class CreateApplications < ActiveRecord::Migration
  def change
    create_table :applications do |t|
      t.integer :resume_id
      t.integer :employer_id
      t.string :name

      t.timestamps
    end
  end
end
