class PositionsController < ApplicationController
  before_action :authenticate_user!

  def index
    @positions = Position.active
  end
end
