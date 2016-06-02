class ScotMessagesController < ApplicationController
  
  def index
    @scot_messages = ScotMessage.all
    @scot_message = ScotMessage.new
  end

  def create
    scot_message = ScotMessage.new(scot_message_params)
    scot_message.contributeur_id = current_contributeur.id
    if scot_message.save
      Animateur.all.each do |animateur|
        AnimateurMailer.nouveau_scot_message(animateur, scot_message).deliver_now
      end
      redirect_to scot_messages_path, method: :get
    else
      render 'new'
    end
  end

  private

  def scot_message_params
    params.require(:scot_message).permit(:contenu)
  end

end
