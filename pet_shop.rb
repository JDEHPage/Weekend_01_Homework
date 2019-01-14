require('pry')

def pet_shop_name(pet_shop)
  return pet_shop[:name]
end

def total_cash(pet_shop)
  return pet_shop[:admin][:total_cash]
end

def add_or_remove_cash(pet_shop, cash)
  return pet_shop[:admin][:total_cash] += cash
end

def pets_sold(pet_shop)
  return pet_shop[:admin][:pets_sold]
end

def increase_pets_sold(pet_shop, pet)
  return pet_shop[:admin][:pets_sold] += pet
end

def stock_count(pet_shop)
  return pet_shop[:pets].count
end






def pets_by_breed(pet_shop, breed)
  pets = []
  for pet in pet_shop[:pets]
    pets << pet if(pet[:breed] == breed)
  end
  return pets
end


def find_pet_by_name(pet_shop, name)
  for pet in pet_shop[:pets]
    if(pet[:name] == name)
      return pet
    end
  end
  return nil
end

def remove_pet_by_name(pet_shop, name)
  for pet in pet_shop[:pets]
    if(pet[:name] == name)
      pet_shop[:pets].delete(pet)
    end
  end
  return nil
end






def add_pet_to_stock(pet_shop, new_pet)
  return pet_shop[:pets] << new_pet
end

def customer_cash(customer)
  return customer[:cash]
end


def remove_customer_cash(customer, pet)
  return customer[:cash] -= pet
  end

def customer_pet_count(customer)
  return customer[:pets].count
end




def add_pet_to_customer(customer, pet)
  return customer[:pets] << pet
  end


# def customer_can_afford_pet(customer, pet)
#   if customer[:cash] >= pet[:price]
#     return true
#   else
#     return  false
#   end
# end


def customer_can_afford_pet(customer, pet)
  return customer[:cash] >= pet[:price]
end


# def sell_pet_to_customer(pet_shop, pet, customer)
#
#   if pet == nil
#
#     customer_pet_count(customer)
#
#     pets_sold(pet_shop)
#
#     customer_cash(customer)
#
#     total_cash(pet_shop)
#
#
#   elsif
#
#
#     if customer_can_afford_pet(customer, pet) == true
#
#       add_pet_to_customer(customer, pet)
#       customer_pet_count(customer)
#
#
#       increase_pets_sold(pet_shop, customer_pet_count(customer))
#       pets_sold(pet_shop)
#
#
#       remove_customer_cash(customer, pet[:price])
#       customer_cash(customer)
#
#       add_or_remove_cash(pet_shop, pet[:price])
#       total_cash(pet_shop)
#
#     elsif customer_can_afford_pet(customer, pet) == false
#
#       customer_pet_count(customer)
#
#       pets_sold(pet_shop)
#
#       customer_cash(customer)
#
#       total_cash(pet_shop)
#
#     end
#
#   end
#
# end


def sell_pet_to_customer(pet_shop, pet, customer)


    if pet != nil && customer_can_afford_pet(customer, pet)

      add_pet_to_customer(customer, pet)
      customer_pet_count(customer)


      increase_pets_sold(pet_shop, customer_pet_count(customer))
      pets_sold(pet_shop)


      remove_customer_cash(customer, pet[:price])
      customer_cash(customer)

      add_or_remove_cash(pet_shop, pet[:price])
      total_cash(pet_shop)

    end

end
