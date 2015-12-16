# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Child.destroy_all
Video.destroy_all
User.destroy_all



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


																				  
v1=Video.create({title: "test video 1", description: "Running in a diaper", url: "https://www.youtube.com/embed/o3IZ61FM5Bc", shared: true})
v2=Video.create({title: "test video 2", description: "Chef Trevor", url: "https://www.youtube.com/embed/V_j1aOajduw", shared: false})
v3=Video.create({title: "test video 3", description: "Charlie and the new toy", url: "https://www.youtube.com/embed/cgQYBMMaPkQ", shared: true})
v4=Video.create({title: "test video 4", description: "Walk the dog", url: "https://www.youtube.com/embed/kdQZJIu9ShU", shared: true})
v5=Video.create({title: "test video 5", description: "Dancing with Tigger", url: "https://www.youtube.com/embed/LHeua9L8L34", shared: true})
v6=Video.create({title: "test video 6", description: "Guitar lessors", url: "https://www.youtube.com/embed/3zRVgOyLs2I", shared: false})
v7=Video.create({title: "test video 7", description: "I don't need sleep", url: "https://www.youtube.com/embed/J4h4S8lXYcM", shared: true})
v8=Video.create({title: "test video 8", description: "Jump, jump, jump", url: "https://www.youtube.com/embed/gYYBaM1fsVQ", shared: true})

=begin
v1=Video.create({title: "test video 1", description: "Running in a diaper", embed: '<iframe width="420" height="315" src="https://www.youtube.com/embed/o3IZ61FM5Bc" frameborder="0" allowfullscreen></iframe>', shared: true})
v2=Video.create({title: "test video 2", description: "Chef Trevor", embed: '<iframe width="420" height="315" src="https://www.youtube.com/embed/V_j1aOajduw" frameborder="0" allowfullscreen></iframe>', shared: false})
v3=Video.create({title: "test video 3", description: "Charlie and the new toy", embed: '<iframe width="420" height="315" src="https://www.youtube.com/embed/cgQYBMMaPkQ" frameborder="0" allowfullscreen></iframe>', shared: true})
v4=Video.create({title: "test video 4", description: "Walk the dog", embed: '<iframe width="420" height="315" src="https://www.youtube.com/embed/kdQZJIu9ShU" frameborder="0" allowfullscreen></iframe>', shared: true})
v5=Video.create({title: "test video 5", description: "Dancing with Tigger", embed: '<iframe width="420" height="315" src="https://www.youtube.com/embed/LHeua9L8L34" frameborder="0" allowfullscreen></iframe>', shared: true})
v6=Video.create({title: "test video 6", description: "Guitar lessors", embed: '<iframe width="420" height="315" src="https://www.youtube.com/embed/3zRVgOyLs2I" frameborder="0" allowfullscreen></iframe>', shared: false})
v7=Video.create({title: "test video 7", description: "I don't need sleep", embed: '<iframe width="420" height="315" src="https://www.youtube.com/embed/J4h4S8lXYcM" frameborder="0" allowfullscreen></iframe>', shared: true})
v8=Video.create({title: "test video 8", description: "Jump, jump, jump", embed: '<iframe width="420" height="315" src="https://www.youtube.com/embed/gYYBaM1fsVQ" frameborder="0" allowfullscreen></iframe>', shared: true})
=end

u3.children << c1
u4.children << c2
u4.children << c3
u5.children << c4
u6.children << c5



u1.videos << v1
u2.videos << v2
u3.videos << v3
u3.videos << v4
u4.videos << v5
u5.videos << v6
u6.videos << v7
u6.videos << v8




c1.user.videos << v1
c1.user.videos << v2
c2.user.videos << v3
c2.user.videos << v4
c2.user.videos << v5
c3.user.videos << v6
c4.user.videos << v7
c5.user.videos << v8





