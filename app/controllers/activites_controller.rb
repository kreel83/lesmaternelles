class ActivitesController < ApplicationController
  def index
    @activites = Activite.all

  end
end
