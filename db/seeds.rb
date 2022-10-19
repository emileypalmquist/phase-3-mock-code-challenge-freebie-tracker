puts "Destroying all"
Company.destroy_all
Dev.destroy_all
Freebie.destroy_all

puts "Creating companies..."
Company.create(name: "Google", founding_year: 1998)
Company.create(name: "Facebook", founding_year: 2004)
Company.create(name: "Dunder Mifflin", founding_year: 2002)
Company.create(name: "Enron", founding_year: 1995)

puts "Creating devs..."
Dev.create(name: "Rick")
Dev.create(name: "Morty")
Dev.create(name: "Mr. Meseeks")
Dev.create(name: "Gazorpazop")

puts "Creating freebies..."

30.times do 
  Freebie.create(
    item_name: Faker::Device.model_name, 
    value: rand(100..10000),
    dev_id: Dev.ids.sample,
    company_id: Company.ids.sample
  )
end

puts "Seeding done!"
