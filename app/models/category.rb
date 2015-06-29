class Category < ActiveRecord::Base
  has_many :businesses
  validates :business_type, :presence => true
end
