class RidersController < ApplicationController
  before_action :set_rider, only: [:show, :edit, :update, :destroy]

  # GET /riders
  # GET /riders.json
  def index
    @riders = Rider.all
    respond_to do |format|
        format.html { render :index}
        format.json { render json: @rider.size}
    end
  end

  # GET /riders/1
  # GET /riders/1.json
  def show
  end

  def size
    @riders = Rider.where('location ilike ?', "%#{params[:area]}%")
    render json: @riders.size
  end

  # GET /riders/new
  def new
    @rider = Rider.new
  end

  # GET /riders/1/edit
  def edit
  end

  # POST /riders
  # POST /riders.json
  def create
    @rider = Rider.new(rider_params)

    respond_to do |format|
      if @rider.save
        format.html { redirect_to @rider, flash: {success: 'Rider is successfully created.'} }
        format.json { render :show, status: :created, location: @rider }
      else
        format.html { render :new }
        format.json { render json: @rider.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /riders/1
  # PATCH/PUT /riders/1.json
  def update
    respond_to do |format|
      if @rider.update(rider_params)
        format.html { redirect_to @rider, flash: {success: 'Rider is successfully updated.'} }
        format.json { render :show, status: :ok, location: @rider }
      else
        format.html { render :edit }
        format.json { render json: @rider.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /riders/1
  # DELETE /riders/1.json
  def destroy
    @rider.destroy
    respond_to do |format|
      format.html { redirect_to riders_url, flash: {success: 'Rider is successfully deleted.'} }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_rider
      @rider = Rider.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def rider_params
      params.require(:rider).permit(:name, :ic, :phone, :location, :status, :image, :bankacc, :bankname, :coverage_location)
    end
end
