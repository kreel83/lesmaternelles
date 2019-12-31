class CorrespondancesController < ApplicationController
  def new
    @correspondance = Correspondance.new
    @enfants = Enfant.where(user: current_user)
    @enfantsSelect = "/"

  end

  def index

    @correspondances = Correspondance.all
  end

  def show
    @correspondance = Correspondance.find(params[:id])
    @enfants = Enfant.where(user: current_user)
  end


  def create
    raise
    @correspondance = Correspondance.new
    @correspondance.sujet = params['correspondance']['sujet']
    @correspondance.body = params['correspondance']['body']
    @correspondance.reception = params[:reception] == 'on'
    @correspondance.enfants = params[:enfants].split('/')[1..-1]
    @correspondance.save!


    UserMailer.welcome.deliver_now

  end
end
