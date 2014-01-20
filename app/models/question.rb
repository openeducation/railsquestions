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

  def flag_count
    self.flaggings.count
  end

  def flag(user, reason, question)
    if self.flaggings.where("user_id = ?", user.id).to_a.count == 0
      Flagging.create(flaggable: question, user: user, flag_reason: reason, question_id: question.id)
  	end
  end
end
