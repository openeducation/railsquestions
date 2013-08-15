class CloseReason < ActiveRecord::Base
	validates_presence_of :title, :description, :published

	validates_uniqueness_of :title

	has_many :questions

	before_destroy { raise "Close reason cannot be removed." }

	def destory_check
		unless self.questions.nil?
			raise "This close reason can't be remove since it has been used on least one question."
		end
	end
end
