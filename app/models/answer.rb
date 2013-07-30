class Answer < ActiveRecord::Base
  belongs_to :user, counter_cache: :total_answers
  
  belongs_to :question, counter_cache: :total_answers
  
   validates_presence_of :body, :user, :question
end
