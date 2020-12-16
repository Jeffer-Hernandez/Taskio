class Task < ApplicationRecord

  belongs_to :project

  has_many :comments
  has_many :users, through: :projects
  has_many :comments, through: :users

end
