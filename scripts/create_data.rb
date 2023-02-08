Company.destroy_all
Contact.destroy_all

# Create companies

apple = Company.new
apple["name"] = "Apple"
apple["city"] = "Cupertino"
apple["state"] = "CA"
apple.save

amazon = Company.new
amazon["name"] = "Amazon"
amazon["city"] = "Seattle"
amazon["state"] = "WA"
amazon.save

twitter = Company.new
twitter["name"] = "Twitter"
twitter["city"] = "San Francisco"
twitter["state"] = "CA"
twitter.save

# Create contacts

tim = Contact.new
tim["first_name"] = "Tim"
tim["last_name"] = "Cook"
tim["email"] = "tim@apple.com"
tim["phone_number"] = "777-777-7777"
tim["company_id"] = apple.id
tim.save

craig = Contact.new
craig["first_name"] = "Craig"
craig["last_name"] = "Federighi"
craig["email"] = "craig@apple.com"
craig["phone_number"] = "888-888-8888"
craig["company_id"] = apple.id 
craig.save

jeff = Contact.new
jeff["first_name"] = "Andy"
jeff["last_name"] = "Jassy"
jeff["email"] = "andy@amazon.com"
jeff["phone_number"] = "666-666-6666"
jeff["company_id"] = amazon.id 
jeff.save

elon = Contact.new
elon["first_name"] = "Elon"
elon["last_name"] = "Musk"
elon["email"] = "elon@tesla.com"
elon["phone_number"] = "555-555-5555"
elon["company_id"] = twitter.id
elon.save

puts "There are now #{Company.all.count} companies and #{Contact.all.count} contacts."
