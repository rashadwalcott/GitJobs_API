class CreateJobs < ActiveRecord::Migration[5.2]
  def change
    create_table :jobs do |t|
      t.string :title
      t.string :location
      t.string :company
      t.string :company_logo
      t.string :description
      t.string :apply

      t.timestamps
    end
  end
end
