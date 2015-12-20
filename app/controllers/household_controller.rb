class HouseholdController < ApplicationController
  before_action :set_household, only: [:show]



  private

  def set_household
    @household = Household.includes(:head_of_house, :address).find(params[:id])

  end

end
