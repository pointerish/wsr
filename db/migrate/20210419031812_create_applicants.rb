class CreateApplicants < ActiveRecord::Migration[6.1]
  def change
    create_table :applicants do |t|
      t.string :name
      t.string :email
      t.string :resume
      t.string :cover_letter
      t.integer :job_id

      t.timestamps
    end
  end
end
