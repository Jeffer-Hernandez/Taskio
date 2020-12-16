class User < ApplicationRecord

    has_many :projects
    has_many :tasks
    has_many :comments
    has_many :commented_tasks, through: :comments, source: :task
    has_many :tasks, through: :project

end
