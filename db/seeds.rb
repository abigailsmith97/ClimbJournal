# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end


name = "Hôtel Martinez - The Unbound Collection by Hyatt"
address = "73 Bd de la Croisette, 06400 Cannes"
Location.create(name:, address:)

name = "Exclusive Hotel Belle Plage"
address = "2 Rue Brougham, 06400 Cannes"
Location.create(name:, address:)

name = "Best Western Premier Le Patio des Artistes - Cannes"
address = "6 Rue de Bône, 06400 Cannes"
Location.create(name:, address:)

name = "Le Negresco"
address = "37 Prom. des Anglais, 06000 Nice"
Location.create(name:, address:)

name = "Caesars Palace"
address = "3570 S Las Vegas Blvd, Las Vegas, NV 89109, United States"
Location.create(name:, address:)