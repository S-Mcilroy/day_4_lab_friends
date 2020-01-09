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
end

def remove_friend(person, friend)
  person[:friends].delete(friend)
end

def total_money(array)
  total = 0
  for person in array
    total += person[:monies]
  end
  return total
end

def loan_money(lender, lendee, amount)
  lender[:monies] -= amount
  lendee[:monies] += amount
end

def everyone_snacks(array)
  set_food = []
  for person in array
    set_food.push(person[:favourites][:snacks])
  end
  return set_food.flatten
end

def no_friends(array)
  friend_array = []
  for person in array
    if person[:friends].length == 0
      friend_array.push(person[:name])
    end
  end
  return friend_array
end
