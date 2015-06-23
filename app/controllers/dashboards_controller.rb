class DashboardsController < ApplicationController
  # before_filter :authenticate_user!
  def index
    render template: "layouts/_internalnav.html.erb"
  end
end
