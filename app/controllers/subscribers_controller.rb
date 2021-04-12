class SubscribersController < ApplicationController
  def new
    @subscriber = Subscriber.new
  end

  def create
    @subscriber = Subscriber.create(subscriber_params)
    if @subscriber.save
      redirect_to root_path
      flash[:notice] = 'Okay! Rocky will meow job recommendations at you from time to time!'
    else
      redirect_to root_path
      flash[:notice] = 'Oh! You forgot to tell me you email.'
    end
  end

  def destroy
    @subscriber = Subscriber.find(params[:id])
    redirect_to root_path if @group.destroy
  end

  private
    def subscriber_params
      params.permit(:email)
    end
end
