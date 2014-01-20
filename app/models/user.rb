class User < ActiveRecord::Base
  include Clearance::User

  has_many :flaggings

  has_many :answers

  has_many :questions
end
