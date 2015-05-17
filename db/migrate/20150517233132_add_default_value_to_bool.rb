class AddDefaultValueToBool < ActiveRecord::Migration
  def change
    remove_column :jobs, :open, :boolean
    add_column :jobs, :open, :boolean, default: true
  end
end
