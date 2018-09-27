class LocationMailer < ApplicationMailer

  def create_location(location, user)
    @location = location
    @user = user
    mail(to: @user.email, subject: "New Location Created")
  end
end
