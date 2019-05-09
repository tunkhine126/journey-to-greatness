User.all.delete_all
Feeling.all.delete_all
Reflection.all.delete_all


evan = User.create(firstname: "Evan", lastname: "Kim", stress: 5)
tun = User.create(firstname: "Tun", lastname: "Khine", stress: 7)
andrew = User.create(firstname: "Andrew", lastname: "Allen", stress: 10)

feel1 = Feeling.create(stress: 5, date: DateTime.now]
feel2 = Feeling.create(stress: 7, date: DateTime.now)
feel3 = Feeling.create(stress: 10, date: DateTime.now)

reflt1 = Reflection.create(date: DateTime.now, firstname: "Evan", lastname: "Kim", stress: 5, entry: "Testing1"]
reflt2 = Reflection.create(date: DateTime.now, firstname: "Tun", lastname: "Khine", stress: 7, entry: "Testing2")
reflt3 = Reflection.create(date: DateTime.now, firstname: "Andrew", lastname: "Allen", stress: 10 entry: "Testing3")
