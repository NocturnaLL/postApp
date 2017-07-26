class Post < ApplicationRecord
  validates :title, presence: true
  belongs_to :category
  has_many :comments, :dependent => :destroy
  belongs_to :user

  has_attached_file :avatar, :styles => { :medium => "300x300>", :thumb => "100x100#" }, :default_url => "/images/posts/:style/missing.jpg"
  validates_attachment_content_type :avatar, :content_type => /\Aimage\/.*\Z/





end
