class PlayersController < ApplicationController
  before_action :set_player, only: [:show, :edit, :update, :destroy]
  before_action :find_player, only: [:find]

  def index
    @coaches = Coach.all
    if params[:search]
      redirect_to root_path if params[:search] == ""
      @players = Player.find_player(params[:search])
      if @players.empty?
        flash[:notice] = "This player does not exist!"
        redirect_to root_path
      end
    elsif params[:age]
      @players = Player.where("age >= #{params[:age].to_i}")
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

  def show; end

  def new
    @player = Player.new
  end

  def edit; end

  def create
    @player = Player.new(player_params)
    if @player.save
      redirect_to @player, notice: 'Player was successfully created.'
    else
      render action: 'new'
    end
  end

  def update
    if @player.update(player_params)
      redirect_to @player, notice: 'Player was successfully updated.'
    else
      render action: 'edit'
    end
  end

  def destroy
    @player.destroy
    redirect_to players_url
  end

  private
    def set_player
      @player = Player.find(params[:id])
      rescue ActiveRecord::RecordNotFound
      flash[:notice] = "Sorry, that page does not exist"
      redirect_to root_path
    end

    def player_params
      params.require(:player).permit(:name, :team_id, :number, :age)
    end

    def find_player
      @player = Player.where(name: params[:name], number: params[:number]).first
    end
end
