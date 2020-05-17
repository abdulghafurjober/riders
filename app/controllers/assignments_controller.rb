
class AssignmentsController < ApplicationController
    before_action :set_assignment, only: [:show, :edit, :update, :destroy]
  
    # GET /assignments
    # GET /assignments.json
    def index
      @assignments = Assignment.all
      #@assignments_count = Assignment.all.size
    end
  
    # GET /assignments/1
    # GET /assignments/1.json
    def show
    end
  
    # GET /assignments/new
    def new
      @assignment = Assignment.new
    end
  
    # GET /assignments/1/edit
    def edit
    end
  
    # POST /assignments
    # POST /assignments.json
    def create
      @assignment = Assignment.new(assignment_params)
  
      respond_to do |format|
        if @assignment.save
          #SMS.send(@assignment.rider.phone, "Anda telah dapat pesanan delivery dari pihak Deliverypost. Sila lihat details di http://riders.test")
          format.html { redirect_to @assignment, notice: 'assignment was successfully created.' }
          format.json { render :show, status: :created, location: @assignment }
        else
          format.html { render :new }
          format.json { render json: @assignment.errors, status: :unprocessable_entity }
        end
      end
    end
  
    # PATCH/PUT /assignments/1
    # PATCH/PUT /assignments/1.json
    def update
      respond_to do |format|
        if @assignment.update(assignment_params)
          format.html { redirect_to @assignment, notice: 'assignment was successfully updated.' }
          format.json { render :show, status: :ok, location: @assignment }
        else
          format.html { render :edit }
          format.json { render json: @assignment.errors, status: :unprocessable_entity }
        end
      end
    end
  
    # DELETE /assignments/1
    # DELETE /assignments/1.json
    def destroy
      @assignment.destroy
      respond_to do |format|
        format.html { redirect_to assignments_url, notice: 'assignment was successfully destroyed.' }
        format.json { head :no_content }
      end
    end
  
    private
      # Use callbacks to share common setup or constraints between actions.
      def set_assignment
        @assignment = Assignment.find(params[:id])
      end
  
      # Only allow a list of trusted parameters through.
      def assignment_params
        params.require(:assignment).permit(:vendor_name, :vendor_phone, :vendor_email, :customer_name, :customer_phone, :pickup_address, :dropoff_address, :assignment_type, :task, :rider_id, :extra_notes, :delivery_status)
      end
  end
  