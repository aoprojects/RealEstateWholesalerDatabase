class Listing < ActiveRecord::Base

	validates :state_name, inclusion: {in: STATES}
	validates :city, presence: true

	belongs_to :user

	validate :listing_count_within_limit, :on => :create

  def listing_count_within_limit
    if self.user.listings(:reload).count >= 50
      errors.add(:base, "To create more than 50 listings, please sign out and create another user account.")
    end
  end

  def city=(val)
    write_attribute(:city, val.titleize)
  end
	
end

