class User < ApplicationRecord
  validates_uniqueness_of :email, :case_sensitive => false
  has_many :lists
  has_many :recipes

end
