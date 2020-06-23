class Erequest < ApplicationRecord
     # model association

  # validations
  validates_presence_of :title, :created_by
end
