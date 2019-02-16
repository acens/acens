# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

SurveyOption.create(name: "Produção Gráfica com Photoshop") unless SurveyOption.find_by_name "Produção Gráfica com Photoshop"
SurveyOption.create(name: "Web Design")  unless SurveyOption.find_by_name "Web Design"
SurveyOption.create(name: "Ruby on Rails")  unless SurveyOption.find_by_name "Ruby on Rails"

User.create!(:email => "admin@example.com", :password => "123456", :password_confirmation => "123456") unless User.all.any?

