class DashboardController < ApplicationController
  def index
  	redirect_to patients_path
  end

end
