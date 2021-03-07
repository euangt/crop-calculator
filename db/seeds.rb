Farm.destroy_all
Chemical.destroy_all
# Crop.destroy_all
# Field.destroy_all

puts "creating farm"
apple_tree = Farm.create!(name: "AppleTree Farm")

puts "creating chemicals"
chemical1 = Chemical.create!(name: "Ryezapon", price_per_litre:240, application_frequency: 6)
chemical2 = Chemical.create!(name: "Berbelikar", price_per_litre: 156 , application_frequency: 4)
chemical3 = Chemical.create!(name: "Quadranis", price_per_litre: 191, application_frequency: 9)

puts "creating crops"
crop1 = Crop.create!(crop_name: "Winter Wheat ", chemical: chemical1)
crop2 = Crop.create!(crop_name: "Barley", chemical: chemical2)
crop3 = Crop.create!(crop_name: "Sugar Beet ", chemical: chemical3)

puts "creating fields"
field1 = Field.create!(farm: apple_tree, name: "Cowfield", width: 300, length: 400, crop: crop2, last_sprayed: DateTime.new(2021, 02, 18))
field2 = Field.create!(farm: apple_tree, name: "Top", width: 200, length: 600, crop: crop2, last_sprayed: DateTime.new(2020, 12, 22))
field3 = Field.create!(farm: apple_tree, name: "Hillside", width: 600, length: 400, crop: crop1, last_sprayed: DateTime.new(2021, 02, 5))
field4 = Field.create!(farm: apple_tree, name: "Big Field", width: 800, length: 500, crop: crop3, last_sprayed: DateTime.new(2021, 01, 9))
field5 = Field.create!(farm: apple_tree, name: "Upper River", width: 200, length: 200, crop: crop2, last_sprayed: DateTime.new(2021, 01, 18))
field6 = Field.create!(farm: apple_tree, name: "Lower River", width: 500, length: 100, crop: crop3, last_sprayed: DateTime.new(2021, 02, 8))
field7 = Field.create!(farm: apple_tree, name: "Southside", width: 400, length: 400, crop: crop1, last_sprayed: DateTime.new(2021, 01, 12))