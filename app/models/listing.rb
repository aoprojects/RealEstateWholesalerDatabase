class Listing < ActiveRecord::Base

	validates :state_name, inclusion: {in: STATES}
	validates :city, presence: true

	belongs_to :user

  def city=(val)
    write_attribute(:city, val.titleize)
  end
	
end

