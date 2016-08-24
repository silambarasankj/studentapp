class AccountsController < ApplicationController

  def index
    @account = Account.all
  end

def new
  @account = Account.new
  @employees = Employee.all.collect { |m| [m.name,m.id]}
  
end

def create
  @account = Account.new(account_param)
  if @account.save
   redirect_to '/employee'
  else
   @employees = Employee.all.collect { |m| [m.name,m.id]}
   render 'new'
  end
end

def show
  @account = Account.find(params[:id])
end

def edit
  @account = Account.find(params[:id])
  @employees = Employee.all.collect { |m| [m.name,m.id]}
end

def update
  @account = Account.find(params[:id])
  if @account.update(account_param)
    redirect_to @account
  else
    @employees = Employee.all.collect { |m| [m.name,m.id]}
    render 'edit'
  end
end

def destroy
  @account = Account.find(params[:id])
  @account.destroy
  redirect_to accounts_path
end


private 
def account_param
  params.require(:account).permit(:employee_id,:number)
end
end
