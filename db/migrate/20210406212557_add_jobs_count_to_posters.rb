class AddJobsCountToPosters < ActiveRecord::Migration[6.1]
  def change
    add_column :posters, :jobs_count, :integer
  end
end
