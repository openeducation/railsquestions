class Question < ActiveRecord::Base
  belongs_to :user

  def close
	self.closed = true	
	self.closed_at = Time.now.utc	
  end
end
