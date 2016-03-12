class Project < ActiveRecord::Base
  belongs_to :refugee

  has_many :project_users
  has_many :users, through: :project_users

  has_attached_file :picture, styles: { medium: "300x300>", thumb: "100x100>", large: "600x600" }
  validates_attachment_content_type :picture, content_type: /\Aimage\/.*\Z/
end

