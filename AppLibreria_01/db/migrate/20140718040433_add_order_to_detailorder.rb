class AddOrderToDetailorder < ActiveRecord::Migration
  def change
    add_reference :detailorders, :order, index: true
  end
end
