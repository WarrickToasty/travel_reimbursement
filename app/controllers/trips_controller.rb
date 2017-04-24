class TripsController < ApplicationController
  before_action :set_trip, only: [:show, :edit, :update, :destroy]

  # GET /trips
  # GET /trips.json
  def index
    @trips = Trip.all
  end

  # GET /trips/1
  # GET /trips/1.json
  def show
      @empHolder = User.find(session[:user_id]).employee
      @trip = Trip.where('employee_id = ? AND id = ?', @empHolder.id, params[:id]).take
      if @trip.nil?
        redirect_to '/trips/past'
        return
      end
  end

  # GET /trips/new
  def new
    @trip = Trip.new
  end

  # GET /trips/1/edit
  def edit
  end

  # POST /trips
  # POST /trips.json
  def create
    @trip = Trip.new(trip_params)
    @empHolder = User.find(session[:user_id]).employee
    @trip.employee_id = @empHolder.id
    @trip.sap_number =@empHolder.sap_number

    respond_to do |format|
      if @trip.save
        format.html { redirect_to @trip, notice: 'Trip was successfully created.' }
        format.json { render :show, status: :created, location: @trip }
      else
        format.html { render :new }
        format.json { render json: @trip.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /trips/1
  # PATCH/PUT /trips/1.json
  def update
    respond_to do |format|
      if @trip.update(trip_params)
        format.html { redirect_to @trip, notice: 'Trip was successfully updated.' }
        format.json { render :show, status: :ok, location: @trip }
      else
        format.html { render :edit }
        format.json { render json: @trip.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /trips/1
  # DELETE /trips/1.json
  def destroy
    @trip.destroy
    respond_to do |format|
      format.html { redirect_to trips_url, notice: 'Trip was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  # GET /trips/current
  # Get /trips/current.json
  def current
    @employee = Employee.where('user_id = ?', session[:user_id]).take
    if @employee.nil?
      redirect_to '/employees/new'
    else
    @trips = Trip.where('employee_id = ? AND (begin_date <= ? AND end_date >= ?)', @employee.id, Date.today, Date.today).all
      if @trips.nil?
        flash[:notice] = "No current trip was found. Maybe you were looking for your most recent trip?"
        @trip = Trip.where('employee_id = ?', @employee.id ).order(:begin_date).last
        if @trip.nil?
          redirect_to '/trips/new'
        end
      end
    end

  end


  private
    # Use callbacks to share common setup or constraints between actions.
    def set_trip
      @empHolder = User.find(session[:user_id]).employee
      @trip = Trip.find(params[:id])
      if @trip.nil?
        return
      else
        if @trip.employee_id == @empHolder.id
            return
        else
            redirect_to 'past/trips'
        end
      end
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def trip_params
      @holder = User.find(session[:user_id]).employee
      params.require(:trip).permit(:trip_number, :multi_page, @holder.sap_number, :contact_person, :purpose, :place, :meeting_time, :meeting_date, :begin_time, :end_time, :begin_date, :end_date, :accompanied_by, :travel_estimate, :food_estimate, :lodging_estimate, :fee_estimate, :conference_fee, :banquet_fee, :dues, @holder.id)
    end



end
