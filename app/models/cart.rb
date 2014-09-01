class Cart < ActiveRecord::Base
  has_many :contents, dependent: => :destroy
		
  def total_price
    contents.to_a.sum(&:full_price)
  end
  
end