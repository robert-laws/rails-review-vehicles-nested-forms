Vehicle.delete_all
Owner.delete_all

@owner_1 = Owner.create(name: "Bob Cobb", age: 34, experience: 6)
@owner_2 = Owner.create(name: "Hal Hope", age: 26, experience: 5)
@owner_3 = Owner.create(name: "Jim Jupe", age: 23, experience: 2)
@owner_4 = Owner.create(name: "Kal Kool", age: 19, experience: 1)
@owner_5 = Owner.create(name: "Mel Mope", age: 39, experience: 12)

Vehicle.create(name: "Fast Car", model: "Sporty", model_year: 2012, pass_safety_test: true, owner: @owner_1)
Vehicle.create(name: "Slow Boat", model: "Cruiser", model_year: 2017, pass_safety_test: false, owner: @owner_2)
Vehicle.create(name: "New Motorcycle", model: "Bullet", model_year: 2007, pass_safety_test: true, owner: @owner_3)
Vehicle.create(name: "ATV Car", model: "Offroader", model_year: 2002, pass_safety_test: false, owner: @owner_4)
Vehicle.create(name: "Speed Boat", model: "Speed Splash", model_year: 2018, pass_safety_test: true, owner: @owner_5)
Vehicle.create(name: "Helicopter", model: "Floater", model_year: 2015, pass_safety_test: true, owner: @owner_1)