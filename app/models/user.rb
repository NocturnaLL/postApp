class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :posts
  has_many :comments
  has_many :sent_invites, class_name: "Relationship", foreign_key: :inviting_id
  has_many :received_invites, class_name: "Relationship", foreign_key: :invited_id
  has_many :invited_users, through: :sent_invites, source: :invited_user
  has_many :inviting_users, through: :received_invites, source: :inviting_user


  has_attached_file :avatar, :styles => { :medium => "300x300>", :thumb => "100x100#" }, :default_url => "/images/users/:style/missing.png"
  validates_attachment_content_type :avatar, :content_type => /\Aimage\/.*\Z/


  def full_name
      name.blank? ? email : name
  end


end
