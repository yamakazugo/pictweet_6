class TweetsController < ApplicationController
  before_action :move_to_index, expect: [:index, :show]

  def index
    @tweets = Tweet.all
  end

  private

  def move_to_index
    unless user_signed_in?
      redirect_to action: :index
    end
  end
end
