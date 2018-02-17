Vehicle.delete_all
Owner.delete_all
EventComment.delete_all
Event.delete_all
Comment.delete_all

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

@event_1 = Event.create(title: "Fun Fest", description: "Lots of physical activities and food to enjoy", event_date: DateTime.new(2018, 2, 26, 10, 30, 0), registrations: 120, activities: 5)
@event_2 = Event.create(title: "Roller Derby", description: "Action packed day with competition between teams", event_date: DateTime.new(2018, 3, 12, 16, 0, 0), registrations: 24, activities: 2)
@event_3 = Event.create(title: "Bake-Off", description: "Battle between the best bakers in town", event_date: DateTime.new(2018, 4, 6, 8, 15, 0), registrations: 32, activities: 4)
@event_4 = Event.create(title: "Road Show", description: "See the best old-timey cars in this fun event", event_date: DateTime.new(2018, 3, 11, 12, 0, 0), registrations: 36, activities: 3)
@event_5 = Event.create(title: "Monster Mash Costume Competition", description: "See lots of scary people showing off their costumes", event_date: DateTime.new(2018, 6, 2, 17, 30, 0), registrations: 27, activities: 7)
@event_6 = Event.create(title: "Traveling Scientists", description: "Enjoy science demos from our team of brainy scientists", event_date: DateTime.new(2018, 4, 9, 17, 0, 0), registrations: 54, activities: 6)
@event_7 = Event.create(title: "Bowling Alleys", description: "Competition between top teams, come and support your friends", event_date: DateTime.new(2018, 5, 30, 9, 45, 0), registrations: 22, activities: 1)

@comment_1 = Comment.create(content: "This was fun")
@comment_2 = Comment.create(content: "Needed some food")
@comment_3 = Comment.create(content: "Confusing location and parking for event")
@comment_4 = Comment.create(content: "Had a great time")
@comment_5 = Comment.create(content: "Would have enjoyed it more later in the day")
@comment_6 = Comment.create(content: "Liked the decorations")
@comment_7 = Comment.create(content: "Good times and nice people")
@comment_7 = Comment.create(content: "Not as much fun as I had hoped")

EventComment.create(event: @event_1, comment: @comment_8)
EventComment.create(event: @event_2, comment: @comment_7)
EventComment.create(event: @event_3, comment: @comment_6)
EventComment.create(event: @event_4, comment: @comment_5)
EventComment.create(event: @event_5, comment: @comment_4)
EventComment.create(event: @event_6, comment: @comment_3)
EventComment.create(event: @event_7, comment: @comment_2)
EventComment.create(event: @event_8, comment: @comment_1)
EventComment.create(event: @event_7, comment: @comment_4)
EventComment.create(event: @event_6, comment: @comment_5)
EventComment.create(event: @event_5, comment: @comment_6)
EventComment.create(event: @event_4, comment: @comment_7)
EventComment.create(event: @event_3, comment: @comment_8)
EventComment.create(event: @event_2, comment: @comment_1)
EventComment.create(event: @event_1, comment: @comment_2)
EventComment.create(event: @event_2, comment: @comment_3)