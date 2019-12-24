class EnfantsController < ApplicationController
  def index
    @enfants = Enfant.all
  end

  def show
    @enfant = Enfant.find(params[:id])
    @emails = @enfant.emails.split('/')
  end
end
