# Name Mangler

@name = "Johanna Jackson"

# Mangle the name by reversing it or borgifying it
def modify_name(name, choose)
  # Split the name into first and last in an array
  split_name = name.split

  # Reverse the array of name components so the array is [last, first]
  reversed_name_components = split_name.reverse

  if choose
    # Add borg to the end of the array
    reversed_name_components << "Borg"
  end

  # Rejoin the array of name components
  reversed_name_components.join(' ')
end

puts "New name: #{modify_name(@name,false)}"
puts "New borg name: #{modify_name(@name,true)}"