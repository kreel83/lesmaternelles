class ResultatsController < ApplicationController
  def index
    @resultats = Resultat.find_by(user: params[:id])
  end
end
