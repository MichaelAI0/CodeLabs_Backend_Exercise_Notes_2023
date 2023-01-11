users = [
  {
      name: "John Doe",
      age: 43
  },
  {
      name: "Amy Singer",
      age: 53
  },
  {
      name: "Jimmy Lendricks",
      age: 23
  }
]

i = 0  

while i < users.length do 
 first_name = users[i][:name].split(" ")[0]
 age = users[i][:age]
  if first_name == "Jimmy"
    puts " My name and age is confidential"
    else 
      puts " My name is #{users[i][:name]} and I am #{age}."
  end
  i += 1
end