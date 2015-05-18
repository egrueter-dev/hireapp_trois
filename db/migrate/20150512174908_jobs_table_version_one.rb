class JobsTableVersionOne < ActiveRecord::Migration
  def change
    create_table(:jobs) do |t|
      t.boolean :open, null: false
      t.string :title, null: false
      t.string :employment_type, null: false
      t.string :industry, null: false
      t.string :location, null: false
      t.string :salary, null: false
      t.text :description
      #Google analytics api might be needed here?
      t.integer :posts
      t.integer :inquries
      t.integer :views
      t.timestamps
    end
  end
end
