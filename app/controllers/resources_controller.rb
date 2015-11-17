class ResourcesController < ApplicationController
  before_action :set_resource, only: [:show, :edit, :update, :destroy]

  # GET /resources
  def index
    @resources = Resource.all
  end

  # GET /resources/1
  def show
  end

  # GET /resources/new
  def new
    @resource = current_user.resources.build
  end

  # GET /resources/1/edit
  def edit
  end

  # POST /resources
  def create
    @resource = current_user.resources.build(resource_params)

    respond_to do |format|
      if @resource.save
        format.html { redirect_to @resource, notice: 'Resource was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end

  # PATCH/PUT /resources/1
  def update
    respond_to do |format|
      if @resource.update(resource_params)
        format.html { redirect_to @resource, notice: 'Resource was successfully updated.' }
        
      else
        format.html { render :edit }
        
      end
    end
  end

  # DELETE /resources/1
  def destroy
    @resource.destroy
    respond_to do |format|
      format.html { redirect_to resources_url, notice: 'Resource was successfully destroyed.' }
     
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_resource
      @resource = Resource.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def resource_params
      params.require(:resource).permit(:resource_name, :user_id)
    end
end
