class ScotMessagesController < ApplicationController
  before_action :authenticate_animateur!, except: [:index]
  before_action :authenticate_contributeur!, only: [:new, :create]
  
  def index
    if current_contributeur && current_contributeur.type == 'Animateur'
      @scot_messages = ScotMessage.all
    else
      @scot_messages = ScotMessage.where(validation: true).order(updated_at: :desc)
    end
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

  def validation
    scot_message = ScotMessage.find(params[:id])
    scot_message.validation = true
    scot_message.save
    redirect_to scot_messages_path, method: :get
  end

  def destroy
    scot_message = ScotMessage.find(params[:id])
    scot_message.destroy
    redirect_to scot_messages_path, method: :get
  end

  def jadhere
    @scot_message = ScotMessage.find(params[:id])
    if @scot_message.jadhere_by? current_contributeur
      redirect_to @scot_message
    else
      @scot_message.jadheres.create(contributeur_id: current_contributeur.id)
      redirect_to @scot_message
    end
  end

  private

  def scot_message_params
    params.require(:scot_message).permit(:contenu)
  end

end
