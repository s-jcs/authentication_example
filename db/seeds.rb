# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

# initialize users
User.create([
  {
    email: 'admin@email.com',
    role: 'admin',
    password: 'abc123ABC',
    password_confirmation: 'abc123ABC'
  },
  {
    email: 'client@email.com',
    role: 'client',
    password: 'abc123ABC',
    password_confirmation: 'abc123ABC'
  },
  {
    email: 'medium@email.com',
    role: 'medium',
    password: 'abc123ABC',
    password_confirmation: 'abc123ABC'
  }
])
