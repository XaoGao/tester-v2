class PositionsController < ApplicationController
  before_action :authenticate_user!
  before_action :authenticate_hr

  def index
    @positions = Position.all.order('level DESC')
  end
end
