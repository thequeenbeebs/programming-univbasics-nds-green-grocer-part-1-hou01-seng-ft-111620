require "pry"

def find_item_by_name_in_collection(name, collection)
  collection.find do |index|
    index[:item] == name
  end
end

def consolidate_cart(cart)
  new_cart = []
  cart.each do |index|
    if find_item_by_name_in_collection(index[:item], new_cart) == nil
      index[:count] = 1
      new_cart.push(index)
    else
      index[:count] += 1
    end
  end
end
