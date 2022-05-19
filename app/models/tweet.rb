class Tweet < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :room_size
  belongs_to :room_type
  belongs_to :space
  belongs_to :user
  has_many :comments

  has_one_attached :image

  validates :image, presence: true
  validates :room_size_id, presence: true, numericality: { other_than: 1 , message: "can't be blank"}
  validates :room_type_id, presence: true, numericality: { other_than: 1 , message: "can't be blank"}
  validates :space_id, presence: true, numericality: { other_than: 1 , message: "can't be blank"}
end
