class AccounthistoriesController < ApplicationController

def index
  @accounthistories = AccountHistory.all
end

def new
   @accounts = Account.all.collect  {|map| [map.number,map.id]}
   @accounthistories = AccountHistory.new
  end

def create
   @accounthistories = AccountHistory.create(account_history_param)
   if @accounthistories.save
      redirect_to '/employee'
   else
    @accounts = Account.all.collect  {|map| [map.number,map.id]}
      render 'new'
   end
end

def edit
    @accounts = Account.all.collect  {|map| [map.number,map.id]}
    @accounthistories = AccountHistory.find(params[:id])
end

def update
  @accounthistories = AccountHistory.find(params[:id])
  if @accounthistories.update(account_history_param)
    redirect_to "/accounthistories/#{params[:id]}"
  else
    @account = Account.all.collect  {|map| [map.day,map.id]}
    render 'edit'
  end
end

def show
    @accounthistories = AccountHistory.find(params[:id])
end

def destroy
  @accounthistories = AccountHistory.find(params[:id])
  @accounthistories.destroy
  redirect_to '/accounthistories'
end

private

  def account_history_param
   params.require(:account_history).permit(:account_id,:limit)
  end
end
