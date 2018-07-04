class Car < ActiveRecord::Base
  belongs_to :owner,
    primary_key: :id,
    foreign_key: :owner_id,
    class_name: 'People'

  has_one :house,
    through: :people,
    source: :House
end
