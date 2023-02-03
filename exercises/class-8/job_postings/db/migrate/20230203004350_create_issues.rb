class CreateIssues < ActiveRecord::Migration[7.0]
  def change
    create_table :issues do |t|
      t.string :title
      t.string :company
      t.integer :salary
      t.string :location
      t.timestamps
    end
  end
end
