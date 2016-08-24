class AttendancesController < ApplicationController

	def index
		@attendances = Attendance.all
	end

	def new
	  @employees = Employee.all.collect { |m| [m.name,m.id] }
	  @attendances = Attendance.new
	end




	def create
	  @attendances = Attendance.new(attend_param)
	  if @attend.save
	  redirect_to '/employee'
	  else
	  @employees = Employee.all.collect { |m| [m.name,m.id] }
	  render 'new'
	  end
	end

	def show
		@attendances = Attendance.find(params[:id])
	end

	def edit
		@employees = Employee.all.collect { |m| [m.name,m.id] }
		@attendances = Attendance.find(params[:id])
	end

	def update
		@attendances = Attendance.find(params[:id])
		if @attendances.update(attend_param)
			redirect_to @attendances
		else
			@employees = Employee.all.collect { |m| [m.name,m.id] }
			render 'edit'
		end
	end

	def destroy
		@attendances = Attendance.find(params[:id])
		@attendances.destroy
		redirect_to @attendances
	end

	
	private
	def attend_param
	params.require(:attendance).permit(:day, :employee_id)
	end

end
