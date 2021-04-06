class AddJobCategoryToJobs < ActiveRecord::Migration[6.1]
  def change
    add_column :jobs, :job_category, :string
  end
end
