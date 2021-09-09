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
d1 = Daycare.create(name: "Giant Panda")
d2 = Daycare.create(name: "Lion")
puts "Daycares added!"

puts "Adding users..."
file = URI.open('https://imagizer.imageshack.com/v2/800x600q90/923/lImRJb.jpg')
admin = User.new(email: "admin@gmail.com", password: "123456", role: "employee", admin: true, daycare_id: d1.id, phone_number: "0612345678", first_name: "Ad", last_name: "Min")
admin.user_picture.attach(io: file, filename: 'admin.jpg', content_type: 'image/jpg')
admin.save

file = URI.open('https://imagizer.imageshack.com/v2/800x600q90/924/AZRVJi.jpg')
e1 = User.new(email: "employee1@gmail.com", password: "123456", role: "employee", admin: true, daycare_id: d1.id, phone_number: "0612345681", first_name: "Peter", last_name: "Great")
e1.user_picture.attach(io: file, filename: 'e1.jpg', content_type: 'image/jpg')
e1.save

file = URI.open('https://imagizer.imageshack.com/v2/800x600q90/922/MOHlGt.jpg')
e2 = User.new(email: "employee2@gmail.com", password: "123456", role: "employee", daycare_id: d1.id, phone_number: "0612345682", first_name: "Ellen", last_name: "McGee")
e2.user_picture.attach(io: file, filename: 'e2.jpg', content_type: 'image/jpg')
e2.save

file = URI.open('https://imagizer.imageshack.com/v2/800x600q90/922/Mrv79Z.jpg')
e3 = User.new(email: "employee3@gmail.com", password: "123456", role: "employee", daycare_id: d2.id, phone_number: "0612345683", first_name: "Helen", last_name: "Banner")
e3.user_picture.attach(io: file, filename: 'e3.jpg', content_type: 'image/jpg')
e3.save

file = URI.open('https://imagizer.imageshack.com/v2/800x600q90/923/D5nQk3.jpg')
e4 = User.new(email: "employee4@gmail.com", password: "123456", role: "employee", daycare_id: d2.id, phone_number: "0612345684", first_name: "Greg", last_name: "Nagayama")
e4.user_picture.attach(io: file, filename: 'e4.jpg', content_type: 'image/jpg')
e4.save

file = URI.open('https://imagizer.imageshack.com/v2/800x600q90/923/OeOfAL.jpg')
p1 = User.new(email: "parent1@gmail.com", password: "123456", role: "parent", daycare_id: d1.id, phone_number: "0612345691", first_name: "Thomas", last_name: "Smith")
p1.chatname = p1.first_name
p1.user_picture.attach(io: file, filename: 'p1.jpg', content_type: 'image/jpg')
p1.save

file = URI.open('https://imagizer.imageshack.com/v2/800x600q90/922/HpvM8q.jpg')
p2 = User.new(email: "parent2@gmail.com", password: "123456", role: "parent", daycare_id: d1.id, phone_number: "0612345692", first_name: "Claire", last_name: "Johnson")
p2.user_picture.attach(io: file, filename: 'p2.jpg', content_type: 'image/jpg')
p2.save

file = URI.open('https://imagizer.imageshack.com/v2/800x600q90/922/PNOOKR.jpg')
p3 = User.new(email: "parent3@gmail.com", password: "123456", role: "parent", daycare_id: d1.id, phone_number: "0612345693", first_name: "Niko", last_name: "Williams")
p3.user_picture.attach(io: file, filename: 'p3.jpg', content_type: 'image/jpg')
p3.save

file = URI.open('https://imagizer.imageshack.com/v2/800x600q90/923/HyVyo6.jpg')
p4 = User.new(email: "parent4@gmail.com", password: "123456", role: "parent", daycare_id: d1.id, phone_number: "0612345694", first_name: "Samantha", last_name: "Brown")
p4.user_picture.attach(io: file, filename: 'p4.jpg', content_type: 'image/jpg')
p4.save

file = URI.open('https://imagizer.imageshack.com/v2/800x600q90/924/gm3dzm.jpg')
p5 = User.new(email: "parent5@gmail.com", password: "123456", role: "parent", daycare_id: d1.id, phone_number: "0612345695", first_name: "Graham", last_name: "Miller")
p5.user_picture.attach(io: file, filename: 'p5.jpg', content_type: 'image/jpg')
p5.save

file = URI.open('https://imagizer.imageshack.com/v2/800x600q90/923/zBEtMp.jpg')
p6 = User.new(email: "parent6@gmail.com", password: "123456", role: "parent", daycare_id: d1.id, phone_number: "0612345696", first_name: "John", last_name: "Davis")
p6.user_picture.attach(io: file, filename: 'p6.jpg', content_type: 'image/jpg')
p6.save

file = URI.open('https://imagizer.imageshack.com/v2/800x600q90/923/AJvbes.jpg')
p7 = User.new(email: "parent7@gmail.com", password: "123456", role: "parent", daycare_id: d1.id, phone_number: "0612345697", first_name: "Lisa", last_name: "Wilson")
p7.user_picture.attach(io: file, filename: 'p7.jpg', content_type: 'image/jpg')
p7.save

file = URI.open('https://imagizer.imageshack.com/v2/800x600q90/923/XYgwaM.jpg')
p8 = User.new(email: "parent8@gmail.com", password: "123456", role: "parent", daycare_id: d1.id, phone_number: "0612345698", first_name: "Mia", last_name: "Anderson")
p8.user_picture.attach(io: file, filename: 'p8.jpg', content_type: 'image/jpg')
p8.save

file = URI.open('https://imagizer.imageshack.com/v2/800x600q90/923/QZHc0V.jpg')
p9 = User.new(email: "parent9@gmail.com", password: "123456", role: "parent", daycare_id: d1.id, phone_number: "0612345699", first_name: "Evelyn", last_name: "Lee")
p9.user_picture.attach(io: file, filename: 'p9.jpg', content_type: 'image/jpg')
p9.save

file = URI.open('https://imagizer.imageshack.com/v2/800x600q90/922/LuUEyZ.jpg')
p10 = User.new(email: "parent10@gmail.com", password: "123456", role: "parent", daycare_id: d2.id, phone_number: "0612345690", first_name: "Patrick", last_name: "Jones")
p10.user_picture.attach(io: file, filename: 'p10.jpg', content_type: 'image/jpg')
p10.save

file = URI.open('https://imagizer.imageshack.com/v2/800x600q90/923/jktiFO.jpg')
p11 = User.new(email: "parent11@gmail.com", password: "123456", role: "parent", daycare_id: d2.id, phone_number: "0612345600", first_name: "Carry", last_name: "Garcia")
p11.user_picture.attach(io: file, filename: 'p11.jpg', content_type: 'image/jpg')
p11.save

file = URI.open('https://imagizer.imageshack.com/v2/800x600q90/922/qTmxR3.jpg')
p12 = User.new(email: "parent12@gmail.com", password: "123456", role: "parent", daycare_id: d1.id, phone_number: "0612345601", first_name: "Andrew", last_name: "Robinson")
p12.user_picture.attach(io: file, filename: 'p12.jpg', content_type: 'image/jpg')
p12.save

file = URI.open('https://imagizer.imageshack.com/v2/800x600q90/924/zPAAga.jpg')
p13 = User.new(email: "parent13@gmail.com", password: "123456", role: "parent", daycare_id: d1.id, phone_number: "0612345602", first_name: "Lisa", last_name: "Robinson")
p13.user_picture.attach(io: file, filename: 'p13.jpg', content_type: 'image/jpg')
p13.save
puts "Users added!"


puts "Adding children..."
file = URI.open("https://imagizer.imageshack.com/v2/800x600q90/922/2KmJjz.jpg")
c1 = Child.new(first_name: "Liam", last_name: "Smith", birthdate: DateTime.new(2021,2,3), personal_information: "Liam is a vegetarian", daycare_id: d1.id)
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
a1 = Activity.create(category: "Sleep", sub_category: "Get out of bed", date: DateTime.new(2021,8,31), time: Time.new(2021,8,31,11,30), child_id: c1.id, user_id: e1.id)
a2 = Activity.create(category: "Sleep", sub_category: "Go to bed", date: DateTime.new(2021,8,31), time: Time.new(2021,8,31,10,0), child_id: c1.id, user_id: e2.id)
a3 = Activity.create(category: "Food", sub_category: "Fruit", date: DateTime.new(2021,8,31), time: Time.new(2021,8,31,9,0), child_id: c1.id, user_id: e1.id)
a4 = Activity.create(category: "Sleep", sub_category: "Go to bed", date: DateTime.new(2021,9,9), time: Time.new(2021,9,1,15,0), child_id: c1.id, user_id: e1.id)
a5 = Activity.create(category: "Food", sub_category: "Bread", date: DateTime.new(2021,9,9), time: Time.new(2021,9,3,14,0), child_id: c1.id, user_id: e1.id)
a6 = Activity.create(category: "Play", sub_category: "Play outside", date: DateTime.new(2021,9,9), time: Time.new(2021,9,3,13,0), child_id: c1.id, user_id: e1.id)
a7 = Activity.create(category: "Sleep", sub_category: "Get out of bed", date: DateTime.new(2021,9,9), time: Time.new(2021,9,3,12,0), child_id: c1.id, user_id: e1.id)
a8 = Activity.create(category: "Sleep", sub_category: "Go to bed", date: DateTime.new(2021,9,9), time: Time.new(2021,9,3,10,0), child_id: c1.id, user_id: e1.id)

file = URI.open('https://imagizer.imageshack.com/v2/800x600q90/923/i713TX.jpg')
a9 = Activity.new(category: "Food", sub_category: "Bread", comment: "He ate some pieces of bread", date: DateTime.new(2021,9,10), time: Time.new(2021,9,3,14,0), child_id: c1.id, user_id: e1.id)
a9.pictures.attach(io: file, filename: 'gijs_food', content_type: 'image/jpg')
a9.save

a10 = Activity.create(category: "Play", sub_category: "Play inside", comment: "He played inside, trying to grab the animals on the baby gym", date: DateTime.new(2021,9,10), time: Time.new(2021,9,3,13,0), child_id: c1.id, user_id: e1.id)
a11 = Activity.create(category: "Sleep", sub_category: "Get out of bed", date: DateTime.new(2021,9,10), time: Time.new(2021,9,3,12,0), child_id: c1.id, user_id: e1.id)

file = URI.open('https://imagizer.imageshack.com/v2/800x600q90/922/9r8Oqd.jpg')
a12 = Activity.new(category: "Sleep", sub_category: "Go to bed", comment: "Sleeping is his favorite activity", date: DateTime.new(2021,9,10), time: Time.new(2021,9,3,10,0), child_id: c1.id, user_id: e1.id)
a12.pictures.attach(io: file, filename: 'gijs_sleep', content_type: 'image/jpg')
a12.save


puts "Activities added!"
