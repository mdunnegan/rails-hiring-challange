class Customer < ActiveRecord::Base
  attr_accessible :first_name, :last_name
  has_many :transactions
  validates_presence_of :first_name, :last_name
  def full_name
  	"#{self.first_name} #{self.last_name}"
  end
end
