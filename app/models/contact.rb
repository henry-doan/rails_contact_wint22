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
    # - make rules and constrainst of your model
    # validates :attr how we are validating
    # confirmation -
    #   helper make sure that two fields are the same 
    #   password
    #   password_confirm

    # inclusion
      # - inside or including in this list 
      # class Coffee < ActiveRecord::Base
      #   validates :size, inclusion: { 
      #     in: %w(small medium large),
      #       message: "%{value} is not a valid size" 
      #   }
      # end
      

    # length
    #   - how many characters it should be
    # class Person < ActiveRecord::Base
    #   validates :name, length: { minimum: 2 }
    #   validates :bio, length: { maximum: 500 }
    #   validates :password, length: { in: 6..20 }
    #   validates :registration_number, length: { is: 6 }
    # end

    # numericality
      # - only numeric value 
      # class Player < ActiveRecord::Base
      #   validates :points, numericality: true
      #   validates :games_played, numericality: { only_integer: true }
      #   validates :golf_handicap, numericality: { less_than_or_equal_to: 40.4, greater_than_or_equal_to: 2 }
      # end
      
    # presence 
    #   - fill out the field, not blank
    # class Person < ActiveRecord::Base
    #   validates :name, :login, :email, presence: true
    # end

    # uniqueness
      # - has one copy of the whole table
    # class Account < ActiveRecord::Base
    #   validates :email, uniqueness: true
    # end
      
    # allow_nil 
    # class Coffee < ActiveRecord::Base
    #   validates :size, inclusion: { in: %w(small medium large),
    #   message: "%{value} is not a valid size" }, allow_nil: true
    # end

    # allow_blank empty string 
    # validates :title, length: { is: 5 }, allow_blank: true

    # message - error msg 

    # on run this logic on certain actions

    # class Person < ActiveRecord::Base
    #   validates :email, uniqueness: true, on: :create
    #   validates :age, numericality: true, on: :update
    #   validates :name, presence: true, on: :save
    # end

  validates :email, :first_name, :last_name, :age, presence: true 
  validates :email, uniqueness: true 
  validates :age, numericality: { only_integer: true }

  # Callbacks 
    # - trigger a method on a action 
    # before_validation
    # after_validation
    # before_create
    # after_create
    # around_create
    # before_save
    # after_save
    # around_save

    # before run first 
    # after run after everything is done 
    # around running before and after

    # class CreditCard < ActiveRecord::Base
    #   before_save :encrypt_card_number
     
    #   private
     
    #     def encrypt_card_number
    #       self.card_number = bcrypt(self.card_number)
    #     end
    # end

  # Attr Serialization 
  # have a field be a n array 
  # serialize :attr, Array
  # not going to do it this way, create more models and table instead

  # Methods

  # Class 
  # - doing the logic to the model as a whole 
  # class Person < ActiveRecord::Base
  #   # called on a class Person.by_first_name
  #   def self.by_first_name
  #     order(:first_name)
  #   end
  # end

  # Person.by_first_name

  # Instance
    # - change the value base off of each record 
    # class Person < ActiveRecord::Base
    #   # called on an instance @person.full_name
    #   def full_name
    #    "#{self.first_name} {self.last_name}"
    #   end
    # end

  # Fat models, skinny controllers 
  # any logic with the obj it will be in the model
    
end
