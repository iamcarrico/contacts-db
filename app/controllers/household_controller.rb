class HouseholdController < ApplicationController
  before_action :set_household, only: [:show]

  def index
    @households = Household.order(updated_at: :desc).paginate(:page => params[:page], :per_page => 25)
  end


  private

  def set_household
    @household = Household.includes(:head_of_house).includes(:addresses).find(params[:id])

  end

end
