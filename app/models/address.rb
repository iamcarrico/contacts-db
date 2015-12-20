class Address < ActiveRecord::Base
  belongs_to :household

  # Check to see if an address is international or not.
  def is_international?
    internation.present?
  end
end
