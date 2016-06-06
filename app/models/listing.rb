class Listing < ActiveRecord::Base

	validates :state_name, inclusion: {in: STATES}
	validates :city, presence: true

	belongs_to :user

	validate :listing_count_within_limit, :on => :create

  def listing_active?
    listing.user.subscribed == true
  end

  def listing_count_within_limit
    if self.user.listings(:reload).count >= 50
      # limit amount of listings per account to 50. TODOlater, make it possible for users to 'add another batch' of 50 listings by increasing monthly pay. Probably an upgrade to another subscription.
      errors.add(:base, "To create more than 50 listings, please sign out and create another user account.")
    end
  end

  def city=(val)
    write_attribute(:city, val.titleize)
  end
	
end

