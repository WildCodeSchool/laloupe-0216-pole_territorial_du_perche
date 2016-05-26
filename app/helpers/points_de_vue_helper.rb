module PointsDeVueHelper
  def couleur_bouton(point_de_vue)
    point_de_vue.positif ? "bouton_vert" : "bouton_rouge"
  end
end
