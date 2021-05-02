class AddConfirmedColumnToJobApplicantTable < ActiveRecord::Migration[6.1]
  def change
    add_column :job_applicants, :confirmed, :boolean, :default => false
  end
end
