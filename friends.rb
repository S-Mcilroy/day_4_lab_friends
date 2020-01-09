def get_name(person)
  return person[:name]
end

def get_show(person)
  return person[:favourites][:tv_show]
end

def likes_to_eat(person, food)
  if food == person[:favourites][:snacks][1]
    return true
  else
    return false
  end
end

def add_friend(person, friend)
 person[:friends].push(friend)
 return person[:friends].length
end

def remove_friend(person, friend)
  person[:friends].delete(friend)
 return person[:friends].length
end

def total_money(array)
  total = 0
  for money in array
    total += money[:monies]
  end
  return total
end

def loan_money(lender, lendee, amount)
  lender[:monies] = lender[:monies] - amount
  lendee[:monies] = lendee[:monies] + amount
end

def everyone_snacks(array)
  set_food = []
  for snack in array
    set_food.push(snack[:favourites][:snacks])
  end
  return set_food.flatten
end

def no_friends(array)
  friend_array = []
  for number in array
    if number[:friends].length == 0
    friend_array.push(number[:name])
  end
  end
  return friend_array
end
