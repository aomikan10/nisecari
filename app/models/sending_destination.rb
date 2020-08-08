class SendingDestination < ApplicationRecord
  belongs_to :user
  validates :destination_first_name, :destination_family_name, :destination_first_name_kana, :destination_family_name_kana, :post_code, :prefecture_code, :city, :house_number, :phone_number, presence: true
end
