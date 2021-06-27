class PositionsController < ApplicationController
  before_action :authenticate_user!

  def index
    @positions = Position.enabled
  end
end
