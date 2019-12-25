class EnfantsController < ApplicationController
  def index
    @enfants = Enfant.all
  end

  def show
    @enfant = Enfant.find(params[:id])
    @emails = @enfant.emails.split('/')
  end


  def update
    @enfant = Enfant.find(params[:id])
    @enfant.update(params_enfant)
    rep = "lesmaternelles/#{current_user.email}/eleves"
    Cloudinary::Uploader.upload(params['enfant']['photo'], :use_filename => true, :folder => rep)

  end


  def hello

  end
  private

  def params_enfant
    params.require(:enfant).permit(:nom, :prenom, :photo)
  end

end
