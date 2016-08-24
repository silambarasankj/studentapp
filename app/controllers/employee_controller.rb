class EmployeeController < ApplicationController
load_and_authorize_resource

def index
 @employee = Employee.all
end

def new
@employee = Employee.new
@languages = Language.all
end

def create
  @employee = Employee.new(emp_param)
  if @employee.save
  redirect_to @employee
  else
    @languages = Language.all
  render 'new'

  end

end

def show
@employee=Employee.find(params[:id])
end

def edit
@employee = Employee.find(params[:id])
@languages = Language.all
end

def update
	@employee = Employee.find(params[:id])

	if @employee.update(emp_param)
		redirect_to @employee
	else
    @languages = Language.all
		render'edit'
	end
end

def destroy
  @employee = Employee.find(params[:id])
  if @employee.destroy
    redirect_to '/'
  else
    redirect_to '/'
  end
end

private

def emp_param
  params.require(:employee).permit(:name,:department,:gender,{:language=>[]})
end
end
