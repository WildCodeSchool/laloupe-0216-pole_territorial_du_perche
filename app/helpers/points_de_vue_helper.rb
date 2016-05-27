module PointsDeVueHelper
  def couleur_bouton(point_de_vue)
    point_de_vue.positif ? "bouton_vert" : "bouton_rouge"
  end

  def couleur_vignette(point_de_vue)
    point_de_vue.positif ? "vignette_vert" : "vignette_rouge"
  end
end
