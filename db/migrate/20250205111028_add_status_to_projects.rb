class AddStatusToProjects < ActiveRecord::Migration[8.0]
  def change
    add_column :projects, :status, :integer, null: false
  end
end
