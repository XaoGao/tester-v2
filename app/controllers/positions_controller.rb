class PositionsController < ApplicationController
  before_action :authenticate_user!
  before_action :authenticate_hr

  def index
    @positions = Position.enabled
  end
end
