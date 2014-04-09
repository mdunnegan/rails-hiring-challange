class Transaction < ActiveRecord::Base
  attr_accessible :amount, :currency, :paid, :refunded, :customer_id
  belongs_to :customer
  #validates_presence_of :amount, :currency, :paid, :refunded, :customer_id
  
  scope :disputed, -> { where refunded: true }
  scope :successful, -> { where refunded: false, paid: true } 
  scope :failed, -> { where paid: false }
  
end
