class AddJobTypeAndSalaryToJobs < ActiveRecord::Migration[6.1]
  def change
    add_column :jobs, :job_type, :string
    add_column :jobs, :salary, :integer
  end
end
