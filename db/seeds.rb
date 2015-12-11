# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.destroy_all
Video.destroy_all
Child.destroy_all

u1=User.create({name: "Darin", email: "darin@darin.com", password: "darin"})
u2=User.create({name: "Mom", email: "mom@mom.com", password: "mom"})
u3=User.create({name: "Francesca", email: "francesca@francesca.com", password: "francesca"})
u4=User.create({name: "Caroline", email: "caroline@caroline.com", password: "caroline"})
u5=User.create({name: "Diane", email: "diane@diane.com", password: "diane"})
u6=User.create({name: "Brandy", email: "brandy@brandy.com", password: "brandy"})


c1=Child.create({name: "Trevor"})
c2=Child.create({name: "Joey"})
c3=Child.create({name: "Olivia"})
c4=Child.create({name: "Zene"})
c5=Child.create({name: "Sevan"})
																				  
v1=Video.create({title: "test video 1", description: "Running in a diaper", url: "https://youtu.be/o3IZ61FM5Bc", shared: true})
v2=Video.create({title: "test video 2", description: "Chef Trevor", url: "https://youtu.be/V_j1aOajduw", shared: false})
v3=Video.create({title: "test video 3", description: "Charlie and the new toy", url: "https://youtu.be/cgQYBMMaPkQ", shared: true})
v4=Video.create({title: "test video 4", description: "Walk the dog", url: "https://youtu.be/kdQZJIu9ShU", shared: true})
v5=Video.create({title: "test video 5", description: "Dancing with Tigger", url: "https://youtu.be/LHeua9L8L34", shared: true})
v6=Video.create({title: "test video 6", description: "Guitar lessors", url: "https://youtu.be/3zRVgOyLs2I", shared: false})
v7=Video.create({title: "test video 7", description: "I don't need sleep", url: "https://youtu.be/J4h4S8lXYcM", shared: true})
v8=Video.create({title: "test video 8", description: "Jump, jump, jump", url: "https://youtu.be/gYYBaM1fsVQ", shared: true})


u3.children << c1
u4.children << c2
u4.children << c3
u5.children << c4
u6.children << c5

c1.videos << v1
u1.videos << v1

c1.videos << v2
u2.videos << v2

c2.videos << v3
u3.videos << p3

c2.videos << v4
u3.videos << v4

c2.videos << v5
u4.videos << v5

c3.videos << v6
u5.videos << v6

c4.videos << v7
u6.videos << p7

c5.videos << v8
u6.videos << v8