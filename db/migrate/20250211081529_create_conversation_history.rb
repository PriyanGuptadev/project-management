class CreateConversationHistory < ActiveRecord::Migration[8.0]
  def change
    create_table :conversation_histories do |t|
      t.references :user, null: false, foreign_key: true
      t.references :project, null: false, foreign_key: true
      t.string :type
      t.integer :previous_status
      t.integer :current_status
      t.text :comment

      t.timestamps
    end
  end
end
