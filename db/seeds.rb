puts "Cleaning database.."

Booking.destroy_all
Mentor.destroy_all
User.destroy_all

puts "Database has been cleaned!"

puts "Creating users.."

user_list = [{
  first_name: "Ryan",
  last_name: "Bae",
  email: "user@gmail.com",
  password: "password"
},
{
  first_name: "Bryan",
  last_name: "Bae",
  email: "user2@gmail.com",
  password: "password"
}]

User.create!(user_list)
file = URI.open('https://images.unsplash.com/flagged/photo-1570612861542-284f4c12e75f?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1050&q=80')
user = User.first
user.avatar.attach(io: file, filename: 'user.png', content_type: 'image/png')

file = URI.open('https://images.unsplash.com/photo-1542103749-8ef59b94f47e?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1050&q=80')
user = User.last
user.avatar.attach(io: file, filename: 'user2.png', content_type: 'image/png')

puts "Created #{User.count} users!"

puts "Creating mentors.."

mentor_list = [{
    title: Faker::Name.name,
    speciality: Faker::ProgrammingLanguage.name,
    description: "10 years of experience, graduated from Monash University, Co-Founder of PayPal",
    price: Faker::Number.number(digits: 2),
    user: User.first
},
{
    title: Faker::Name.name,
    speciality: Faker::ProgrammingLanguage.name,
    description: "10 years of experience, graduated from Monash University, Co-Founder of PayPal",
    price: Faker::Number.number(digits: 2),
    user: User.last
}]

Mentor.create!(mentor_list)
file = URI.open('https://images.unsplash.com/photo-1588073882362-b4309c60cea0?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1267&q=80')
mentor = Mentor.first
mentor.avatar.attach(io: file, filename: 'mentor.png', content_type: 'image/png')

file = URI.open('https://images.unsplash.com/photo-1543269664-56d93c1b41a6?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1050&q=80')
mentor = Mentor.last
mentor.avatar.attach(io: file, filename: 'mentor2.png', content_type: 'image/png')

puts "Created #{Mentor.count} mentors!"
puts "Created mentors!"
