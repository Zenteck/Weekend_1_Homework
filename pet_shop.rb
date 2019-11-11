def pet_shop_name(shop)
return (shop)[:name]
end

def total_cash(shop)
  return shop[:admin][:total_cash]
end

def add_or_remove_cash(shop, amount)
  return shop[:admin][:total_cash] += amount
end

def pets_sold(shop)
    return shop[:admin][:pets_sold]
end

def increase_pets_sold(shop, number_of_pets_sold)
  return shop[:admin][:pets_sold] += number_of_pets_sold
end

def stock_count(shop)
  return shop[:pets].count
end

def pets_by_breed(shop, breed)
count_breed = []
  for pet in shop[:pets]
    if pet[:breed] == breed
  count_breed.push(pet[:name])
    end
  end
  return count_breed
end


# def test_find_pet_by_name__returns_pet
#   pet = find_pet_by_name(@pet_shop, "Arthur")
#   assert_equal("Arthur", pet[:name])
# end
#
# def test_find_pet_by_name__returns_nil
#   pet = find_pet_by_name(@pet_shop, "Fred")
#   assert_nil(pet)
# end

def find_pet_by_name(shop, pet_name)
  searched_pet = nil
   for pet in shop[:pets]
     if pet[:name] == pet_name
       searched_pet = pet
   end
 end
return searched_pet
end

def remove_pet_by_name(shop, pet_name)
   for pet in shop[:pets]
     if pet[:name] == pet_name
       pet.shift
       #I found this suggestion in the slack, I don't know why it works.
       #If I undertsand correctly, .delete didn't work because that returns the thing it deletes.
   end
 end
end

# def add_pet_to_stock(shop_name, new_pets)
#   for pet in new_pets
#     shop_name[:pets] << pet
# end
# end
#This 'should' to be able to add multiple new stock pets if required
#But the above returned 10, I think it was adding every item in the pet hash separately

def add_pet_to_stock(shop_name, new_pet)
    shop_name[:pets] << new_pet
end

# def customer_cash(customers)
#   most_cash = 0
#   for customer in customers
#     if (customer[:cash] > most_cash)
#       most_cash = customer[:cash]
#       end
#     end
# end

def customer_cash(customer)
  return customer[:cash]
end
#I JUST WASTED AN HOUR TRYING TO FIGURE OUT WHY 'CUSTOMER' WAS CALLED WITH AN IMPLICIT ARRAY ARGUMENT!!!
#arguement is the array @customers with the first position marked
#why does the @customers call always have array place 0 defined?

def remove_customer_cash(customer, cost)
  return customer[:cash] -= cost
end

def customer_pet_count(customer)
  return customer[:pets].count
end

def add_pet_to_customer(customer, pet)
  customer[:pets] << pet
  return customer_pet_count(customer)
end
#A failure in the integration suggests I did this wrong.

# def customer_can_afford_pet(customer, new_pet)
# if customer[:cash] >= new_pet[:price]
#   return true
# elsif customer[:cash] < new_pet[:price]
#   return false
# end
# end

def customer_can_afford_pet(customer, new_pet)
  if (customer[:cash] >= new_pet[:price])
    return true
  else
    return false
  end
end

# def customer_can_afford_pet(customer, new_pet)
#   case customer
#   when customer[:cash] >= new_pet[:price]
#     return true
#   when customer[:cash] < new_pet[:price]
#     return false
# end
# end
#
#Why didn't this work? Are case loops specifically meant for iteration?

def sell_pet_to_customer(shop, pet, customer)
  if find_pet_by_name(shop, pet) != nil
    then
 if customer_can_afford_pet(customer, pet)
  then
  add_pet_to_customer(customer, pet)
  # remove_pet_by_name(shop, pet)
  increase_pets_sold(shop, 1)
  remove_customer_cash(customer, pet[:price])
  add_or_remove_cash(shop, pet[:price])
end
end
end
