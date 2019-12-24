class ActivitesController < ApplicationController
  def index
    @activites = Activite.all
    @categories = Categorie.all
    @notations = Notation.all
    @enfant = params[:enfant_id]
    @resultats = Resultat.where(enfant_id: params[:enfant_id])


  end

  def updatelevel
    r= Resultat.find_by(enfant_id: params[:enfant], activite_id: params[:activite] )
    if r
      r.enfant_id = params[:enfant]
      r.user_id = current_user.id
      r.notation_id = params[:lvl]
      r.activite_id = params[:activite]
      r.date = Date.today
      r.save
    else
      r = Resultat.new
      r.enfant_id = params[:enfant]
      r.user_id = current_user.id
      r.activite_id = params[:activite]
      r.notation_id = params[:lvl]
      r.date = Date.today
      r.save

    end

    render json: {status: params, r: r}
  end

end
