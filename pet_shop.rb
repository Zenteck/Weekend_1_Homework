def pet_shop_name(shop_name)
return (shop_name)[:name]
end

def total_cash(shop_name)
  return shop_name[:admin][:total_cash]
end

def add_or_remove_cash(shop_name, amount)
  return shop_name[:admin][:total_cash] += amount
end

def pets_sold(shop_name)
    return shop_name[:admin][:pets_sold]
end

def increase_pets_sold(shop_name, number_of_pets_sold)
  return shop_name[:admin][:pets_sold] += number_of_pets_sold
end

def stock_count(shop_name)
  return shop_name[:pets].count
end

def pets_by_breed(shop_name, breed)
count_breed = []
for pet in shop_name[:pets]
  if pet[:breed] == breed
count_breed.push(pet[:name])
  end
end
return count_breed
end

def find_pet_by_name(shop_name, pet_name)
for pet in shop_name[:pets]
  

end
