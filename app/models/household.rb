class Household < ActiveRecord::Base
  has_many :addresses
  has_many :people
  belongs_to :head_of_house, class_name: "Person",
                     primary_key: :id,
                     foreign_key: :head_of_house



end
