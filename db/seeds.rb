# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'csv'
cards = CSV.foreach "./db/hearthstone-cards/cards.csv", headers: true, header_converters: :symbol
counter = 0
cards.each do |row|
	row = row.to_h
	row[:cardtype] = row[:type]
	row.delete(:type);row.delete(:how_to_earn_golden);row.delete(:how_to_earn)
	Card.create!(row)
	puts "#{counter} cards seeded"
	counter += 1
end
