class ActivitesController < ApplicationController
  def index
    @activites = Activite.all
    @categories = Categorie.all

  end
end
