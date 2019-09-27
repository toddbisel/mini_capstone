class ChangeAdminToLowerCase < ActiveRecord::Migration[6.0]
  def change
    rename_column :users, :Admin, :admin
  end
end
