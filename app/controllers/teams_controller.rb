class TeamsController < ApplicationController
  before_action :set_team, only: [:edit, :update, :destroy]
  before_action :set_company

  def index
    @teams = Team.all
  end

  def new
    @team = Team.new
  end

  def edit
  end

  def create
    @team = Team.new(team_params)
    if @team.save
      redirect_to company_teams_path(@company), notice: 'Team was successfully created.'
    else
      render :new
    end
  end

  def update
    if @team.update(team_params)
      redirect_to company_teams_path(@company), notice: 'Team was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @team.inactive!
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_team
    @team = Team.friendly.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def team_params
    params.require(:team).permit(:name, :status).merge(company_id: @company.id)
  end

  def set_company
    @company = Company.friendly.find params[:company_id]
  end
end
