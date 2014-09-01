class Content < ActiveRecord::Base
  belongs_to :cart
  
  def full_price
    price * quantity
  end
end
