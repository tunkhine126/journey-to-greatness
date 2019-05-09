User.all.delete_all
Feeling.all.delete_all
Reflection.all.delete_all


User.create(firstname: "Evan", lastname: "Kim", stress: 5)
User.create(firstname: "Tun", lastname: "Khine", stress: 7)
User.create(firstname: "Andrew", lastname: "Allen", stress: 10)

Feeling.create(stress: 5, date: DateTime.now]
Feeling.create(stress: 7, date: DateTime.now)
Feeling.create(stress: 10, date: DateTime.now)

Reflection.create(date: DateTime.now, firstname: "Evan", lastname: "Kim", stress: 5, entry: "Testing1"]
Reflection.create(date: DateTime.now, firstname: "Tun", lastname: "Khine", stress: 7, entry: "Testing2")
Reflection.create(date: DateTime.now, firstname: "Andrew", lastname: "Allen", stress: 10 entry: "Testing3")
