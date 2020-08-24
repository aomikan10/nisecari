class Item < ApplicationRecord

  has_many :item_images, dependent: :destroy
  belongs_to :category
  belongs_to :user, optional:true
  has_many :favorites, dependent: :destroy
  has_many :favorites, through: :favorites, source: :user
  belongs_to :seller, class_name: "User"
  belongs_to :buyer, class_name: "User", optional: true
  belongs_to :brand
  validates :item_introduction, length: {maximum: 1000}, presence: true
  validates :name, length: {maximum: 40}, presence: true
  validates :price, presence: true
  accepts_nested_attributes_for :brand
  validates :item_condition_id, :postage_payer, :prefecture, :preparation_day, presence: true
  accepts_nested_attributes_for :item_images, allow_destroy: true
  validates :item_images, length: { minimum: 1, maximum: 10 }, presence: true

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :item_condition
  belongs_to_active_hash :postage_payer
  belongs_to_active_hash :preparation_day
  belongs_to_active_hash :prefecture
end
