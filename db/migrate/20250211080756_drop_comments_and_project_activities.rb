class DropCommentsAndProjectActivities < ActiveRecord::Migration[8.0]
  def change
    drop_table :comments
    drop_table :project_activities
  end
end
