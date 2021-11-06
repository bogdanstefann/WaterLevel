class WelcomeController < ApplicationController
  before_action :authenticate_user!
  
  def index
    @septic_tank_levels = SepticTankLevel.all
  end
end
