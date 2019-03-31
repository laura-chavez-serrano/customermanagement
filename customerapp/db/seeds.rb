# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'csv'
AddressBook.delete_all
CSV.foreach('/Users/laura.s.chavez/Documents/projects/customermanagement/address_book.csv', headers: true, skip_blanks: true) do |row|
    

    address=AddressBook.new
    
         
        address.first_name = row.to_h["first_name"] 
        address.last_name = row.to_h["last_name"] 
        address.address = row.to_h["address"] 
        address.city = row.to_h["city"] 
        address.zip = row.to_h["zip"] 
        address.email = row.to_h["email"]
        address.status = row.to_h["status"]
        address.category = row.to_h["category"]
        address.anniversary = row.to_h["anniversary"]
        address.comments = row.to_h["comments"]
        address.customer_type = "Buyer"
        
        address.save

end