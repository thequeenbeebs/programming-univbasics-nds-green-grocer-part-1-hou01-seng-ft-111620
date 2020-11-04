def find_item_by_name_in_collection(name, collection)
  collection.find do |index|
    index[:item] == name
  end
end

def consolidate_cart(cart)
  new_cart = []
  cart.each do |index|
    if find_item_by_name_in_collection(index[:item], new_cart) == nil
      new_cart.push(index)
      new_cart[index][:count] => 1
    else
      new_cart[index][:count] += 1
  end
end
