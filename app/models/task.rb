class Task < ActiveRecord::Base

  belongs_to :user

  validates :note, presence: true
  validate :future_completed_date
  validate :user, presence: true

  default_scope -> { order('created_at desc') }

  def future_completed_date
    if !completed.blank? && completed > Date.today
    	self.errors.add(:completed, "can't be in the future")
    end
  end
end
