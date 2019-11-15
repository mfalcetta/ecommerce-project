# frozen_string_literal: true

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# AdminUser.destroy_all
Product.destroy_all
Page.destroy_all

# Pages
Page.create(
  name: 'About Us',
  content: 'AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA',
  show_in_navbar: true,
  permalink: 'about'
)

Page.create(
  name: 'Contact Us',
  content: 'please don\'t',
  show_in_navbar: true,
  permalink: 'contact'
)

# AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password') if Rails.env.development?
