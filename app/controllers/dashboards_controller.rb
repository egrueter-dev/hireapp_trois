class DashboardsController < ApplicationController
  # before_filter :authenticate_user!
  def index
    render template: "layouts/_internalnav.html.erb"
    #must be a way to DRY this up...
  end
end
