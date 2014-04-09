class AddCustomerIdToTransaction < ActiveRecord::Migration
  def change
  	# add customer ID column to Transaction
  	add_column :transactions, :customer_id, :integer

  	# rails already has created_at. Probably does it better than I would
  	remove_column :transactions, :created
  end
end
