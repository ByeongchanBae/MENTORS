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
    title: "Claire John",
    speciality: "Python",
    description: "Hello, my name is Claire and I am a senior Software Engineer at LinkedIn. I have been developing applications for over 10 years and would like to help people interested in getting into the tech industry.",
    price: 30,
    address: "1736-1740 Dandenong Rd, Clayton VIC 3168",
    user: User.first
},
{
    title: "George Crate",
    speciality: "Start Ups",
    description: "Graduated from the University of Melbourne and Co-Founder of PayPal. I am available to help people wanting to create a start up. I have had over 10 years of experience co-founding numerous successful companies.",
    price: 50,
    address: "14-16 Market Ln, Melbourne VIC 3000",
    user: User.last
},
{
    title: "Austin Price",
    speciality: "JavaScript",
    description: "Hi everyone! I am a full stack developer for Zara. I know learning to code can be difficult. I have very strong JavaScript knowledge and am availabe to teach people the language. ",
    price: 10,
    address: "40 Exhibition Walk Monash University Victoria 3800 Australia",
    user: User.first
},
{
    title: "Mary Key",
    speciality: "Python",
    description: "I have been developing applications for over 10 years and would like to help people interested in getting into the tech industry.",
    price: 30,
    address: "40 Exhibition Walk Monash University Victoria 3800 Australia",
    user: User.last
},
{
    title: "Mason Key",
    speciality: "Ruby on rails",
    description: "Hello, my name is Mason and I am the CTO for ANZ. Over the years I have taught part-time at LeWagon as a teacher and now I would like to extend my teachings to more people. If you are eager to learn about Ruby on Rails, I am your Mentor",
    price: 25,
    address: "40 Exhibition Walk Monash University Victoria 3800 Australia",
    user: User.last
},
{
    title: "Sally Carol",
    speciality: "Html & CSS",
    description: "Hi guys, my name is Sally and I am a front end developer for Canva. I have a huge passion for design and am really keen to help others out who struggle with front end.",
    price: 5,
    address: "40 Exhibition Walk Monash University Victoria 3800 Australia",
    user: User.first
}]

Mentor.create!(mentor_list)
file = URI.open('https://images.unsplash.com/photo-1573496799515-eebbb63814f2?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&auto=format&fit=crop&w=1050&q=80')
mentor = Mentor.find_by(title: "Claire John")
mentor.avatar.attach(io: file, filename: 'mentor.png', content_type: 'image/png')

file = URI.open('https://images.unsplash.com/photo-1533227268428-f9ed0900fb3b?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&auto=format&fit=crop&w=1758&q=80')
mentor = Mentor.find_by(title: "George Crate")
mentor.avatar.attach(io: file, filename: 'mentor2.png', content_type: 'image/png')

file = URI.open('https://images.unsplash.com/photo-1556157382-97eda2d62296?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1350&q=80')
mentor = Mentor.find_by(title: "Austin Price")
mentor.avatar.attach(io: file, filename: 'mentor3.png', content_type: 'image/png')

file = URI.open('https://images.unsplash.com/photo-1606511647870-4106713a7354?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1350&q=80')
mentor = Mentor.find_by(title: "Mary Key")
mentor.avatar.attach(io: file, filename: 'mentor4.png', content_type: 'image/png')

file = URI.open('https://images.unsplash.com/photo-1577880216142-8549e9488dad?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1350&q=80')
mentor = Mentor.find_by(title: "Mason Key")
mentor.avatar.attach(io: file, filename: 'mentor5.png', content_type: 'image/png')

file = URI.open('https://images.unsplash.com/photo-1541733457537-fa8fa3cc6a01?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1489&q=80')
mentor = Mentor.find_by(title: "Sally Carol")
mentor.avatar.attach(io: file, filename: 'mentor6.png', content_type: 'image/png')

puts "Created #{Mentor.count} mentors!"
puts "Created mentors!"
