class Shop < ApplicationRecord
  belongs_to :user
  validates :name, presence: true, allow_nil: false, allow_blank: false
  validates :address, presence: true, allow_nil: false, allow_blank: false
end
