# frozen_string_literal: true

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
def admin_user
  AdminUser.create!(email: 'admin@example.com', password: 'Password123?', password_confirmation: 'Password123?')
end

def lunches
  Lunch.create!([
    {name: 'Chicken and waffles', description: '', scheduled_to: '31-01-2022'},
    {name: 'Tacos', description: '', scheduled_to: '1-02-2022'},
    {name: 'Curry' description: '', scheduled_to: '2-02-2022'},
    {name: 'Pizza', description: '', scheduled_to: '3-02-2022'},
    {name: 'Suchi', description: '', scheduled_to: '4-02-2022'},
    {name: 'Breakfast for lunch', description: '', scheduled_to: '7-02-2022'},
    {name: 'Hamburgers', description: '', scheduled_to: '8-02-2022'},
    {name: 'Spaghetti', description: '', scheduled_to: '9-02-2022'},
    {name: 'Salmon', description: '', scheduled_to: '10-02-2022'},
    {name: 'Sandwiches', description: '', scheduled_to: '11-02-2022'},
  ])
end

admin_user if AdminUser.count.zero?
lunches if Lunch.count.zero?
