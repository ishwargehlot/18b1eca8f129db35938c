class TvshowsController < ApplicationController
  before_action :set_tvshow, only: [:show, :edit, :update, :destroy]
  include ApplicationHelper
  
  # GET /tvshows
  # GET /tvshows.json
  def index
    @tvshows = Tvshow.all
    if params[:search].present?
      @tvshows = @tvshows.where("(lower(title) like ?)","%#{params[:search].strip.downcase}%")
    end
  end

  # GET /tvshows/1
  # GET /tvshows/1.json
  def show
  end

  # GET /tvshows/new
  def new
    @tvshow = Tvshow.new
  end

  # GET /tvshows/1/edit
  def edit
  end

  # POST /tvshows
  # POST /tvshows.json
  def create
    @tvshow = Tvshow.new(tvshow_params)
    
    respond_to do |format|
      if @tvshow.save
        format.html { redirect_to tvshows_url, notice: 'Tvshow was successfully created.' }
        format.json { render :show, status: :created, location: @tvshow }
      else
        format.html { render :new }
        format.json { render json: @tvshow.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tvshows/1
  # PATCH/PUT /tvshows/1.json
  def update
    respond_to do |format|
      if @tvshow.update(tvshow_params)
        format.html { redirect_to tvshows_url, notice: 'Tvshow was successfully updated.' }
        format.json { render :show, status: :ok, location: @tvshow }
      else
        format.html { render :edit }
        format.json { render json: @tvshow.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tvshows/1
  # DELETE /tvshows/1.json
  def destroy
    @tvshow.destroy
    respond_to do |format|
      format.html { redirect_to tvshows_url, notice: 'Tvshow was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tvshow
      @tvshow = Tvshow.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def tvshow_params
     p = params.require(:tvshow).permit(:title, :showtime, :channal_id)
     p[:showtime] = parse_date_with_time(p[:showtime]) unless p[:showtime].to_s.empty?
     return p;
    end   
end
