class UsersController < ApplicationController
  # My Page
  def index
    
  end

  def gps
    # 位置情報を取得する
    position = request.mobile.position
    @latitude = position.lat
    @longuitude = position.lon
  end
end
