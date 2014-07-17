class Detailorder < ActiveRecord::Base
  belongs_to :book
  belongs_to :sale
end
