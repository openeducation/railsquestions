class CloseReason < ActiveRecord::Base
	validates_presence_of :title, :description, :published

	validates_uniqueness_of :title

	has_many :questions

	before_destroy { raise "Close reasons cannot be removed." }
end
