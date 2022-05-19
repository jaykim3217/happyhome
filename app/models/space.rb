class Space < ActiveHash::Base
  self.data = [
    { id: 1, name: '---'},
    { id: 2, name: '1K'},
    { id: 3, name: 'リビング'},
    { id: 4, name: 'ベッドルーム'},
    { id: 5, name: 'キッチン'},
    { id: 6, name: 'お風呂場'},
    { id: 7, name: '子供部屋'},
    { id: 8, name: 'ドレスルーム'},
    { id: 9, name: '事務空間'},
    { id: 10, name: 'ベランダ・テラス'},
    { id: 11, name: '玄関'},
    { id: 12, name: 'その他'}
  ]

  include ActiveHash::Associations
  has_many :tweets

end