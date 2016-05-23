class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :listings
  has_many :resources
  

  validates :email, presence: true
  validates :company, presence: true
  validates :details, :length => { :maximum => 500 }
  validates :specialties, :length => { :maximum => 150 }
  validates :terms_of_service, :acceptance => true

  def company=(val)
    write_attribute(:company, val.titleize)
  end
end
