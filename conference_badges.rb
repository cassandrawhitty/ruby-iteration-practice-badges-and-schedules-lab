require 'pry'

def badge_maker(name)
  return "Hello, my name is #{name}." 
end

def batch_badge_creator(names)  
  list_of_names = names.map { |name| "Hello, my name is #{name}."}
  return list_of_names
end

def assign_rooms(names)
  names_w_indexes = Hash.new
  names.each_with_index { |item, index| names_w_indexes[item] = index }
  room_assignments = names_w_indexes.map { |name, index| "Hello, #{name}! You'll be assigned to room #{index +1}!" }
  return room_assignments
end

def printer(attendees)
  batch_badge_creator(attendees).each { |item| puts item }
  # binding.pry
  assign_rooms(attendees).each { |item| puts item }
end

