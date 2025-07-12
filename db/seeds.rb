puts "Cleaning database..."
Project.destroy_all

puts "Seeding projects..."
Project.create!(name: "Park Renovation", cost: 3000)
Project.create!(name: "Road Repair", cost: 3000)
Project.create!(name: "Installing Streetlights", cost: 3000)

puts "Seeding done!"
