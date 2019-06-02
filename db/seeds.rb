Item.delete_all
List.delete_all

list = [
  { name: 'Go to the Market' },
  { name: 'Pick up Dog Supplies' }
]

list.each do |list|
  List.create(list)
end

list_1 = List.first
list_2 = List.last

items_1 = [
  {description: "Milk", list: list_1},
  {description: "Bread", list: list_1},
  {description: "Cookies", list: list_1},
  {description: "Butter", list: list_1}
]

items_2 = [
  {description: "Dog Food", list: list_2},
  {description: "Treats", list: list_2},
  {description: "New Leash", list: list_2}
]

items_1.each do |item|
  Item.create(item)
end

items_2.each do |item|
  Item.create(item)
end