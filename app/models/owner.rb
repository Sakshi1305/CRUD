class Owner < User
  has_many :pictures, as: :imageable
end
