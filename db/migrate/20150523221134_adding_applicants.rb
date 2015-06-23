class AddingApplicants < ActiveRecord::Migration
  def change
    create_table(:applicants) do |t|
      t.string :name, null: false
      t.string :email, null: false
      t.string :phone, null: false
      t.boolean :job_alerts?, default: false
      t.integer :job_id
    end
  end
end
