class Post < ApplicationRecord
  validates :title, presence: true
  belongs_to :category
  has_many :comments, :dependent => :destroy
  belongs_to :user
end
