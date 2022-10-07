# Some notes:
#   I know that Uncle Bob would say this is bad form,
#   but he also says nothing about coding assignments.
#   I think that a header comment that explains some
#   things I'm nervous about below is appropriate.
#
# * reverse_and_borgify_name: This does two things,
#   but really, it's doing one thing, the
#   borgifying (which includes reversing). I feel that
#   that the function name is clearer if it implicitly
#   tells you it reverses, without having to look at
#   the documentation.

# * I also chose to leave the awful 'modifed_name' interface,
#   but allow new code to use 'reverse_name' and
#   'reverse_and_borgify_name', along with Uncle Bob's thoughts
#   on flag arguments and monadic functions.

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
