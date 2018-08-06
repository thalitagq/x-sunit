class SituationsController < ApplicationController
  before_action :set_situation, only: [:show, :update]

  # GET /situations
  def index
    @situations = Situation.update_situation

    render json: @situations
  end


end
