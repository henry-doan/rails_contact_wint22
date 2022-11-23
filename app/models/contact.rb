class Contact < ApplicationRecord
  # file run logic and rules and constriants on the obj 

  # Associations - define relationships between other models
  # one assoc per relationships

  # belongs_to
  #   - tell who the parent is 
  #   - child model 
  #   belongs_to :parent 

  # has_many
  #   - tell who the children are 
  #   - related to many children of the one model 
  #   - in the parent model
  #   - has_many :children(s)

  # has_one 
  #   - tell who the child 
  #   - related to only one record of the child 
  #   - put in the parent model 
  #   - has_one :child

  # has_many :through
  # has_one :through 
  #   - parent 
  #   - adv 

  # dependent 
  #   - has one or has many, 

  # dependent: :destroy
  #   - delete the parent, it will also delete the children 
  #   - prevent orphan data in db

  has_many :notes, dependent: :destroy
  has_one :address, dependent: :destroy

  
  # Validations

  # Backbacks 

  # Methods

end
