class Location < ApplicationRecord
  belongs_to :user, optional: :true
  has_many :pictures, as: :imageable
end
