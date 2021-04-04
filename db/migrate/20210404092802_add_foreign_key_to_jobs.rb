class AddForeignKeyToJobs < ActiveRecord::Migration[6.1]
  def change
    add_column :jobs, :poster_id, :integer
    add_foreign_key :jobs, :posters
  end
end
