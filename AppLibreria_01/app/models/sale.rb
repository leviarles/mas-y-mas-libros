class Sale < ActiveRecord::Base
  belongs_to :employee
  belongs_to :customer
  has_many :detailsales, :autosave=> true
	accepts_nested_attributes_for :detailsales
end
