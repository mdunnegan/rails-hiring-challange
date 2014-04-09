class CreateTransactions < ActiveRecord::Migration
  def change
    create_table :transactions do |t|
      t.datetime :created
      t.boolean :paid
      t.integer :amount
      t.string :currency
      t.boolean :refunded

      t.timestamps
    end
  end
end
