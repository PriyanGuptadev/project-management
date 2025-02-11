class ConversationHistory < ApplicationRecord
  belongs_to :user
  belongs_to :project
  enum :previous_status, { to_do: 0, in_progress: 1, completed: 2, on_hold: 3 }, prefix: :previous
  enum :current_status, { to_do: 0, in_progress: 1, completed: 2, on_hold: 3 }, prefix: :current
end
