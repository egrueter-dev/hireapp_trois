class AddResumesToApplicants < ActiveRecord::Migration
  def change
    add_column :applicants, :applicant, :string
  end
end
