class User < ActiveRecord::Base
  attr_accessible :first_name, :last_name, :photo, :profile_id, :profile_type, :email, :password, :password_confirmation

  validates_confirmation_of :password
  validates_presence_of :password, :on => :create
  validates_presence_of :email
  validates_uniqueness_of :email

  authenticates_with_sorcery!

  has_many :follows
  belongs_to :profile, :polymorphic => true

  # Get a list of all the people that follow me
  def followers
    Follow.where("following_id = ?", self.id)
  end

  # Get a list of all the people I am following
  def following
    Follow.where("follower_id = ?", self.id)
  end

  #just makes this into the actual User class
  def followingUsers
    User.find(self.following.pluck(:following_id))
  end

  def followerUsers
    User.find(self.followers.pluck(:follower_id))
  end

end
