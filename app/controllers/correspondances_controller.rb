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

  def destroy
    Correspondance.destroy(params[:id])
    redirect_to correspondances_path

  end

  def create

    @correspondance = Correspondance.new
    @correspondance.sujet = params['correspondance']['sujet']
    @correspondance.body = params['correspondance']['body']
    @correspondance.reception = params[:reception] == 'on'
    @correspondance.enfants = params[:enfants].split('/')[1..-1]
    @attachments = params[:mediacustom]
    @correspondance.media = @attachments
    @correspondance.save!

    @correspondance.enfants.each  do  |enfant|
      mails = Enfant.find(enfant).emails.split('/')
      mails.each do |mail|

        UserMailer.with({corr: @correspondance, mymail: mail, medias: @attachments}).welcome.deliver_now
      end

    end


  end
end
