class DeleteApplicantsTable < ActiveRecord::Migration[6.1]
  def change
    drop_table :applicants
  end
end
