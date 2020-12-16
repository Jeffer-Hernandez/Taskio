class Task < ApplicationRecord

  belongs_to :project
  belongs_to :user

  has_many :comments
  has_many :users, through: :projects, source: :user
 

end
