class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :listings
  has_many :resources
  # TODO validate presence of non email and password fields, on create of new listing, not new user

  validates :email, presence: true
  validates :company, presence: true
  validates :company, :length => { :maximum => 15 }
  validates :details, :length => { :maximum => 500 }
  validates :specialties, :length => { :maximum => 150 }
  validates_acceptance_of :terms, :allow_nil => false, :acceptance => true, :on => :create


  def company=(val)
    write_attribute(:company, val.titleize)
  end
end
