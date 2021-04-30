class AddMissingDeviseFieldsToApplicants < ActiveRecord::Migration[6.1]
  def change
    add_column :applicants, :encrypted_password, :string, :null => false
    add_column :applicants, :reset_password_token, :string
    add_column :applicants, :reset_password_sent_at, :datetime
    add_column :applicants, :remember_created_at, :datetime
    add_index :applicants, :email, unique: true
    add_index :applicants, :reset_password_token, unique: true
  end
end
