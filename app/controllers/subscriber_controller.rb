class SubscriberController < ApplicationController
  def new
    @subscriber = Subscriber.new
  end

  def create
    @subscriber = Subscriber.create(subscriber_params)
    if @subscriber.save
      redirect_back fallback_location: @subscriber
      flash[:notice] = 'Okay! Rocky will meow job recommendations at you from time to time!'
  end

  def destroy
    @subscriber = Subscriber.find(params[:id])
    redirect_to root_path if @group.destroy
  end

  private
    def subscriber_params
      params.require(:subscriber).permit(:email)
    end
end
