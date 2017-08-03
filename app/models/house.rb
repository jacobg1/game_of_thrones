class House < ApplicationRecord
  has_many :characters, dependent: :destroy
  belongs_to :user
end
