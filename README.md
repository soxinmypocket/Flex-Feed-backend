# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...
Domain model with attributes:

 E.g.  User -< VisionBoard-< addPictureToBoard >-Pictures

User :has_many visionboards, :has_many pictures through visionboards

Visionboard belongs_to user,  has_many pictures

Pictures has_many visionboards, has_many users through visionboards


Models
User: username (str)
VisionBoard: title(str), photos(str), description(str), author(str)
Pictures: category(str), image(str), title(str), desc(str), like(bool)

Joiner:
addPictureToBoard picture_id, visionboard_id

E.g.  User -< VisionBoard-< addPictureToBoard >-Pictures

User :has_many visionboards, :has_many pictures through visionboards

Visionboard belongs_to user,  has_many pictures

Pictures has_many visionboards, has_many users through visionboards


for each category

create a card 

//sign in form at top
// vision board is automatically generated 
// add an add picture at the bottom to add more pictures to the form