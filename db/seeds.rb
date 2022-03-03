Freebie.destroy_all
Dev.destroy_all
Company.destroy_all

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
  dev = Dev.all.sample
  company = Company.all.sample
  Freebie.create(item_name: Faker::Game.title, value: rand(1..100), dev_id: dev.id, company_id: company.id )
end

puts "Seeding done!"