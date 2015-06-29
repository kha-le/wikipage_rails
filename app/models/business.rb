class Business < ActiveRecord::Base
  validates :name, :presence => true
  validates :address, :presence => true
  validates :phone, :presence => true
  validates :website, :presence => true
  validates :hours, :presence => true
end
