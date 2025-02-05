class CreateProjectActivities < ActiveRecord::Migration[8.0]
  def change
    create_table :project_activities do |t|
      t.references :project, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true
      t.integer :activity_type, null: false

      t.timestamps
    end
  end
end
