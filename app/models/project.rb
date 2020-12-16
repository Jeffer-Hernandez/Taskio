class Project < ApplicationRecord

    belongs_to :user

    has_many :tasks
    has_many :users, through: :tasks, source: :user
    has_many :comments, through: :tasks

end
