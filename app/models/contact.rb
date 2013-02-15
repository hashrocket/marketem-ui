class Contact < ActiveRecord::Base

  attr_accessible :full_name, :phone_number, :zip_code, :gender, :birthdate

  def age
    Time.now.year - birthdate.year
  end

end
