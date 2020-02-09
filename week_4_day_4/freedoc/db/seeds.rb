# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

Doctor.destroy_all
Patient.destroy_all
Appointment.destroy_all

10.times do 
    Doctor.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, speciality: ["General", "Dentist", "ORL"].sample, zip_code: Faker::Alphanumeric.alphanumeric(number: 5, min_alpha: 3))
    Patient.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name)
end

20.times do
    Appointment.create(date: Faker::Date.between_except(from: 1.year.ago, to: 1.year.from_now, excepted: Date.today), doctor: Doctor.last(10).sample, patient: Patient.last(10).sample)
end
