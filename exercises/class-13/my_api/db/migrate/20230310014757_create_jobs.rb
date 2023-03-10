class CreateJobs < ActiveRecord::Migration[7.0]
  def change
    create_table :jobs do |t|
      t.string :name
      t.string :posting
      t.string :job_desc
      t.string :qualifications

      t.timestamps
    end
  end
end
