class AddClassToJobs < ActiveRecord::Migration[5.0]
  def change
    add_column :jobs, :user_class, :string
  end
end
