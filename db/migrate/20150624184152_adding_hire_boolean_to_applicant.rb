class AddingHireBooleanToApplicant < ActiveRecord::Migration
  def change
    add_column :applicants, :hired?, :boolean
  end
end
