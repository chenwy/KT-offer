class AddJobDetailToJobs < ActiveRecord::Migration[5.0]
  def change
    add_column :jobs, :company, :string
    add_column :jobs, :workplace, :string
    add_column :jobs, :require_num, :integer, default: 0
    add_column :jobs, :job_class, :string
    add_column :jobs, :phone, :string
    add_column :jobs, :duty, :string
  end
end
