class FixResumesContentType < ActiveRecord::Migration[5.0]
  def change
    change_column :resumes, :content, :text
  end
end
