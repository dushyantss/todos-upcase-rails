class Todo < ApplicationRecord
  validates :email, presence: true

  def completed?
    completed_at?
  end

  def complete!
    touch :completed_at
  end
end
