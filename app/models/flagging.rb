class Flagging < ActiveRecord::Base
  belongs_to :flag_reason, counter_cache: :flag_count

  belongs_to :user

  belongs_to :flaggable, polymorphic: true

  belongs_to :question

  state_machine initial: :open do

  	event :helpful do
  		transition open: :helpful
  	end

  	event :not_helpful do
  		transition open: :not_helpful
  	end
  end
end
