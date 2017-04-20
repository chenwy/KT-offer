class CreateSysParams < ActiveRecord::Migration[5.0]
  def change
    create_table :sys_params do |t|

      t.timestamps
    end
  end
end
