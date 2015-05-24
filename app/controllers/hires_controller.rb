class HiresController < ApplicationController
  def index
    render template: "layouts/_internalnav.html.erb"
  end

  def create
    binding.pry
  end
end
