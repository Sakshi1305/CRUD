class LocationSerializer < ActiveModel::Serializer
  attributes :id, :loc_name, :city, :state, :zipcode
  belongs_to :user
end
