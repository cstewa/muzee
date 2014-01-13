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
  #users i follow
  def followingUsers
    User.find(self.following.pluck(:following_id))
  end

  #users that follow me
  def followerUsers
    User.find(self.followers.pluck(:follower_id))
  end

  # these get the Artist model and let you extract info only in that model
  def artistUser
    Artist.find(self.profile_id)
  end

  def venueUser
    Venue.find(self.profile_id)
  end

  def fanUser
    Fan.find(self.profile_id)
  end

  def artist?
    return true if self.profile_type == "--- !ruby/class 'Artist'\n"
  end

  def venue?
    return true if self.profile_type == "--- !ruby/class 'Venue'\n"
  end

  def fan?
    return true if "--- !ruby/class 'Fan'\n"
  end

  def self.artist_users
    User.where(:profile_type => "--- !ruby/class 'Artist'\n")
  end

  def self.venue_users
    User.where(:profile_type => "--- !ruby/class 'Venue'\n")
  end

  def self.fan_users
    User.where(:profile_type => "--- !ruby/class 'Fan'\n")
  end
  #remember your notes for saving diff kinds of users!
end


