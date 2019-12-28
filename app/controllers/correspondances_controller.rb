class CorrespondancesController < ApplicationController
  def new
    @correspondance = Correspondance.new
    @enfants = Enfant.where(user: current_user)

  end

  def index

  end
end
