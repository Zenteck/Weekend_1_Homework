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
   end
 end
end





# This works, but I don't think it's right.
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

# def remove_customer_cash(customer, cost)
#
#
# end

def remove_customer_cash(customer, cost)
  return customer[:cash] -= cost
end

def customer_pet_count(customer)
  return customer[:pets].count
end

def add_pet_to_customer(customer, new_pet)
customer[:pets] << new_pet
return customer_pet_count(customer)
end

def customer_can_afford_pet(customer, new_pet)
  case customer
  when customer[:cash] >= new_pet[:price]
    return true
  when customer[:cash] < new_pet[:price]
    return false
end
end

# def test_customer_can_afford_pet__sufficient_funds
#   customer = @customers[0]
#   can_buy_pet = customer_can_afford_pet(customer, @new_pet)
#   assert_equal(true, can_buy_pet)
# end
#
# def test_customer_can_afford_pet__insufficient_funds
#   customer = @customers[1]
#   can_buy_pet = customer_can_afford_pet(customer, @new_pet)
#   assert_equal(false, can_buy_pet)
# end
#
# def test_customer_can_afford_pet__exact_funds
#   customer = @customers[2]
#   can_buy_pet = customer_can_afford_pet(customer, @new_pet)
#   assert_equal(true, can_buy_pet)
# end
