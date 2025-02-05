class Comment < ApplicationRecord
  validates :content, presence: true

  belongs_to :commentable, polymorphic: true
  belongs_to :user

  after_create_commit do
    commentable.activities.create(user: user, activity_type: :comment)
  end
end
