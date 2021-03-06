class EmployeesController < ApplicationController
  before_action :set_employee, only: [:show, :edit, :update, :destroy]

  # GET /employees
  # GET /employees.json
  def index
    @employees = Employee.all
  end

  # GET /employees/1
  # GET /employees/1.json
  def show
    @employee = Employee.where('user_id = ?', session[:user_id]).take
    if @employee.nil?
      redirect_to '/employees/new'
      return
    end
  end

  # GET /employees/new
  def new
    @employee = Employee.new
  end

  # GET /employees/1/edit
  def edit
  end

  # POST /employees
  # POST /employees.json
  def create
    @employee = Employee.new(employee_params)
    @employee.user_id = session[:user_id]
    @employee.username = User.find(session[:user_id]).username
    respond_to do |format|
      if @employee.save
        format.html { redirect_to @employee, notice: 'Employee was successfully created.' }
        format.json { render :show, status: :created, location: @employee }
      else
        format.html { render :new }
        format.json { render json: @employee.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /employees/1
  # PATCH/PUT /employees/1.json
  def update

    respond_to do |format|

      if @employee.update(employee_params)
        format.html { redirect_to @employee, notice: 'Employee was successfully updated.' }
        format.json { render :show, status: :ok, location: @employee }
      else
        format.html { render :edit }
        format.json { render json: @employee.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /employees/1
  # DELETE /employees/1.json
  def destroy
    @employee.destroy
    respond_to do |format|
      format.html { redirect_to employees_url, notice: 'Employee was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  # GET /employees/past
  # GET /employees/past.json
  def past
    @employee = Employee.where('user_id = ?', session[:user_id]).take
    if @employee.nil?
      redirect_to '/employees/new'
      return
    end
    @trip = Trip.where('employee_id = ?', @employee.id).take
    if @trip.nil?
      redirect_to '/trips/new'
      return
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_employee
      @employee = Employee.where('user_id = ?', params[:id]).take
      if @employee.nil?
        @employee = Employee.where('user_id = ?', session[:user_id]).take
        if @employee.nil?
          redirect_to '/employees/new'
          return
        end
        return
      end
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def employee_params
      params.require(:employee).permit(:sap_number, :email, :department, :first_name, :last_name, :phone_number, User.find(session[:user_id]).username, session[:user_id])
    end
end
