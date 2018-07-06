class Car < ActiveRecord::Base
  belongs_to :owner,
    primary_key: :id,
    foreign_key: :owner_id,
    class_name: 'People'

  has_many :houses,
    through: :owner,
    source: :House
end
