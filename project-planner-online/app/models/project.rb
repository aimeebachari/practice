class Project < ApplicationRecord::Base
  has_many :users

  validates :name, presence: true
end
