class EnfantsController < ApplicationController
  def new
    @enfant = Enfant.new
    @emails = []
    @status = 'new'
    render :aff
  end

  def index
    @enfants = Enfant.where(user: current_user).order(:prenom)

  end

  def show
    @enfant = Enfant.find(params[:id])
    @emails = @enfant.emails.split('/')
    @status = 'show'
    render :aff
  end


  def update
    @enfant = Enfant.find(params[:id])
    @enfant.update(params_enfant)
    rep = "lesmaternelles/#{current_user.email}/eleves"
    r = Cloudinary::Uploader.upload(params['enfant']['photo'], :use_filename => true, :folder => rep)
    @enfant.photo= r['public_id']
    @enfant.save

  end


  def aff

  end
  private

  def params_enfant
    params.require(:enfant).permit(:nom, :prenom, :photo)
  end

end
