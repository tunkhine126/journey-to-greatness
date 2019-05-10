User.all.destroy_all
Feeling.all.destroy_all
Reflection.all.destroy_all
#...

user1 = User.create(firstname: "Evan", lastname: "Kim", stress: 1)
user2 = User.create(firstname: "Tun", lastname: "Khine", stress: 2)
user3 = User.create(firstname: "Andrew", lastname: "Allen", stress: 3)

Reflection.create(date: Time.now, title: "new entry", entry: "asdfadfjkajsldfk", user_id: user1.id, feeling_id: nil)
Reflection.create(date: Time.now, title: "new entry", entry: "asdfadfjkajsldfk", user_id: user1.id, feeling_id: nil)
Reflection.create(date: Time.now, title: "new entry", entry: "asdfadfjkajsldfk", user_id: user1.id, feeling_id: nil)
Reflection.create(date: Time.now, title: "new entry", entry: "asdfadfjkajsldfk", user_id: user1.id, feeling_id: nil)
