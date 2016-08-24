class AttendancehistoriesController < ApplicationController

  def index
    @attendance_histories = AttendancePeriod.all
  end
  
  def new
   @attendances = Attendance.all.collect  {|map| [map.day,map.id]}
   @attendance_history = AttendancePeriod.new
  end

  def create
   @attendance_history = AttendancePeriod.create(attendance_history_param)
   if @attendance_history.save
   redirect_to '/employee'
   else
   @attendances = Attendance.all.collect  {|map| [map.day,map.id]}
   render 'new'
   end
  end

  def show
    @attendance_history = AttendancePeriod.find(params[:id])
  end

  def edit
   @attendances = Attendance.all.collect  {|map| [map.day,map.id]}
   @attendance_history = AttendancePeriod.find(params[:id])
  end

  def update
    @attendance_history = AttendancePeriod.find(params[:id])
    if @attendance_history.update(attendance_history_param)
      redirect_to "/attendancehistories/#{params[:id]}"
    else
      @attendances = Attendance.all.collect  {|map| [map.day,map.id]}
      render 'edit'
    end
  end

  def destroy
     @attendance_history = AttendancePeriod.find(params[:id])
     @attendance_history.destroy
     redirect_to @attendance_history
   end


private 

  def attendance_history_param
   params.require(:attendance_period).permit(:attendance_id,:from_hour,:to_hour)
  end
end
