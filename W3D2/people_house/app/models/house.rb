class House < ActiveRecord::Base
  validates :address, presence: true, uniqueness: true

  has_many :people,
   primary_key: :id,
   foreign_key: :house_id,
   class_name: 'People' #the name of the class we
      #want to return

  has_many :car,
    through: :people,
    source: :car


 # def car # find the cars belong to this household
 #   cars = []
 #   self.people.each do |p|
 #     cars << p.car
 #   end
 #   cars
 # end


end
