class Promotion < ActiveRecord::Base
  belongs_to :employee
  belongs_to :customer
end
