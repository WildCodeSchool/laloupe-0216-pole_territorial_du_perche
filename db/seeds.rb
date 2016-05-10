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

codepostal_28120 = Codepostal.create(codepostal: 28120)
codepostal_28160 = Codepostal.create(codepostal: 28160)
codepostal_28240 = Codepostal.create(codepostal: 28240)
codepostal_28250 = Codepostal.create(codepostal: 28250)
codepostal_28290 = Codepostal.create(codepostal: 28290)
codepostal_28330 = Codepostal.create(codepostal: 28330)
codepostal_28340 = Codepostal.create(codepostal: 28340)
codepostal_28400 = Codepostal.create(codepostal: 28400)
codepostal_28420 = Codepostal.create(codepostal: 28420)
codepostal_28480 = Codepostal.create(codepostal: 28480)

montigny_le_Chartif = Ville.create(name: "Montigny-le-Chartif", codepostal_id: codepostal_28120.id)
brou = Ville.create(name: "Brou", codepostal_id: codepostal_28160.id)
bullou = Ville.create(name: "Bullou", codepostal_id: codepostal_28160.id)
dampierre_sous_Brou = Ville.create(name: "Dampierre-sous-Brou", codepostal_id: codepostal_28160.id)
fraze = Ville.create(name: "Frazé", codepostal_id: codepostal_28160.id)
gohory = Ville.create(name: "Gohory", codepostal_id: codepostal_28160.id)
mezières_au_Perche = Ville.create(name: "Mezières-au-Perche", codepostal_id: codepostal_28160.id)
mottereau = Ville.create(name: "Mottereau", codepostal_id: codepostal_28160.id)
moulhard = Ville.create(name: "Moulhard", codepostal_id: codepostal_28160.id)
unverre = Ville.create(name: "Unverre", codepostal_id: codepostal_28160.id)
yevres = Ville.create(name: "Yèvres", codepostal_id: codepostal_28160.id)
belhomert_Guehouville = Ville.create(name: "Belhomert-Guehouville", codepostal_id: codepostal_28240.id)
champrond_en_Gâtine = Ville.create(name: "Champrond-en-Gâtine", codepostal_id: codepostal_28240.id)
fontaine_Simon = Ville.create(name: "Fontaine-Simon", codepostal_id: codepostal_28240.id)
la_loupe = Ville.create(name: "La Loupe", codepostal_id: codepostal_28240.id)
les_corvées_les_yys = Ville.create(name: "Les-Corvées-les-Yys", codepostal_id: codepostal_28240.id)
manou = Ville.create(name: "Manou", codepostal_id: codepostal_28240.id)
meauce = Ville.create(name: "Meauce", codepostal_id: codepostal_28240.id)
montireau = Ville.create(name: "Montireau", codepostal_id: codepostal_28240.id)
montlandon = Ville.create(name: "Montlandon", codepostal_id: codepostal_28240.id)
saint_eliph = Ville.create(name: "Saint-Eliph", codepostal_id: codepostal_28240.id)
saint_maurice_saint_germain = Ville.create(name: "Saint-Maurice-Saint-Germain", codepostal_id: codepostal_28240.id)
vaupillon = Ville.create(name: "Vaupillon", codepostal_id: codepostal_28240.id)
digny = Ville.create(name: "Digny", codepostal_id: codepostal_28250.id)
jaudrais = Ville.create(name: "Jaudrais", codepostal_id: codepostal_28250.id)
la_framboisière = Ville.create(name: "La Framboisière", codepostal_id: codepostal_28250.id)
la_puisaye = Ville.create(name: "La Puisaye", codepostal_id: codepostal_28250.id)
la_saucelle = Ville.create(name: "La Saucelle", codepostal_id: codepostal_28250.id)
le_mesnil_thomas = Ville.create(name: "Le-Mesnil-Thomas", codepostal_id: codepostal_28250.id)
louvilliers_lès_perche = Ville.create(name: "Louvilliers-lès-Perche", codepostal_id: codepostal_28250.id)
senonches = Ville.create(name: "Senonches", codepostal_id: codepostal_28250.id)
chapelle_royale = Ville.create(name: "Chapelle-Royale", codepostal_id: codepostal_28290.id)
les_autels_villevillon = Ville.create(name: "Les-Autels-Villevillon", codepostal_id: codepostal_28330.id)
authon_du_perche = Ville.create(name: "Authon-du-Perche", codepostal_id: codepostal_28330.id)
la_bazoche_gouêt = Ville.create(name: "La Bazoche-Gouêt", codepostal_id: codepostal_28330.id)
béthonvillers = Ville.create(name: "Béthonvillers", codepostal_id: codepostal_28330.id)
chapelle_guillaume = Ville.create(name: "Chapelle-Guillaume", codepostal_id: codepostal_28330.id)
charbonnières = Ville.create(name: "Charbonnières", codepostal_id: codepostal_28330.id)
coudray_au_perche = Ville.create(name: "Coudray-au-Perche", codepostal_id: codepostal_28330.id)
les_etilleux = Ville.create(name: "Les Etilleux", codepostal_id: codepostal_28330.id)
soize = Ville.create(name: "Soizé", codepostal_id: codepostal_28330.id)
saint_bomer = Ville.create(name: "Saint-Bomer", codepostal_id: codepostal_28330.id)
boissy_lès_perche = Ville.create(name: "Boissy-lès-Perche", codepostal_id: codepostal_28340.id)
la_chapelle_fortin = Ville.create(name: "La-Chapelle-Fortin", codepostal_id: codepostal_28340.id)
la_ferté_vidame = Ville.create(name: "La Ferté-Vidame", codepostal_id: codepostal_28340.id)
lamblore = Ville.create(name: "Lamblore", codepostal_id: codepostal_28340.id)
les_ressuintes = Ville.create(name: "Les Ressuintes", codepostal_id: codepostal_28340.id)
morvilliers = Ville.create(name: "Morvilliers", codepostal_id: codepostal_28340.id)
rohaire = Ville.create(name: "Rohaire", codepostal_id: codepostal_28340.id)
brunelles = Ville.create(name: "Brunelles", codepostal_id: codepostal_28400.id)
champrond_en_Perchet = Ville.create(name: "Champrond-en-Perchet", codepostal_id: codepostal_28400.id)
coudreceau = Ville.create(name: "Coudreceau", codepostal_id: codepostal_28400.id)
la_gaudaine = Ville.create(name: "La Gaudaine", codepostal_id: codepostal_28400.id)
margon = Ville.create(name: "Margon", codepostal_id: codepostal_28400.id)
marolles_les_buis = Ville.create(name: "Marolles-les-Buis", codepostal_id: codepostal_28400.id)
nogent_le_rotrou = Ville.create(name: "Nogent-le-Rotrou", codepostal_id: codepostal_28400.id)
souancé_au_perche = Ville.create(name: "Souancé-au-Perche", codepostal_id: codepostal_28400.id)
saint_jean_pierre_fixte = Ville.create(name: "Saint-Jean-Pierre-Fixte", codepostal_id: codepostal_28400.id)
trizay_coutretot_saint_serge = Ville.create(name: "Trizay-Coutretot-Saint-Serge", codepostal_id: codepostal_28400.id)
argenvilliers = Ville.create(name: "Argenvilliers", codepostal_id: codepostal_28420.id)
beaumont_les_autels = Ville.create(name: "Beaumont-les-Autels", codepostal_id: codepostal_28420.id)
luigny = Ville.create(name: "Luigny", codepostal_id: codepostal_28420.id)
miermaigne = Ville.create(name: "Miermaigne", codepostal_id: codepostal_28420.id)
vichères = Ville.create(name: "Vichères", codepostal_id: codepostal_28420.id)
chassant = Ville.create(name: "Chassant", codepostal_id: codepostal_28480.id)
combres = Ville.create(name: "Combres", codepostal_id: codepostal_28480.id)
fretigny = Ville.create(name: "Fretigny", codepostal_id: codepostal_28480.id)
happonvilliers = Ville.create(name: "Happonvilliers", codepostal_id: codepostal_28480.id)
la_croix_du_perche = Ville.create(name: "La Croix-du-Perche", codepostal_id: codepostal_28480.id)
saint_denis_d_authou = Ville.create(name: "Saint-Denis-d'Authou", codepostal_id: codepostal_28480.id)
thiron_gardais = Ville.create(name: "Thiron-Gardais", codepostal_id: codepostal_28480.id)