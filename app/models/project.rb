class Project < ActiveRecord::Base
  belongs_to :refugee

  has_many :project_users
  has_many :users, through: :project_users
end

