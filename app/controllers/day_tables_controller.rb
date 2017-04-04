class DayTablesController < ApplicationController
  before_action :set_day_table, only: [:show, :edit, :update, :destroy]

  # GET /day_tables
  # GET /day_tables.json
  def index
    @day_tables = DayTable.all
  end

  # GET /day_tables/1
  # GET /day_tables/1.json
  def show
  end

  # GET /day_tables/new
  def new
    @day_table = DayTable.new
  end

  # GET /day_tables/1/edit
  def edit
  end

  # POST /day_tables
  # POST /day_tables.json
  def create
    @day_table = DayTable.new(day_table_params)

    respond_to do |format|
      if @day_table.save
        format.html { redirect_to @day_table, notice: 'Day table was successfully created.' }
        format.json { render :show, status: :created, location: @day_table }
      else
        format.html { render :new }
        format.json { render json: @day_table.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /day_tables/1
  # PATCH/PUT /day_tables/1.json
  def update
    respond_to do |format|
      if @day_table.update(day_table_params)
        format.html { redirect_to @day_table, notice: 'Day table was successfully updated.' }
        format.json { render :show, status: :ok, location: @day_table }
      else
        format.html { render :edit }
        format.json { render json: @day_table.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /day_tables/1
  # DELETE /day_tables/1.json
  def destroy
    @day_table.destroy
    respond_to do |format|
      format.html { redirect_to day_tables_url, notice: 'Day table was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_day_table
      @day_table = DayTable.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def day_table_params
      params.require(:day_table).permit(:trip_number, :string, :breakfast, :lunch, :dinner, :breakfast_tip, :lunch_tip, :dinner_tip, :lodging, :business_calls, :transport_start, :transport_end, :mileage, :personal_car, :float, :rental_car, :float, :bus_train, :float, :tax, :airfare, :parking, :gasoline)
    end
end
