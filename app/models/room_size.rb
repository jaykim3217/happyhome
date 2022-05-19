class RoomSize < ActiveHash::Base
  self.data = [
    { id: 1, name: '---'},
    { id: 2, name: '10坪以下'},
    { id: 3, name: '10坪台'},
    { id: 4, name: '20坪台'},
    { id: 5, name: '30坪台'},
    { id: 6, name: '40坪台'},
    { id: 7, name: '50坪以上'}
  ]

  include ActiveHash::Associations
  has_many :tweets

end