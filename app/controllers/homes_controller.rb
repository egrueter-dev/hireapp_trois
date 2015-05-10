class HomesController < ApplicationController
  def index
  end

  def create
    Betauser.new(email: params["betauser"]["name"], name: params["betauser"]["name"])
    redirect_to "/"
  end
end
