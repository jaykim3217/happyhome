class RoomType < ActiveHash::Base
  self.data = [
    { id: 1, name: '---'},
    { id: 2, name: '1K'},
    { id: 3, name: 'マンション'},
    { id: 4, name: 'アパート'},
    { id: 5, name: '事務空間'},
    { id: 6, name: '商業空間'},
    { id: 7, name: 'その他'}
  ]

  include ActiveHash::Associations
  has_many :tweets

end