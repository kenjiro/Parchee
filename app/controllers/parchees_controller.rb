class ParcheesController < ApplicationController
  skip_before_filter :verify_authenticity_token

  def index
    
  end

  def gps
    @parchee = Parchee.new

    position = request.mobile.position
    @latitude = position.lat
    @longuitude = position.lon
  end

  def create
    @parchee = Parchee.new(params[:parchee])
    @parchee.date = nil if @parchee.right_now_flg == true
    if @parchee.save
      redirect_to :action => index
    end
  end
end
