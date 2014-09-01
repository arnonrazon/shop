class CartController < ApplicationController
 
  def index
	@cart = current_cart
  end

  def add
  	
	item = Item.find(params[:id])
	if (Content.exists?(item_id: item.id, cart_id: current_cart.id))
		content = Content.where(item_id: item.id, cart_id: current_cart.id).first
		content.update(quantity: content.quantity + 1)
	else
		Content.create(item_id: item.id, title: item.title, price: item.price, quantity: 1, image_url: item.image_url, cart_id: current_cart.id)
	end
	
	redirect_to :action => :index
  end
  
  def remove
  
	content = Content.find(params[:id])
	if (content.quantity == 1)
		content.destroy
	else
		content.update(quantity: content.quantity - 1)
	end
	
	redirect_to :action => :index
  end
  	
end
