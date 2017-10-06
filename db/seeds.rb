# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'csv'

csv_text = File.read(Rails.root.join('lib', 'seeds', 'IronGloryInventory.csv'))
csv = CSV.parse(csv_text, :headers => true, :encoding => 'ISO-8859-1')
csv.each do |row|
  @product = row.to_hash
  t = Product.new
  t.product_name = row['Product']
  t.sku = row['SKU']
  t.price = row['Price'].gsub(/\D+/, '').to_i * 100
  t.year = row['Year']
  t.quantity = row['Available'].gsub(/\:|\D/, '')
  t.size = row['Available'].gsub(/\:|\d/, '')
  t.category = row['Category']
  t.description = row['Description']
  t.patch = File.open(Rails.root.join( "db/pictures/#{row['SKU'].downcase}.png"), "rb")
  t.save
#   puts "#{t.product_name}, #{t.year}, #{t.size}, #{t.category} "
end
