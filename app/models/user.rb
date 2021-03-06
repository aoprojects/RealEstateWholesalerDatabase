class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :listings, dependent: :destroy
  has_many :resources
  # TODO validate presence of non email and password fields, on create of new listing, not new user

  validates :email, presence: true
  validates :phone, presence: true, :length => { :maximum => 18 }
  validates :url, presence: true
  validates :company, presence: true, :length => { :maximum => 40 }
  validates :details, presence: true, :length => { :maximum => 500 }
  validates :specialties, presence: true, :length => { :maximum => 150 }
  validates_acceptance_of :terms, :allow_nil => false, :acceptance => true, :on => :create

  def company=(val)
    write_attribute(:company, val.titleize)
  end
end
