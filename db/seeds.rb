require "open-uri"

puts "Removing all activities..."
Activity.destroy_all

puts "Removing all parenthoods..."
Parenthood.destroy_all

puts "Removing all children..."
Child.destroy_all

puts "Removing all users..."
User.destroy_all

puts "Removing all daycares..."
Daycare.destroy_all

puts "Adding daycares..."
d1 = Daycare.create(name: "Panda")
d2 = Daycare.create(name: "Lion")
puts "Daycares added!"

puts "Adding users..."
admin = User.create(email: "admin@gmail.com", password: "123456", role: "employee", admin: true, daycare_id: d1.id, phone_number: "0612345678", first_name: "Ad", last_name: "Min")
e1 = User.create(email: "employee1@gmail.com", password: "123456", role: "employee", daycare_id: d1.id, phone_number: "0612345681", first_name: "Peter", last_name: "Great")
e2 = User.create(email: "employee2@gmail.com", password: "123456", role: "employee", daycare_id: d1.id, phone_number: "0612345682", first_name: "Ellen", last_name: "McGee")
e3 = User.create(email: "employee3@gmail.com", password: "123456", role: "employee", daycare_id: d2.id, phone_number: "0612345683", first_name: "Helen", last_name: "Banner")
e4 = User.create(email: "employee4@gmail.com", password: "123456", role: "employee", daycare_id: d2.id, phone_number: "0612345684", first_name: "Greg", last_name: "Nagayama")
p1 = User.create(email: "parent1@gmail.com", password: "123456", role: "parent", daycare_id: d1.id, phone_number: "0612345691", first_name: "Thomas", last_name: "Smith")
p2 = User.create(email: "parent2@gmail.com", password: "123456", role: "parent", daycare_id: d1.id, phone_number: "0612345692", first_name: "Claire", last_name: "Johnson")
p3 = User.create(email: "parent3@gmail.com", password: "123456", role: "parent", daycare_id: d1.id, phone_number: "0612345693", first_name: "Niko", last_name: "Williams")
p4 = User.create(email: "parent4@gmail.com", password: "123456", role: "parent", daycare_id: d1.id, phone_number: "0612345694", first_name: "Samantha", last_name: "Brown")
p5 = User.create(email: "parent5@gmail.com", password: "123456", role: "parent", daycare_id: d1.id, phone_number: "0612345695", first_name: "Graham", last_name: "Miller")
p6 = User.create(email: "parent6@gmail.com", password: "123456", role: "parent", daycare_id: d1.id, phone_number: "0612345696", first_name: "John", last_name: "Davis")
p7 = User.create(email: "parent7@gmail.com", password: "123456", role: "parent", daycare_id: d1.id, phone_number: "0612345697", first_name: "Lisa", last_name: "Wilson")
p8 = User.create(email: "parent8@gmail.com", password: "123456", role: "parent", daycare_id: d1.id, phone_number: "0612345698", first_name: "Mia", last_name: "Anderson")
p9 = User.create(email: "parent9@gmail.com", password: "123456", role: "parent", daycare_id: d1.id, phone_number: "0612345699", first_name: "Evelyn", last_name: "Lee")
p11 = User.create(email: "parent11@gmail.com", password: "123456", role: "parent", daycare_id: d2.id, phone_number: "0612345600", first_name: "Carry", last_name: "Garcia")
puts "Users added!"

puts "Adding children..."
file = URI.open("https://img.joomcdn.net/c391799400c0122977a22e970427edb62cedb226_original.jpeg")
c1 = Child.new(first_name: "Liam", last_name: "Smith", birthdate: DateTime.new(2021,2,3), daycare_id: d1.id)
c1.profile_picture.attach(io: file, filename: 'liam.jpeg', content_type: 'image/jpeg')
c1.save

file = URI.open('https://squarebaby.com/wp-content/themes/squarebaby/assets/img/helen-baby-v.png')
c2 = Child.new(first_name: "Olivia", last_name: "Smith", birthdate: DateTime.new(2020,1,12), daycare_id: d1.id)
c2.profile_picture.attach(io: file, filename: 'olivia.jpeg', content_type: 'image/png')
c2.save

file = URI.open('https://media.oudersvannu.nl/m/myfuopw26xy8_ovn_square_800.jpg')
c3 = Child.new(first_name: "Noah", last_name: "Williams", birthdate: DateTime.new(2019,4,4), daycare_id: d1.id)
c3.profile_picture.attach(io: file, filename: 'noah.jpg', content_type: 'image/jpg')
c3.save

file = URI.open('https://rainydaymum.co.uk/wp-content/uploads/2018/06/activities-to-do-with-your-4-month-old-baby-square.jpg')
c4 = Child.new(first_name: "Emma", last_name: "Williams", birthdate: DateTime.new(2021,5,3), daycare_id: d1.id)
c4.profile_picture.attach(io: file, filename: 'emma.jpg', content_type: 'image/jpg')
c4.save

file = URI.open('https://cdn.shopify.com/s/files/1/0031/6602/files/baby_square_1024x1024_crop_center.jpg')
c5 = Child.new(first_name: "Sophia", last_name: "Miller", birthdate: DateTime.new(2019,12,10), daycare_id: d1.id)
c5.profile_picture.attach(io: file, filename: 'sophia.jpg', content_type: 'image/jpg')
c5.save

file = URI.open('https://heartmindonline.org/sites/default/files/iStock_000016868447_Full.jpg')
c6 = Child.new(first_name: "Lucas", last_name: "Wilson", birthdate: DateTime.new(2018,9,11), daycare_id: d1.id)
c6.profile_picture.attach(io: file, filename: 'lucas.jpg', content_type: 'image/jpg')
c6.save

file = URI.open('https://5.imimg.com/data5/SELLER/Default/2020/10/CR/LF/MF/48866434/14-500x500.jpg')
c7 = Child.new(first_name: "Henry", last_name: "Anderson", birthdate: DateTime.new(2018,3,18), daycare_id: d1.id)
c7.profile_picture.attach(io: file, filename: 'henry.jpg', content_type: 'image/jpg')
c7.save

file = URI.open('https://www.babycenter.com/ims/2021/04/Snug-As-A-Bug-Personalized-Baby-Hat-buybuybaby_square.jpg.pagespeed.ce.XynDd_ArDH.jpg')
c8 = Child.new(first_name: "Isabella", last_name: "Lee", birthdate: DateTime.new(2020,12,25), daycare_id: d1.id)
c8.profile_picture.attach(io: file, filename: 'isabella.jpg', content_type: 'image/jpg')
c8.save

file = URI.open('https://images.squarespace-cdn.com/content/v1/5c912436e66669395b41af4c/1553193358988-FNFQLPADBREFWN9TLWXA/teething-baby-square-300x300.jpg')
c9 = Child.new(first_name: "Mary", last_name: "Jones", birthdate: DateTime.new(2020,8,8), daycare_id: d2.id)
c9.profile_picture.attach(io: file, filename: 'mary.jpg', content_type: 'image/jpg')
c9.save

file = URI.open('https://squarebaby.com/wp-content/themes/squarebaby/assets/img/sibylle.png')
c10 = Child.new(first_name: "Grace", last_name: "Jones", birthdate: DateTime.new(2020,8,8), daycare_id: d2.id)
c10.profile_picture.attach(io: file, filename: 'grace.png', content_type: 'image/png')
c10.save

c11 = Child.create(first_name: "Jonathan", last_name: "Lee", birthdate: DateTime.new(2018,9,22), daycare_id: d1.id)
puts "Children added!"

puts "Adding parenthoods..."
ph1 = Parenthood.create(user_id: p1.id, child_id: c1.id)
ph2 = Parenthood.create(user_id: p2.id, child_id: c1.id)
ph3 = Parenthood.create(user_id: p1.id, child_id: c2.id)
ph4 = Parenthood.create(user_id: p2.id, child_id: c2.id)
ph5 = Parenthood.create(user_id: p3.id, child_id: c3.id)
ph6 = Parenthood.create(user_id: p4.id, child_id: c3.id)
ph7 = Parenthood.create(user_id: p3.id, child_id: c4.id)
ph8 = Parenthood.create(user_id: p4.id, child_id: c4.id)
ph9 = Parenthood.create(user_id: p5.id, child_id: c5.id)
ph10 = Parenthood.create(user_id: p6.id, child_id: c5.id)
ph11 = Parenthood.create(user_id: p7.id, child_id: c6.id)
ph12 = Parenthood.create(user_id: p8.id, child_id: c6.id)
ph13 = Parenthood.create(user_id: p7.id, child_id: c7.id)
ph14 = Parenthood.create(user_id: p8.id, child_id: c7.id)
ph15 = Parenthood.create(user_id: p9.id, child_id: c8.id)
ph16 = Parenthood.create(user_id: p10.id, child_id: c9.id)
ph17 = Parenthood.create(user_id: p11.id, child_id: c9.id)
ph18 = Parenthood.create(user_id: p10.id, child_id: c10.id)
ph19 = Parenthood.create(user_id: p11.id, child_id: c10.id)
ph20 = Parenthood.create(user_id: p9.id, child_id: c11.id)
puts "Parenthoods added!"

puts "Adding activities..."
a1 = Activity.create(category: "Food", sub_category: "Apple", date: DateTime.new(2021,8,31), time: Time.new(2021,8,31,9,0), child_id: c1.id, user_id: e1.id)
a2 = Activity.create(category: "Sleep", sub_category: "Go to bed", date: DateTime.new(2021,8,31), time: Time.new(2021,8,31,10,0), child_id: c1.id, user_id: e2.id)
a3 = Activity.create(category: "Sleep", sub_category: "Get out of bed", date: DateTime.new(2021,8,31), time: Time.new(2021,8,31,11,30), child_id: c1.id, user_id: e1.id)
puts "Activities added!"
