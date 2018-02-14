class Moussaillon < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable

	

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

has_many :gossips

  validate :validate_invite, :on => :create
  attr_accessor :invite

  def validate_invite
    if self.invite != "GOSSIP_2017"
      self.errors[:base] << "The Invitation Code is Incorrect"
    end
  end


end
