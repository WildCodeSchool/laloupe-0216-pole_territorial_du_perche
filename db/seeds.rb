# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
#

if Animateur.all.empty?
  Animateur.create(
    email: ENV['ADMIN_EMAIL'],
    pseudo: "admin",
    nom: "Admin",
    prenom: "Super",
    annee_naissance: 2015,
    commune: 'SOMEWHERE',
    status: 'principal',
    sexe: 'F',
    password: ENV['ADMIN_PASSWORD'],
    password_confirmation: ENV['ADMIN_PASSWORD'],
    charte: true,
    confirmed_at: Time.now)
end

if Categorie.all.empty?
  ["Agriculture", "Énergie", "Entrepreneuriat", "Habitat", "Nature", "Services à la population", "Tourisme", "Autre"].each do |categorie|
    Categorie.create(nom: categorie)
  end
end

codepostal_28120 = Codepostal.create(numero: 28120)
codepostal_28160 = Codepostal.create(numero: 28160)
codepostal_28240 = Codepostal.create(numero: 28240)
codepostal_28250 = Codepostal.create(numero: 28250)
codepostal_28290 = Codepostal.create(numero: 28290)
codepostal_28330 = Codepostal.create(numero: 28330)
codepostal_28340 = Codepostal.create(numero: 28340)
codepostal_28400 = Codepostal.create(numero: 28400)
codepostal_28420 = Codepostal.create(numero: 28420)
codepostal_28480 = Codepostal.create(numero: 28480)

montigny_le_Chartif = Ville.create(name: "Montigny-le-Chartif")
brou = Ville.create(name: "Brou")
bullou = Ville.create(name: "Bullou")
dampierre_sous_Brou = Ville.create(name: "Dampierre-sous-Brou")
fraze = Ville.create(name: "Frazé")
gohory = Ville.create(name: "Gohory")
mezières_au_Perche = Ville.create(name: "Mezières-au-Perche")
mottereau = Ville.create(name: "Mottereau")
moulhard = Ville.create(name: "Moulhard")
unverre = Ville.create(name: "Unverre"
yevres = Ville.create(name: "")
belhomert_Guehouville = Ville.create(name: "Belhomert-Guehouville")
champrond_en_Gâtine = Ville.create(name: "Champrond-en-Gâtine")
fontaine_Simon = Ville.create(name: "Fontaine-Simon")
la_loupe = Ville.create(name: "La Loupe")
les_corvées_les_yys = Ville.create(name: "Les-Corvées-les-Yys")
manou = Ville.create(name: "Manou")
meauce = Ville.create(name: "Meauce")
montireau = Ville.create(name: "Montireau")
montlandon = Ville.create(name: "Montlandon")
saint_eliph = Ville.create(name: "Saint-Eliph")
saint_maurice_saint_germain = Ville.create(name: "Saint-Maurice-Saint-Germain")
vaupillon = Ville.create(name: "Vaupillon")
digny = Ville.create(name: "Digny")
jaudrais = Ville.create(name: "Jaudrais")
la_framboisière = Ville.create(name: "La Framboisière")
la_puisaye = Ville.create(name: "La Puisaye")
la_saucelle = Ville.create(name: "La Saucelle")
le_mesnil_thomas = Ville.create(name: "Le-Mesnil-Thomas")
louvilliers_lès_perche = Ville.create(name: "Louvilliers-lès-Perche")
senonches = Ville.create(name: "Senonches")
chapelle_royale = Ville.create(name: "Chapelle-Royale")
les_autels_villevillon = Ville.create(name: "Les-Autels-Villevillon")
authon_du_perche = Ville.create(name: "Authon-du-Perche")
la_bazoche_gouêt = Ville.create(name: "La Bazoche-Gouêt")
béthonvillers = Ville.create(name: "Béthonvillers")
chapelle_guillaume = Ville.create(name: "Chapelle-Guillaume")
charbonnières = Ville.create(name: "Charbonnières")
coudray_au_perche = Ville.create(name: "Coudray-au-Perche")
les_etilleux = Ville.create(name: "Les Etilleux")
soize = Ville.create(name: "Soizé")
saint_bomer = Ville.create(name: "Saint-Bomer")
boissy_lès_perche = Ville.create(name: "Boissy-lès-Perche")
la_chapelle_fortin = Ville.create(name: "La-Chapelle-Fortin")
la ferté_vidame = Ville.create(name: "La Ferté-Vidame")
lamblore = Ville.create(name: "Lamblore")
les_ressuintes = Ville.create(name: "Les Ressuintes")
morvilliers = Ville.create(name: "Morvilliers")
rohaire = Ville.create(name: "Rohaire")
brunelles = Ville.create(name: "Brunelles")
champrond_en_Perchet = Ville.create(name: "Champrond-en-Perchet")
coudreceau = Ville.create(name: "Coudreceau")
la_gaudaine = Ville.create(name: "La Gaudaine")
margon = Ville.create(name: "Margon")
marolles_les_buis = Ville.create(name: "Marolles-les-Buis")
nogent_le_rotrou = Ville.create(name: "Nogent-le-Rotrou")
souancé_au_perche = Ville.create(name: "Souancé-au-Perche")
saint_jean_pierre_fixte = Ville.create(name: "Saint-Jean-Pierre-Fixte")
trizay_coutretot_saint_serge = Ville.create(name: "Trizay-Coutretot-Saint-Serge")
beaumont_les_autels = Ville.create(name: "Beaumont-les-Autels")
luigny = Ville.create(name: "Luigny")
miermaigne = Ville.create(name: "Miermaigne")
vichères = Ville.create(name: "Vichères")
chassant = Ville.create(name: "Chassant")
combres = Ville.create(name: "Combres")
fretigny = Ville.create(name: "Fretigny")
happonvilliers = Ville.create(name: "Happonvilliers")
la croix_du_perche = Ville.create(name: "La Croix-du-Perche")
saint_denis_d_authou = Ville.create(name: "Saint-Denis-d'Authou")
thiron_gardais = Ville.create(name: "Thiron-Gardais")