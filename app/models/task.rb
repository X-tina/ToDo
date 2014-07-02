class Task < ActiveRecord::Base
  validates :note, presence: true
  validate :future_completed_date

  def future_completed_date
    if !completed.blank? && completed > Date.today
    	self.errors.add(:completed, "can't be in the future")
    end
  end
end
