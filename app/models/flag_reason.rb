class FlagReason < ActiveRecord::Base
	has_many :flaggings

	validates_presence_of :title, :description
end
