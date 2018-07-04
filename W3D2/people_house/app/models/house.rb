class House < ActiveRecord::Base
  has_many :people,
   primary_key: :id,
   foreign_key: :house_id,
   class_name: 'People' #the name of the class we
      #want to return
end
