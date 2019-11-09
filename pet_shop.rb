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
    if pet[:name] == pet_name
      return pet_name, pet
    else
      return nil
end
end
end
#This works, but I don't think it's right.

# def add_pet_to_stock(shop_name, new_pets)
#   for pet in new_pets
#     shop_name[:pets] << pet
# end
# end
#This should to be able to add multiple new stock pets if required

def add_pet_to_stock(shop_name, new_pet)
    shop_name[:pets] << new_pet
end
