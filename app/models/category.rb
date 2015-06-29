class Category < ActiveRecord::Base
  validates :business_type, :presence => true
end
