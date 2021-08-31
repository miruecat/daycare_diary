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
admin = User.create(email: "admin@gmail.com", password: "123456", role: "employee", admin: true, daycare_id = d1.id, phone_number: 0612345678), first_name: "Ad", last_name: "Min")
e1 = User.create(email: "employee1@gmail.com", password: "123456", role: "employee", admin: false, daycare_id = d1.id, phone_number: 0612345681), first_name: "Peter", last_name: "Great")
e2 = User.create(email: "employee2@gmail.com", password: "123456", role: "employee", admin: false, daycare_id = d1.id, phone_number: 0612345682), first_name: "Ellen", last_name: "McGee")
e3 = User.create(email: "employee3@gmail.com", password: "123456", role: "employee", admin: false, daycare_id = d2.id, phone_number: 0612345683), first_name: "Helen", last_name: "Banner")
e4 = User.create(email: "employee4@gmail.com", password: "123456", role: "employee", admin: false, daycare_id = d2.id, phone_number: 0612345684), first_name: "Greg", last_name: "Nagayama")
p1 = User.create(email: "parent1@gmail.com", password: "123456", role: "parent", admin: false, daycare_id = d1.id, phone_number: 0612345691), first_name: "Thomas", last_name: "Smith")
p2 = User.create(email: "parent2@gmail.com", password: "123456", role: "parent", admin: false, daycare_id = d1.id, phone_number: 0612345692), first_name: "Claire", last_name: "Johnson")
p3 = User.create(email: "parent3@gmail.com", password: "123456", role: "parent", admin: false, daycare_id = d1.id, phone_number: 0612345693), first_name: "Niko", last_name: "Williams")
p4 = User.create(email: "parent4@gmail.com", password: "123456", role: "parent", admin: false, daycare_id = d1.id, phone_number: 0612345694), first_name: "Samantha", last_name: "Brown")
p5 = User.create(email: "parent5@gmail.com", password: "123456", role: "parent", admin: false, daycare_id = d1.id, phone_number: 0612345695), first_name: "Graham", last_name: "Miller")
p6 = User.create(email: "parent6@gmail.com", password: "123456", role: "parent", admin: false, daycare_id = d1.id, phone_number: 0612345696), first_name: "John", last_name: "Davis")
p7 = User.create(email: "parent7@gmail.com", password: "123456", role: "parent", admin: false, daycare_id = d1.id, phone_number: 0612345697), first_name: "Lisa", last_name: "Wilson")
p8 = User.create(email: "parent8@gmail.com", password: "123456", role: "parent", admin: false, daycare_id = d1.id, phone_number: 0612345698), first_name: "Mia", last_name: "Anderson")
p9 = User.create(email: "parent9@gmail.com", password: "123456", role: "parent", admin: false, daycare_id = d1.id, phone_number: 0612345699), first_name: "Evelyn", last_name: "Lee")
p10 = User.create(email: "parent10@gmail.com", password: "123456", role: "parent", admin: false, daycare_id = d2.id, phone_number: 0612345690), first_name: "Patrick", last_name: "Jones")
p11 = User.create(email: "parent11@gmail.com", password: "123456", role: "parent", admin: false, daycare_id = d2.id, phone_number: 0612345600), first_name: "Carry", last_name: "Garcia")
puts "Users added!"

puts "Adding children..."
c1 = Child.create(first_name: "Liam", last_name: "Smith", birthdate: 2021-02-02, daycare_id: d1.id)
c2 = Child.create(first_name: "Olivia", last_name: "Smith", birthdate: 2020-01-12, daycare_id: d1.id)
c3 = Child.create(first_name: "Noah", last_name: "Williams", birthdate: 2019-04-04, daycare_id: d1.id)
c4 = Child.create(first_name: "Emma", last_name: "Williams", birthdate: 2021-05-03, daycare_id: d1.id)
c5 = Child.create(first_name: "Sophia", last_name: "Miller", birthdate: 2019-12-10, daycare_id: d1.id)
c6 = Child.create(first_name: "Lucas", last_name: "Wilson", birthdate: 2018-09-11, daycare_id: d1.id)
c7 = Child.create(first_name: "Henry", last_name: "Anderson", birthdate: 2020-03-18, daycare_id: d1.id)
c8 = Child.create(first_name: "Isabella", last_name: "Lee", birthdate: 2020-12-25, daycare_id: d1.id)
c9 = Child.create(first_name: "Mary", last_name: "Jones", birthdate: 2020-08-08, daycare_id: d2.id)
c10 = Child.create(first_name: "Grace", last_name: "Jones", birthdate: 2020-08-08, daycare_id: d2.id)
puts "Children added!"

puts "Adding parenthoods..."
p1 = Parenthood.create(user_id: p1.id, child_id: c1.id)
p2 = Parenthood.create(user_id: p2.id, child_id: c1.id)
p3 = Parenthood.create(user_id: p1.id, child_id: c2.id)
p4 = Parenthood.create(user_id: p2.id, child_id: c2.id)
p5 = Parenthood.create(user_id: p3.id, child_id: c3.id)
p6 = Parenthood.create(user_id: p4.id, child_id: c3.id)
p7 = Parenthood.create(user_id: p3.id, child_id: c4.id)
p8 = Parenthood.create(user_id: p4.id, child_id: c4.id)
p9 = Parenthood.create(user_id: p5.id, child_id: c5.id)
p10 = Parenthood.create(user_id: p6.id, child_id: c5.id)
p11 = Parenthood.create(user_id: p7.id, child_id: c6.id)
p12 = Parenthood.create(user_id: p8.id, child_id: c6.id)
p13 = Parenthood.create(user_id: p7.id, child_id: c7.id)
p14 = Parenthood.create(user_id: p8.id, child_id: c7.id)
p15 = Parenthood.create(user_id: p9.id, child_id: c8.id)
p16 = Parenthood.create(user_id: p10.id, child_id: c9.id)
p17 = Parenthood.create(user_id: p11.id, child_id: c9.id)
p18 = Parenthood.create(user_id: p10.id, child_id: c10.id)
p19 = Parenthood.create(user_id: p11.id, child_id: c10.id)
puts "Parenthoods added!"
