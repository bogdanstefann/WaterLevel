class WelcomeController < ApplicationController
  def index
    @septic_tank_levels = SepticTankLevel.all
  end
end
