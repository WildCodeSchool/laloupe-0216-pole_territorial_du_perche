class AnimateurMailer < ApplicationMailer

  def nouveau_projet(animateur, projet)
    @destinataire = animateur
    @projet = projet
    @projet_url = projet_url(@projet.id)
    @contributeur = @projet.contributeur
    @subject = "Nouveau projet \"#{@projet.titre}\""
    mail(to: @destinataire.email, subject: @subject)
  end

  def nouveau_point_de_vue(animateur, point_de_vue)
    @destinataire = animateur
    @point_de_vue = point_de_vue
    @point_de_vue_url = point_de_vue_url(@point_de_vue.id)
    @point_de_vue_url2 = point_de_vue_url(@point_de_vue.image)
    @contributeur = @point_de_vue.contributeur 
    @subject = "Nouveau point de vue \"#{@point_de_vue.titre}\""
    # binding.pry
    mail(to: @destinataire.email, subject: @subject)
  end  
    
end
