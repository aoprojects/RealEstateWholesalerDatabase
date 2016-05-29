class Listing < ActiveRecord::Base
	
	# STATES = ["Alabama", 
	# 			"Alaska", 
	# 			"Arizona", 
	# 			"Arkansas", 
	# 			"California", 
	# 			"Colorado", 
	# 			"Connecticut", 
	# 			"Delaware", 
	# 			"Florida", 
	# 			"Georgia", 
	# 			"Hawaii", 
	# 			"Idaho", 
	# 			"Illinois", 
	# 			"Indiana", 
	# 			"Iowa", 
	# 			"Kansas", 
	# 			"Kentucky", 
	# 			"Louisiana", 
	# 			"Maine", 
	# 			"Maryland", 
	# 			"Massachusetts", 
	# 			"Michigan", 
	# 			"Minnesota", 
	# 			"Mississippi", 
	# 			"Missouri", 
	# 			"Montana", 
	# 			"Nebraska", 
	# 			"Nevada", 
	# 			"New Hampshire", 
	# 			"New Jersey", 
	# 			"New Mexico", 
	# 			"New York", 
	# 			"North Carolina", 
	# 			"North Dakota", 
	# 			"Ohio", 
	# 			"Oklahoma", 
	# 			"Oregon", 
	# 			"Pennsylvania", 
	# 			"Rhode Island", 
	# 			"South Carolina", 
	# 			"South Dakota", 
	# 			"Tennessee", 
	# 			"Texas", 
	# 			"Utah", 
	# 			"Vermont", 
	# 			"Virginia", 
	# 			"Washington", 
	# 			"West Virginia", 
	# 			"Wisconsin", 
	# 			"Wyoming"
	# 			]

	validates :state_name, inclusion: {in: STATES}
	validates :city, presence: true

	belongs_to :user

  def city=(val)
    write_attribute(:city, val.titleize)
  end
	
end

