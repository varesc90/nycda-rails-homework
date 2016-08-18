
 #Create method call "FULL NAME"
def full_name(first_name, last_name, title)
   #Define the value of "name"
  name = nil
  #check if all three arguments are provided
  if title && first_name && last_name 
  #assign value of 'title first_name and lastname' to variable name
    name = title + ' ' + first_name + ' ' + last_name 
  # if only title and last_name are provided
  elsif title && last_name 
    #set name to title + last_name
    name = title + ' ' + last_name
    #if only firstname and lastname are provided
  elsif first_name && last_name
    #set name to firstname + lastname
    name = first_name + ' ' + last_name
    #if only firstname is provided
  elsif first_name
    #set name to first_name
    name = first_name
    #if notthing is provided, raise an error "that doesn't look like name"
  else
    raise "That doesn't look like a name!"
  end
    #return the value of name
  return(name)
end
