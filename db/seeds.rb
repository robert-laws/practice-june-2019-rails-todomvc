# frozen_string_literal: true

List.delete_all

list = [
  { name: 'Find something creative to do' },
  { name: 'Go to the Market' },
  { name: 'Pick up Dog Supplies' }
]

list.each do |list|
  List.create(list)
end
