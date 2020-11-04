def find_item_by_name_in_collection(name, collection)
  collection.find do |index|
    index[:item] == name
  end
end

def consolidate_cart(cart)
  new_cart = []
  cart.each do |index|
    find_item_by_name_in_collection(index[:item], new_cart)
  end
end
