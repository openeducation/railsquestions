class Question < ActiveRecord::Base
  belongs_to :user
  
  has_many :answers

  has_many :flaggings, counter_cache: :flag_count
  belongs_to :close_reason

  def close(reason)
	self.closed = true	
	self.closed_at = Time.now.utc
	self.close_reason = reason
	self.save!
  end
end
