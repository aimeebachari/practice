class User < ActiveRecord::Base
  has_many :projects, through: :user_projects

  validates :name, presence: true
end
