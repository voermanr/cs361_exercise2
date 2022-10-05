# frozen_string_literal: true

# Name Mangler

@name = 'Johanna Jackson'

def reverse_and_borgify_name(name)
  "#{reverse_name(name)} Borg"
end

def reverse_name(name)
  # Split the name into first and last in an array
  split_name = name.split

  # Reverse the array of name components so the array is [last, first]
  reversed_name_components = split_name.reverse

  reversed_name_components.join(' ')
end

def modified_name(name, choose)
  if choose
    reverse_and_borgify_name name
  else
    reverse_name name
  end
end

puts "New name: #{modified_name(@name, false)}"
puts "New borg name: #{modified_name(@name, true)}"
