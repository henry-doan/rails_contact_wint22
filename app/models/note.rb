class Note < ApplicationRecord
  belongs_to :contact
  has_many :comments, dependent: :destroy
end
