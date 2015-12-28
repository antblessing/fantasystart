class MatchupsController < ApplicationController
  before_action :set_matchup, only: [:show, :edit, :update, :destroy]

  # GET /matchups
  def index
    @matchups = Matchup.all
  end

  # GET /matchups/1
  def show
  end

  # GET /matchups/new
  def new
    @matchup = Matchup.new
    api = ProFootballApiWrapper.new
    @players = api.get_player_stats({stats_type: 'offense', player_name: 'a.foster'})
    @player = @players.parsed_response
    json_response = eval(@player)
    @stat = json_response[:'2009082255'][:'00-0026796'][:'rushing']
    @player_name = json_response[:'2009082255'][:'00-0026796'][:'rushing'][:'name']
    @player_targets = json_response[:'2009082255'][:'00-0026796'][:'rushing'][:'attempts']
  end

  # GET /matchups/1/edit
  def edit
  end

  # POST /matchups
  def create
    @matchup = Matchup.new(matchup_params)

    if @matchup.save
      redirect_to @matchup, notice: 'Matchup was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /matchups/1
  def update
    if @matchup.update(matchup_params)
      redirect_to @matchup, notice: 'Matchup was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /matchups/1
  def destroy
    @matchup.destroy
    redirect_to matchups_url, notice: 'Matchup was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_matchup
      @matchup = Matchup.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def matchup_params
      params.require(:matchup).permit(:result)
    end
end
