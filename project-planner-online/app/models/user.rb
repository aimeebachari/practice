class User < ApplicationRecord::Base
  has_many :projects

  validates :name, presence: true
end
