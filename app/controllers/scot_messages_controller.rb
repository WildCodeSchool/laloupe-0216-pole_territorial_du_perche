class ScotMessagesController < ApplicationController
  before_action :authenticate_animateur!, except: [:index, :show]
  before_action :authenticate_contributeur!, only: [:new, :create, :jadhere]
  
  def index
    if current_contributeur && current_contributeur.type == 'Animateur'
      @scot_messages = ScotMessage.all
    else
      @scot_messages = ScotMessage.where(validation: true).order(updated_at: :asc)
    end
    @scot_message = ScotMessage.new
  end

  def show
    @scot_message = ScotMessage.find(params[:id])
  end

  def create
    scot_message = ScotMessage.new(scot_message_params)
    scot_message.contributeur_id = current_contributeur.id
    if scot_message.save
      Animateur.all.each do |animateur|
        AnimateurMailer.nouveau_scot_message(animateur, scot_message).deliver_now
      end
      redirect_to scot_messages_path, method: :get, notice: "Merci de votre participation, votre idée a été prise en compte. Elle sera visible dans les plus bref délais. Nous vous invitons à déposer d’autres idées."
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
    if @scot_message.scot_jadhere_by? current_contributeur
      redirect_to scot_messages_path, method: :get
    else
      @scot_message.scot_jadheres.create(contributeur_id: current_contributeur.id)
      redirect_to scot_messages_path, method: :get
    end
  end

  private

  def scot_message_params
    params.require(:scot_message).permit(:contenu)
  end

end
