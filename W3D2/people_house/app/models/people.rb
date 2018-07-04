class People < ActiveRecord::Base
  validates :name, presence: true, uniqueness: true

  belongs_to :house,
    primary_key: :id,
    foreign_key: :house_id,
    class_name: 'House'


  has_many :car,
    primary_key: :id,
    foreign_key: :owner_id,
    class_name: 'Car'
  # def house
  #   House.find(self.hou se_id)
  # end
end
