class ChannalsController < ApplicationController
  before_action :set_channal, only: [:show, :edit, :update, :destroy]
  
  # GET /channals
  # GET /channals.json
  def index
    @channals = Channal.all
    if params[:search].present?
      @channals = @channals.where("(lower(title) like ?)","%#{params[:search].strip.downcase}%")
    end
  end
  
  # GET /channals/1
  # GET /channals/1.json
  def show
  end

  # GET /channals/new
  def new
    @channal = Channal.new
  end

  # GET /channals/1/edit
  def edit
  end

  # POST /channals
  # POST /channals.json
  def create
    @channal = Channal.new(channal_params)

    respond_to do |format|
      if @channal.save
        format.html { redirect_to channals_url, notice: 'Channal was successfully created.' }
        format.json { render :show, status: :created, location: @channal }
      else
        format.html { render :new }
        format.json { render json: @channal.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /channals/1
  # PATCH/PUT /channals/1.json
  def update
    respond_to do |format|      
      if @channal.update(channal_params)
        format.html { redirect_to channals_url, notice: 'Channal was successfully updated.' }
        format.json { render :show, status: :ok, location: @channal }
      else
        format.html { render :edit }
        format.json { render json: @channal.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /channals/1
  # DELETE /channals/1.json
  def destroy
    @channal.destroy
    respond_to do |format|
      format.html { redirect_to channals_url, notice: 'Channal was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_channal
      @channal = Channal.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def channal_params
      params.require(:channal).permit(:title, :description, :is_active,:channal_type)
    end
end
