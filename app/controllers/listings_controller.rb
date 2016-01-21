class ListingsController < ApplicationController
  before_action :set_listing, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, only: [:new, :create, :edit, :update, :destroy]
  


  def index
    if params[:state_id].blank?
      @listings = Listing.all.paginate(:page => params[:page], :per_page => 25)
    else
      @state_id = State.find_by(state_name: params[:state_name]).id
    end  
  end

 
  def show
    
  end

 
  def new
    @listing = current_user.listings.build
  end
 
  def create
    @listing = current_user.listings.build(listing_params)

    respond_to do |format|
      if @listing.save
        format.html { redirect_to @listing, notice: 'Listing was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end

  def edit
  end
 
  def update
    respond_to do |format|
      if @listing.update(listing_params)
        format.html { redirect_to @listing, notice: 'Listing was successfully updated.' }
        format.json { render :show, status: :ok, location: @listing }
      else
        format.html { render :edit }
      end
    end
  end

 
  def destroy
    @listing.destroy
    respond_to do |format|
      format.html { redirect_to listings_url, notice: 'Listing was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    
    def set_listing
      @listing = Listing.find(params[:id])
    end

    def correct_user
        @listing = current_user.listings.find_by(id: params[:id])
        redirect_to listings_path, notice: "You are not authorized to edit this listing" if @listing.nil?
    end   

    # Never trust parameters from the scary internet, only allow the white list through.
    def listing_params
      params.require(:listing).permit(:city, :state_id, :user_id)
    end


end
