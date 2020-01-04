class UserMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.welcome.subject
  #
  def welcome
    @greeting = "Hi"

    @corr = params[:corr]
    @medias = params[:medias]
    @medias.each_with_index do |m,index|

      attachments[m.original_filename] = File.read(m.tempfile)
    end


    mail to: params[:mymail]



  end
end
