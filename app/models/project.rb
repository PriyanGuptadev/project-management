class Project < ApplicationRecord
  enum :status, { to_do: 0, in_progress: 1, completed: 2, on_hold: 3 }, default: :to_do, validate: true

  validates :title, presence: true

  belongs_to :owner, class_name: "User", foreign_key: "owner_id"
  has_many :conversation_histories, dependent: :destroy, class_name: "ConversationHistory"
  has_many :comment_histories, dependent: :destroy, class_name: "CommentHistory"
  has_many :status_histories, dependent: :destroy, class_name: "StatusHistory"
end
