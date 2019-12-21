class EnfantsController < ApplicationController
  def index
    @enfants = Enfant.all
  end

  def show
    @enfant = Enfant.find(params[:id])
  end
end
