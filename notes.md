Taskio

A Group Task Manager - An application that allowed the creation of task lists with individual tasks that can be assigned to a user would flex the majority of the requirements of this assessment. You would be able to create a list of tasks, add tasks to that list, assign those tasks to a user, and allow users to change the statuses of their tasks.

Models:

User:
    -has_many :projects
    -has_many :tasks
    _has_many :comments
    -has_many :comments, through :task
    -has_many :tasks, through :project
    -username
    -email
    -password_digest
    -image
    -uid

   

Task:

    -has_many :comments
    -has_many :users, through :projects
    -has_many :comments, through :users
    -belongs_to :project
    -name
    -status

Projects:

    -has_many :tasks
    -has_many :users, through :tasks
    -has_many :comments, through :tasks
    -name
    -description

    
Comments:

    -belongs_to :user
    -belongs_to :task
    -content
    

