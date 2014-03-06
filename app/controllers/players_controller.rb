class PlayersController < ApplicationController
  before_action :set_player, only: [:show, :edit, :update, :destroy]
  before_action :find_player, only: [:find]
  # GET /players
  # GET /players.json
  def index
      @coaches = Coach.all
    if params[:search]
      redirect_to root_path if params[:search] == ""
      @players = Player.where("name LIKE ? OR number LIKE ?", "%#{params[:search] }%", "%#{params[:search]}%")
      if @players.empty?
        flash[:notice] = "This player does not exist!"
        redirect_to root_path
      end
    else
      @players = Player.all
    end

  end

  def find
    if @player.nil?
      flash[:notice] = "This player does not exist!"
      redirect_to root_path
    else
      redirect_to player_path(@player)
    end
  end
  # GET /players/1
  # GET /players/1.json
  def show
  end

  # GET /players/new
  def new
    @player = Player.new
  end

  # GET /players/1/edit
  def edit
  end

  # POST /players
  # POST /players.json
  def create
    @player = Player.new(player_params)

    respond_to do |format|
      if @player.save
        format.html { redirect_to @player, notice: 'Player was successfully created.' }
        format.json { render action: 'show', status: :created, location: @player }
      else
        format.html { render action: 'new' }
        format.json { render json: @player.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /players/1
  # PATCH/PUT /players/1.json
  def update
    respond_to do |format|
      if @player.update(player_params)
        format.html { redirect_to @player, notice: 'Player was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @player.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /players/1
  # DELETE /players/1.json
  def destroy
    @player.destroy
    respond_to do |format|
      format.html { redirect_to players_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_player
      @player = Player.find(params[:id])
      rescue ActiveRecord::RecordNotFound
      flash[:notice] = "Sorry, that page does not exist"
      redirect_to root_path
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def player_params
      params.require(:player).permit(:name, :team, :number, :age)
    end

    def find_player
        @player = Player.where(name: params[:name], number: params[:number]).first

    end
end
