class SubscribersController < ApplicationController
  def subs
    @subscriber = Subscriber.new
  end

  def create
    @subscriber = Subscriber.new(subscriber_params)
    if subscriber.save
      cookies[:saved_lead] = true
      redirect_to root_path, notice: "You're Subscribed!"
    else
      redirect_to root_path, notice: "Something went wrong. Please check your Email"
    end
  end

  private
    def subscriber_params
      params.require(:subscriber).permit(:email)
    end

end
