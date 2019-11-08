def pet_shop_name(shop_name)
return (shop_name)[:name]
end

def total_cash(shop_name)
  return shop_name[:admin][:total_cash]
end

def add_or_remove_cash(shop_name, amount)
  return shop_name[:admin][:total_cash] += amount
end

def pets_sold(customers)
  for customer in customers
    

end
