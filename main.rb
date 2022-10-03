# Name Mangler

@name = "Johanna Jackson"

# Mangle the name by reversing it or borgifying it
def modify_name(name)
  # Split the name into first and last in an array
  split_name = name.split

  # Reverse the array of name components so the array is [last, first]
  reversed_name_components = split_name.reverse

  # Rejoin the array of name components
  reversed_name_components.join(' ')
end

def borgify_name(name)
  modify_name(name) + " Borg"
end

puts "New name: #{modify_name(@name)}"
puts "New borg name: #{borgify_name(@name)}"