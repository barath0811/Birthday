class HomesController < ApplicationController
  # GET /homes
  # GET /homes.json
  def index
    @homes = Home.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @homes }
    end
  end

  def admin
    @users = User.all
    @images = Images.all
    # @audios = Audio.all
    respond_to do |format|
      format.html
    end
  end

  # GET /homes/start
  # GET /homes/start.json
  def start
    @homes = Home.all

    respond_to do |format|
      format.html # start.html.erb
      format.json { render json: @homes }
    end
  end

end
