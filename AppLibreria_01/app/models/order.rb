class Order < ActiveRecord::Base
  belongs_to :employee
  belongs_to :customer
  has_many :detailorders, :autosave=> true
	accepts_nested_attributes_for :detailorders
	
end
