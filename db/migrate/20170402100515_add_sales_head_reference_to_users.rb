class AddSalesHeadReferenceToUsers < ActiveRecord::Migration[5.0]
  def change
    add_reference :users, :sales_head, index: true
  end
end
