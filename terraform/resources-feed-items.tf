

resource "aws_dynamodb_table_item" "pacemaker" {
  table_name = "${aws_dynamodb_table.feed-table.name}"
  hash_key   = "${aws_dynamodb_table.feed-table.hash_key}"
  item = <<ITEM
{
  "Id": {"S": "https://post-tenebras-lire.net/Pacemaker-Bernard-Afflatet"},
  "title": {"S": "Pacemaker"},
  "writer": {"S": "Afflatet, Bernard"},

  "tags": {"S": "#Fantastique"},
  "link": {"S": "https://post-tenebras-lire.net/Pacemaker-Bernard-Afflatet/"},

  "imageUrl": {"S": "https://post-tenebras-lire.net/assets/posts/2019-09-25-Pacemaker-Bernard-Afflatet.jpg"}
}
ITEM
}

resource "aws_dynamodb_table_item" "la-grande-faucheuse" {
  table_name = "${aws_dynamodb_table.feed-table.name}"
  hash_key   = "${aws_dynamodb_table.feed-table.hash_key}"
  item = <<ITEM
{
  "Id": {"S": "https://post-tenebras-lire.net/La-Grande-Faucheuse-James-Morrow"},
  "title": {"S": "La Grande Faucheuse"},
  "writer": {"S": "Morrow, James"},

  "tags": {"S": "#Religion #Humour"},
  "link": {"S": "https://post-tenebras-lire.net/La-Grande-Faucheuse-James-Morrow/"},

  "imageUrl": {"S": "https://post-tenebras-lire.net/assets/posts/2019-09-22-La-Grande-Faucheuse-James-Morrow.jpg"}
}
ITEM
}

resource "aws_dynamodb_table_item" "hérésie-minérale" {
  table_name = "${aws_dynamodb_table.feed-table.name}"
  hash_key   = "${aws_dynamodb_table.feed-table.hash_key}"
  item = <<ITEM
{
  "Id": {"S": "https://post-tenebras-lire.net/H%C3%A9r%C3%A9sie%20min%C3%A9rale%20St%C3%A9phane%20Desienne"},
  "title": {"S": "Hérésie minérale"},
  "writer": {"S": "Desienne, Stéphane"},

  "tags": {"S": "#Nouvelle #Science-Fiction #Religion"},
  "link": {"S": "https://post-tenebras-lire.net/H%C3%A9r%C3%A9sie-min%C3%A9rale-St%C3%A9phane-Desienne/"},

  "imageUrl": {"S": "https://post-tenebras-lire.net/assets/posts/2019-09-07-H%C3%A9r%C3%A9sie%20min%C3%A9rale%20St%C3%A9phane%20Desienne.jpg"}
}
ITEM
}

resource "aws_dynamodb_table_item" "le-jugement-de-jéhovah" {
  table_name = "${aws_dynamodb_table.feed-table.name}"
  hash_key   = "${aws_dynamodb_table.feed-table.hash_key}"
  item = <<ITEM
{
  "Id": {"S": "https://post-tenebras-lire.net/Le-Jugement-de-J%C3%A9hovah-James-Morrow"},
  "title": {"S": "Le Jugement de Jéhovah"},
  "writer": {"S": "Morrow, James"},

  "tags": {"S": "#Religion #Humour"},
  "link": {"S": "https://post-tenebras-lire.net/Le-Jugement-de-J%C3%A9hovah-James-Morrow/"},

  "imageUrl": {"S": "https://post-tenebras-lire.net/assets/posts/2019-09-06-Le-Jugement-de-J%C3%A9hovah-James-Morrow.jpg"}
}
ITEM
}

resource "aws_dynamodb_table_item" "le-livre-jaune" {
  table_name = "${aws_dynamodb_table.feed-table.name}"
  hash_key   = "${aws_dynamodb_table.feed-table.hash_key}"
  item = <<ITEM
{
  "Id": {"S": "https://post-tenebras-lire.net/Le-livre-jaune-Michael-Roch"},
  "title": {"S": "Le livre jaune"},
  "writer": {"S": "Roch, Michael"},

  "tags": {"S": "#Onirique"},
  "link": {"S": "https://post-tenebras-lire.net/Le-livre-jaune-Michael-Roch/"},

  "imageUrl": {"S": "https://post-tenebras-lire.net/assets/posts/2019-08-26-Le-livre-jaune-Michael-Roch.jpg"}
}
ITEM
}

resource "aws_dynamodb_table_item" "la-fille-de-la-supérette" {
  table_name = "${aws_dynamodb_table.feed-table.name}"
  hash_key   = "${aws_dynamodb_table.feed-table.hash_key}"
  item = <<ITEM
{
  "Id": {"S": "https://post-tenebras-lire.net/La-fille-de-la-sup%C3%A9rette-Sayaka-Murata"},
  "title": {"S": "La fille de la supérette"},
  "writer": {"S": "Murata, Sayaka"},

  "tags": {"S": "#Japon"},
  "link": {"S": "https://post-tenebras-lire.net/La-fille-de-la-sup%C3%A9rette-Sayaka-Murata/"},

  "imageUrl": {"S": "https://post-tenebras-lire.net/assets/posts/2019-08-25-La-fille-de-la-sup%C3%A9rette-Sayaka-Murata.jpg"}
}
ITEM
}

resource "aws_dynamodb_table_item" "le-chant-de-kali" {
  table_name = "${aws_dynamodb_table.feed-table.name}"
  hash_key   = "${aws_dynamodb_table.feed-table.hash_key}"
  item = <<ITEM
{
  "Id": {"S": "https://post-tenebras-lire.net/Le-chant-de-Kali-Dan-Simmons"},
  "title": {"S": "Le chant de Kali"},
  "writer": {"S": "Simmons, Dan"},

  "tags": {"S": "#Fantastique #Horreur #Inde"},
  "link": {"S": "https://post-tenebras-lire.net/Le-chant-de-Kali-Dan-Simmons/"},

  "imageUrl": {"S": "https://post-tenebras-lire.net/assets/posts/2019-08-21-Le-chant-de-Kali-Dan-Simmons.png"}
}
ITEM
}

resource "aws_dynamodb_table_item" "les-annales-du-disque-monde-tome-29-le-régiment-monstrueux" {
  table_name = "${aws_dynamodb_table.feed-table.name}"
  hash_key   = "${aws_dynamodb_table.feed-table.hash_key}"
  item = <<ITEM
{
  "Id": {"S": "https://post-tenebras-lire.net/Les-annales-du-Disque-Monde-Le-r%C3%A9giment-monstrueux"},
  "title": {"S": "Les annales du Disque-Monde, Tome 29 : Le régiment monstrueux"},
  "writer": {"S": "Pratchett, Terry"},

  "tags": {"S": "#Fantasy #Humour"},
  "link": {"S": "https://post-tenebras-lire.net/Les-annales-du-Disque-Monde-Le-r%C3%A9giment-monstrueux/"},

  "imageUrl": {"S": "https://post-tenebras-lire.net/assets/posts/2019-08-19-Les-annales-du-Disque-Monde-Le-r%C3%A9giment-monstrueux.jpg"}
}
ITEM
}

resource "aws_dynamodb_table_item" "andromède-voyager-tome-3" {
  table_name = "${aws_dynamodb_table.feed-table.name}"
  hash_key   = "${aws_dynamodb_table.feed-table.hash_key}"
  item = <<ITEM
{
  "Id": {"S": "https://post-tenebras-lire.net/Androm%C3%A8de_Voyager_Tome_3_stephanne_desienne"},
  "title": {"S": "Andromède: Voyager Tome 3"},
  "writer": {"S": "Desienne, Stéphane"},

  "tags": {"S": "#Science-Fiction"},
  "link": {"S": "https://post-tenebras-lire.net/Androm%C3%A8de_Voyager_Tome_3_stephanne_desienne/"},

  "imageUrl": {"S": "https://post-tenebras-lire.net/assets/posts/2019-08-12-Androm%C3%A8de_Voyager_Tome_3_stephanne_desienne.jpg"}
}
ITEM
}

resource "aws_dynamodb_table_item" "confins-voyager-tome-2" {
  table_name = "${aws_dynamodb_table.feed-table.name}"
  hash_key   = "${aws_dynamodb_table.feed-table.hash_key}"
  item = <<ITEM
{
  "Id": {"S": "https://post-tenebras-lire.net/Confins_Voyager_Tome%202_stephanne_desienne"},
  "title": {"S": "Confins: Voyager Tome 2"},
  "writer": {"S": "Desienne, Stéphane"},

  "tags": {"S": "#Science-Fiction"},
  "link": {"S": "https://post-tenebras-lire.net/Confins_Voyager_Tome-2_stephanne_desienne/"},

  "imageUrl": {"S": "https://post-tenebras-lire.net/assets/posts/2019-08-11-Confins_Voyager_Tome%202_stephanne_desienne.jpg"}
}
ITEM
}

resource "aws_dynamodb_table_item" "la-mort-immortelle" {
  table_name = "${aws_dynamodb_table.feed-table.name}"
  hash_key   = "${aws_dynamodb_table.feed-table.hash_key}"
  item = <<ITEM
{
  "Id": {"S": "https://post-tenebras-lire.net/La_mort_immortelle_Cixin_Liu"},
  "title": {"S": "La mort immortelle"},
  "writer": {"S": "Liu, Cixin"},

  "tags": {"S": "#Science-Fiction"},
  "link": {"S": "https://post-tenebras-lire.net/La_mort_immortelle_Cixin_Liu/"},

  "imageUrl": {"S": "https://post-tenebras-lire.net/assets/posts/2019-08-07-La_mort_immortelle_Cixin_Liu.jpg"}
}
ITEM
}

resource "aws_dynamodb_table_item" "l-histoire-du-québec-en-30-secondes" {
  table_name = "${aws_dynamodb_table.feed-table.name}"
  hash_key   = "${aws_dynamodb_table.feed-table.hash_key}"
  item = <<ITEM
{
  "Id": {"S": "https://post-tenebras-lire.net/L_histoire_du_Qu%C3%A9bec_en_30_secondes_Jean-Pierre_Charland"},
  "title": {"S": "L’histoire du Québec en 30 secondes"},
  "writer": {"S": "Charland, Jean-Pierre"},

  "tags": {"S": "#Histoire #Québec"},
  "link": {"S": "https://post-tenebras-lire.net/L_histoire_du_Qu%C3%A9bec_en_30_secondes_Jean-Pierre_Charland/"},

  "imageUrl": {"S": "https://post-tenebras-lire.net/assets/posts/2019-07-31-L_histoire_du_Qu%C3%A9bec_en_30_secondes_Jean-Pierre_Charland.jpg"}
}
ITEM
}

resource "aws_dynamodb_table_item" "la-forêt-sombre" {
  table_name = "${aws_dynamodb_table.feed-table.name}"
  hash_key   = "${aws_dynamodb_table.feed-table.hash_key}"
  item = <<ITEM
{
  "Id": {"S": "https://post-tenebras-lire.net/La_for%C3%AAt_sombre_Cixin_Liu"},
  "title": {"S": "La forêt sombre"},
  "writer": {"S": "Liu, Cixin"},

  "tags": {"S": "#Science-Fiction"},
  "link": {"S": "https://post-tenebras-lire.net/La_for%C3%AAt_sombre_Cixin_Liu/"},

  "imageUrl": {"S": "https://post-tenebras-lire.net/assets/posts/2019-06-17-La_for%C3%AAt_sombre_Cixin_Liu.jpg"}
}
ITEM
}

resource "aws_dynamodb_table_item" "le-problème-à-trois-corps" {
  table_name = "${aws_dynamodb_table.feed-table.name}"
  hash_key   = "${aws_dynamodb_table.feed-table.hash_key}"
  item = <<ITEM
{
  "Id": {"S": "https://post-tenebras-lire.net/Le_probl%C3%A8me_%C3%A0_trois_corps%20_Cixin_Liu"},
  "title": {"S": "Le problème à trois corps"},
  "writer": {"S": "Liu, Cixin"},

  "tags": {"S": "#Science-Fiction"},
  "link": {"S": "https://post-tenebras-lire.net/Le_probl%C3%A8me_%C3%A0_trois_corps-_Cixin_Liu/"},

  "imageUrl": {"S": "https://post-tenebras-lire.net/assets/posts/2019-06-03-Le_probl%C3%A8me_%C3%A0_trois_corps%20_Cixin_Liu.jpg"}
}
ITEM
}

resource "aws_dynamodb_table_item" "mais-qui-a-attrapé-le-bison-de-higgs" {
  table_name = "${aws_dynamodb_table.feed-table.name}"
  hash_key   = "${aws_dynamodb_table.feed-table.hash_key}"
  item = <<ITEM
{
  "Id": {"S": "https://post-tenebras-lire.net/Mais_qui_a_attrap%C3%A9_le_bison_de_Higgs_David_Louapre"},
  "title": {"S": "Mais qui a attrapé le bison de Higgs ?"},
  "writer": {"S": "Louapre, David"},

  "tags": {"S": "#Science #Vulgarisation"},
  "link": {"S": "https://post-tenebras-lire.net/Mais_qui_a_attrap%C3%A9_le_bison_de_Higgs_David_Louapre/"},

  "imageUrl": {"S": "https://post-tenebras-lire.net/assets/posts/2019-05-31-Mais_qui_a_attrap%C3%A9_le_bison_de_Higgs_David_Louapre.jpg"}
}
ITEM
}

resource "aws_dynamodb_table_item" "insoluble-mais-vrai" {
  table_name = "${aws_dynamodb_table.feed-table.name}"
  hash_key   = "${aws_dynamodb_table.feed-table.hash_key}"
  item = <<ITEM
{
  "Id": {"S": "https://post-tenebras-lire.net/Insoluble_mais_vrai_David_Louapre"},
  "title": {"S": "Insoluble mais vrai !"},
  "writer": {"S": "Louapre, David"},

  "tags": {"S": "#Science #Vulgarisation"},
  "link": {"S": "https://post-tenebras-lire.net/Insoluble_mais_vrai_David_Louapre/"},

  "imageUrl": {"S": "https://post-tenebras-lire.net/assets/posts/2019-05-30-Insoluble_mais_vrai_David_Louapre.jpg"}
}
ITEM
}

resource "aws_dynamodb_table_item" "voyage-à-чорнобиль" {
  table_name = "${aws_dynamodb_table.feed-table.name}"
  hash_key   = "${aws_dynamodb_table.feed-table.hash_key}"
  item = <<ITEM
{
  "Id": {"S": "https://post-tenebras-lire.net/%D0%A7%D0%BE%D1%80%D0%BD%D0%BE%D0%B1%D0%B8%D0%BB%D1%8C"},
  "title": {"S": "Voyage à “Чорнобиль”"},
  "writer": {"S": "Moi"},

  "tags": {"S": "#Voyage #Post-apocalyptique"},
  "link": {"S": "https://post-tenebras-lire.net/%D0%A7%D0%BE%D1%80%D0%BD%D0%BE%D0%B1%D0%B8%D0%BB%D1%8C/"},

  "imageUrl": {"S": "https://post-tenebras-lire.net/assets/posts//assets/gallery/%D0%A7%D0%BE%D1%80%D0%BD%D0%BE%D0%B1%D0%B8%D0%BB%D1%8C/DSCF0457.jpg"}
}
ITEM
}

resource "aws_dynamodb_table_item" "nos-premières-fois" {
  table_name = "${aws_dynamodb_table.feed-table.name}"
  hash_key   = "${aws_dynamodb_table.feed-table.hash_key}"
  item = <<ITEM
{
  "Id": {"S": "https://post-tenebras-lire.net/Nos_premi%C3%A8res_fois_Nicolas_Teyssandier"},
  "title": {"S": "Nos premières fois"},
  "writer": {"S": "Teyssandier, Nicolas"},

  "tags": {"S": "#Science"},
  "link": {"S": "https://post-tenebras-lire.net/Nos_premi%C3%A8res_fois_Nicolas_Teyssandier/"},

  "imageUrl": {"S": "https://post-tenebras-lire.net/assets/posts/2019-05-13-Nos_premi%C3%A8res_fois_Nicolas_Teyssandier.jpg"}
}
ITEM
}

resource "aws_dynamodb_table_item" "black-man-de-richard-morgan" {
  table_name = "${aws_dynamodb_table.feed-table.name}"
  hash_key   = "${aws_dynamodb_table.feed-table.hash_key}"
  item = <<ITEM
{
  "Id": {"S": "https://post-tenebras-lire.net/Black_man_Richard_Morgan"},
  "title": {"S": "Black man de Richard Morgan"},
  "writer": {"S": "Morgan, Richard"},

  "tags": {"S": "#Science-Fiction"},
  "link": {"S": "https://post-tenebras-lire.net/Black_man_Richard_Morgan/"},

  "imageUrl": {"S": "https://post-tenebras-lire.net/assets/posts/2019-05-08-Black_man_Richard_Morgan.jpg"}
}
ITEM
}

resource "aws_dynamodb_table_item" "le-petit-fiera-illustré-dictionnaire-politiquement-incorrect-du-management-et-de-l-entreprise" {
  table_name = "${aws_dynamodb_table.feed-table.name}"
  hash_key   = "${aws_dynamodb_table.feed-table.hash_key}"
  item = <<ITEM
{
  "Id": {"S": "https://post-tenebras-lire.net/Le_petit_Fiera_illustr%C3%A9"},
  "title": {"S": "Le petit Fiera illustré: Dictionnaire politiquement incorrect du management et de l’entreprise"},
  "writer": {"S": "Ferrero, Jean-Baptiste"},

  "tags": {"S": "#Dictionnaire #Entreprise"},
  "link": {"S": "https://post-tenebras-lire.net/Le_petit_Fiera_illustr%C3%A9/"},

  "imageUrl": {"S": "https://post-tenebras-lire.net/assets/posts/2019-05-08-Le_petit_Fiera_illustr%C3%A9.jpg"}
}
ITEM
}

resource "aws_dynamodb_table_item" "takeshi-kovacs-tome-3-furies-déchaînées" {
  table_name = "${aws_dynamodb_table.feed-table.name}"
  hash_key   = "${aws_dynamodb_table.feed-table.hash_key}"
  item = <<ITEM
{
  "Id": {"S": "https://post-tenebras-lire.net/Takeshi_Kovacs_Furies_d%C3%A9cha%C3%AEn%C3%A9es_Richard_Morgan"},
  "title": {"S": "Takeshi Kovacs, tome 3 : Furies déchaînées"},
  "writer": {"S": "Morgan, Richard"},

  "tags": {"S": "#Science-Fiction"},
  "link": {"S": "https://post-tenebras-lire.net/Takeshi_Kovacs_Furies_d%C3%A9cha%C3%AEn%C3%A9es_Richard_Morgan/"},

  "imageUrl": {"S": "https://post-tenebras-lire.net/assets/posts/2019-04-29-Takeshi_Kovacs_Furies_d%C3%A9cha%C3%AEn%C3%A9es_Richard_Morgan.jpg"}
}
ITEM
}

resource "aws_dynamodb_table_item" "takeshi-kovacs-tome-2-anges-déchus" {
  table_name = "${aws_dynamodb_table.feed-table.name}"
  hash_key   = "${aws_dynamodb_table.feed-table.hash_key}"
  item = <<ITEM
{
  "Id": {"S": "https://post-tenebras-lire.net/Takeshi_Kovacs_Anges_d%C3%A9chus_Richard_Morgan"},
  "title": {"S": "Takeshi Kovacs, tome 2 : Anges déchus"},
  "writer": {"S": "Morgan, Richard"},

  "tags": {"S": "#Science-Fiction"},
  "link": {"S": "https://post-tenebras-lire.net/Takeshi_Kovacs_Anges_d%C3%A9chus_Richard_Morgan/"},

  "imageUrl": {"S": "https://post-tenebras-lire.net/assets/posts/2019-04-25-Takeshi_Kovacs_Anges_d%C3%A9chus_Richard_Morgan.jpg"}
}
ITEM
}

resource "aws_dynamodb_table_item" "takeshi-kovacs-tome-1-carbone-modifié" {
  table_name = "${aws_dynamodb_table.feed-table.name}"
  hash_key   = "${aws_dynamodb_table.feed-table.hash_key}"
  item = <<ITEM
{
  "Id": {"S": "https://post-tenebras-lire.net/Takeshi_Kovacs_Carbone%20modifi%C3%A9_Altered_Carbon"},
  "title": {"S": "Takeshi Kovacs, tome 1 : Carbone modifié"},
  "writer": {"S": "Morgan, Richard"},

  "tags": {"S": "#Polar #Science-Fiction"},
  "link": {"S": "https://post-tenebras-lire.net/Takeshi_Kovacs_Carbone-modifi%C3%A9_Altered_Carbon/"},

  "imageUrl": {"S": "https://post-tenebras-lire.net/assets/posts/2019-04-14-Takeshi_Kovacs_Carbone%20modifi%C3%A9_Altered_Carbon.jpg"}
}
ITEM
}

resource "aws_dynamodb_table_item" "le-chemin-des-dieux" {
  table_name = "${aws_dynamodb_table.feed-table.name}"
  hash_key   = "${aws_dynamodb_table.feed-table.hash_key}"
  item = <<ITEM
{
  "Id": {"S": "https://post-tenebras-lire.net/le-chemin-des-dieux-jean-philippe-depotte"},
  "title": {"S": "Le chemin des dieux"},
  "writer": {"S": "Depotte, Jean-Philippe"},

  "tags": {"S": "#Polar #Japon #Fantastique"},
  "link": {"S": "https://post-tenebras-lire.net/le-chemin-des-dieux-jean-philippe-depotte/"},

  "imageUrl": {"S": "https://post-tenebras-lire.net/assets/posts/2019-04-11-le-chemin-des-dieux-jean-philippe-depotte.jpg"}
}
ITEM
}

resource "aws_dynamodb_table_item" "les-plus-qu-humains" {
  table_name = "${aws_dynamodb_table.feed-table.name}"
  hash_key   = "${aws_dynamodb_table.feed-table.hash_key}"
  item = <<ITEM
{
  "Id": {"S": "https://post-tenebras-lire.net/les-plus-qu-humains-theodore-sturgeon"},
  "title": {"S": "Les plus qu’humains"},
  "writer": {"S": "Sturgeon, Theodore"},

  "tags": {"S": "#Science-Fiction"},
  "link": {"S": "https://post-tenebras-lire.net/les-plus-qu-humains-theodore-sturgeon/"},

  "imageUrl": {"S": "https://post-tenebras-lire.net/assets/posts/2019-04-01-les-plus-qu-humains-theodore-sturgeon.jpg"}
}
ITEM
}

resource "aws_dynamodb_table_item" "les-secrets-du-mentaliste" {
  table_name = "${aws_dynamodb_table.feed-table.name}"
  hash_key   = "${aws_dynamodb_table.feed-table.hash_key}"
  item = <<ITEM
{
  "Id": {"S": "https://post-tenebras-lire.net/Les-secrets-du-mentaliste-de-Viktor-Vincent"},
  "title": {"S": "Les secrets du mentaliste"},
  "writer": {"S": "Vincent, Viktor"},

  "tags": {"S": "#Magie"},
  "link": {"S": "https://post-tenebras-lire.net/Les-secrets-du-mentaliste-de-Viktor-Vincent/"},

  "imageUrl": {"S": "https://post-tenebras-lire.net/assets/posts/2019-03-18-Les-secrets-du-mentaliste-de-Viktor-Vincent.jpg"}
}
ITEM
}

resource "aws_dynamodb_table_item" "le-petit-déjeuner-des-champions" {
  table_name = "${aws_dynamodb_table.feed-table.name}"
  hash_key   = "${aws_dynamodb_table.feed-table.hash_key}"
  item = <<ITEM
{
  "Id": {"S": "https://post-tenebras-lire.net/Le-petit-d%C3%A9jeuner-des-champions-Kurt-Vonnegut-Jr"},
  "title": {"S": "Le petit déjeuner des champions"},
  "writer": {"S": "Vonnegut, Kurt Jr"},

  "tags": {"S": "#Science-Fiction"},
  "link": {"S": "https://post-tenebras-lire.net/Le-petit-d%C3%A9jeuner-des-champions-Kurt-Vonnegut-Jr/"},

  "imageUrl": {"S": "https://post-tenebras-lire.net/assets/posts/2019-03-15-Le-petit-d%C3%A9jeuner-des-champions-Kurt-Vonnegut-Jr.jpg"}
}
ITEM
}

resource "aws_dynamodb_table_item" "dernières-nouvelles-de-sapiens" {
  table_name = "${aws_dynamodb_table.feed-table.name}"
  hash_key   = "${aws_dynamodb_table.feed-table.hash_key}"
  item = <<ITEM
{
  "Id": {"S": "https://post-tenebras-lire.net/Derni%C3%A8res-nouvelles-de-Sapiens-Silvana-Condemi"},
  "title": {"S": "Dernières nouvelles de Sapiens"},
  "writer": {"S": "Condemi, Silvana"},

  "tags": {"S": "#Science #Vulgarisation"},
  "link": {"S": "https://post-tenebras-lire.net/Derni%C3%A8res-nouvelles-de-Sapiens-Silvana-Condemi/"},

  "imageUrl": {"S": "https://post-tenebras-lire.net/assets/posts/2019-03-09-Derni%C3%A8res-nouvelles-de-Sapiens-Silvana-Condemi.jpg"}
}
ITEM
}

resource "aws_dynamodb_table_item" "luna-lune-du-loup" {
  table_name = "${aws_dynamodb_table.feed-table.name}"
  hash_key   = "${aws_dynamodb_table.feed-table.hash_key}"
  item = <<ITEM
{
  "Id": {"S": "https://post-tenebras-lire.net/Luna-Lune-du-loup-Ian-McDonald"},
  "title": {"S": "Luna : Lune du loup"},
  "writer": {"S": "McDonald, Ian"},

  "tags": {"S": "#Science-Fiction"},
  "link": {"S": "https://post-tenebras-lire.net/Luna-Lune-du-loup-Ian-McDonald/"},

  "imageUrl": {"S": "https://post-tenebras-lire.net/assets/posts/2019-03-05-Luna-Lune-du-loup-Ian-McDonald.jpg"}
}
ITEM
}

resource "aws_dynamodb_table_item" "luna" {
  table_name = "${aws_dynamodb_table.feed-table.name}"
  hash_key   = "${aws_dynamodb_table.feed-table.hash_key}"
  item = <<ITEM
{
  "Id": {"S": "https://post-tenebras-lire.net/Luna-Ian-McDonald"},
  "title": {"S": "Luna"},
  "writer": {"S": "McDonald, Ian"},

  "tags": {"S": "#Science-Fiction"},
  "link": {"S": "https://post-tenebras-lire.net/Luna-Ian-McDonald/"},

  "imageUrl": {"S": "https://post-tenebras-lire.net/assets/posts/2019-02-23-Luna-Ian-McDonald.jpg"}
}
ITEM
}

resource "aws_dynamodb_table_item" "la-ferme-des-animaux" {
  table_name = "${aws_dynamodb_table.feed-table.name}"
  hash_key   = "${aws_dynamodb_table.feed-table.hash_key}"
  item = <<ITEM
{
  "Id": {"S": "https://post-tenebras-lire.net/La-ferme-des-animaux-George-Orwell"},
  "title": {"S": "La ferme des animaux"},
  "writer": {"S": "Orwell, George"},

  "tags": {"S": "#Dystopie"},
  "link": {"S": "https://post-tenebras-lire.net/La-ferme-des-animaux-George-Orwell/"},

  "imageUrl": {"S": "https://post-tenebras-lire.net/assets/posts/2019-02-23-La-ferme-des-animaux-George-Orwell.jpg"}
}
ITEM
}

resource "aws_dynamodb_table_item" "le-gambit-du-renard" {
  table_name = "${aws_dynamodb_table.feed-table.name}"
  hash_key   = "${aws_dynamodb_table.feed-table.hash_key}"
  item = <<ITEM
{
  "Id": {"S": "https://post-tenebras-lire.net/Le-Gambit-du-Renard-Yoon-ha-Lee"},
  "title": {"S": "Le Gambit du Renard"},
  "writer": {"S": "Lee, Yoon-ha"},

  "tags": {"S": "#Science-Fiction"},
  "link": {"S": "https://post-tenebras-lire.net/Le-Gambit-du-Renard-Yoon-ha-Lee/"},

  "imageUrl": {"S": "https://post-tenebras-lire.net/assets/posts/2019-02-19-Le-Gambit-du-Renard-Yoon-ha-Lee.jpg"}
}
ITEM
}

resource "aws_dynamodb_table_item" "elle-est-pas-belle-la-vie-conseils-d-un-vieux-schnock-à-de-jeunes-cons" {
  table_name = "${aws_dynamodb_table.feed-table.name}"
  hash_key   = "${aws_dynamodb_table.feed-table.hash_key}"
  item = <<ITEM
{
  "Id": {"S": "https://post-tenebras-lire.net/Elle-est-pas-belle-la%20vie-Kurt-Vonnegut"},
  "title": {"S": "Elle est pas belle, la vie ? : Conseils d’un vieux schnock à de jeunes cons"},
  "writer": {"S": "Vonnegut, Kurt Jr"},

  "tags": {"S": "#Discours"},
  "link": {"S": "https://post-tenebras-lire.net/Elle-est-pas-belle-la-vie-Kurt-Vonnegut/"},

  "imageUrl": {"S": "https://post-tenebras-lire.net/assets/posts/2019-02-12-Elle-est-pas-belle-la%20vie-Kurt-Vonnegut.jpg"}
}
ITEM
}

resource "aws_dynamodb_table_item" "aux-sources-de-la-vie" {
  table_name = "${aws_dynamodb_table.feed-table.name}"
  hash_key   = "${aws_dynamodb_table.feed-table.hash_key}"
  item = <<ITEM
{
  "Id": {"S": "https://post-tenebras-lire.net/Aux-sources-de-la-vie-Eric-Karsenti"},
  "title": {"S": "Aux sources de la vie"},
  "writer": {"S": "Karsenti, Eric"},

  "tags": {"S": "#Science #Vulgarisation"},
  "link": {"S": "https://post-tenebras-lire.net/Aux-sources-de-la-vie-Eric-Karsenti/"},

  "imageUrl": {"S": "https://post-tenebras-lire.net/assets/posts/2019-02-06-Aux-sources-de-la-vie-Eric-Karsenti.jpg"}
}
ITEM
}

resource "aws_dynamodb_table_item" "la-cité-du-futur" {
  table_name = "${aws_dynamodb_table.feed-table.name}"
  hash_key   = "${aws_dynamodb_table.feed-table.hash_key}"
  item = <<ITEM
{
  "Id": {"S": "https://post-tenebras-lire.net/La-Cit%C3%A9-du-futur-Robert-Charles-Wilson"},
  "title": {"S": "La Cité du futur"},
  "writer": {"S": "Wilson, Robert-Charles"},

  "tags": {"S": "#Science-Fiction"},
  "link": {"S": "https://post-tenebras-lire.net/La-Cit%C3%A9-du-futur-Robert-Charles-Wilson/"},

  "imageUrl": {"S": "https://post-tenebras-lire.net/assets/posts/2019-01-27-La-Cit%C3%A9-du-futur-Robert-Charles-Wilson.jpg"}
}
ITEM
}

resource "aws_dynamodb_table_item" "dessins-politiques" {
  table_name = "${aws_dynamodb_table.feed-table.name}"
  hash_key   = "${aws_dynamodb_table.feed-table.hash_key}"
  item = <<ITEM
{
  "Id": {"S": "https://post-tenebras-lire.net/Dessins-politiques-Mix-Remix"},
  "title": {"S": "Dessins politiques"},
  "writer": {"S": "Mix &amp; Remix"},

  "tags": {"S": "#BD #Humour"},
  "link": {"S": "https://post-tenebras-lire.net/Dessins-politiques-Mix-Remix/"},

  "imageUrl": {"S": "https://post-tenebras-lire.net/assets/posts/2019-01-24-Dessins-politiques-Mix-Remix.jpg"}
}
ITEM
}

resource "aws_dynamodb_table_item" "amour-djihad-rtt" {
  table_name = "${aws_dynamodb_table.feed-table.name}"
  hash_key   = "${aws_dynamodb_table.feed-table.hash_key}"
  item = <<ITEM
{
  "Id": {"S": "https://post-tenebras-lire.net/Amour-Djihad--RTT-Marc-Dubuisson"},
  "title": {"S": "Amour, Djihad &amp;amp; RTT"},
  "writer": {"S": "Dubuisson, Marc"},

  "tags": {"S": "#BD #Humour"},
  "link": {"S": "https://post-tenebras-lire.net/Amour-Djihad-RTT-Marc-Dubuisson/"},

  "imageUrl": {"S": "https://post-tenebras-lire.net/assets/posts/2019-01-23-Amour-Djihad--RTT-Marc-Dubuisson.jpg"}
}
ITEM
}

resource "aws_dynamodb_table_item" "les-annales-du-disque-monde-tome-27-procrastination" {
  table_name = "${aws_dynamodb_table.feed-table.name}"
  hash_key   = "${aws_dynamodb_table.feed-table.hash_key}"
  item = <<ITEM
{
  "Id": {"S": "https://post-tenebras-lire.net/Les-Annales-du-Disque-Monde-Tome-27-Procrastination-Terry-Pratchett"},
  "title": {"S": "Les Annales du Disque-Monde, Tome 27 : Procrastination"},
  "writer": {"S": "Pratchett, Terry"},

  "tags": {"S": "#Fantasy #Humour"},
  "link": {"S": "https://post-tenebras-lire.net/Les-Annales-du-Disque-Monde-Tome-27-Procrastination-Terry-Pratchett/"},

  "imageUrl": {"S": "https://post-tenebras-lire.net/assets/posts/2019-01-22-Les-Annales-du-Disque-Monde-Tome-27-Procrastination-Terry-Pratchett.jpg"}
}
ITEM
}

resource "aws_dynamodb_table_item" "l-empire-tome-2-sodome-et-gomorrhe" {
  table_name = "${aws_dynamodb_table.feed-table.name}"
  hash_key   = "${aws_dynamodb_table.feed-table.hash_key}"
  item = <<ITEM
{
  "Id": {"S": "https://post-tenebras-lire.net/L-Empire-tome-2-Sodome-et-Gomorrhe-Olivier-Bobineau"},
  "title": {"S": "L’Empire tome 2 : Sodome et Gomorrhe"},
  "writer": {"S": "Bobineau, Olivier"},

  "tags": {"S": "#Religion #Histoire"},
  "link": {"S": "https://post-tenebras-lire.net/L-Empire-tome-2-Sodome-et-Gomorrhe-Olivier-Bobineau/"},

  "imageUrl": {"S": "https://post-tenebras-lire.net/assets/posts/2019-01-15-L-Empire-tome-2-Sodome-et-Gomorrhe-Olivier-Bobineau.jpg"}
}
ITEM
}

resource "aws_dynamodb_table_item" "l-empire-une-histoire-politique-du-christianisme" {
  table_name = "${aws_dynamodb_table.feed-table.name}"
  hash_key   = "${aws_dynamodb_table.feed-table.hash_key}"
  item = <<ITEM
{
  "Id": {"S": "https://post-tenebras-lire.net/L-Empire-Une-histoire-politique-christianisme-Pascal-Magnat"},
  "title": {"S": "L’Empire : Une histoire politique du christianisme"},
  "writer": {"S": "Magnat, Pascal"},

  "tags": {"S": "#Religion #Histoire"},
  "link": {"S": "https://post-tenebras-lire.net/L-Empire-Une-histoire-politique-christianisme-Pascal-Magnat/"},

  "imageUrl": {"S": "https://post-tenebras-lire.net/assets/posts/2019-01-14-L-Empire-Une-histoire-politique-christianisme-Pascal-Magnat.jpg"}
}
ITEM
}

resource "aws_dynamodb_table_item" "la-vie-est-belle-les-surprises-de-l-évolution" {
  table_name = "${aws_dynamodb_table.feed-table.name}"
  hash_key   = "${aws_dynamodb_table.feed-table.hash_key}"
  item = <<ITEM
{
  "Id": {"S": "https://post-tenebras-lire.net/La-Vie-est-belle-Les-Surprises-de-l-%C3%A9volution-Stephen-Jay-Gould"},
  "title": {"S": "La Vie est belle : Les Surprises de l’évolution"},
  "writer": {"S": "Gould, Stephen Jay"},

  "tags": {"S": "#Science"},
  "link": {"S": "https://post-tenebras-lire.net/La-Vie-est-belle-Les-Surprises-de-l-%C3%A9volution-Stephen-Jay-Gould/"},

  "imageUrl": {"S": "https://post-tenebras-lire.net/assets/posts/2019-01-13-La-Vie-est-belle-Les-Surprises-de-l-%C3%A9volution-Stephen-Jay-Gould.jpg"}
}
ITEM
}

resource "aws_dynamodb_table_item" "chroniques-amasiennes-tome-2" {
  table_name = "${aws_dynamodb_table.feed-table.name}"
  hash_key   = "${aws_dynamodb_table.feed-table.hash_key}"
  item = <<ITEM
{
  "Id": {"S": "https://post-tenebras-lire.net/Chroniques-amasiennes-tome-2-Bernard-Afflatet"},
  "title": {"S": "Chroniques amasiennes, tome 2"},
  "writer": {"S": "Afflatet, Bernard"},

  "tags": {"S": "#Science-Fiction"},
  "link": {"S": "https://post-tenebras-lire.net/Chroniques-amasiennes-tome-2-Bernard-Afflatet/"},

  "imageUrl": {"S": "https://post-tenebras-lire.net/assets/posts/2019-01-09-Chroniques-amasiennes-tome-2-Bernard-Afflatet.jpg"}
}
ITEM
}

resource "aws_dynamodb_table_item" "chroniques-amasiennes-tome-1" {
  table_name = "${aws_dynamodb_table.feed-table.name}"
  hash_key   = "${aws_dynamodb_table.feed-table.hash_key}"
  item = <<ITEM
{
  "Id": {"S": "https://post-tenebras-lire.net/Chroniques-amasiennes-tome-1-Bernard-Afflatet"},
  "title": {"S": "Chroniques amasiennes, tome 1"},
  "writer": {"S": "Afflatet, Bernard"},

  "tags": {"S": "#Science-Fiction"},
  "link": {"S": "https://post-tenebras-lire.net/Chroniques-amasiennes-tome-1-Bernard-Afflatet/"},

  "imageUrl": {"S": "https://post-tenebras-lire.net/assets/posts/2019-01-08-Chroniques-amasiennes-tome-1-Bernard-Afflatet.jpg"}
}
ITEM
}

resource "aws_dynamodb_table_item" "conscience-contre-violence" {
  table_name = "${aws_dynamodb_table.feed-table.name}"
  hash_key   = "${aws_dynamodb_table.feed-table.hash_key}"
  item = <<ITEM
{
  "Id": {"S": "https://post-tenebras-lire.net/Conscience-contre-violence-Stefan-Zweig"},
  "title": {"S": "Conscience contre violence"},
  "writer": {"S": "Zweig, Stefan"},

  "tags": {"S": "#Religion #Histoire #Suisse"},
  "link": {"S": "https://post-tenebras-lire.net/Conscience-contre-violence-Stefan-Zweig/"},

  "imageUrl": {"S": "https://post-tenebras-lire.net/assets/posts/2019-01-02-Conscience-contre-violence-Stefan-Zweig.jpg"}
}
ITEM
}

resource "aws_dynamodb_table_item" "un-feu-sur-l-abîme" {
  table_name = "${aws_dynamodb_table.feed-table.name}"
  hash_key   = "${aws_dynamodb_table.feed-table.hash_key}"
  item = <<ITEM
{
  "Id": {"S": "https://post-tenebras-lire.net/Un-feu-sur-l-ab%C3%AEme-Vernor-Vinge"},
  "title": {"S": "Un feu sur l’abîme"},
  "writer": {"S": "Vinge, Vernor"},

  "tags": {"S": "#Science-Fiction"},
  "link": {"S": "https://post-tenebras-lire.net/Un-feu-sur-l-ab%C3%AEme-Vernor-Vinge/"},

  "imageUrl": {"S": "https://post-tenebras-lire.net/assets/posts/2018-12-21-Un-feu-sur-l-ab%C3%AEme-Vernor-Vinge.jpg"}
}
ITEM
}

resource "aws_dynamodb_table_item" "dans-la-toile-du-temps" {
  table_name = "${aws_dynamodb_table.feed-table.name}"
  hash_key   = "${aws_dynamodb_table.feed-table.hash_key}"
  item = <<ITEM
{
  "Id": {"S": "https://post-tenebras-lire.net/Dans-la-toile-du-temps-Adrian%20Tchaikovsky"},
  "title": {"S": "Dans la toile du temps"},
  "writer": {"S": "Tchaikovsky, Adrian"},

  "tags": {"S": "#Science-Fiction"},
  "link": {"S": "https://post-tenebras-lire.net/Dans-la-toile-du-temps-Adrian-Tchaikovsky/"},

  "imageUrl": {"S": "https://post-tenebras-lire.net/assets/posts/2018-12-19-Dans-la-toile-du-temps-Adrian%20Tchaikovsky.jpg"}
}
ITEM
}

resource "aws_dynamodb_table_item" "les-annales-du-disque-monde-tome-28-ronde-de-nuit" {
  table_name = "${aws_dynamodb_table.feed-table.name}"
  hash_key   = "${aws_dynamodb_table.feed-table.hash_key}"
  item = <<ITEM
{
  "Id": {"S": "https://post-tenebras-lire.net/Ronde_de_nuit_Terry_Pratchett"},
  "title": {"S": "Les Annales du Disque-Monde, Tome 28 : Ronde de nuit"},
  "writer": {"S": "Pratchett, Terry"},

  "tags": {"S": "#Fantasy #Humour"},
  "link": {"S": "https://post-tenebras-lire.net/Ronde_de_nuit_Terry_Pratchett/"},

  "imageUrl": {"S": "https://post-tenebras-lire.net/assets/posts/2018-11-24-Ronde_de_nuit_Terry_Pratchett.jpg"}
}
ITEM
}

resource "aws_dynamodb_table_item" "le-dernier-des-yakuzas" {
  table_name = "${aws_dynamodb_table.feed-table.name}"
  hash_key   = "${aws_dynamodb_table.feed-table.hash_key}"
  item = <<ITEM
{
  "Id": {"S": "https://post-tenebras-lire.net/Le_Dernier_des_Yakuzas_Jake_Adelstein"},
  "title": {"S": "Le Dernier Des Yakuzas"},
  "writer": {"S": "Adelstein, Jake"},

  "tags": {"S": "#Japon"},
  "link": {"S": "https://post-tenebras-lire.net/Le_Dernier_des_Yakuzas_Jake_Adelstein/"},

  "imageUrl": {"S": "https://post-tenebras-lire.net/assets/posts/2018-11-23-Le_Dernier_des_Yakuzas_Jake_Adelstein.jpg"}
}
ITEM
}

resource "aws_dynamodb_table_item" "latium" {
  table_name = "${aws_dynamodb_table.feed-table.name}"
  hash_key   = "${aws_dynamodb_table.feed-table.hash_key}"
  item = <<ITEM
{
  "Id": {"S": "https://post-tenebras-lire.net/Latium_de_Romain_Lucazeau"},
  "title": {"S": "Latium"},
  "writer": {"S": "Lucazeau, Romain"},

  "tags": {"S": "#Science-Fiction"},
  "link": {"S": "https://post-tenebras-lire.net/Latium_de_Romain_Lucazeau/"},

  "imageUrl": {"S": "https://post-tenebras-lire.net/assets/posts/2018-11-19-Latium_de_Romain_Lucazeau.jpg"}
}
ITEM
}

resource "aws_dynamodb_table_item" "un-kimono-pour-linceul" {
  table_name = "${aws_dynamodb_table.feed-table.name}"
  hash_key   = "${aws_dynamodb_table.feed-table.hash_key}"
  item = <<ITEM
{
  "Id": {"S": "https://post-tenebras-lire.net/Un_kimono_pour_linceul_Jean_Michel_Leboulanger"},
  "title": {"S": "Un kimono pour linceul"},
  "writer": {"S": "Leboulanger, Jean-Michel"},

  "tags": {"S": "#Japon #Polar"},
  "link": {"S": "https://post-tenebras-lire.net/Un_kimono_pour_linceul_Jean_Michel_Leboulanger/"},

  "imageUrl": {"S": "https://post-tenebras-lire.net/assets/posts/2018-11-13-Un_kimono_pour_linceul_Jean_Michel_Leboulanger.jpg"}
}
ITEM
}

resource "aws_dynamodb_table_item" "les-remèdes-du-docteur-irabu" {
  table_name = "${aws_dynamodb_table.feed-table.name}"
  hash_key   = "${aws_dynamodb_table.feed-table.hash_key}"
  item = <<ITEM
{
  "Id": {"S": "https://post-tenebras-lire.net/Les_rem%C3%A8des_du_docteur_Irabu_Hideo_Okuda"},
  "title": {"S": "Les Remèdes du Docteur Irabu"},
  "writer": {"S": "Okuda, Hideo"},

  "tags": {"S": "#Japon"},
  "link": {"S": "https://post-tenebras-lire.net/Les_rem%C3%A8des_du_docteur_Irabu_Hideo_Okuda/"},

  "imageUrl": {"S": "https://post-tenebras-lire.net/assets/posts/2018-11-12-Les_rem%C3%A8des_du_docteur_Irabu_Hideo_Okuda.jpg"}
}
ITEM
}

resource "aws_dynamodb_table_item" "tokyo-vice" {
  table_name = "${aws_dynamodb_table.feed-table.name}"
  hash_key   = "${aws_dynamodb_table.feed-table.hash_key}"
  item = <<ITEM
{
  "Id": {"S": "https://post-tenebras-lire.net/Tokyo_Vice_Jake_Adelstein"},
  "title": {"S": "Tokyo Vice"},
  "writer": {"S": "Adelstein, Jake"},

  "tags": {"S": "#Japon"},
  "link": {"S": "https://post-tenebras-lire.net/Tokyo_Vice_Jake_Adelstein/"},

  "imageUrl": {"S": "https://post-tenebras-lire.net/assets/posts/2018-11-09-Tokyo_Vice_Jake_Adelstein.jpg"}
}
ITEM
}

resource "aws_dynamodb_table_item" "the-blue-eyed-salaryman-from-world-traveller-to-lifer-at-mitsubishi" {
  table_name = "${aws_dynamodb_table.feed-table.name}"
  hash_key   = "${aws_dynamodb_table.feed-table.hash_key}"
  item = <<ITEM
{
  "Id": {"S": "https://post-tenebras-lire.net/The_Blue-_Eyed%20_Salaryman_Niall_Murtagh"},
  "title": {"S": "The Blue-Eyed Salaryman: From World Traveller to Lifer at Mitsubishi"},
  "writer": {"S": "Murtagh, Niall"},

  "tags": {"S": "#Japon"},
  "link": {"S": "https://post-tenebras-lire.net/The_Blue-_Eyed-_Salaryman_Niall_Murtagh/"},

  "imageUrl": {"S": "https://post-tenebras-lire.net/assets/posts/2018-11-07-The_Blue-_Eyed%20_Salaryman_Niall_Murtagh.jpg"}
}
ITEM
}

resource "aws_dynamodb_table_item" "le-grand-roman-des-maths" {
  table_name = "${aws_dynamodb_table.feed-table.name}"
  hash_key   = "${aws_dynamodb_table.feed-table.hash_key}"
  item = <<ITEM
{
  "Id": {"S": "https://post-tenebras-lire.net/Le_grand_roman_des%20maths_Micka%C3%ABl_Launay"},
  "title": {"S": "Le Grand Roman des Maths"},
  "writer": {"S": "Launay, Mickaël"},

  "tags": {"S": "#Science #Vulgarisation"},
  "link": {"S": "https://post-tenebras-lire.net/Le_grand_roman_des-maths_Micka%C3%ABl_Launay/"},

  "imageUrl": {"S": "https://post-tenebras-lire.net/assets/posts/2018-11-06-Le_grand_roman_des%20maths_Micka%C3%ABl_Launay.jpg"}
}
ITEM
}

resource "aws_dynamodb_table_item" "l-univers-à-portée-de-main" {
  table_name = "${aws_dynamodb_table.feed-table.name}"
  hash_key   = "${aws_dynamodb_table.feed-table.hash_key}"
  item = <<ITEM
{
  "Id": {"S": "https://post-tenebras-lire.net/L_Univers_%C3%A0_port%C3%A9e_de_main_Christophe_Galfard"},
  "title": {"S": "L’univers à portée de main"},
  "writer": {"S": "Galfard, Christophe"},

  "tags": {"S": "#Science #Vulgarisation"},
  "link": {"S": "https://post-tenebras-lire.net/L_Univers_%C3%A0_port%C3%A9e_de_main_Christophe_Galfard/"},

  "imageUrl": {"S": "https://post-tenebras-lire.net/assets/posts/2018-10-17-L_Univers_%C3%A0_port%C3%A9e_de_main_Christophe_Galfard.jpg"}
}
ITEM
}

resource "aws_dynamodb_table_item" "the-accidental-office-lady" {
  table_name = "${aws_dynamodb_table.feed-table.name}"
  hash_key   = "${aws_dynamodb_table.feed-table.hash_key}"
  item = <<ITEM
{
  "Id": {"S": "https://post-tenebras-lire.net/The_Accidental_Office_Lady_Laura_Kriska"},
  "title": {"S": "The Accidental Office Lady"},
  "writer": {"S": "Kriska, Laura"},

  "tags": {"S": "#Japon"},
  "link": {"S": "https://post-tenebras-lire.net/The_Accidental_Office_Lady_Laura_Kriska/"},

  "imageUrl": {"S": "https://post-tenebras-lire.net/assets/posts/2018-10-10-The_Accidental_Office_Lady_Laura_Kriska.jpg"}
}
ITEM
}

resource "aws_dynamodb_table_item" "si-c-est-un-homme" {
  table_name = "${aws_dynamodb_table.feed-table.name}"
  hash_key   = "${aws_dynamodb_table.feed-table.hash_key}"
  item = <<ITEM
{
  "Id": {"S": "https://post-tenebras-lire.net/Si_c_est_un%20homme_Primo_Levi"},
  "title": {"S": "Si c’est un homme"},
  "writer": {"S": "Levi, Primo"},

  "tags": {"S": "#Biographie #Histoire"},
  "link": {"S": "https://post-tenebras-lire.net/Si_c_est_un-homme_Primo_Levi/"},

  "imageUrl": {"S": "https://post-tenebras-lire.net/assets/posts/2018-10-08-Si_c_est_un%20homme_Primo_Levi.jpg"}
}
ITEM
}

resource "aws_dynamodb_table_item" "les-bébés-de-la-consigne-automatique" {
  table_name = "${aws_dynamodb_table.feed-table.name}"
  hash_key   = "${aws_dynamodb_table.feed-table.hash_key}"
  item = <<ITEM
{
  "Id": {"S": "https://post-tenebras-lire.net/Les_B%C3%A9b%C3%A9s_de_la_consigne_automatique_Ry%C3%BB_Murakami"},
  "title": {"S": "Les Bébés de la consigne automatique"},
  "writer": {"S": "Murakami, Ryû"},

  "tags": {"S": "#Japon #Onirique"},
  "link": {"S": "https://post-tenebras-lire.net/Les_B%C3%A9b%C3%A9s_de_la_consigne_automatique_Ry%C3%BB_Murakami/"},

  "imageUrl": {"S": "https://post-tenebras-lire.net/assets/posts/2018-10-07-Les_B%C3%A9b%C3%A9s_de_la_consigne_automatique_Ry%C3%BB_Murakami.jpg"}
}
ITEM
}

resource "aws_dynamodb_table_item" "les-annales-du-disque-monde-tome-25-le-cinquième-éléphant" {
  table_name = "${aws_dynamodb_table.feed-table.name}"
  hash_key   = "${aws_dynamodb_table.feed-table.hash_key}"
  item = <<ITEM
{
  "Id": {"S": "https://post-tenebras-lire.net/Les_Annales_du_Disque_Monde_Tome%2025_Le_Cinqui%C3%A8me_%C3%A9l%C3%A9phant_Terry_Pratchett"},
  "title": {"S": "Les Annales du Disque-Monde, Tome 25 : Le Cinquième éléphant"},
  "writer": {"S": "Pratchett, Terry"},

  "tags": {"S": "#Fantasy #Humour"},
  "link": {"S": "https://post-tenebras-lire.net/Les_Annales_du_Disque_Monde_Tome-25_Le_Cinqui%C3%A8me_%C3%A9l%C3%A9phant_Terry_Pratchett/"},

  "imageUrl": {"S": "https://post-tenebras-lire.net/assets/posts/2018-09-30-Les_Annales_du_Disque_Monde_Tome%2025_Le_Cinqui%C3%A8me_%C3%A9l%C3%A9phant_Terry_Pratchett.jpg"}
}
ITEM
}

resource "aws_dynamodb_table_item" "le-noir-qui-infiltra-le-ku-klux-klan" {
  table_name = "${aws_dynamodb_table.feed-table.name}"
  hash_key   = "${aws_dynamodb_table.feed-table.hash_key}"
  item = <<ITEM
{
  "Id": {"S": "https://post-tenebras-lire.net/Le_noir_qui_infiltra_le_Ku_Klux_Klan_%20Ron_Stallworth"},
  "title": {"S": "Le noir qui infiltra le Ku Klux Klan"},
  "writer": {"S": "Stallworth, Ron"},

  "tags": {"S": "#Témoignage"},
  "link": {"S": "https://post-tenebras-lire.net/Le_noir_qui_infiltra_le_Ku_Klux_Klan_-Ron_Stallworth/"},

  "imageUrl": {"S": "https://post-tenebras-lire.net/assets/posts/2018-09-28-Le_noir_qui_infiltra_le_Ku_Klux_Klan_%20Ron_Stallworth.jpg"}
}
ITEM
}

resource "aws_dynamodb_table_item" "yôkai-le-monde-étrange-des-monstres-japonais" {
  table_name = "${aws_dynamodb_table.feed-table.name}"
  hash_key   = "${aws_dynamodb_table.feed-table.hash_key}"
  item = <<ITEM
{
  "Id": {"S": "https://post-tenebras-lire.net/Y%C3%B4kai_le_monde_%C3%A9trange_des_monstres_japonais"},
  "title": {"S": "Yôkai ! Le monde étrange des monstres japonais"},
  "writer": {"S": "Daugey, Fleur"},

  "tags": {"S": "#Japon #Beau livre"},
  "link": {"S": "https://post-tenebras-lire.net/Y%C3%B4kai_le_monde_%C3%A9trange_des_monstres_japonais/"},

  "imageUrl": {"S": "https://post-tenebras-lire.net/assets/posts/2018-09-25-Y%C3%B4kai_le_monde_%C3%A9trange_des_monstres_japonais.jpg"}
}
ITEM
}

resource "aws_dynamodb_table_item" "le-jardin-arc-en-ciel" {
  table_name = "${aws_dynamodb_table.feed-table.name}"
  hash_key   = "${aws_dynamodb_table.feed-table.hash_key}"
  item = <<ITEM
{
  "Id": {"S": "https://post-tenebras-lire.net/Le_Jardin_Arc_en_ciel_Ito_Ogawa"},
  "title": {"S": "Le Jardin Arc-en-ciel"},
  "writer": {"S": "Ogawa, Ito"},

  "tags": {"S": "#Japon"},
  "link": {"S": "https://post-tenebras-lire.net/Le_Jardin_Arc_en_ciel_Ito_Ogawa/"},

  "imageUrl": {"S": "https://post-tenebras-lire.net/assets/posts/2018-09-24-Le_Jardin_Arc_en_ciel_Ito_Ogawa.jpg"}
}
ITEM
}

resource "aws_dynamodb_table_item" "fuki-no-tô" {
  table_name = "${aws_dynamodb_table.feed-table.name}"
  hash_key   = "${aws_dynamodb_table.feed-table.hash_key}"
  item = <<ITEM
{
  "Id": {"S": "https://post-tenebras-lire.net/Fuki_no_t%C3%B4_%20Aki_Shimazaki"},
  "title": {"S": "Fuki-no-tô"},
  "writer": {"S": "Shimazaki, Aki"},

  "tags": {"S": "#Japon"},
  "link": {"S": "https://post-tenebras-lire.net/Fuki_no_t%C3%B4_-Aki_Shimazaki/"},

  "imageUrl": {"S": "https://post-tenebras-lire.net/assets/posts/2018-09-23-Fuki_no_t%C3%B4_%20Aki_Shimazaki.jpg"}
}
ITEM
}

resource "aws_dynamodb_table_item" "les-mémoires-d-un-chat" {
  table_name = "${aws_dynamodb_table.feed-table.name}"
  hash_key   = "${aws_dynamodb_table.feed-table.hash_key}"
  item = <<ITEM
{
  "Id": {"S": "https://post-tenebras-lire.net/Les_m%C3%A9moires_d_un_chat_Hiro_Arikawa"},
  "title": {"S": "Les mémoires d’un chat"},
  "writer": {"S": "Arikawa, Hiro"},

  "tags": {"S": "#Japon"},
  "link": {"S": "https://post-tenebras-lire.net/Les_m%C3%A9moires_d_un_chat_Hiro_Arikawa/"},

  "imageUrl": {"S": "https://post-tenebras-lire.net/assets/posts/2018-09-18-Les_m%C3%A9moires_d_un_chat_Hiro_Arikawa.jpg"}
}
ITEM
}

resource "aws_dynamodb_table_item" "furari" {
  table_name = "${aws_dynamodb_table.feed-table.name}"
  hash_key   = "${aws_dynamodb_table.feed-table.hash_key}"
  item = <<ITEM
{
  "Id": {"S": "https://post-tenebras-lire.net/furari_jiro_taniguchi"},
  "title": {"S": "Furari"},
  "writer": {"S": "Taniguchi, Jirô"},

  "tags": {"S": "#Japon #Manga"},
  "link": {"S": "https://post-tenebras-lire.net/furari_jiro_taniguchi/"},

  "imageUrl": {"S": "https://post-tenebras-lire.net/assets/posts/2018-09-17-furari_jiro_taniguchi.jpg"}
}
ITEM
}

resource "aws_dynamodb_table_item" "haïku" {
  table_name = "${aws_dynamodb_table.feed-table.name}"
  hash_key   = "${aws_dynamodb_table.feed-table.hash_key}"
  item = <<ITEM
{
  "Id": {"S": "https://post-tenebras-lire.net/Ha%C3%AFku_%C3%89ric_Calatraba"},
  "title": {"S": "Haïku"},
  "writer": {"S": "Calatraba, Éric"},

  "tags": {"S": "#Polar #Japon #Russie"},
  "link": {"S": "https://post-tenebras-lire.net/Ha%C3%AFku_%C3%89ric_Calatraba/"},

  "imageUrl": {"S": "https://post-tenebras-lire.net/assets/posts/2018-09-13-Ha%C3%AFku_%C3%89ric_Calatraba.jpg"}
}
ITEM
}

resource "aws_dynamodb_table_item" "le-japon-moderne-et-l-éthique-samouraï" {
  table_name = "${aws_dynamodb_table.feed-table.name}"
  hash_key   = "${aws_dynamodb_table.feed-table.hash_key}"
  item = <<ITEM
{
  "Id": {"S": "https://post-tenebras-lire.net/Le_Japon_moderne_et_l_%C3%A9thique_samoura%C3%AF"},
  "title": {"S": "Le Japon moderne et l’éthique samouraï"},
  "writer": {"S": "Mishima, Yukio"},

  "tags": {"S": "#Japon"},
  "link": {"S": "https://post-tenebras-lire.net/Le_Japon_moderne_et_l_%C3%A9thique_samoura%C3%AF/"},

  "imageUrl": {"S": "https://post-tenebras-lire.net/assets/posts/2018-09-13-Le_Japon_moderne_et_l_%C3%A9thique_samoura%C3%AF.jpg"}
}
ITEM
}

resource "aws_dynamodb_table_item" "anneaux-mirabelles-et-macchabees" {
  table_name = "${aws_dynamodb_table.feed-table.name}"
  hash_key   = "${aws_dynamodb_table.feed-table.hash_key}"
  item = <<ITEM
{
  "Id": {"S": "https://post-tenebras-lire.net/Anneaux_Mirabelles_et_Macchabees-Stephane_Desienne"},
  "title": {"S": "Anneaux, Mirabelles et Macchabees"},
  "writer": {"S": "Desienne, Stéphane"},

  "tags": {"S": "#Science-Fiction #Série"},
  "link": {"S": "https://post-tenebras-lire.net/Anneaux_Mirabelles_et_Macchabees-Stephane_Desienne/"},

  "imageUrl": {"S": "https://post-tenebras-lire.net/assets/posts/2018-08-18-Anneaux_Mirabelles_et_Macchabees-Stephane_Desienne.jpg"}
}
ITEM
}

resource "aws_dynamodb_table_item" "illusions-dangereuses" {
  table_name = "${aws_dynamodb_table.feed-table.name}"
  hash_key   = "${aws_dynamodb_table.feed-table.hash_key}"
  item = <<ITEM
{
  "Id": {"S": "https://post-tenebras-lire.net/lecture-illusions-dangereuses-de-vitaly"},
  "title": {"S": "Illusions dangereuses"},
  "writer": {"S": "Malkin, Vitaly"},

  "tags": {"S": "#Religion"},
  "link": {"S": "https://post-tenebras-lire.net/lecture-illusions-dangereuses-de-vitaly/"},

  "imageUrl": {"S": "https://post-tenebras-lire.net/assets/posts/2018-06-01-lecture-illusions-dangereuses-de-vitaly.jpg"}
}
ITEM
}

resource "aws_dynamodb_table_item" "les-doigts-rouges" {
  table_name = "${aws_dynamodb_table.feed-table.name}"
  hash_key   = "${aws_dynamodb_table.feed-table.hash_key}"
  item = <<ITEM
{
  "Id": {"S": "https://post-tenebras-lire.net/les-doigts-rouges-par-keigo-higashino"},
  "title": {"S": "Les doigts rouges"},
  "writer": {"S": "Higashino, Keigo"},

  "tags": {"S": "#Japon #Polar"},
  "link": {"S": "https://post-tenebras-lire.net/les-doigts-rouges-par-keigo-higashino/"},

  "imageUrl": {"S": "https://post-tenebras-lire.net/assets/posts/2018-04-28-les-doigts-rouges-par-keigo-higashino.jpg"}
}
ITEM
}

resource "aws_dynamodb_table_item" "par-la-mer-et-les-nuages" {
  table_name = "${aws_dynamodb_table.feed-table.name}"
  hash_key   = "${aws_dynamodb_table.feed-table.hash_key}"
  item = <<ITEM
{
  "Id": {"S": "https://post-tenebras-lire.net/lecture-par-la-mer-et-les-nuages-de"},
  "title": {"S": "Par la mer et les nuages"},
  "writer": {"S": "Whale, Laurent"},

  "tags": {"S": "#Post-apocalyptique"},
  "link": {"S": "https://post-tenebras-lire.net/lecture-par-la-mer-et-les-nuages-de/"},

  "imageUrl": {"S": "https://post-tenebras-lire.net/assets/posts/2018-04-17-lecture-par-la-mer-et-les-nuages-de.jpg"}
}
ITEM
}

resource "aws_dynamodb_table_item" "e-mc2-l-équation-de-tous-les-possibles" {
  table_name = "${aws_dynamodb_table.feed-table.name}"
  hash_key   = "${aws_dynamodb_table.feed-table.hash_key}"
  item = <<ITEM
{
  "Id": {"S": "https://post-tenebras-lire.net/Emc2-Christophe-Galfard"},
  "title": {"S": "E=mc2 L’équation de tous les possibles"},
  "writer": {"S": "Galfard, Christophe"},

  "tags": {"S": "#Science #Vulgarisation"},
  "link": {"S": "https://post-tenebras-lire.net/Emc2-Christophe-Galfard/"},

  "imageUrl": {"S": "https://post-tenebras-lire.net/assets/posts/2018-04-11-Emc2-Christophe-Galfard.jpg"}
}
ITEM
}

resource "aws_dynamodb_table_item" "dino-hunter" {
  table_name = "${aws_dynamodb_table.feed-table.name}"
  hash_key   = "${aws_dynamodb_table.feed-table.hash_key}"
  item = <<ITEM
{
  "Id": {"S": "https://post-tenebras-lire.net/lecture-pulp-dino-hunterdolivier-saraja"},
  "title": {"S": "Dino Hunter"},
  "writer": {"S": "Saraja, Olivier"},

  "tags": {"S": "#Post-apocalyptique #Pulp"},
  "link": {"S": "https://post-tenebras-lire.net/lecture-pulp-dino-hunterdolivier-saraja/"},

  "imageUrl": {"S": "https://post-tenebras-lire.net/assets/posts/2018-03-30-lecture-pulp-dino-hunterdolivier-saraja.jpg"}
}
ITEM
}

resource "aws_dynamodb_table_item" "compléter-les-blancs" {
  table_name = "${aws_dynamodb_table.feed-table.name}"
  hash_key   = "${aws_dynamodb_table.feed-table.hash_key}"
  item = <<ITEM
{
  "Id": {"S": "https://post-tenebras-lire.net/completer-les-blancs-de-keiichiro"},
  "title": {"S": "Compléter les blancs"},
  "writer": {"S": "Hirano, Keiichirô"},

  "tags": {"S": "#Japon"},
  "link": {"S": "https://post-tenebras-lire.net/completer-les-blancs-de-keiichiro/"},

  "imageUrl": {"S": "https://post-tenebras-lire.net/assets/posts/2018-03-30-completer-les-blancs-de-keiichiro.jpg"}
}
ITEM
}

resource "aws_dynamodb_table_item" "trous-noirs-et-distorsions-du-temps-l-héritage-sulfureux-d-einstein" {
  table_name = "${aws_dynamodb_table.feed-table.name}"
  hash_key   = "${aws_dynamodb_table.feed-table.hash_key}"
  item = <<ITEM
{
  "Id": {"S": "https://post-tenebras-lire.net/science-trous-noirs-et-distorsions-du-temps"},
  "title": {"S": "Trous noirs et distorsions du temps : L’héritage sulfureux d’Einstein"},
  "writer": {"S": "Thorne, Kip S."},

  "tags": {"S": "#Science"},
  "link": {"S": "https://post-tenebras-lire.net/science-trous-noirs-et-distorsions-du-temps/"},

  "imageUrl": {"S": "https://post-tenebras-lire.net/assets/posts/2018-03-09-science-trous-noirs-et-distorsions-du.jpg"}
}
ITEM
}

resource "aws_dynamodb_table_item" "les-délices-de-tokyo" {
  table_name = "${aws_dynamodb_table.feed-table.name}"
  hash_key   = "${aws_dynamodb_table.feed-table.hash_key}"
  item = <<ITEM
{
  "Id": {"S": "https://post-tenebras-lire.net/les-delices-de-tokyo-par-durian"},
  "title": {"S": "Les délices de Tokyo"},
  "writer": {"S": "Sukegawa, Durian"},

  "tags": {"S": "#Japon"},
  "link": {"S": "https://post-tenebras-lire.net/les-delices-de-tokyo-par-durian/"},

  "imageUrl": {"S": "https://post-tenebras-lire.net/assets/posts/2018-02-26-les-delices-de-tokyo-par-durian.jpg"}
}
ITEM
}

resource "aws_dynamodb_table_item" "la-servante-écarlate" {
  table_name = "${aws_dynamodb_table.feed-table.name}"
  hash_key   = "${aws_dynamodb_table.feed-table.hash_key}"
  item = <<ITEM
{
  "Id": {"S": "https://post-tenebras-lire.net/la-servante-ecarlate-par-margaret"},
  "title": {"S": "La Servante écarlate"},
  "writer": {"S": "Atwood, Margaret"},

  "tags": {"S": "#Dystopie"},
  "link": {"S": "https://post-tenebras-lire.net/la-servante-ecarlate-par-margaret/"},

  "imageUrl": {"S": "https://post-tenebras-lire.net/assets/posts/2018-02-21-la-servante-ecarlate-par-margaret.jpg"}
}
ITEM
}

resource "aws_dynamodb_table_item" "cristal-qui-songe" {
  table_name = "${aws_dynamodb_table.feed-table.name}"
  hash_key   = "${aws_dynamodb_table.feed-table.hash_key}"
  item = <<ITEM
{
  "Id": {"S": "https://post-tenebras-lire.net/cristal-qui-songe-de-theodore-sturgeon"},
  "title": {"S": "Cristal qui songe"},
  "writer": {"S": "Sturgeon, Theodore"},

  "tags": {"S": "#Science-Fiction"},
  "link": {"S": "https://post-tenebras-lire.net/cristal-qui-songe-de-theodore-sturgeon/"},

  "imageUrl": {"S": "https://post-tenebras-lire.net/assets/posts/2018-02-17-cristal-qui-songe-de-theodore-sturgeon.jpg"}
}
ITEM
}

resource "aws_dynamodb_table_item" "excession" {
  table_name = "${aws_dynamodb_table.feed-table.name}"
  hash_key   = "${aws_dynamodb_table.feed-table.hash_key}"
  item = <<ITEM
{
  "Id": {"S": "https://post-tenebras-lire.net/lecture-science-fiction-excession-de"},
  "title": {"S": "Excession"},
  "writer": {"S": "Banks, Iain"},

  "tags": {"S": "#Science-Fiction"},
  "link": {"S": "https://post-tenebras-lire.net/lecture-science-fiction-excession-de/"},

  "imageUrl": {"S": "https://post-tenebras-lire.net/assets/posts/2018-02-12-lecture-science-fiction-excession-de.jpg"}
}
ITEM
}

resource "aws_dynamodb_table_item" "papeterie-tsubaki" {
  table_name = "${aws_dynamodb_table.feed-table.name}"
  hash_key   = "${aws_dynamodb_table.feed-table.hash_key}"
  item = <<ITEM
{
  "Id": {"S": "https://post-tenebras-lire.net/La_papeterie_Tsubaki%20_Ito_Ogawa"},
  "title": {"S": "Papeterie Tsubaki"},
  "writer": {"S": "Ogawa, Ito"},

  "tags": {"S": "#Japon"},
  "link": {"S": "https://post-tenebras-lire.net/La_papeterie_Tsubaki-_Ito_Ogawa/"},

  "imageUrl": {"S": "https://post-tenebras-lire.net/assets/posts/2018-02-10-La_papeterie_Tsubaki%20_Ito_Ogawa.jpg"}
}
ITEM
}

resource "aws_dynamodb_table_item" "l-oreille-interne" {
  table_name = "${aws_dynamodb_table.feed-table.name}"
  hash_key   = "${aws_dynamodb_table.feed-table.hash_key}"
  item = <<ITEM
{
  "Id": {"S": "https://post-tenebras-lire.net/lecture-loreille-interne-de-robert"},
  "title": {"S": "L’oreille interne"},
  "writer": {"S": "Silverberg, Robert"},

  "tags": {"S": "#Science-Fiction"},
  "link": {"S": "https://post-tenebras-lire.net/lecture-loreille-interne-de-robert/"},

  "imageUrl": {"S": "https://post-tenebras-lire.net/assets/posts/2018-02-06-lecture-loreille-interne-de-robert.jpg"}
}
ITEM
}

resource "aws_dynamodb_table_item" "bug" {
  table_name = "${aws_dynamodb_table.feed-table.name}"
  hash_key   = "${aws_dynamodb_table.feed-table.hash_key}"
  item = <<ITEM
{
  "Id": {"S": "https://post-tenebras-lire.net/lecture-bd-bug-denki-bilal"},
  "title": {"S": "Bug"},
  "writer": {"S": "Bilal, Enki"},

  "tags": {"S": "#BD #Science-Fiction"},
  "link": {"S": "https://post-tenebras-lire.net/lecture-bd-bug-denki-bilal/"},

  "imageUrl": {"S": "https://post-tenebras-lire.net/assets/posts/2018-02-03-lecture-bd-bug-denki-bilal.jpg"}
}
ITEM
}

resource "aws_dynamodb_table_item" "en-remorquant-jéhovah" {
  table_name = "${aws_dynamodb_table.feed-table.name}"
  hash_key   = "${aws_dynamodb_table.feed-table.hash_key}"
  item = <<ITEM
{
  "Id": {"S": "https://post-tenebras-lire.net/lecture-en-remorquant-jehovah-de-james"},
  "title": {"S": "En remorquant Jéhovah"},
  "writer": {"S": "Morrow, James"},

  "tags": {"S": "#Religion #Humour"},
  "link": {"S": "https://post-tenebras-lire.net/lecture-en-remorquant-jehovah-de-james/"},

  "imageUrl": {"S": "https://post-tenebras-lire.net/assets/posts/2018-02-02-lecture-en-remorquant-jehovah-de-james.jpg"}
}
ITEM
}

resource "aws_dynamodb_table_item" "le-lagon-noir" {
  table_name = "${aws_dynamodb_table.feed-table.name}"
  hash_key   = "${aws_dynamodb_table.feed-table.hash_key}"
  item = <<ITEM
{
  "Id": {"S": "https://post-tenebras-lire.net/le-lagon-noir-darnaldur-indriason-polar"},
  "title": {"S": "Le lagon noir"},
  "writer": {"S": "Indriðason, Arnaldur"},

  "tags": {"S": "#Islande #Polar"},
  "link": {"S": "https://post-tenebras-lire.net/le-lagon-noir-darnaldur-indriason-polar/"},

  "imageUrl": {"S": "https://post-tenebras-lire.net/assets/posts/2018-01-17-le-lagon-noir-darnaldur-indriason-polar.jpg"}
}
ITEM
}

resource "aws_dynamodb_table_item" "les-annales-du-disque-monde-tome-26-la-vérité" {
  table_name = "${aws_dynamodb_table.feed-table.name}"
  hash_key   = "${aws_dynamodb_table.feed-table.hash_key}"
  item = <<ITEM
{
  "Id": {"S": "https://post-tenebras-lire.net/les-annales-du-disque-monde-tome-26-la"},
  "title": {"S": "Les Annales du Disque-Monde, Tome 26 : La Vérité"},
  "writer": {"S": "Pratchett, Terry"},

  "tags": {"S": "#Fantasy #Humour"},
  "link": {"S": "https://post-tenebras-lire.net/les-annales-du-disque-monde-tome-26-la/"},

  "imageUrl": {"S": "https://post-tenebras-lire.net/assets/posts/2018-01-15-les-annales-du-disque-monde-tome-26-la.jpg"}
}
ITEM
}

resource "aws_dynamodb_table_item" "l-arbre-du-voyageur" {
  table_name = "${aws_dynamodb_table.feed-table.name}"
  hash_key   = "${aws_dynamodb_table.feed-table.hash_key}"
  item = <<ITEM
{
  "Id": {"S": "https://post-tenebras-lire.net/roman-japonais-larbre-du-voyageur-d"},
  "title": {"S": "L’arbre du voyageur"},
  "writer": {"S": "Tsuji, Hitonari"},

  "tags": {"S": "#Japon"},
  "link": {"S": "https://post-tenebras-lire.net/roman-japonais-larbre-du-voyageur-d/"},

  "imageUrl": {"S": "https://post-tenebras-lire.net/assets/posts/2018-01-04-roman-japonais-larbre-du-voyageur-d.jpg"}
}
ITEM
}

resource "aws_dynamodb_table_item" "l-âme-des-horloges" {
  table_name = "${aws_dynamodb_table.feed-table.name}"
  hash_key   = "${aws_dynamodb_table.feed-table.hash_key}"
  item = <<ITEM
{
  "Id": {"S": "https://post-tenebras-lire.net/roman-lame-des-horloges-david-mitchell"},
  "title": {"S": "L’âme des horloges"},
  "writer": {"S": "Mitchell, David"},

  "tags": {"S": "#Post-apocalyptique #Fantastique #Science-Fiction"},
  "link": {"S": "https://post-tenebras-lire.net/roman-lame-des-horloges-david-mitchell/"},

  "imageUrl": {"S": "https://post-tenebras-lire.net/assets/posts/2017-12-28-roman-lame-des-horloges-david-mitchell.jpg"}
}
ITEM
}

resource "aws_dynamodb_table_item" "la-maison-dans-l-arbre" {
  table_name = "${aws_dynamodb_table.feed-table.name}"
  hash_key   = "${aws_dynamodb_table.feed-table.hash_key}"
  item = <<ITEM
{
  "Id": {"S": "https://post-tenebras-lire.net/litterature-japonaise-la-maison-dans"},
  "title": {"S": "La Maison dans l’arbre"},
  "writer": {"S": "Kakuta, Mitsuyo"},

  "tags": {"S": "#Japon"},
  "link": {"S": "https://post-tenebras-lire.net/litterature-japonaise-la-maison-dans/"},

  "imageUrl": {"S": "https://post-tenebras-lire.net/assets/posts/2017-12-09-litterature-japonaise-la-maison-dans.jpg"}
}
ITEM
}

resource "aws_dynamodb_table_item" "zoulag-la-filière-sibérienne" {
  table_name = "${aws_dynamodb_table.feed-table.name}"
  hash_key   = "${aws_dynamodb_table.feed-table.hash_key}"
  item = <<ITEM
{
  "Id": {"S": "https://post-tenebras-lire.net/zoulag-la-filiere-siberienne-de"},
  "title": {"S": "Zoulag : la filière sibérienne"},
  "writer": {"S": "Desienne, Stéphane"},

  "tags": {"S": "#Post-apocalyptique #Zombies #Pulp #Série"},
  "link": {"S": "https://post-tenebras-lire.net/zoulag-la-filiere-siberienne-de/"},

  "imageUrl": {"S": "https://post-tenebras-lire.net/assets/posts/2017-10-13-zoulag-la-filiere-siberienne-de.jpg"}
}
ITEM
}

resource "aws_dynamodb_table_item" "roses-mécaniques" {
  table_name = "${aws_dynamodb_table.feed-table.name}"
  hash_key   = "${aws_dynamodb_table.feed-table.hash_key}"
  item = <<ITEM
{
  "Id": {"S": "https://post-tenebras-lire.net/lecture-sciencefiction-roses-mecaniques"},
  "title": {"S": "Roses Mécaniques"},
  "writer": {"S": "Desienne, Stéphane"},

  "tags": {"S": "#Science-Fiction"},
  "link": {"S": "https://post-tenebras-lire.net/lecture-sciencefiction-roses-mecaniques/"},

  "imageUrl": {"S": "https://post-tenebras-lire.net/assets/posts/2017-10-11-lecture-sciencefiction-roses-mecaniques.jpg"}
}
ITEM
}

resource "aws_dynamodb_table_item" "anamnèse-de-lady-star" {
  table_name = "${aws_dynamodb_table.feed-table.name}"
  hash_key   = "${aws_dynamodb_table.feed-table.hash_key}"
  item = <<ITEM
{
  "Id": {"S": "https://post-tenebras-lire.net/roman-anamnese-de-lady-star-laurent-l"},
  "title": {"S": "Anamnèse de Lady Star"},
  "writer": {"S": "Kloetzer, Laurent L."},

  "tags": {"S": "#Post-apocalyptique #Science-Fiction"},
  "link": {"S": "https://post-tenebras-lire.net/roman-anamnese-de-lady-star-laurent-l/"},

  "imageUrl": {"S": "https://post-tenebras-lire.net/assets/posts/2017-09-08-roman-anamnese-de-lady-star-laurent-l.jpg"}
}
ITEM
}

resource "aws_dynamodb_table_item" "la-cigale-du-huitième-jour" {
  table_name = "${aws_dynamodb_table.feed-table.name}"
  hash_key   = "${aws_dynamodb_table.feed-table.hash_key}"
  item = <<ITEM
{
  "Id": {"S": "https://post-tenebras-lire.net/litterature-japonaise-la-cigale-du"},
  "title": {"S": "La Cigale du huitième jour"},
  "writer": {"S": "Kakuta, Mitsuyo"},

  "tags": {"S": "#Japon"},
  "link": {"S": "https://post-tenebras-lire.net/litterature-japonaise-la-cigale-du/"},

  "imageUrl": {"S": "https://post-tenebras-lire.net/assets/posts/2017-08-29-litterature-japonaise-la-cigale-du.jpg"}
}
ITEM
}

resource "aws_dynamodb_table_item" "blind-lake" {
  table_name = "${aws_dynamodb_table.feed-table.name}"
  hash_key   = "${aws_dynamodb_table.feed-table.hash_key}"
  item = <<ITEM
{
  "Id": {"S": "https://post-tenebras-lire.net/lecture-science-fiction-blind-lake-par"},
  "title": {"S": "Blind Lake"},
  "writer": {"S": "Wilson, Robert-Charles"},

  "tags": {"S": "#Science-Fiction"},
  "link": {"S": "https://post-tenebras-lire.net/lecture-science-fiction-blind-lake-par/"},

  "imageUrl": {"S": "https://post-tenebras-lire.net/assets/posts/2017-08-25-lecture-science-fiction-blind-lake-par.jpg"}
}
ITEM
}

resource "aws_dynamodb_table_item" "les-affinités" {
  table_name = "${aws_dynamodb_table.feed-table.name}"
  hash_key   = "${aws_dynamodb_table.feed-table.hash_key}"
  item = <<ITEM
{
  "Id": {"S": "https://post-tenebras-lire.net/Les-Affinit%C3%A9s-Wilson,-Robert-Charles"},
  "title": {"S": "Les Affinités"},
  "writer": {"S": "Wilson, Robert-Charles"},

  "tags": {"S": "#Science-Fiction"},
  "link": {"S": "https://post-tenebras-lire.net/Les-Affinit%C3%A9s-Wilson,-Robert-Charles/"},

  "imageUrl": {"S": "https://post-tenebras-lire.net/assets/posts/2017-08-21-lecture-roman-science-fiction-les.jpg"}
}
ITEM
}

resource "aws_dynamodb_table_item" "nuit-mère" {
  table_name = "${aws_dynamodb_table.feed-table.name}"
  hash_key   = "${aws_dynamodb_table.feed-table.hash_key}"
  item = <<ITEM
{
  "Id": {"S": "https://post-tenebras-lire.net/lecture-roman-nuit-mere-de-kurt"},
  "title": {"S": "Nuit mère"},
  "writer": {"S": "Vonnegut, Kurt Jr"},

  "tags": {"S": "#Histoire"},
  "link": {"S": "https://post-tenebras-lire.net/lecture-roman-nuit-mere-de-kurt/"},

  "imageUrl": {"S": "https://post-tenebras-lire.net/assets/posts/2017-08-18-lecture-roman-nuit-mere-de-kurt.jpg"}
}
ITEM
}

resource "aws_dynamodb_table_item" "métro-2035" {
  table_name = "${aws_dynamodb_table.feed-table.name}"
  hash_key   = "${aws_dynamodb_table.feed-table.hash_key}"
  item = <<ITEM
{
  "Id": {"S": "https://post-tenebras-lire.net/lecture-post-apo-metro-2035-de-dmitry"},
  "title": {"S": "Métro 2035"},
  "writer": {"S": "Glukhovsky, Dmitry"},

  "tags": {"S": "#Post-apocalyptique #Russie"},
  "link": {"S": "https://post-tenebras-lire.net/lecture-post-apo-metro-2035-de-dmitry/"},

  "imageUrl": {"S": "https://post-tenebras-lire.net/assets/posts/2017-08-11-lecture-post-apo-metro-2035-de-dmitry.jpg"}
}
ITEM
}

resource "aws_dynamodb_table_item" "métro-2034" {
  table_name = "${aws_dynamodb_table.feed-table.name}"
  hash_key   = "${aws_dynamodb_table.feed-table.hash_key}"
  item = <<ITEM
{
  "Id": {"S": "https://post-tenebras-lire.net/lecture-post-apo-metro-2034-de-dmitry"},
  "title": {"S": "Métro 2034"},
  "writer": {"S": "Glukhovsky, Dmitry"},

  "tags": {"S": "#Post-apocalyptique #Russie"},
  "link": {"S": "https://post-tenebras-lire.net/lecture-post-apo-metro-2034-de-dmitry/"},

  "imageUrl": {"S": "https://post-tenebras-lire.net/assets/posts/2017-08-03-lecture-post-apo-metro-2034-de-dmitry.jpg"}
}
ITEM
}

resource "aws_dynamodb_table_item" "métro-2033" {
  table_name = "${aws_dynamodb_table.feed-table.name}"
  hash_key   = "${aws_dynamodb_table.feed-table.hash_key}"
  item = <<ITEM
{
  "Id": {"S": "https://post-tenebras-lire.net/lecture-post-apocalyptique-metro-2033"},
  "title": {"S": "Métro 2033"},
  "writer": {"S": "Glukhovsky, Dmitry"},

  "tags": {"S": "#Post-apocalyptique #Russie"},
  "link": {"S": "https://post-tenebras-lire.net/lecture-post-apocalyptique-metro-2033/"},

  "imageUrl": {"S": "https://post-tenebras-lire.net/assets/posts/2017-07-31-lecture-post-apocalyptique-metro-2033.jpg"}
}
ITEM
}

resource "aws_dynamodb_table_item" "l-inclinaison" {
  table_name = "${aws_dynamodb_table.feed-table.name}"
  hash_key   = "${aws_dynamodb_table.feed-table.hash_key}"
  item = <<ITEM
{
  "Id": {"S": "https://post-tenebras-lire.net/roman-linclinaison-de-christopher-priest"},
  "title": {"S": "L’inclinaison"},
  "writer": {"S": "Priest, Christopher"},

  "tags": {"S": "#Fantastique"},
  "link": {"S": "https://post-tenebras-lire.net/roman-linclinaison-de-christopher-priest/"},

  "imageUrl": {"S": "https://post-tenebras-lire.net/assets/posts/2017-04-12-roman-linclinaison-de-christopher-priest.jpg"}
}
ITEM
}

resource "aws_dynamodb_table_item" "la-muraille-de-lave" {
  table_name = "${aws_dynamodb_table.feed-table.name}"
  hash_key   = "${aws_dynamodb_table.feed-table.hash_key}"
  item = <<ITEM
{
  "Id": {"S": "https://post-tenebras-lire.net/polar-la-muraille-de-lave-arnaldur"},
  "title": {"S": "La muraille de lave"},
  "writer": {"S": "Indriðason, Arnaldur"},

  "tags": {"S": "#Polar #Islande"},
  "link": {"S": "https://post-tenebras-lire.net/polar-la-muraille-de-lave-arnaldur/"},

  "imageUrl": {"S": "https://post-tenebras-lire.net/assets/posts/2017-03-07-polar-la-muraille-de-lave-arnaldur.jpg"}
}
ITEM
}

resource "aws_dynamodb_table_item" "betty" {
  table_name = "${aws_dynamodb_table.feed-table.name}"
  hash_key   = "${aws_dynamodb_table.feed-table.hash_key}"
  item = <<ITEM
{
  "Id": {"S": "https://post-tenebras-lire.net/polar-islandais-betty-par-arnaldur"},
  "title": {"S": "Betty"},
  "writer": {"S": "Indriðason, Arnaldur"},

  "tags": {"S": "#Islande #Polar"},
  "link": {"S": "https://post-tenebras-lire.net/polar-islandais-betty-par-arnaldur/"},

  "imageUrl": {"S": "https://post-tenebras-lire.net/assets/posts/2017-03-05-polar-islandais-betty-par-arnaldur.jpg"}
}
ITEM
}

resource "aws_dynamodb_table_item" "les-annales-du-disque-monde-tome-24-carpe-jugulum" {
  table_name = "${aws_dynamodb_table.feed-table.name}"
  hash_key   = "${aws_dynamodb_table.feed-table.hash_key}"
  item = <<ITEM
{
  "Id": {"S": "https://post-tenebras-lire.net/lecture-fantasy-et-humour-les-annales"},
  "title": {"S": "Les Annales du Disque-Monde, Tome 24 : Carpe jugulum"},
  "writer": {"S": "Pratchett, Terry"},

  "tags": {"S": "#Fantasy #Humour"},
  "link": {"S": "https://post-tenebras-lire.net/lecture-fantasy-et-humour-les-annales/"},

  "imageUrl": {"S": "https://post-tenebras-lire.net/assets/posts/2017-03-04-lecture-fantasy-et-humour-les-annales.jpg"}
}
ITEM
}

resource "aws_dynamodb_table_item" "les-annales-du-disque-monde-tome-22-le-dernier-continent" {
  table_name = "${aws_dynamodb_table.feed-table.name}"
  hash_key   = "${aws_dynamodb_table.feed-table.hash_key}"
  item = <<ITEM
{
  "Id": {"S": "https://post-tenebras-lire.net/lecture-les-annales-du-disque-monde"},
  "title": {"S": "Les Annales du Disque-Monde, Tome 22 : Le Dernier continent"},
  "writer": {"S": "Pratchett, Terry"},

  "tags": {"S": "#Fantasy #Humour"},
  "link": {"S": "https://post-tenebras-lire.net/lecture-les-annales-du-disque-monde/"},

  "imageUrl": {"S": "https://post-tenebras-lire.net/assets/posts/2017-02-28-lecture-les-annales-du-disque-monde.jpg"}
}
ITEM
}

resource "aws_dynamodb_table_item" "les-annales-du-disque-monde-tome-20-le-père-porcher" {
  table_name = "${aws_dynamodb_table.feed-table.name}"
  hash_key   = "${aws_dynamodb_table.feed-table.hash_key}"
  item = <<ITEM
{
  "Id": {"S": "https://post-tenebras-lire.net/Annales-Disque-Monde-Tome-20%20-Le-P%C3%A8re-Porcher"},
  "title": {"S": "Les Annales du Disque-Monde, Tome 20 : Le Père Porcher"},
  "writer": {"S": "Pratchett, Terry"},

  "tags": {"S": "#Fantasy #Humour"},
  "link": {"S": "https://post-tenebras-lire.net/Annales-Disque-Monde-Tome-20-Le-P%C3%A8re-Porcher/"},

  "imageUrl": {"S": "https://post-tenebras-lire.net/assets/posts/2017-02-26-lecture-fantasy-et-humour-les-annales.jpg"}
}
ITEM
}

resource "aws_dynamodb_table_item" "mémoires-écrits-dans-un-souterrain" {
  table_name = "${aws_dynamodb_table.feed-table.name}"
  hash_key   = "${aws_dynamodb_table.feed-table.hash_key}"
  item = <<ITEM
{
  "Id": {"S": "https://post-tenebras-lire.net/litterature-russe-memoires-ecrits-dans"},
  "title": {"S": "Mémoires écrits dans un souterrain"},
  "writer": {"S": "Dostoïevski, Fiodor"},

  "tags": {"S": "#Russie"},
  "link": {"S": "https://post-tenebras-lire.net/litterature-russe-memoires-ecrits-dans/"},

  "imageUrl": {"S": "https://post-tenebras-lire.net/assets/posts/2017-02-21-litterature-russe-memoires-ecrits-dans.jpg"}
}
ITEM
}

resource "aws_dynamodb_table_item" "l-échiquier-du-mal" {
  table_name = "${aws_dynamodb_table.feed-table.name}"
  hash_key   = "${aws_dynamodb_table.feed-table.hash_key}"
  item = <<ITEM
{
  "Id": {"S": "https://post-tenebras-lire.net/lecture-lechiquier-du-mal-integrale-de"},
  "title": {"S": "L’échiquier du mal"},
  "writer": {"S": "Simmons, Dan"},

  "tags": {"S": "#Thriller"},
  "link": {"S": "https://post-tenebras-lire.net/lecture-lechiquier-du-mal-integrale-de/"},

  "imageUrl": {"S": "https://post-tenebras-lire.net/assets/posts/2017-02-03-lecture-lechiquier-du-mal-integrale-de.jpg"}
}
ITEM
}

resource "aws_dynamodb_table_item" "zoulag-le-syndrome-finlandais" {
  table_name = "${aws_dynamodb_table.feed-table.name}"
  hash_key   = "${aws_dynamodb_table.feed-table.hash_key}"
  item = <<ITEM
{
  "Id": {"S": "https://post-tenebras-lire.net/lecture-zoulag-le-syndrome-finlandais"},
  "title": {"S": "Zoulag: Le syndrome finlandais"},
  "writer": {"S": "Desienne, Stéphane"},

  "tags": {"S": "#Post-apocalyptique #Nouvelle"},
  "link": {"S": "https://post-tenebras-lire.net/lecture-zoulag-le-syndrome-finlandais/"},

  "imageUrl": {"S": "https://post-tenebras-lire.net/assets/posts/2017-01-15-lecture-zoulag-le-syndrome-finlandais.jpg"}
}
ITEM
}

resource "aws_dynamodb_table_item" "bad-science" {
  table_name = "${aws_dynamodb_table.feed-table.name}"
  hash_key   = "${aws_dynamodb_table.feed-table.hash_key}"
  item = <<ITEM
{
  "Id": {"S": "https://post-tenebras-lire.net/lecture-bad-science-de-ben-goldacre"},
  "title": {"S": "Bad Science"},
  "writer": {"S": "Goldacre, Ben"},

  "tags": {"S": "#Science"},
  "link": {"S": "https://post-tenebras-lire.net/lecture-bad-science-de-ben-goldacre/"},

  "imageUrl": {"S": "https://post-tenebras-lire.net/assets/posts/2017-01-04-lecture-bad-science-de-ben-goldacre.jpg"}
}
ITEM
}

resource "aws_dynamodb_table_item" "zombie-nostalgie" {
  table_name = "${aws_dynamodb_table.feed-table.name}"
  hash_key   = "${aws_dynamodb_table.feed-table.hash_key}"
  item = <<ITEM
{
  "Id": {"S": "https://post-tenebras-lire.net/lecture-zombie-nostalgie-de-ystein-stene"},
  "title": {"S": "Zombie Nostalgie"},
  "writer": {"S": "Stene, Øystein"},

  "tags": {"S": "#Zombies"},
  "link": {"S": "https://post-tenebras-lire.net/lecture-zombie-nostalgie-de-ystein-stene/"},

  "imageUrl": {"S": "https://post-tenebras-lire.net/assets/posts/2016-12-10-lecture-zombie-nostalgie-de-ystein-stene.jpg"}
}
ITEM
}

resource "aws_dynamodb_table_item" "étranges-rivages" {
  table_name = "${aws_dynamodb_table.feed-table.name}"
  hash_key   = "${aws_dynamodb_table.feed-table.hash_key}"
  item = <<ITEM
{
  "Id": {"S": "https://post-tenebras-lire.net/polar-islandais-etranges-rivages"},
  "title": {"S": "Étranges rivages"},
  "writer": {"S": "Indriðason, Arnaldur"},

  "tags": {"S": "#Islande #Polar"},
  "link": {"S": "https://post-tenebras-lire.net/polar-islandais-etranges-rivages/"},

  "imageUrl": {"S": "https://post-tenebras-lire.net/assets/posts/2016-12-06-polar-islandais-etranges-rivages.jpg"}
}
ITEM
}

resource "aws_dynamodb_table_item" "les-annales-du-disque-monde-tome-22-va-t-en-guerre" {
  table_name = "${aws_dynamodb_table.feed-table.name}"
  hash_key   = "${aws_dynamodb_table.feed-table.hash_key}"
  item = <<ITEM
{
  "Id": {"S": "https://post-tenebras-lire.net/fantasy-va-t-en-guerre-terry-pratchett"},
  "title": {"S": "Les Annales du Disque-Monde, Tome 22 : Va-t-en guerre"},
  "writer": {"S": "Pratchett, Terry"},

  "tags": {"S": "#Fantasy #Humour"},
  "link": {"S": "https://post-tenebras-lire.net/fantasy-va-t-en-guerre-terry-pratchett/"},

  "imageUrl": {"S": "https://post-tenebras-lire.net/assets/posts//assets/posts/2016-11-23-fantasy-va-t-en-guerre-terry-pratchett.png"}
}
ITEM
}

resource "aws_dynamodb_table_item" "addictions" {
  table_name = "${aws_dynamodb_table.feed-table.name}"
  hash_key   = "${aws_dynamodb_table.feed-table.hash_key}"
  item = <<ITEM
{
  "Id": {"S": "https://post-tenebras-lire.net/roman-noir-addictions-de-jac-barron"},
  "title": {"S": "Addictions"},
  "writer": {"S": "Barron, Jac"},

  "tags": {"S": "#Polar"},
  "link": {"S": "https://post-tenebras-lire.net/roman-noir-addictions-de-jac-barron/"},

  "imageUrl": {"S": "https://post-tenebras-lire.net/assets/posts/2016-11-06-roman-noir-addictions-de-jac-barron.jpg"}
}
ITEM
}

resource "aws_dynamodb_table_item" "la-fleur-de-l-illusion" {
  table_name = "${aws_dynamodb_table.feed-table.name}"
  hash_key   = "${aws_dynamodb_table.feed-table.hash_key}"
  item = <<ITEM
{
  "Id": {"S": "https://post-tenebras-lire.net/polar-japonais-la-fleur-de-lillusion-de"},
  "title": {"S": "La fleur de l’illusion"},
  "writer": {"S": "Higashino, Keigo"},

  "tags": {"S": "#Japon #Polar"},
  "link": {"S": "https://post-tenebras-lire.net/polar-japonais-la-fleur-de-lillusion-de/"},

  "imageUrl": {"S": "https://post-tenebras-lire.net/assets/posts/2016-10-25-polar-japonais-la-fleur-de-lillusion-de.jpg"}
}
ITEM
}

resource "aws_dynamodb_table_item" "hypothermie" {
  table_name = "${aws_dynamodb_table.feed-table.name}"
  hash_key   = "${aws_dynamodb_table.feed-table.hash_key}"
  item = <<ITEM
{
  "Id": {"S": "https://post-tenebras-lire.net/polar-islandais-hypothermie-arnaldur"},
  "title": {"S": "Hypothermie"},
  "writer": {"S": "Indriðason, Arnaldur"},

  "tags": {"S": "#Islande #Polar"},
  "link": {"S": "https://post-tenebras-lire.net/polar-islandais-hypothermie-arnaldur/"},

  "imageUrl": {"S": "https://post-tenebras-lire.net/assets/posts/2016-10-20-polar-islandais-hypothermie-arnaldur.jpg"}
}
ITEM
}

resource "aws_dynamodb_table_item" "le-fils-prodigue" {
  table_name = "${aws_dynamodb_table.feed-table.name}"
  hash_key   = "${aws_dynamodb_table.feed-table.hash_key}"
  item = <<ITEM
{
  "Id": {"S": "https://post-tenebras-lire.net/polar-le-fils-prodigue-de-jean-baptiste"},
  "title": {"S": "Le fils prodigue"},
  "writer": {"S": "Ferrero, Jean-Baptiste"},

  "tags": {"S": "#Polar"},
  "link": {"S": "https://post-tenebras-lire.net/polar-le-fils-prodigue-de-jean-baptiste/"},

  "imageUrl": {"S": "https://post-tenebras-lire.net/assets/posts/2016-10-14-polar-le-fils-prodigue-de-jean-baptiste.jpg"}
}
ITEM
}

resource "aws_dynamodb_table_item" "dieu-n-est-pas-grand-comment-la-religion-empoisonne-tout" {
  table_name = "${aws_dynamodb_table.feed-table.name}"
  hash_key   = "${aws_dynamodb_table.feed-table.hash_key}"
  item = <<ITEM
{
  "Id": {"S": "https://post-tenebras-lire.net/dieu-nest-pas-grand-christopher-hitchens"},
  "title": {"S": "Dieu n’est pas grand : Comment la religion empoisonne tout"},
  "writer": {"S": "Hitchens, Christopher"},

  "tags": {"S": "#Abandonné #Science #Religion"},
  "link": {"S": "https://post-tenebras-lire.net/dieu-nest-pas-grand-christopher-hitchens/"},

  "imageUrl": {"S": "https://post-tenebras-lire.net/assets/posts/2016-10-07-dieu-nest-pas-grand-christopher-hitchens.jpg"}
}
ITEM
}

resource "aws_dynamodb_table_item" "toxic-saison-2" {
  table_name = "${aws_dynamodb_table.feed-table.name}"
  hash_key   = "${aws_dynamodb_table.feed-table.hash_key}"
  item = <<ITEM
{
  "Id": {"S": "https://post-tenebras-lire.net/serie-science-fiction-toxic-saison-2-de"},
  "title": {"S": "Toxic Saison 2"},
  "writer": {"S": "Desienne, Stéphane"},

  "tags": {"S": "#Série #Science-Fiction"},
  "link": {"S": "https://post-tenebras-lire.net/serie-science-fiction-toxic-saison-2-de/"},

  "imageUrl": {"S": "https://post-tenebras-lire.net/assets/posts/2016-10-01-serie-science-fiction-toxic-saison-2-de.jpg"}
}
ITEM
}

resource "aws_dynamodb_table_item" "prélude-et-aube-de-la-fondation" {
  table_name = "${aws_dynamodb_table.feed-table.name}"
  hash_key   = "${aws_dynamodb_table.feed-table.hash_key}"
  item = <<ITEM
{
  "Id": {"S": "https://post-tenebras-lire.net/sf-prelude-et-aube-de-la-fondation"},
  "title": {"S": "Prélude et Aube de la Fondation"},
  "writer": {"S": "Asimov, Issac"},

  "tags": {"S": "#Science-Fiction"},
  "link": {"S": "https://post-tenebras-lire.net/sf-prelude-et-aube-de-la-fondation/"},

  "imageUrl": {"S": "https://post-tenebras-lire.net/assets/posts/2016-09-16-sf-prelude-et-aube-de-la-fondation.jpg"}
}
ITEM
}

resource "aws_dynamodb_table_item" "hiver-arctique" {
  table_name = "${aws_dynamodb_table.feed-table.name}"
  hash_key   = "${aws_dynamodb_table.feed-table.hash_key}"
  item = <<ITEM
{
  "Id": {"S": "https://post-tenebras-lire.net/polar-nordique-hiver-arctique-darnaldur"},
  "title": {"S": "Hiver arctique"},
  "writer": {"S": "Indriðason, Arnaldur"},

  "tags": {"S": "#Islande #Polar"},
  "link": {"S": "https://post-tenebras-lire.net/polar-nordique-hiver-arctique-darnaldur/"},

  "imageUrl": {"S": "https://post-tenebras-lire.net/assets/posts/2016-07-16-polar-nordique-hiver-arctique-darnaldur.jpg"}
}
ITEM
}

resource "aws_dynamodb_table_item" "l-homme-du-lac" {
  table_name = "${aws_dynamodb_table.feed-table.name}"
  hash_key   = "${aws_dynamodb_table.feed-table.hash_key}"
  item = <<ITEM
{
  "Id": {"S": "https://post-tenebras-lire.net/polar-islandais-l-homme-du-lac"},
  "title": {"S": "L’Homme du Lac"},
  "writer": {"S": "Indriðason, Arnaldur"},

  "tags": {"S": "#Islande #Polar"},
  "link": {"S": "https://post-tenebras-lire.net/polar-islandais-l-homme-du-lac/"},

  "imageUrl": {"S": "https://post-tenebras-lire.net/assets/posts/2016-07-06-polar-islandais-l-homme-du-lac.jpg"}
}
ITEM
}

resource "aws_dynamodb_table_item" "sanctum-corpus" {
  table_name = "${aws_dynamodb_table.feed-table.name}"
  hash_key   = "${aws_dynamodb_table.feed-table.hash_key}"
  item = <<ITEM
{
  "Id": {"S": "https://post-tenebras-lire.net/novella-sf-sanctum-corpus-dolivier"},
  "title": {"S": "Sanctum Corpus"},
  "writer": {"S": "Saraja, Olivier"},

  "tags": {"S": "#Science-Fiction #Nouvelle"},
  "link": {"S": "https://post-tenebras-lire.net/novella-sf-sanctum-corpus-dolivier/"},

  "imageUrl": {"S": "https://post-tenebras-lire.net/assets/posts/2016-06-29-novella-sf-sanctum-corpus-dolivier.jpg"}
}
ITEM
}

resource "aws_dynamodb_table_item" "exil-intégrale-saison-1" {
  table_name = "${aws_dynamodb_table.feed-table.name}"
  hash_key   = "${aws_dynamodb_table.feed-table.hash_key}"
  item = <<ITEM
{
  "Id": {"S": "https://post-tenebras-lire.net/serie-sf-exil-integrale-saison-1-de"},
  "title": {"S": "Exil Intégrale Saison 1"},
  "writer": {"S": "Desienne, Stéphane"},

  "tags": {"S": "#Science-Fiction"},
  "link": {"S": "https://post-tenebras-lire.net/serie-sf-exil-integrale-saison-1-de/"},

  "imageUrl": {"S": "https://post-tenebras-lire.net/assets/posts/2016-06-22-serie-sf-exil-integrale-saison-1-de.jpg"}
}
ITEM
}

resource "aws_dynamodb_table_item" "alone-intégrale" {
  table_name = "${aws_dynamodb_table.feed-table.name}"
  hash_key   = "${aws_dynamodb_table.feed-table.hash_key}"
  item = <<ITEM
{
  "Id": {"S": "https://post-tenebras-lire.net/saga-post-apocalytique-alone-integrale"},
  "title": {"S": "Alone Intégrale"},
  "writer": {"S": "Géha, Thomas"},

  "tags": {"S": "#Post-apocalyptique"},
  "link": {"S": "https://post-tenebras-lire.net/saga-post-apocalytique-alone-integrale/"},

  "imageUrl": {"S": "https://post-tenebras-lire.net/assets/posts/2016-06-18-saga-post-apocalytique-alone-integrale.jpg"}
}
ITEM
}

resource "aws_dynamodb_table_item" "voyager-tome-1-jonctions" {
  table_name = "${aws_dynamodb_table.feed-table.name}"
  hash_key   = "${aws_dynamodb_table.feed-table.hash_key}"
  item = <<ITEM
{
  "Id": {"S": "https://post-tenebras-lire.net/roman-sf-voyager-de-stephanne-desienne"},
  "title": {"S": "Voyager, tome 1 : Jonctions"},
  "writer": {"S": "Desienne, Stéphane"},

  "tags": {"S": "#Science-Fiction"},
  "link": {"S": "https://post-tenebras-lire.net/roman-sf-voyager-de-stephanne-desienne/"},

  "imageUrl": {"S": "https://post-tenebras-lire.net/assets/posts/2016-06-13-roman-sf-voyager-de-stephanne-desienne.jpg"}
}
ITEM
}

resource "aws_dynamodb_table_item" "prenez-le-temps-d-e-penser-tome-1" {
  table_name = "${aws_dynamodb_table.feed-table.name}"
  hash_key   = "${aws_dynamodb_table.feed-table.hash_key}"
  item = <<ITEM
{
  "Id": {"S": "https://post-tenebras-lire.net/science-prenez-le-temps-de-penser-tome"},
  "title": {"S": "Prenez le temps d’e-penser, tome 1"},
  "writer": {"S": "Benamran, Bruce"},

  "tags": {"S": "#Science"},
  "link": {"S": "https://post-tenebras-lire.net/science-prenez-le-temps-de-penser-tome/"},

  "imageUrl": {"S": "https://post-tenebras-lire.net/assets/posts/2016-06-05-science-prenez-le-temps-de-penser-tome.jpg"}
}
ITEM
}

resource "aws_dynamodb_table_item" "le-beau-livre-de-l-astronomie-de-l-observation-à-l-exploration-spatiale" {
  table_name = "${aws_dynamodb_table.feed-table.name}"
  hash_key   = "${aws_dynamodb_table.feed-table.hash_key}"
  item = <<ITEM
{
  "Id": {"S": "https://post-tenebras-lire.net/sciences-le-beau-livre-de-lastronomie"},
  "title": {"S": "Le Beau Livre de l’Astronomie - De l’observation à l’exploration spatiale"},
  "writer": {"S": "Bell, Jim"},

  "tags": {"S": "#Science #Beau livre #Vulgarisation"},
  "link": {"S": "https://post-tenebras-lire.net/sciences-le-beau-livre-de-lastronomie/"},

  "imageUrl": {"S": "https://post-tenebras-lire.net/assets/posts/2016-06-05-sciences-le-beau-livre-de-lastronomie.jpg"}
}
ITEM
}

resource "aws_dynamodb_table_item" "la-voix" {
  table_name = "${aws_dynamodb_table.feed-table.name}"
  hash_key   = "${aws_dynamodb_table.feed-table.hash_key}"
  item = <<ITEM
{
  "Id": {"S": "https://post-tenebras-lire.net/la-voix-arnaldur-indriason-un-polar"},
  "title": {"S": "La Voix"},
  "writer": {"S": "Indriðason, Arnaldur"},

  "tags": {"S": "#Polar #Islande"},
  "link": {"S": "https://post-tenebras-lire.net/la-voix-arnaldur-indriason-un-polar/"},

  "imageUrl": {"S": "https://post-tenebras-lire.net/assets/posts/2016-04-29-la-voix-arnaldur-indriason-un-polar.jpg"}
}
ITEM
}

resource "aws_dynamodb_table_item" "l-équation-de-plein-été" {
  table_name = "${aws_dynamodb_table.feed-table.name}"
  hash_key   = "${aws_dynamodb_table.feed-table.hash_key}"
  item = <<ITEM
{
  "Id": {"S": "https://post-tenebras-lire.net/polar-japonais-lequation-de-plein-ete"},
  "title": {"S": "L’équation de plein été"},
  "writer": {"S": "Higashino, Keigo"},

  "tags": {"S": "#Japon #Polar"},
  "link": {"S": "https://post-tenebras-lire.net/polar-japonais-lequation-de-plein-ete/"},

  "imageUrl": {"S": "https://post-tenebras-lire.net/assets/posts/2016-04-19-polar-japonais-lequation-de-plein-ete.jpg"}
}
ITEM
}

resource "aws_dynamodb_table_item" "drôle-de-mort" {
  table_name = "${aws_dynamodb_table.feed-table.name}"
  hash_key   = "${aws_dynamodb_table.feed-table.hash_key}"
  item = <<ITEM
{
  "Id": {"S": "https://post-tenebras-lire.net/policier-drole-de-mort-de-sophie-moulay"},
  "title": {"S": "Drôle de mort"},
  "writer": {"S": "Moulay, Sophie"},

  "tags": {"S": "#Polar"},
  "link": {"S": "https://post-tenebras-lire.net/policier-drole-de-mort-de-sophie-moulay/"},

  "imageUrl": {"S": "https://post-tenebras-lire.net/assets/posts/2016-04-12-policier-drole-de-mort-de-sophie-moulay.jpg"}
}
ITEM
}

resource "aws_dynamodb_table_item" "les-derniers-jours-du-paradis" {
  table_name = "${aws_dynamodb_table.feed-table.name}"
  hash_key   = "${aws_dynamodb_table.feed-table.hash_key}"
  item = <<ITEM
{
  "Id": {"S": "https://post-tenebras-lire.net/roman-sf-les-derniers-jours-du-paradis"},
  "title": {"S": "Les derniers jours du paradis"},
  "writer": {"S": "Wilson, Robert-Charles"},

  "tags": {"S": "#Science-Fiction"},
  "link": {"S": "https://post-tenebras-lire.net/roman-sf-les-derniers-jours-du-paradis/"},

  "imageUrl": {"S": "https://post-tenebras-lire.net/assets/posts/2016-04-08-roman-sf-les-derniers-jours-du-paradis.jpg"}
}
ITEM
}

resource "aws_dynamodb_table_item" "la-femme-en-vert" {
  table_name = "${aws_dynamodb_table.feed-table.name}"
  hash_key   = "${aws_dynamodb_table.feed-table.hash_key}"
  item = <<ITEM
{
  "Id": {"S": "https://post-tenebras-lire.net/polar-islandais-la-femme-en-vert"},
  "title": {"S": "La femme en vert"},
  "writer": {"S": "Indriðason, Arnaldur"},

  "tags": {"S": "#Islande #Polar"},
  "link": {"S": "https://post-tenebras-lire.net/polar-islandais-la-femme-en-vert/"},

  "imageUrl": {"S": "https://post-tenebras-lire.net/assets/posts/2016-03-17-polar-islandais-la-femme-en-vert.jpg"}
}
ITEM
}

resource "aws_dynamodb_table_item" "les-annales-du-disque-monde-tome-17-les-tribulations-d-un-mage-en-aurient" {
  table_name = "${aws_dynamodb_table.feed-table.name}"
  hash_key   = "${aws_dynamodb_table.feed-table.hash_key}"
  item = <<ITEM
{
  "Id": {"S": "https://post-tenebras-lire.net/fantasy-humoristique-les-annales-du"},
  "title": {"S": "Les Annales du Disque-Monde, Tome 17 : Les Tribulations d’un mage en Aurient"},
  "writer": {"S": "Pratchett, Terry"},

  "tags": {"S": "#Fantasy #Humour"},
  "link": {"S": "https://post-tenebras-lire.net/fantasy-humoristique-les-annales-du/"},

  "imageUrl": {"S": "https://post-tenebras-lire.net/assets/posts/2016-03-15-fantasy-humoristique-les-annales-du.jpg"}
}
ITEM
}

resource "aws_dynamodb_table_item" "sortie-parc-gare-d-ueno" {
  table_name = "${aws_dynamodb_table.feed-table.name}"
  hash_key   = "${aws_dynamodb_table.feed-table.hash_key}"
  item = <<ITEM
{
  "Id": {"S": "https://post-tenebras-lire.net/roman-japonais-sortie-parc-gare-dueno"},
  "title": {"S": "Sortie parc, gare d’Ueno"},
  "writer": {"S": "Miri, Yu"},

  "tags": {"S": "#Japon"},
  "link": {"S": "https://post-tenebras-lire.net/roman-japonais-sortie-parc-gare-dueno/"},

  "imageUrl": {"S": "https://post-tenebras-lire.net/assets/posts/2016-03-10-roman-japonais-sortie-parc-gare-dueno.jpg"}
}
ITEM
}

resource "aws_dynamodb_table_item" "les-vacances-de-jésus-bouddha-tome-1-à-7" {
  table_name = "${aws_dynamodb_table.feed-table.name}"
  hash_key   = "${aws_dynamodb_table.feed-table.hash_key}"
  item = <<ITEM
{
  "Id": {"S": "https://post-tenebras-lire.net/manga-les-vacances-de-jesus-bouddha"},
  "title": {"S": "Les vacances de Jésus &amp;amp; Bouddha, Tome 1 à 7"},
  "writer": {"S": "Nakamura, Hikaru"},

  "tags": {"S": "#Manga #Abandonné #Japon #Religion #Humour"},
  "link": {"S": "https://post-tenebras-lire.net/manga-les-vacances-de-jesus-bouddha/"},

  "imageUrl": {"S": "https://post-tenebras-lire.net/assets/posts/2016-03-09-manga-les-vacances-de-jesus-bouddha.jpg"}
}
ITEM
}

resource "aws_dynamodb_table_item" "seul-sur-mars" {
  table_name = "${aws_dynamodb_table.feed-table.name}"
  hash_key   = "${aws_dynamodb_table.feed-table.hash_key}"
  item = <<ITEM
{
  "Id": {"S": "https://post-tenebras-lire.net/roman-hard-sf-seul-sur-mars-dandy-weir"},
  "title": {"S": "Seul sur Mars"},
  "writer": {"S": "Weir, Andy"},

  "tags": {"S": "#Science-Fiction"},
  "link": {"S": "https://post-tenebras-lire.net/roman-hard-sf-seul-sur-mars-dandy-weir/"},

  "imageUrl": {"S": "https://post-tenebras-lire.net/assets/posts/2016-03-06-roman-hard-sf-seul-sur-mars-dandy-weir.jpg"}
}
ITEM
}

resource "aws_dynamodb_table_item" "la-peau-sur-les-os" {
  table_name = "${aws_dynamodb_table.feed-table.name}"
  hash_key   = "${aws_dynamodb_table.feed-table.hash_key}"
  item = <<ITEM
{
  "Id": {"S": "https://post-tenebras-lire.net/lecture-la-peau-sur-les-os-par-stephen"},
  "title": {"S": "La Peau sur les os"},
  "writer": {"S": "King, Stephen"},

  "tags": {"S": "#Fantastique #Thriller"},
  "link": {"S": "https://post-tenebras-lire.net/lecture-la-peau-sur-les-os-par-stephen/"},

  "imageUrl": {"S": "https://post-tenebras-lire.net/assets/posts/2016-03-05-lecture-la-peau-sur-les-os-par-stephen.jpg"}
}
ITEM
}

resource "aws_dynamodb_table_item" "le-dieu-venu-du-centaure" {
  table_name = "${aws_dynamodb_table.feed-table.name}"
  hash_key   = "${aws_dynamodb_table.feed-table.hash_key}"
  item = <<ITEM
{
  "Id": {"S": "https://post-tenebras-lire.net/roman-sf-le-dieu-venu-du-centaure"},
  "title": {"S": "Le dieu venu du Centaure"},
  "writer": {"S": "Dick, Philip K."},

  "tags": {"S": "#Science-Fiction"},
  "link": {"S": "https://post-tenebras-lire.net/roman-sf-le-dieu-venu-du-centaure/"},

  "imageUrl": {"S": "https://post-tenebras-lire.net/assets/posts/2016-03-05-roman-sf-le-dieu-venu-du-centaure.jpg"}
}
ITEM
}

resource "aws_dynamodb_table_item" "comprendre-l-antisémitisme" {
  table_name = "${aws_dynamodb_table.feed-table.name}"
  hash_key   = "${aws_dynamodb_table.feed-table.hash_key}"
  item = <<ITEM
{
  "Id": {"S": "https://post-tenebras-lire.net/indispensable-lecture-comprendre"},
  "title": {"S": "Comprendre l’antisémitisme"},
  "writer": {"S": "Maillard, Agnès"},

  "tags": {"S": "#Politique #Société #Religion"},
  "link": {"S": "https://post-tenebras-lire.net/indispensable-lecture-comprendre/"},

  "imageUrl": {"S": "https://post-tenebras-lire.net/assets/posts/2016-02-25-indispensable-lecture-comprendre.jpg"}
}
ITEM
}

resource "aws_dynamodb_table_item" "le-maître-du-haut-château" {
  table_name = "${aws_dynamodb_table.feed-table.name}"
  hash_key   = "${aws_dynamodb_table.feed-table.hash_key}"
  item = <<ITEM
{
  "Id": {"S": "https://post-tenebras-lire.net/uchronie-le-maitre-du-haut-chateau-de"},
  "title": {"S": "Le maître du haut château"},
  "writer": {"S": "Dick, Philip K."},

  "tags": {"S": "#Science-Fiction #Uchronie"},
  "link": {"S": "https://post-tenebras-lire.net/uchronie-le-maitre-du-haut-chateau-de/"},

  "imageUrl": {"S": "https://post-tenebras-lire.net/assets/posts/2016-02-09-uchronie-le-maitre-du-haut-chateau-de.jpg"}
}
ITEM
}

resource "aws_dynamodb_table_item" "troublerêve" {
  table_name = "${aws_dynamodb_table.feed-table.name}"
  hash_key   = "${aws_dynamodb_table.feed-table.hash_key}"
  item = <<ITEM
{
  "Id": {"S": "https://post-tenebras-lire.net/fantastique-troublereve-par-christophe"},
  "title": {"S": "Troublerêve"},
  "writer": {"S": "Kauffman, Christophe"},

  "tags": {"S": "#Fantastique #Fantasy"},
  "link": {"S": "https://post-tenebras-lire.net/fantastique-troublereve-par-christophe/"},

  "imageUrl": {"S": "https://post-tenebras-lire.net/assets/posts/2016-01-31-fantastique-troublereve-par-christophe.jpg"}
}
ITEM
}

resource "aws_dynamodb_table_item" "caverne-les-disparus-du-val" {
  table_name = "${aws_dynamodb_table.feed-table.name}"
  hash_key   = "${aws_dynamodb_table.feed-table.hash_key}"
  item = <<ITEM
{
  "Id": {"S": "https://post-tenebras-lire.net/polar-fantastique-caverne-les-disparus"},
  "title": {"S": "Caverne - Les disparus du Val"},
  "writer": {"S": "Afflatet, Bernard"},

  "tags": {"S": "#Fantastique #Polar"},
  "link": {"S": "https://post-tenebras-lire.net/polar-fantastique-caverne-les-disparus/"},

  "imageUrl": {"S": "https://post-tenebras-lire.net/assets/posts/2016-01-17-polar-fantastique-caverne-les-disparus.jpg"}
}
ITEM
}

resource "aws_dynamodb_table_item" "l-antisémitisme-que-sais-je-n-3734" {
  table_name = "${aws_dynamodb_table.feed-table.name}"
  hash_key   = "${aws_dynamodb_table.feed-table.hash_key}"
  item = <<ITEM
{
  "Id": {"S": "https://post-tenebras-lire.net/lantisemitisme-que-sais-je-n-3734"},
  "title": {"S": "L’antisémitisme: « Que sais-je ? » n°3734"},
  "writer": {"S": "Taguieff, Pierre-André"},

  "tags": {"S": "#Politique #Religion #Histoire"},
  "link": {"S": "https://post-tenebras-lire.net/lantisemitisme-que-sais-je-n-3734/"},

  "imageUrl": {"S": "https://post-tenebras-lire.net/assets/posts/2016-01-16-lantisemitisme-que-sais-je-n-3734.jpg"}
}
ITEM
}

resource "aws_dynamodb_table_item" "minority-report" {
  table_name = "${aws_dynamodb_table.feed-table.name}"
  hash_key   = "${aws_dynamodb_table.feed-table.hash_key}"
  item = <<ITEM
{
  "Id": {"S": "https://post-tenebras-lire.net/nouvelle-minority-report-de-philip-k"},
  "title": {"S": "Minority Report"},
  "writer": {"S": "Dick, Philip K."},

  "tags": {"S": "#Science-Fiction #Nouvelle"},
  "link": {"S": "https://post-tenebras-lire.net/nouvelle-minority-report-de-philip-k/"},

  "imageUrl": {"S": "https://post-tenebras-lire.net/assets/posts/2016-01-14-nouvelle-minority-report-de-philip-k.jpg"}
}
ITEM
}

resource "aws_dynamodb_table_item" "un-endroit-discret" {
  table_name = "${aws_dynamodb_table.feed-table.name}"
  hash_key   = "${aws_dynamodb_table.feed-table.hash_key}"
  item = <<ITEM
{
  "Id": {"S": "https://post-tenebras-lire.net/polar-japonais-un-endroit-discret-de"},
  "title": {"S": "Un endroit discret"},
  "writer": {"S": "Matsumoto, Seicho"},

  "tags": {"S": "#Japon #Polar"},
  "link": {"S": "https://post-tenebras-lire.net/polar-japonais-un-endroit-discret-de/"},

  "imageUrl": {"S": "https://post-tenebras-lire.net/assets/posts/2015-12-30-polar-japonais-un-endroit-discret-de.jpg"}
}
ITEM
}

resource "aws_dynamodb_table_item" "deus-irae" {
  table_name = "${aws_dynamodb_table.feed-table.name}"
  hash_key   = "${aws_dynamodb_table.feed-table.hash_key}"
  item = <<ITEM
{
  "Id": {"S": "https://post-tenebras-lire.net/sience-fiction-deus-irae-philip-k-dick"},
  "title": {"S": "Deus Irae"},
  "writer": {"S": "Dick, Philip K."},

  "tags": {"S": "#Post-apocalyptique #Science-Fiction"},
  "link": {"S": "https://post-tenebras-lire.net/sience-fiction-deus-irae-philip-k-dick/"},

  "imageUrl": {"S": "https://post-tenebras-lire.net/assets/posts/2015-12-26-sience-fiction-deus-irae-philip-k-dick.jpg"}
}
ITEM
}

resource "aws_dynamodb_table_item" "miso-soup" {
  table_name = "${aws_dynamodb_table.feed-table.name}"
  hash_key   = "${aws_dynamodb_table.feed-table.hash_key}"
  item = <<ITEM
{
  "Id": {"S": "https://post-tenebras-lire.net/litterature-japonaise-miso-soup-ryu"},
  "title": {"S": "Miso Soup"},
  "writer": {"S": "Murakami, Ryû"},

  "tags": {"S": "#Japon"},
  "link": {"S": "https://post-tenebras-lire.net/litterature-japonaise-miso-soup-ryu/"},

  "imageUrl": {"S": "https://post-tenebras-lire.net/assets/posts/2015-12-16-litterature-japonaise-miso-soup-ryu.jpg"}
}
ITEM
}

resource "aws_dynamodb_table_item" "chroniques-des-années-noires" {
  table_name = "${aws_dynamodb_table.feed-table.name}"
  hash_key   = "${aws_dynamodb_table.feed-table.hash_key}"
  item = <<ITEM
{
  "Id": {"S": "https://post-tenebras-lire.net/uchromnie-chroniques-des-annees-noires"},
  "title": {"S": "Chroniques des années noires"},
  "writer": {"S": "Robinson, Kim Stanley"},

  "tags": {"S": "#Uchronie"},
  "link": {"S": "https://post-tenebras-lire.net/uchromnie-chroniques-des-annees-noires/"},

  "imageUrl": {"S": "https://post-tenebras-lire.net/assets/posts/2015-12-12-uchromnie-chroniques-des-annees-noires.gif"}
}
ITEM
}

resource "aws_dynamodb_table_item" "les-annales-du-disque-monde-tome-16-accros-du-roc" {
  table_name = "${aws_dynamodb_table.feed-table.name}"
  hash_key   = "${aws_dynamodb_table.feed-table.hash_key}"
  item = <<ITEM
{
  "Id": {"S": "https://post-tenebras-lire.net/les-annales-du-disque-monde-tome-16"},
  "title": {"S": "Les Annales du Disque-Monde, Tome 16 : Accros du roc"},
  "writer": {"S": "Pratchett, Terry"},

  "tags": {"S": "#Fantasy #Humour #Musique"},
  "link": {"S": "https://post-tenebras-lire.net/les-annales-du-disque-monde-tome-16/"},

  "imageUrl": {"S": "https://post-tenebras-lire.net/assets/posts/2015-11-28-les-annales-du-disque-monde-tome-16.jpg"}
}
ITEM
}

resource "aws_dynamodb_table_item" "la-lumière-de-la-nuit" {
  table_name = "${aws_dynamodb_table.feed-table.name}"
  hash_key   = "${aws_dynamodb_table.feed-table.hash_key}"
  item = <<ITEM
{
  "Id": {"S": "https://post-tenebras-lire.net/polar-la-lumiere-de-la-nuit-de-keigo"},
  "title": {"S": "La lumière de la nuit"},
  "writer": {"S": "Higashino, Keigo"},

  "tags": {"S": "#Japon #Polar"},
  "link": {"S": "https://post-tenebras-lire.net/polar-la-lumiere-de-la-nuit-de-keigo/"},

  "imageUrl": {"S": "https://post-tenebras-lire.net/assets/posts/2015-11-07-polar-la-lumiere-de-la-nuit-de-keigo.jpg"}
}
ITEM
}

resource "aws_dynamodb_table_item" "ressentiment-tome-1" {
  table_name = "${aws_dynamodb_table.feed-table.name}"
  hash_key   = "${aws_dynamodb_table.feed-table.hash_key}"
  item = <<ITEM
{
  "Id": {"S": "https://post-tenebras-lire.net/manga-ressentiment-tome-1-de-kengo"},
  "title": {"S": "Ressentiment, tome 1"},
  "writer": {"S": "Hanazawa, Kengo"},

  "tags": {"S": "#Manga #Abandonné #Japon"},
  "link": {"S": "https://post-tenebras-lire.net/manga-ressentiment-tome-1-de-kengo/"},

  "imageUrl": {"S": "https://post-tenebras-lire.net/assets/posts/2015-10-29-manga-ressentiment-tome-1-de-kengo.jpg"}
}
ITEM
}

resource "aws_dynamodb_table_item" "journal-d-hiroshima-6-août-30-septembre-1945" {
  table_name = "${aws_dynamodb_table.feed-table.name}"
  hash_key   = "${aws_dynamodb_table.feed-table.hash_key}"
  item = <<ITEM
{
  "Id": {"S": "https://post-tenebras-lire.net/journal-dhiroshima-6-aout-30-septembre"},
  "title": {"S": "Journal d’Hiroshima : 6 août-30 septembre 1945"},
  "writer": {"S": "Hachiya, Michihiko"},

  "tags": {"S": "#Japon #Témoignage"},
  "link": {"S": "https://post-tenebras-lire.net/journal-dhiroshima-6-aout-30-septembre/"},

  "imageUrl": {"S": "https://post-tenebras-lire.net/assets/posts/2015-10-21-journal-dhiroshima-6-aout-30-septembre.jpg"}
}
ITEM
}

resource "aws_dynamodb_table_item" "deux-dictionnaires-des-idées-reçues" {
  table_name = "${aws_dynamodb_table.feed-table.name}"
  hash_key   = "${aws_dynamodb_table.feed-table.hash_key}"
  item = <<ITEM
{
  "Id": {"S": "https://post-tenebras-lire.net/deux-dictionnaires-des-idees-recues"},
  "title": {"S": "Deux dictionnaires des idées reçues"},
  "writer": {"S": "Barham, Andrea"},

  "tags": {"S": "#Science"},
  "link": {"S": "https://post-tenebras-lire.net/deux-dictionnaires-des-idees-recues/"},

  "imageUrl": {"S": "https://post-tenebras-lire.net/assets/posts/2015-10-13-deux-dictionnaires-des-idees-recues.jpg"}
}
ITEM
}

resource "aws_dynamodb_table_item" "les-annales-du-disque-monde-tome-15-le-guet-des-orfèvres" {
  table_name = "${aws_dynamodb_table.feed-table.name}"
  hash_key   = "${aws_dynamodb_table.feed-table.hash_key}"
  item = <<ITEM
{
  "Id": {"S": "https://post-tenebras-lire.net/les-annales-du-disque-monde-tome-15-le"},
  "title": {"S": "Les Annales du Disque-Monde, Tome 15 : Le Guet des orfèvres"},
  "writer": {"S": "Pratchett, Terry"},

  "tags": {"S": "#Fantasy #Humour"},
  "link": {"S": "https://post-tenebras-lire.net/les-annales-du-disque-monde-tome-15-le/"},

  "imageUrl": {"S": "https://post-tenebras-lire.net/assets/posts/2015-09-30-les-annales-du-disque-monde-tome-15-le.jpg"}
}
ITEM
}

resource "aws_dynamodb_table_item" "trilogie-quantika" {
  table_name = "${aws_dynamodb_table.feed-table.name}"
  hash_key   = "${aws_dynamodb_table.feed-table.hash_key}"
  item = <<ITEM
{
  "Id": {"S": "https://post-tenebras-lire.net/trilogie-sf-quantika-de-laurence-suhner"},
  "title": {"S": "Trilogie Quantika"},
  "writer": {"S": "Suhner, Laurence"},

  "tags": {"S": "#Science-Fiction"},
  "link": {"S": "https://post-tenebras-lire.net/trilogie-sf-quantika-de-laurence-suhner/"},

  "imageUrl": {"S": "https://post-tenebras-lire.net/assets/posts/2015-09-27-trilogie-sf-quantika-de-laurence-suhner.jpg"}
}
ITEM
}

resource "aws_dynamodb_table_item" "les-voies-d-anubis" {
  table_name = "${aws_dynamodb_table.feed-table.name}"
  hash_key   = "${aws_dynamodb_table.feed-table.hash_key}"
  item = <<ITEM
{
  "Id": {"S": "https://post-tenebras-lire.net/roman-fantastique-les-voies-danubis-de"},
  "title": {"S": "Les voies d’Anubis"},
  "writer": {"S": "Powers, Tim"},

  "tags": {"S": "#Fantastique"},
  "link": {"S": "https://post-tenebras-lire.net/roman-fantastique-les-voies-danubis-de/"},

  "imageUrl": {"S": "https://post-tenebras-lire.net/assets/posts/2015-09-26-roman-fantastique-les-voies-danubis-de.png"}
}
ITEM
}

resource "aws_dynamodb_table_item" "antithèse" {
  table_name = "${aws_dynamodb_table.feed-table.name}"
  hash_key   = "${aws_dynamodb_table.feed-table.hash_key}"
  item = <<ITEM
{
  "Id": {"S": "https://post-tenebras-lire.net/polar-antithese-de-jean-baptiste-ferrero"},
  "title": {"S": "Antithèse"},
  "writer": {"S": "Ferrero, Jean-Baptiste"},

  "tags": {"S": "#Polar"},
  "link": {"S": "https://post-tenebras-lire.net/polar-antithese-de-jean-baptiste-ferrero/"},

  "imageUrl": {"S": "https://post-tenebras-lire.net/assets/posts/2015-08-17-polar-antithese-de-jean-baptiste-ferrero.jpg"}
}
ITEM
}

resource "aws_dynamodb_table_item" "joyland" {
  table_name = "${aws_dynamodb_table.feed-table.name}"
  hash_key   = "${aws_dynamodb_table.feed-table.hash_key}"
  item = <<ITEM
{
  "Id": {"S": "https://post-tenebras-lire.net/roman-joyland-de-stephen-king"},
  "title": {"S": "Joyland"},
  "writer": {"S": "King, Stephen"},

  "tags": {"S": "#Fantastique"},
  "link": {"S": "https://post-tenebras-lire.net/roman-joyland-de-stephen-king/"},

  "imageUrl": {"S": "https://post-tenebras-lire.net/assets/posts/2015-08-10-roman-joyland-de-stephen-king.jpg"}
}
ITEM
}

resource "aws_dynamodb_table_item" "les-modifiés" {
  table_name = "${aws_dynamodb_table.feed-table.name}"
  hash_key   = "${aws_dynamodb_table.feed-table.hash_key}"
  item = <<ITEM
{
  "Id": {"S": "https://post-tenebras-lire.net/roman-post-apocalyptique-les-modifies"},
  "title": {"S": "Les modifiés"},
  "writer": {"S": "Kauffman, Christophe"},

  "tags": {"S": "#Post-apocalyptique #Science-Fiction"},
  "link": {"S": "https://post-tenebras-lire.net/roman-post-apocalyptique-les-modifies/"},

  "imageUrl": {"S": "https://post-tenebras-lire.net/assets/posts/2015-08-06-roman-post-apocalyptique-les-modifies.jpg"}
}
ITEM
}

resource "aws_dynamodb_table_item" "les-dividendes-de-l-apocalypse" {
  table_name = "${aws_dynamodb_table.feed-table.name}"
  hash_key   = "${aws_dynamodb_table.feed-table.hash_key}"
  item = <<ITEM
{
  "Id": {"S": "https://post-tenebras-lire.net/roman-sf-les-dividendes-de-lapocalypse"},
  "title": {"S": "Les Dividendes de l’Apocalypse"},
  "writer": {"S": "Desienne, Stéphane"},

  "tags": {"S": "#Science-Fiction"},
  "link": {"S": "https://post-tenebras-lire.net/roman-sf-les-dividendes-de-lapocalypse/"},

  "imageUrl": {"S": "https://post-tenebras-lire.net/assets/posts/2015-05-30-roman-sf-les-dividendes-de-lapocalypse.png"}
}
ITEM
}

resource "aws_dynamodb_table_item" "gen-d-hiroshima-tome-5" {
  table_name = "${aws_dynamodb_table.feed-table.name}"
  hash_key   = "${aws_dynamodb_table.feed-table.hash_key}"
  item = <<ITEM
{
  "Id": {"S": "https://post-tenebras-lire.net/manga-gen-dhiroshima-tome-5-keiji"},
  "title": {"S": "Gen d’Hiroshima, tome 5"},
  "writer": {"S": "Nakazawa, Keiji"},

  "tags": {"S": "#Manga #Japon #Histoire"},
  "link": {"S": "https://post-tenebras-lire.net/manga-gen-dhiroshima-tome-5-keiji/"},

  "imageUrl": {"S": "https://post-tenebras-lire.net/assets/posts/2015-05-20-manga-gen-dhiroshima-tome-5-keiji.jpg"}
}
ITEM
}

resource "aws_dynamodb_table_item" "ça" {
  table_name = "${aws_dynamodb_table.feed-table.name}"
  hash_key   = "${aws_dynamodb_table.feed-table.hash_key}"
  item = <<ITEM
{
  "Id": {"S": "https://post-tenebras-lire.net/ca-de-stephen-king"},
  "title": {"S": "Ça"},
  "writer": {"S": "King, Stephen"},

  "tags": {"S": "#Thriller #Fantastique"},
  "link": {"S": "https://post-tenebras-lire.net/ca-de-stephen-king/"},

  "imageUrl": {"S": "https://post-tenebras-lire.net/assets/posts/2015-04-30-ca-de-stephen-king.jpg"}
}
ITEM
}

resource "aws_dynamodb_table_item" "l-île-des-rêves" {
  table_name = "${aws_dynamodb_table.feed-table.name}"
  hash_key   = "${aws_dynamodb_table.feed-table.hash_key}"
  item = <<ITEM
{
  "Id": {"S": "https://post-tenebras-lire.net/lile-des-reves-de-hino-keizo"},
  "title": {"S": "L’île des rêves"},
  "writer": {"S": "Hino, Keizo"},

  "tags": {"S": "#Japon #Onirique"},
  "link": {"S": "https://post-tenebras-lire.net/lile-des-reves-de-hino-keizo/"},

  "imageUrl": {"S": "https://post-tenebras-lire.net/assets/posts/2015-03-25-lile-des-reves-de-hino-keizo.jpg"}
}
ITEM
}

resource "aws_dynamodb_table_item" "le-combat-ordinaire-intégrale" {
  table_name = "${aws_dynamodb_table.feed-table.name}"
  hash_key   = "${aws_dynamodb_table.feed-table.hash_key}"
  item = <<ITEM
{
  "Id": {"S": "https://post-tenebras-lire.net/le-combat-ordinaire-integrale-manu"},
  "title": {"S": "Le combat ordinaire, Intégrale"},
  "writer": {"S": "Larcenet, Manu"},

  "tags": {"S": "#BD"},
  "link": {"S": "https://post-tenebras-lire.net/le-combat-ordinaire-integrale-manu/"},

  "imageUrl": {"S": "https://post-tenebras-lire.net/assets/posts/2015-03-22-le-combat-ordinaire-integrale-manu.jpg"}
}
ITEM
}

resource "aws_dynamodb_table_item" "bonne-nuit-punpun" {
  table_name = "${aws_dynamodb_table.feed-table.name}"
  hash_key   = "${aws_dynamodb_table.feed-table.hash_key}"
  item = <<ITEM
{
  "Id": {"S": "https://post-tenebras-lire.net/manga-bonne-nuit-punpun-de-inio-asano"},
  "title": {"S": "Bonne nuit Punpun"},
  "writer": {"S": "Asano, Inio"},

  "tags": {"S": "#Manga #Abandonné"},
  "link": {"S": "https://post-tenebras-lire.net/manga-bonne-nuit-punpun-de-inio-asano/"},

  "imageUrl": {"S": "https://post-tenebras-lire.net/assets/posts/2015-03-20-manga-bonne-nuit-punpun-de-inio-asano.jpg"}
}
ITEM
}

resource "aws_dynamodb_table_item" "révolte-sur-la-lune" {
  table_name = "${aws_dynamodb_table.feed-table.name}"
  hash_key   = "${aws_dynamodb_table.feed-table.hash_key}"
  item = <<ITEM
{
  "Id": {"S": "https://post-tenebras-lire.net/revolte-sur-la-lune-robert-heinlein"},
  "title": {"S": "Révolte sur la Lune"},
  "writer": {"S": "Heinlein, Robert A."},

  "tags": {"S": "#Science-Fiction"},
  "link": {"S": "https://post-tenebras-lire.net/revolte-sur-la-lune-robert-heinlein/"},

  "imageUrl": {"S": "https://post-tenebras-lire.net/assets/posts/2015-03-08-revolte-sur-la-lune-robert-heinlein.jpg"}
}
ITEM
}

resource "aws_dynamodb_table_item" "l-homme-qui-savait-la-langue-des-serpents" {
  table_name = "${aws_dynamodb_table.feed-table.name}"
  hash_key   = "${aws_dynamodb_table.feed-table.hash_key}"
  item = <<ITEM
{
  "Id": {"S": "https://post-tenebras-lire.net/lhomme-qui-savait-la-langue-des"},
  "title": {"S": "L’Homme qui savait la langue des serpents"},
  "writer": {"S": "Kivirähk, Andrus"},

  "tags": {"S": "#Estonie"},
  "link": {"S": "https://post-tenebras-lire.net/lhomme-qui-savait-la-langue-des/"},

  "imageUrl": {"S": "https://post-tenebras-lire.net/assets/posts/2015-03-07-lhomme-qui-savait-la-langue-des.jpg"}
}
ITEM
}

resource "aws_dynamodb_table_item" "le-beau-livre-de-la-terre-de-la-formation-du-système-solaire-à-nos-jours" {
  table_name = "${aws_dynamodb_table.feed-table.name}"
  hash_key   = "${aws_dynamodb_table.feed-table.hash_key}"
  item = <<ITEM
{
  "Id": {"S": "https://post-tenebras-lire.net/le-beau-livre-de-la-terre-de-la"},
  "title": {"S": "Le beau livre de la terre : De la formation du système solaire à nos jours"},
  "writer": {"S": "De Wever, Patrick"},

  "tags": {"S": "#Science #Beau livre"},
  "link": {"S": "https://post-tenebras-lire.net/le-beau-livre-de-la-terre-de-la/"},

  "imageUrl": {"S": "https://post-tenebras-lire.net/assets/posts/2015-03-01-le-beau-livre-de-la-terre-de-la.jpg"}
}
ITEM
}

resource "aws_dynamodb_table_item" "le-restaurant-de-l-amour-retrouvé" {
  table_name = "${aws_dynamodb_table.feed-table.name}"
  hash_key   = "${aws_dynamodb_table.feed-table.hash_key}"
  item = <<ITEM
{
  "Id": {"S": "https://post-tenebras-lire.net/le-restaurant-de-lamour-retrouve-dito_74"},
  "title": {"S": "Le restaurant de l’amour retrouvé"},
  "writer": {"S": "Ogawa, Ito"},

  "tags": {"S": "#Japon"},
  "link": {"S": "https://post-tenebras-lire.net/le-restaurant-de-lamour-retrouve-dito_74/"},

  "imageUrl": {"S": "https://post-tenebras-lire.net/assets/posts/2015-02-19-le-restaurant-de-lamour-retrouve-dito_74.jpg"}
}
ITEM
}

resource "aws_dynamodb_table_item" "une-forme-de-guerre" {
  table_name = "${aws_dynamodb_table.feed-table.name}"
  hash_key   = "${aws_dynamodb_table.feed-table.hash_key}"
  item = <<ITEM
{
  "Id": {"S": "https://post-tenebras-lire.net/une-forme-de-guerre-de-iain-banks"},
  "title": {"S": "Une forme de guerre"},
  "writer": {"S": "Banks, Iain"},

  "tags": {"S": "#Science-Fiction"},
  "link": {"S": "https://post-tenebras-lire.net/une-forme-de-guerre-de-iain-banks/"},

  "imageUrl": {"S": "https://post-tenebras-lire.net/assets/posts/2015-02-17-une-forme-de-guerre-de-iain-banks.jpg"}
}
ITEM
}

resource "aws_dynamodb_table_item" "un-café-maison" {
  table_name = "${aws_dynamodb_table.feed-table.name}"
  hash_key   = "${aws_dynamodb_table.feed-table.hash_key}"
  item = <<ITEM
{
  "Id": {"S": "https://post-tenebras-lire.net/un-cafe-maison-de-keigo-higashino"},
  "title": {"S": "Un café maison"},
  "writer": {"S": "Higashino, Keigo"},

  "tags": {"S": "#Japon #Polar"},
  "link": {"S": "https://post-tenebras-lire.net/un-cafe-maison-de-keigo-higashino/"},

  "imageUrl": {"S": "https://post-tenebras-lire.net/assets/posts/2015-01-30-un-cafe-maison-de-keigo-higashino.png"}
}
ITEM
}

resource "aws_dynamodb_table_item" "la-physique-quantique-enfin-expliquée-simplement" {
  table_name = "${aws_dynamodb_table.feed-table.name}"
  hash_key   = "${aws_dynamodb_table.feed-table.hash_key}"
  item = <<ITEM
{
  "Id": {"S": "https://post-tenebras-lire.net/la-physique-quantique-enfin-expliquee"},
  "title": {"S": "La Physique Quantique: (enfin) expliquée simplement"},
  "writer": {"S": "Rollet, Vincent"},

  "tags": {"S": "#Science"},
  "link": {"S": "https://post-tenebras-lire.net/la-physique-quantique-enfin-expliquee/"},

  "imageUrl": {"S": "https://post-tenebras-lire.net/assets/posts/2015-01-24-la-physique-quantique-enfin-expliquee.jpg"}
}
ITEM
}

resource "aws_dynamodb_table_item" "ragnarök" {
  table_name = "${aws_dynamodb_table.feed-table.name}"
  hash_key   = "${aws_dynamodb_table.feed-table.hash_key}"
  item = <<ITEM
{
  "Id": {"S": "https://post-tenebras-lire.net/ragnarok-de-freddy-woets"},
  "title": {"S": "Ragnarök"},
  "writer": {"S": "Woets, Freddy"},

  "tags": {"S": "#Abandonné #Fantasy"},
  "link": {"S": "https://post-tenebras-lire.net/ragnarok-de-freddy-woets/"},

  "imageUrl": {"S": "https://post-tenebras-lire.net/assets/posts/2015-01-22-ragnarok-de-freddy-woets.jpg"}
}
ITEM
}

resource "aws_dynamodb_table_item" "japon-365-us-et-coutumes" {
  table_name = "${aws_dynamodb_table.feed-table.name}"
  hash_key   = "${aws_dynamodb_table.feed-table.hash_key}"
  item = <<ITEM
{
  "Id": {"S": "https://post-tenebras-lire.net/japon-365-us-et-coutumes"},
  "title": {"S": "Japon, 365 us et coutumes"},
  "writer": {"S": "Michaud, David"},

  "tags": {"S": "#Japon #Beau livre"},
  "link": {"S": "https://post-tenebras-lire.net/japon-365-us-et-coutumes/"},

  "imageUrl": {"S": "https://post-tenebras-lire.net/assets/posts/2015-01-15-japon-365-us-et-coutumes.jpg"}
}
ITEM
}

resource "aws_dynamodb_table_item" "maus-intégrale" {
  table_name = "${aws_dynamodb_table.feed-table.name}"
  hash_key   = "${aws_dynamodb_table.feed-table.hash_key}"
  item = <<ITEM
{
  "Id": {"S": "https://post-tenebras-lire.net/maus-integrale"},
  "title": {"S": "Maus : Intégrale"},
  "writer": {"S": "Spiegelman, Art"},

  "tags": {"S": "#BD #Histoire"},
  "link": {"S": "https://post-tenebras-lire.net/maus-integrale/"},

  "imageUrl": {"S": "https://post-tenebras-lire.net/assets/posts/2015-01-13-maus-integrale.jpg"}
}
ITEM
}

resource "aws_dynamodb_table_item" "le-tumulte-des-flots" {
  table_name = "${aws_dynamodb_table.feed-table.name}"
  hash_key   = "${aws_dynamodb_table.feed-table.hash_key}"
  item = <<ITEM
{
  "Id": {"S": "https://post-tenebras-lire.net/le-tumulte-des-flots-de-yukio-mishima"},
  "title": {"S": "Le tumulte des flots"},
  "writer": {"S": "Mishima, Yukio"},

  "tags": {"S": "#Japon"},
  "link": {"S": "https://post-tenebras-lire.net/le-tumulte-des-flots-de-yukio-mishima/"},

  "imageUrl": {"S": "https://post-tenebras-lire.net/assets/posts/2015-01-09-le-tumulte-des-flots-de-yukio-mishima.jpg"}
}
ITEM
}

resource "aws_dynamodb_table_item" "l-entité-0247" {
  table_name = "${aws_dynamodb_table.feed-table.name}"
  hash_key   = "${aws_dynamodb_table.feed-table.hash_key}"
  item = <<ITEM
{
  "Id": {"S": "https://post-tenebras-lire.net/lentite-0247-de-patrick-lee"},
  "title": {"S": "L’entité 0247"},
  "writer": {"S": "Lee, Patrick"},

  "tags": {"S": "#Science-Fiction"},
  "link": {"S": "https://post-tenebras-lire.net/lentite-0247-de-patrick-lee/"},

  "imageUrl": {"S": "https://post-tenebras-lire.net/assets/posts/2015-01-09-lentite-0247-de-patrick-lee.jpg"}
}
ITEM
}

resource "aws_dynamodb_table_item" "conseils-photo-pour-les-voyageurs" {
  table_name = "${aws_dynamodb_table.feed-table.name}"
  hash_key   = "${aws_dynamodb_table.feed-table.hash_key}"
  item = <<ITEM
{
  "Id": {"S": "https://post-tenebras-lire.net/conseils-photo-pour-les-voyageurs"},
  "title": {"S": "Conseils photo pour les voyageurs"},
  "writer": {"S": "Amiot, Aurélie"},

  "tags": {"S": "#Voyage #Photographie"},
  "link": {"S": "https://post-tenebras-lire.net/conseils-photo-pour-les-voyageurs/"},

  "imageUrl": {"S": "https://post-tenebras-lire.net/assets/posts/2015-01-06-conseils-photo-pour-les-voyageurs.jpg"}
}
ITEM
}

resource "aws_dynamodb_table_item" "les-annales-du-disque-monde-tome-13-les-petits-dieux" {
  table_name = "${aws_dynamodb_table.feed-table.name}"
  hash_key   = "${aws_dynamodb_table.feed-table.hash_key}"
  item = <<ITEM
{
  "Id": {"S": "https://post-tenebras-lire.net/les-annales-du-disque-monde-tome-13-les"},
  "title": {"S": "Les Annales du Disque-Monde, Tome 13 : Les Petits dieux"},
  "writer": {"S": "Pratchett, Terry"},

  "tags": {"S": "#Fantasy #Humour"},
  "link": {"S": "https://post-tenebras-lire.net/les-annales-du-disque-monde-tome-13-les/"},

  "imageUrl": {"S": "https://post-tenebras-lire.net/assets/posts/2015-01-05-les-annales-du-disque-monde-tome-13-les.jpg"}
}
ITEM
}

resource "aws_dynamodb_table_item" "ératosthène" {
  table_name = "${aws_dynamodb_table.feed-table.name}"
  hash_key   = "${aws_dynamodb_table.feed-table.hash_key}"
  item = <<ITEM
{
  "Id": {"S": "https://post-tenebras-lire.net/eratosthene-de-thierry-crouzet"},
  "title": {"S": "Ératosthène"},
  "writer": {"S": "Crouzet, Thierry"},

  "tags": {"S": "#Histoire #Biographie #Science"},
  "link": {"S": "https://post-tenebras-lire.net/eratosthene-de-thierry-crouzet/"},

  "imageUrl": {"S": "https://post-tenebras-lire.net/assets/posts/2014-12-11-eratosthene-de-thierry-crouzet.jpg"}
}
ITEM
}

resource "aws_dynamodb_table_item" "i-am-a-hero" {
  table_name = "${aws_dynamodb_table.feed-table.name}"
  hash_key   = "${aws_dynamodb_table.feed-table.hash_key}"
  item = <<ITEM
{
  "Id": {"S": "https://post-tenebras-lire.net/manga-i-am-hero-zombies-au-pays-du"},
  "title": {"S": "I am a hero"},
  "writer": {"S": "Hanazawa, Kengo"},

  "tags": {"S": "#Manga #Post-apocalyptique #Japon"},
  "link": {"S": "https://post-tenebras-lire.net/manga-i-am-hero-zombies-au-pays-du/"},

  "imageUrl": {"S": "https://post-tenebras-lire.net/assets/posts/2014-12-02-manga-i-am-hero-zombies-au-pays-du.jpg"}
}
ITEM
}

resource "aws_dynamodb_table_item" "le-diable-chuchotait" {
  table_name = "${aws_dynamodb_table.feed-table.name}"
  hash_key   = "${aws_dynamodb_table.feed-table.hash_key}"
  item = <<ITEM
{
  "Id": {"S": "https://post-tenebras-lire.net/polar-japonais-le-diable-chuchotait-de"},
  "title": {"S": "Le diable chuchotait"},
  "writer": {"S": "Miyabe, Miyuki"},

  "tags": {"S": "#Japon #Polar"},
  "link": {"S": "https://post-tenebras-lire.net/polar-japonais-le-diable-chuchotait-de/"},

  "imageUrl": {"S": "https://post-tenebras-lire.net/assets/posts/2014-11-19-polar-japonais-le-diable-chuchotait-de.jpg"}
}
ITEM
}

resource "aws_dynamodb_table_item" "twelve" {
  table_name = "${aws_dynamodb_table.feed-table.name}"
  hash_key   = "${aws_dynamodb_table.feed-table.hash_key}"
  item = <<ITEM
{
  "Id": {"S": "https://post-tenebras-lire.net/twelve-de-michael-roch"},
  "title": {"S": "Twelve"},
  "writer": {"S": "Roch, Michael"},

  "tags": {"S": "#Pulp"},
  "link": {"S": "https://post-tenebras-lire.net/twelve-de-michael-roch/"},

  "imageUrl": {"S": "https://post-tenebras-lire.net/assets/posts/2014-11-08-twelve-de-michael-roch.jpg"}
}
ITEM
}

resource "aws_dynamodb_table_item" "mon-nom-est-rouge" {
  table_name = "${aws_dynamodb_table.feed-table.name}"
  hash_key   = "${aws_dynamodb_table.feed-table.hash_key}"
  item = <<ITEM
{
  "Id": {"S": "https://post-tenebras-lire.net/mon-nom-est-rouge-orhan-pamuk_5"},
  "title": {"S": "Mon nom est rouge"},
  "writer": {"S": "Pamuk, Orhan"},

  "tags": {"S": "#Abandonné"},
  "link": {"S": "https://post-tenebras-lire.net/mon-nom-est-rouge-orhan-pamuk_5/"},

  "imageUrl": {"S": "https://post-tenebras-lire.net/assets/posts/2014-11-05-mon-nom-est-rouge-orhan-pamuk_5.jpg"}
}
ITEM
}

resource "aws_dynamodb_table_item" "le-fils-de-la-maîtresse-de-pétain" {
  table_name = "${aws_dynamodb_table.feed-table.name}"
  hash_key   = "${aws_dynamodb_table.feed-table.hash_key}"
  item = <<ITEM
{
  "Id": {"S": "https://post-tenebras-lire.net/le-fils-de-la-maitresse-de-petain-de"},
  "title": {"S": "Le fils de la maîtresse de Pétain"},
  "writer": {"S": "Torchet, Hervé"},

  "tags": {"S": "#Histoire"},
  "link": {"S": "https://post-tenebras-lire.net/le-fils-de-la-maitresse-de-petain-de/"},

  "imageUrl": {"S": "https://post-tenebras-lire.net/assets/posts/2014-10-28-le-fils-de-la-maitresse-de-petain-de.png"}
}
ITEM
}

resource "aws_dynamodb_table_item" "les-japonais-日本人" {
  table_name = "${aws_dynamodb_table.feed-table.name}"
  hash_key   = "${aws_dynamodb_table.feed-table.hash_key}"
  item = <<ITEM
{
  "Id": {"S": "https://post-tenebras-lire.net/les-japonais-de-karyn-poupee"},
  "title": {"S": "Les Japonais 日本人"},
  "writer": {"S": "Poupée, Karyn"},

  "tags": {"S": "#Japon #Société"},
  "link": {"S": "https://post-tenebras-lire.net/les-japonais-de-karyn-poupee/"},

  "imageUrl": {"S": "https://post-tenebras-lire.net/assets/posts/2014-10-19-les-japonais-de-karyn-poupee.gif"}
}
ITEM
}

resource "aws_dynamodb_table_item" "les-annales-du-disque-monde-tome-12-mécomptes-de-fées" {
  table_name = "${aws_dynamodb_table.feed-table.name}"
  hash_key   = "${aws_dynamodb_table.feed-table.hash_key}"
  item = <<ITEM
{
  "Id": {"S": "https://post-tenebras-lire.net/les-annales-du-disque-monde-tome-12"},
  "title": {"S": "Les Annales du Disque-Monde, Tome 12 : Mécomptes de fées"},
  "writer": {"S": "Pratchett, Terry"},

  "tags": {"S": "#Fantasy #Humour"},
  "link": {"S": "https://post-tenebras-lire.net/les-annales-du-disque-monde-tome-12/"},

  "imageUrl": {"S": "https://post-tenebras-lire.net/assets/posts/2014-09-25-les-annales-du-disque-monde-tome-12.jpg"}
}
ITEM
}

resource "aws_dynamodb_table_item" "gen-d-hiroshima-tome-4" {
  table_name = "${aws_dynamodb_table.feed-table.name}"
  hash_key   = "${aws_dynamodb_table.feed-table.hash_key}"
  item = <<ITEM
{
  "Id": {"S": "https://post-tenebras-lire.net/gen-dhiroshima-tome-4-keiji-nakazawa"},
  "title": {"S": "Gen d’Hiroshima, tome 4"},
  "writer": {"S": "Nakazawa, Keiji"},

  "tags": {"S": "#Manga #Japon"},
  "link": {"S": "https://post-tenebras-lire.net/gen-dhiroshima-tome-4-keiji-nakazawa/"},

  "imageUrl": {"S": "https://post-tenebras-lire.net/assets/posts/2014-09-22-gen-dhiroshima-tome-4-keiji-nakazawa.jpg"}
}
ITEM
}

resource "aws_dynamodb_table_item" "histoire-du-japon-des-origines-à-meiji-que-sais-je" {
  table_name = "${aws_dynamodb_table.feed-table.name}"
  hash_key   = "${aws_dynamodb_table.feed-table.hash_key}"
  item = <<ITEM
{
  "Id": {"S": "https://post-tenebras-lire.net/histoire-du-japon-des-origines-meiji"},
  "title": {"S": "Histoire du Japon , des origines à Meiji - Que sais-je ?"},
  "writer": {"S": "Vié, Michel"},

  "tags": {"S": "#Japon #Histoire"},
  "link": {"S": "https://post-tenebras-lire.net/histoire-du-japon-des-origines-meiji/"},

  "imageUrl": {"S": "https://post-tenebras-lire.net/assets/posts/2014-09-18-histoire-du-japon-des-origines-meiji.gif"}
}
ITEM
}

resource "aws_dynamodb_table_item" "moi-peter-pan-livre-i" {
  table_name = "${aws_dynamodb_table.feed-table.name}"
  hash_key   = "${aws_dynamodb_table.feed-table.hash_key}"
  item = <<ITEM
{
  "Id": {"S": "https://post-tenebras-lire.net/moi-peter-pan-livre-i-de-michael-roch"},
  "title": {"S": "Moi Peter Pan Livre I"},
  "writer": {"S": "Roch, Michael"},

  "tags": {"S": "#Fantastique"},
  "link": {"S": "https://post-tenebras-lire.net/moi-peter-pan-livre-i-de-michael-roch/"},

  "imageUrl": {"S": "https://post-tenebras-lire.net/assets/posts/2014-09-18-moi-peter-pan-livre-i-de-michael-roch.jpg"}
}
ITEM
}

resource "aws_dynamodb_table_item" "un-soupçon-d-éternité" {
  table_name = "${aws_dynamodb_table.feed-table.name}"
  hash_key   = "${aws_dynamodb_table.feed-table.hash_key}"
  item = <<ITEM
{
  "Id": {"S": "https://post-tenebras-lire.net/un-soupcon-deternite-de-freddy-woets"},
  "title": {"S": "Un soupçon d’éternité"},
  "writer": {"S": "Woets, Freddy"},

  "tags": {"S": "#Fantastique"},
  "link": {"S": "https://post-tenebras-lire.net/un-soupcon-deternite-de-freddy-woets/"},

  "imageUrl": {"S": "https://post-tenebras-lire.net/assets/posts/2014-09-13-un-soupcon-deternite-de-freddy-woets.jpg"}
}
ITEM
}

resource "aws_dynamodb_table_item" "la-compagnie" {
  table_name = "${aws_dynamodb_table.feed-table.name}"
  hash_key   = "${aws_dynamodb_table.feed-table.hash_key}"
  item = <<ITEM
{
  "Id": {"S": "https://post-tenebras-lire.net/la-compagnie-robert-littell"},
  "title": {"S": "La Compagnie"},
  "writer": {"S": "Littell, Robert"},

  "tags": {"S": "#Espionnage #Polar"},
  "link": {"S": "https://post-tenebras-lire.net/la-compagnie-robert-littell/"},

  "imageUrl": {"S": "https://post-tenebras-lire.net/assets/posts/2014-09-11-la-compagnie-robert-littell.jpg"}
}
ITEM
}

resource "aws_dynamodb_table_item" "kokekokko-16-vues-du-japon-à-découvrir" {
  table_name = "${aws_dynamodb_table.feed-table.name}"
  hash_key   = "${aws_dynamodb_table.feed-table.hash_key}"
  item = <<ITEM
{
  "Id": {"S": "https://post-tenebras-lire.net/kokekokko-16-vues-du-japon-decouvrir"},
  "title": {"S": "Kokekokko - 16 vues du Japon à découvrir"},
  "writer": {"S": "Issekinicho"},

  "tags": {"S": "#Japon #Beau livre"},
  "link": {"S": "https://post-tenebras-lire.net/kokekokko-16-vues-du-japon-decouvrir/"},

  "imageUrl": {"S": "https://post-tenebras-lire.net/assets/posts/2014-09-06-kokekokko-16-vues-du-japon-decouvrir.jpg"}
}
ITEM
}

resource "aws_dynamodb_table_item" "vivant" {
  table_name = "${aws_dynamodb_table.feed-table.name}"
  hash_key   = "${aws_dynamodb_table.feed-table.hash_key}"
  item = <<ITEM
{
  "Id": {"S": "https://post-tenebras-lire.net/histoire-damour-de-zombies-vivant-isaac"},
  "title": {"S": "Vivant"},
  "writer": {"S": "Isaac, Marion"},

  "tags": {"S": "#Post-apocalyptique"},
  "link": {"S": "https://post-tenebras-lire.net/histoire-damour-de-zombies-vivant-isaac/"},

  "imageUrl": {"S": "https://post-tenebras-lire.net/assets/posts/2014-08-15-histoire-damour-de-zombies-vivant-isaac.jpg"}
}
ITEM
}

resource "aws_dynamodb_table_item" "heureux-les-élus" {
  table_name = "${aws_dynamodb_table.feed-table.name}"
  hash_key   = "${aws_dynamodb_table.feed-table.hash_key}"
  item = <<ITEM
{
  "Id": {"S": "https://post-tenebras-lire.net/polar-heureux-les-elus-de-jean-baptiste"},
  "title": {"S": "Heureux les élus !"},
  "writer": {"S": "Ferrero, Jean-Baptiste"},

  "tags": {"S": "#Polar"},
  "link": {"S": "https://post-tenebras-lire.net/polar-heureux-les-elus-de-jean-baptiste/"},

  "imageUrl": {"S": "https://post-tenebras-lire.net/assets/posts/2014-08-12-polar-heureux-les-elus-de-jean-baptiste.jpg"}
}
ITEM
}

resource "aws_dynamodb_table_item" "confiteor" {
  table_name = "${aws_dynamodb_table.feed-table.name}"
  hash_key   = "${aws_dynamodb_table.feed-table.hash_key}"
  item = <<ITEM
{
  "Id": {"S": "https://post-tenebras-lire.net/oeuvre-grandiose-confiteor-de-jaum-cabre"},
  "title": {"S": "Confiteor"},
  "writer": {"S": "Cabré, Jaum"},

  "tags": {"S": "#Espagne"},
  "link": {"S": "https://post-tenebras-lire.net/oeuvre-grandiose-confiteor-de-jaum-cabre/"},

  "imageUrl": {"S": "https://post-tenebras-lire.net/assets/posts/2014-08-11-oeuvre-grandiose-confiteor-de-jaum-cabre.jpg"}
}
ITEM
}

resource "aws_dynamodb_table_item" "spores" {
  table_name = "${aws_dynamodb_table.feed-table.name}"
  hash_key   = "${aws_dynamodb_table.feed-table.hash_key}"
  item = <<ITEM
{
  "Id": {"S": "https://post-tenebras-lire.net/nouvelle-post-apocalyptique-spores"},
  "title": {"S": "Spores !"},
  "writer": {"S": "Saraja, Olivier"},

  "tags": {"S": "#Post-apocalyptique #Nouvelle"},
  "link": {"S": "https://post-tenebras-lire.net/nouvelle-post-apocalyptique-spores/"},

  "imageUrl": {"S": "https://post-tenebras-lire.net/assets/posts/2014-07-23-nouvelle-post-apocalyptique-spores.jpg"}
}
ITEM
}

resource "aws_dynamodb_table_item" "on-les-croise-parfois" {
  table_name = "${aws_dynamodb_table.feed-table.name}"
  hash_key   = "${aws_dynamodb_table.feed-table.hash_key}"
  item = <<ITEM
{
  "Id": {"S": "https://post-tenebras-lire.net/roman-despionnage-on-les-croise-parfois"},
  "title": {"S": "On les croise parfois"},
  "writer": {"S": "Citharel, Cédric"},

  "tags": {"S": "#Espionnage"},
  "link": {"S": "https://post-tenebras-lire.net/roman-despionnage-on-les-croise-parfois/"},

  "imageUrl": {"S": "https://post-tenebras-lire.net/assets/posts/2014-07-22-roman-despionnage-on-les-croise-parfois.jpg"}
}
ITEM
}

resource "aws_dynamodb_table_item" "la-submersion-du-japon" {
  table_name = "${aws_dynamodb_table.feed-table.name}"
  hash_key   = "${aws_dynamodb_table.feed-table.hash_key}"
  item = <<ITEM
{
  "Id": {"S": "https://post-tenebras-lire.net/roman-catastrophe-la-submersion-du"},
  "title": {"S": "La submersion du Japon"},
  "writer": {"S": "Komatsu, Sakyo"},

  "tags": {"S": "#Japon"},
  "link": {"S": "https://post-tenebras-lire.net/roman-catastrophe-la-submersion-du/"},

  "imageUrl": {"S": "https://post-tenebras-lire.net/assets/posts/2014-07-18-roman-catastrophe-la-submersion-du.jpg"}
}
ITEM
}

resource "aws_dynamodb_table_item" "mitania" {
  table_name = "${aws_dynamodb_table.feed-table.name}"
  hash_key   = "${aws_dynamodb_table.feed-table.hash_key}"
  item = <<ITEM
{
  "Id": {"S": "https://post-tenebras-lire.net/ebook-sf-mitania-de-bernard-afflatet"},
  "title": {"S": "Mitania"},
  "writer": {"S": "Afflatet, Bernard"},

  "tags": {"S": "#Post-apocalyptique #Science-Fiction"},
  "link": {"S": "https://post-tenebras-lire.net/ebook-sf-mitania-de-bernard-afflatet/"},

  "imageUrl": {"S": "https://post-tenebras-lire.net/assets/posts/2014-07-16-ebook-sf-mitania-de-bernard-afflatet.jpg"}
}
ITEM
}

resource "aws_dynamodb_table_item" "l-usage-des-armes" {
  table_name = "${aws_dynamodb_table.feed-table.name}"
  hash_key   = "${aws_dynamodb_table.feed-table.hash_key}"
  item = <<ITEM
{
  "Id": {"S": "https://post-tenebras-lire.net/roman-sf-lusage-des-armes-de-iain-m"},
  "title": {"S": "L’usage des Armes"},
  "writer": {"S": "Banks, Iain M."},

  "tags": {"S": "#Science-Fiction"},
  "link": {"S": "https://post-tenebras-lire.net/roman-sf-lusage-des-armes-de-iain-m/"},

  "imageUrl": {"S": "https://post-tenebras-lire.net/assets/posts/2014-07-15-roman-sf-lusage-des-armes-de-iain-m.jpg"}
}
ITEM
}

resource "aws_dynamodb_table_item" "sea-secte-and-sun-harcèlement-et-voleurs" {
  table_name = "${aws_dynamodb_table.feed-table.name}"
  hash_key   = "${aws_dynamodb_table.feed-table.hash_key}"
  item = <<ITEM
{
  "Id": {"S": "https://post-tenebras-lire.net/polar-sea-secte-and-sun-suivi-de"},
  "title": {"S": "‘Sea, secte and sun’, ‘Harcèlement’ et ‘Voleurs !’"},
  "writer": {"S": "Ferrero, Jean-Baptiste"},

  "tags": {"S": "#Polar"},
  "link": {"S": "https://post-tenebras-lire.net/polar-sea-secte-and-sun-suivi-de/"},

  "imageUrl": {"S": "https://post-tenebras-lire.net/assets/posts/2014-06-20-polar-sea-secte-and-sun-suivi-de.jpg"}
}
ITEM
}

resource "aws_dynamodb_table_item" "le-roi-des-aulnes" {
  table_name = "${aws_dynamodb_table.feed-table.name}"
  hash_key   = "${aws_dynamodb_table.feed-table.hash_key}"
  item = <<ITEM
{
  "Id": {"S": "https://post-tenebras-lire.net/roman-le-roi-des-aulnes-de-michel"},
  "title": {"S": "Le Roi des Aulnes"},
  "writer": {"S": "Tournier, Michel"},

  "tags": {"S": "#Littérature"},
  "link": {"S": "https://post-tenebras-lire.net/roman-le-roi-des-aulnes-de-michel/"},

  "imageUrl": {"S": "https://post-tenebras-lire.net/assets/posts/2014-06-19-roman-le-roi-des-aulnes-de-michel.jpg"}
}
ITEM
}

resource "aws_dynamodb_table_item" "le-massacre-de-nankin-1937-le-crime-contre-l-humanité-de-l-armée-japonaise" {
  table_name = "${aws_dynamodb_table.feed-table.name}"
  hash_key   = "${aws_dynamodb_table.feed-table.hash_key}"
  item = <<ITEM
{
  "Id": {"S": "https://post-tenebras-lire.net/le-massacre-de-nankin-1937-le-crime"},
  "title": {"S": "Le massacre de Nankin : 1937, le crime contre l’humanité de l’armée japonaise"},
  "writer": {"S": "Prazan, Michaël"},

  "tags": {"S": "#Japon #Chine #Histoire"},
  "link": {"S": "https://post-tenebras-lire.net/le-massacre-de-nankin-1937-le-crime/"},

  "imageUrl": {"S": "https://post-tenebras-lire.net/assets/posts/2014-06-13-le-massacre-de-nankin-1937-le-crime.jpg"}
}
ITEM
}

resource "aws_dynamodb_table_item" "toxic-saison-1" {
  table_name = "${aws_dynamodb_table.feed-table.name}"
  hash_key   = "${aws_dynamodb_table.feed-table.hash_key}"
  item = <<ITEM
{
  "Id": {"S": "https://post-tenebras-lire.net/toxic-stephane-desienne"},
  "title": {"S": "Toxic Saison 1"},
  "writer": {"S": "Desienne, Stéphane"},

  "tags": {"S": "#Post-apocalyptique #Série #Science-Fiction"},
  "link": {"S": "https://post-tenebras-lire.net/toxic-stephane-desienne/"},

  "imageUrl": {"S": "https://post-tenebras-lire.net/assets/posts/2014-06-11-toxic-stephane-desienne.jpg"}
}
ITEM
}

resource "aws_dynamodb_table_item" "l-homme-des-jeux" {
  table_name = "${aws_dynamodb_table.feed-table.name}"
  hash_key   = "${aws_dynamodb_table.feed-table.hash_key}"
  item = <<ITEM
{
  "Id": {"S": "https://post-tenebras-lire.net/roman-sf-lhomme-des-jeux-iain-m-banks"},
  "title": {"S": "L’homme des jeux"},
  "writer": {"S": "Banks, Iain M."},

  "tags": {"S": "#Science-Fiction"},
  "link": {"S": "https://post-tenebras-lire.net/roman-sf-lhomme-des-jeux-iain-m-banks/"},

  "imageUrl": {"S": "https://post-tenebras-lire.net/assets/posts/2014-06-02-roman-sf-lhomme-des-jeux-iain-m-banks.jpg"}
}
ITEM
}

resource "aws_dynamodb_table_item" "que-sais-je-histoire-de-genève" {
  table_name = "${aws_dynamodb_table.feed-table.name}"
  hash_key   = "${aws_dynamodb_table.feed-table.hash_key}"
  item = <<ITEM
{
  "Id": {"S": "https://post-tenebras-lire.net/que-sais-jehistoire-de-geneve-puf"},
  "title": {"S": "Que sais-je : Histoire de Genève"},
  "writer": {"S": "Dufour, Alfred"},

  "tags": {"S": "#Histoire #Suisse"},
  "link": {"S": "https://post-tenebras-lire.net/que-sais-jehistoire-de-geneve-puf/"},

  "imageUrl": {"S": "https://post-tenebras-lire.net/assets/posts/2014-05-27-que-sais-jehistoire-de-geneve-puf.jpg"}
}
ITEM
}

resource "aws_dynamodb_table_item" "traque-d-un-homme-à-l-autre" {
  table_name = "${aws_dynamodb_table.feed-table.name}"
  hash_key   = "${aws_dynamodb_table.feed-table.hash_key}"
  item = <<ITEM
{
  "Id": {"S": "https://post-tenebras-lire.net/roman-post-apocalyptique-dun-homme"},
  "title": {"S": "Traque, d’un homme à l’autre"},
  "writer": {"S": "Moulay, Sophie"},

  "tags": {"S": "#Post-apocalyptique"},
  "link": {"S": "https://post-tenebras-lire.net/roman-post-apocalyptique-dun-homme/"},

  "imageUrl": {"S": "https://post-tenebras-lire.net/assets/posts/2014-05-25-roman-post-apocalyptique-dun-homme.jpg"}
}
ITEM
}

resource "aws_dynamodb_table_item" "r-u-n" {
  table_name = "${aws_dynamodb_table.feed-table.name}"
  hash_key   = "${aws_dynamodb_table.feed-table.hash_key}"
  item = <<ITEM
{
  "Id": {"S": "https://post-tenebras-lire.net/lecture-run-alexandre-jarry"},
  "title": {"S": "[R.U.N]"},
  "writer": {"S": "Jarry, Alexandre"},

  "tags": {"S": "#Science-Fiction #Polar"},
  "link": {"S": "https://post-tenebras-lire.net/lecture-run-alexandre-jarry/"},

  "imageUrl": {"S": "https://post-tenebras-lire.net/assets/posts/2014-05-23-lecture-run-alexandre-jarry.jpg"}
}
ITEM
}

resource "aws_dynamodb_table_item" "le-gourmet-solitaire" {
  table_name = "${aws_dynamodb_table.feed-table.name}"
  hash_key   = "${aws_dynamodb_table.feed-table.hash_key}"
  item = <<ITEM
{
  "Id": {"S": "https://post-tenebras-lire.net/un-manga-succulent-le-gourmet-solitaire"},
  "title": {"S": "Le gourmet solitaire"},
  "writer": {"S": "Taniguchi, Jirô"},

  "tags": {"S": "#Manga #Japon"},
  "link": {"S": "https://post-tenebras-lire.net/un-manga-succulent-le-gourmet-solitaire/"},

  "imageUrl": {"S": "https://post-tenebras-lire.net/assets/posts/2014-05-21-un-manga-succulent-le-gourmet-solitaire.jpg"}
}
ITEM
}

resource "aws_dynamodb_table_item" "plasma" {
  table_name = "${aws_dynamodb_table.feed-table.name}"
  hash_key   = "${aws_dynamodb_table.feed-table.hash_key}"
  item = <<ITEM
{
  "Id": {"S": "https://post-tenebras-lire.net/lecture-sf-plasma-de-walter-jon-williams"},
  "title": {"S": "Plasma"},
  "writer": {"S": "Williams, Walter Jon"},

  "tags": {"S": "#Science-Fiction"},
  "link": {"S": "https://post-tenebras-lire.net/lecture-sf-plasma-de-walter-jon-williams/"},

  "imageUrl": {"S": "https://post-tenebras-lire.net/assets/posts/2014-05-17-lecture-sf-plasma-de-walter-jon-williams.jpg"}
}
ITEM
}

resource "aws_dynamodb_table_item" "substance-mort" {
  table_name = "${aws_dynamodb_table.feed-table.name}"
  hash_key   = "${aws_dynamodb_table.feed-table.hash_key}"
  item = <<ITEM
{
  "Id": {"S": "https://post-tenebras-lire.net/roman-sf-substance-mort-philip-k-dick"},
  "title": {"S": "Substance mort"},
  "writer": {"S": "Dick, Philip K."},

  "tags": {"S": "#Science-Fiction #Abandonné"},
  "link": {"S": "https://post-tenebras-lire.net/roman-sf-substance-mort-philip-k-dick/"},

  "imageUrl": {"S": "https://post-tenebras-lire.net/assets/posts/2014-05-10-roman-sf-substance-mort-philip-k-dick.jpg"}
}
ITEM
}

resource "aws_dynamodb_table_item" "pays-de-neige" {
  table_name = "${aws_dynamodb_table.feed-table.name}"
  hash_key   = "${aws_dynamodb_table.feed-table.hash_key}"
  item = <<ITEM
{
  "Id": {"S": "https://post-tenebras-lire.net/pays-de-neige-de-yasunari-kawabata"},
  "title": {"S": "Pays de neige"},
  "writer": {"S": "Kawabata, Yasunari"},

  "tags": {"S": "#Japon"},
  "link": {"S": "https://post-tenebras-lire.net/pays-de-neige-de-yasunari-kawabata/"},

  "imageUrl": {"S": "https://post-tenebras-lire.net/assets/posts/2014-05-07-pays-de-neige-de-yasunari-kawabata.jpg"}
}
ITEM
}

resource "aws_dynamodb_table_item" "le-dévouement-du-suspect-x" {
  table_name = "${aws_dynamodb_table.feed-table.name}"
  hash_key   = "${aws_dynamodb_table.feed-table.hash_key}"
  item = <<ITEM
{
  "Id": {"S": "https://post-tenebras-lire.net/un-bon-polar-japonais-le-devouement-du"},
  "title": {"S": "Le Dévouement du suspect X"},
  "writer": {"S": "Higashino, Keigo"},

  "tags": {"S": "#Japon #Polar"},
  "link": {"S": "https://post-tenebras-lire.net/un-bon-polar-japonais-le-devouement-du/"},

  "imageUrl": {"S": "https://post-tenebras-lire.net/assets/posts/2014-04-29-un-bon-polar-japonais-le-devouement-du.jpg"}
}
ITEM
}

resource "aws_dynamodb_table_item" "jason-et-robur-saison-n-1" {
  table_name = "${aws_dynamodb_table.feed-table.name}"
  hash_key   = "${aws_dynamodb_table.feed-table.hash_key}"
  item = <<ITEM
{
  "Id": {"S": "https://post-tenebras-lire.net/lecture-sf-jason-et-robur-saison-n1"},
  "title": {"S": "Jason et Robur, Saison n°1"},
  "writer": {"S": "Fuentealba, Jacques"},

  "tags": {"S": "#Série #Science-Fiction"},
  "link": {"S": "https://post-tenebras-lire.net/lecture-sf-jason-et-robur-saison-n1/"},

  "imageUrl": {"S": "https://post-tenebras-lire.net/assets/posts/2014-04-22-lecture-sf-jason-et-robur-saison-n1.jpg"}
}
ITEM
}

resource "aws_dynamodb_table_item" "gen-d-hiroshima-tome-3" {
  table_name = "${aws_dynamodb_table.feed-table.name}"
  hash_key   = "${aws_dynamodb_table.feed-table.hash_key}"
  item = <<ITEM
{
  "Id": {"S": "https://post-tenebras-lire.net/un-manga-temoignage-gen-dhiroshima-tome"},
  "title": {"S": "Gen d’Hiroshima Tome 3"},
  "writer": {"S": "Nakazawa, Keiji"},

  "tags": {"S": "#Manga #Japon"},
  "link": {"S": "https://post-tenebras-lire.net/un-manga-temoignage-gen-dhiroshima-tome/"},

  "imageUrl": {"S": "https://post-tenebras-lire.net/assets/posts/2014-04-22-un-manga-temoignage-gen-dhiroshima-tome.jpg"}
}
ITEM
}

resource "aws_dynamodb_table_item" "la-maison-où-je-suis-mort-autrefois" {
  table_name = "${aws_dynamodb_table.feed-table.name}"
  hash_key   = "${aws_dynamodb_table.feed-table.hash_key}"
  item = <<ITEM
{
  "Id": {"S": "https://post-tenebras-lire.net/la-maison-ou-je-suis-mort-autrefois"},
  "title": {"S": "La maison où je suis mort autrefois"},
  "writer": {"S": "Higashino, Keigo"},

  "tags": {"S": "#Japon #Polar"},
  "link": {"S": "https://post-tenebras-lire.net/la-maison-ou-je-suis-mort-autrefois/"},

  "imageUrl": {"S": "https://post-tenebras-lire.net/assets/posts/2014-03-28-la-maison-ou-je-suis-mort-autrefois.jpg"}
}
ITEM
}

resource "aws_dynamodb_table_item" "l-indélicatesse-du-cosmos" {
  table_name = "${aws_dynamodb_table.feed-table.name}"
  hash_key   = "${aws_dynamodb_table.feed-table.hash_key}"
  item = <<ITEM
{
  "Id": {"S": "https://post-tenebras-lire.net/lindelicatesse-du-cosmos-eric-lequien"},
  "title": {"S": "L’indélicatesse du Cosmos"},
  "writer": {"S": "Esposti, Eric Lequien"},

  "tags": {"S": "#Abandonné #Science-Fiction"},
  "link": {"S": "https://post-tenebras-lire.net/lindelicatesse-du-cosmos-eric-lequien/"},

  "imageUrl": {"S": "https://post-tenebras-lire.net/assets/posts/2014-03-25-lindelicatesse-du-cosmos-eric-lequien.jpg"}
}
ITEM
}

resource "aws_dynamodb_table_item" "les-annales-du-disque-monde-tome-11-le-faucheur" {
  table_name = "${aws_dynamodb_table.feed-table.name}"
  hash_key   = "${aws_dynamodb_table.feed-table.hash_key}"
  item = <<ITEM
{
  "Id": {"S": "https://post-tenebras-lire.net/lecture-les-annales-du-disque-monde"},
  "title": {"S": "Les Annales du Disque-Monde, Tome 11: Le Faucheur"},
  "writer": {"S": "Pratchett, Terry"},

  "tags": {"S": "#Fantasy"},
  "link": {"S": "https://post-tenebras-lire.net/lecture-les-annales-du-disque-monde/"},

  "imageUrl": {"S": "https://post-tenebras-lire.net/assets/posts/2014-03-21-lecture-les-annales-du-disque-monde.jpg"}
}
ITEM
}

resource "aws_dynamodb_table_item" "la-prophétie-de-l-abeille" {
  table_name = "${aws_dynamodb_table.feed-table.name}"
  hash_key   = "${aws_dynamodb_table.feed-table.hash_key}"
  item = <<ITEM
{
  "Id": {"S": "https://post-tenebras-lire.net/la-prophetie-de-labeille-keigo"},
  "title": {"S": "La Prophétie de l’abeille"},
  "writer": {"S": "Higashino, Keigo"},

  "tags": {"S": "#Japon #Polar"},
  "link": {"S": "https://post-tenebras-lire.net/la-prophetie-de-labeille-keigo/"},

  "imageUrl": {"S": "https://post-tenebras-lire.net/assets/posts/2014-03-15-la-prophetie-de-labeille-keigo.jpg"}
}
ITEM
}

resource "aws_dynamodb_table_item" "spin-tome-3-vortex" {
  table_name = "${aws_dynamodb_table.feed-table.name}"
  hash_key   = "${aws_dynamodb_table.feed-table.hash_key}"
  item = <<ITEM
{
  "Id": {"S": "https://post-tenebras-lire.net/roman-sf-spin-tome-3-vortex-de-robert"},
  "title": {"S": "Spin, Tome 3 : Vortex"},
  "writer": {"S": "Wilson, Robert-Charles"},

  "tags": {"S": "#Science-Fiction"},
  "link": {"S": "https://post-tenebras-lire.net/roman-sf-spin-tome-3-vortex-de-robert/"},

  "imageUrl": {"S": "https://post-tenebras-lire.net/assets/posts/2014-03-09-roman-sf-spin-tome-3-vortex-de-robert.jpg"}
}
ITEM
}

resource "aws_dynamodb_table_item" "petites-expériences-scientifiques-potentiellement-catastrophiques" {
  table_name = "${aws_dynamodb_table.feed-table.name}"
  hash_key   = "${aws_dynamodb_table.feed-table.hash_key}"
  item = <<ITEM
{
  "Id": {"S": "https://post-tenebras-lire.net/lecture-petites-experiences"},
  "title": {"S": "Petites expériences scientifiques potentiellement catastrophiques !"},
  "writer": {"S": "Connolly, Sean"},

  "tags": {"S": "#Science"},
  "link": {"S": "https://post-tenebras-lire.net/lecture-petites-experiences/"},

  "imageUrl": {"S": "https://post-tenebras-lire.net/assets/posts/2014-03-05-lecture-petites-experiences.jpg"}
}
ITEM
}

resource "aws_dynamodb_table_item" "axis" {
  table_name = "${aws_dynamodb_table.feed-table.name}"
  hash_key   = "${aws_dynamodb_table.feed-table.hash_key}"
  item = <<ITEM
{
  "Id": {"S": "https://post-tenebras-lire.net/roman-sf-axis-robert-charles-wilson"},
  "title": {"S": "Axis"},
  "writer": {"S": "Wilson, Robert-Charles"},

  "tags": {"S": "#Science-Fiction"},
  "link": {"S": "https://post-tenebras-lire.net/roman-sf-axis-robert-charles-wilson/"},

  "imageUrl": {"S": "https://post-tenebras-lire.net/assets/posts/2014-03-04-roman-sf-axis-robert-charles-wilson.gif"}
}
ITEM
}

resource "aws_dynamodb_table_item" "rec-stop-and-play-de-charlotte-charpot" {
  table_name = "${aws_dynamodb_table.feed-table.name}"
  hash_key   = "${aws_dynamodb_table.feed-table.hash_key}"
  item = <<ITEM
{
  "Id": {"S": "https://post-tenebras-lire.net/rec-stop-and-play-de-charlotte-charpot"},
  "title": {"S": "Rec Stop And Play De Charlotte Charpot"},
  "writer": {"S": ""},

  "tags": {"S": "#"},
  "link": {"S": "https://post-tenebras-lire.net/rec-stop-and-play-de-charlotte-charpot/"},

  "imageUrl": {"S": "https://post-tenebras-lire.net/assets/posts/"}
}
ITEM
}

resource "aws_dynamodb_table_item" "la-petite-fille-qui-aimait-tom-gordon" {
  table_name = "${aws_dynamodb_table.feed-table.name}"
  hash_key   = "${aws_dynamodb_table.feed-table.hash_key}"
  item = <<ITEM
{
  "Id": {"S": "https://post-tenebras-lire.net/la-petite-fille-qui-aimait-tom-gordon"},
  "title": {"S": "La petite fille qui aimait Tom Gordon"},
  "writer": {"S": "King, Stephen"},

  "tags": {"S": "#Thriller"},
  "link": {"S": "https://post-tenebras-lire.net/la-petite-fille-qui-aimait-tom-gordon/"},

  "imageUrl": {"S": "https://post-tenebras-lire.net/assets/posts/2014-02-23-la-petite-fille-qui-aimait-tom-gordon.jpg"}
}
ITEM
}

resource "aws_dynamodb_table_item" "yokai" {
  table_name = "${aws_dynamodb_table.feed-table.name}"
  hash_key   = "${aws_dynamodb_table.feed-table.hash_key}"
  item = <<ITEM
{
  "Id": {"S": "https://post-tenebras-lire.net/yokai-de-neil-jomunsi-projetbradbury"},
  "title": {"S": "Yokai"},
  "writer": {"S": "Jomunsi, Neil"},

  "tags": {"S": "#Nouvelle"},
  "link": {"S": "https://post-tenebras-lire.net/yokai-de-neil-jomunsi-projetbradbury/"},

  "imageUrl": {"S": "https://post-tenebras-lire.net/assets/posts/2014-02-03-yokai-de-neil-jomunsi-projetbradbury.jpg"}
}
ITEM
}

resource "aws_dynamodb_table_item" "aqua" {
  table_name = "${aws_dynamodb_table.feed-table.name}"
  hash_key   = "${aws_dynamodb_table.feed-table.hash_key}"
  item = <<ITEM
{
  "Id": {"S": "https://post-tenebras-lire.net/aqua-jean-marc-ligny"},
  "title": {"S": "Aqua™"},
  "writer": {"S": "Ligny, Jean-Marc"},

  "tags": {"S": "#Post-apocalyptique"},
  "link": {"S": "https://post-tenebras-lire.net/aqua-jean-marc-ligny/"},

  "imageUrl": {"S": "https://post-tenebras-lire.net/assets/posts/2014-02-02-aqua-jean-marc-ligny.png"}
}
ITEM
}

resource "aws_dynamodb_table_item" "des-chrétiens-et-des-maures" {
  table_name = "${aws_dynamodb_table.feed-table.name}"
  hash_key   = "${aws_dynamodb_table.feed-table.hash_key}"
  item = <<ITEM
{
  "Id": {"S": "https://post-tenebras-lire.net/des-chretiens-et-des-maures-daniel"},
  "title": {"S": "Des chrétiens et des maures"},
  "writer": {"S": "Pennac, Daniel"},

  "tags": {"S": "#Humour"},
  "link": {"S": "https://post-tenebras-lire.net/des-chretiens-et-des-maures-daniel/"},

  "imageUrl": {"S": "https://post-tenebras-lire.net/assets/posts/2014-01-23-des-chretiens-et-des-maures-daniel.jpg"}
}
ITEM
}

resource "aws_dynamodb_table_item" "histoire-de-la-suisse-que-sais-je" {
  table_name = "${aws_dynamodb_table.feed-table.name}"
  hash_key   = "${aws_dynamodb_table.feed-table.hash_key}"
  item = <<ITEM
{
  "Id": {"S": "https://post-tenebras-lire.net/histoire-de-la-suisse-jean-jacques"},
  "title": {"S": "Histoire de la Suisse - Que sais-je ?"},
  "writer": {"S": "Bouquet, Jean-Jacques"},

  "tags": {"S": "#Histoire #Suisse"},
  "link": {"S": "https://post-tenebras-lire.net/histoire-de-la-suisse-jean-jacques/"},

  "imageUrl": {"S": "https://post-tenebras-lire.net/assets/posts/2014-01-18-histoire-de-la-suisse-jean-jacques.gif"}
}
ITEM
}

resource "aws_dynamodb_table_item" "simetierre" {
  table_name = "${aws_dynamodb_table.feed-table.name}"
  hash_key   = "${aws_dynamodb_table.feed-table.hash_key}"
  item = <<ITEM
{
  "Id": {"S": "https://post-tenebras-lire.net/simetierre-de-stephen-king"},
  "title": {"S": "Simetierre"},
  "writer": {"S": "King, Stephen"},

  "tags": {"S": "#Fantastique"},
  "link": {"S": "https://post-tenebras-lire.net/simetierre-de-stephen-king/"},

  "imageUrl": {"S": "https://post-tenebras-lire.net/assets/posts/2014-01-12-simetierre-de-stephen-king.jpg"}
}
ITEM
}

resource "aws_dynamodb_table_item" "chronique-d-une-mort-annoncée" {
  table_name = "${aws_dynamodb_table.feed-table.name}"
  hash_key   = "${aws_dynamodb_table.feed-table.hash_key}"
  item = <<ITEM
{
  "Id": {"S": "https://post-tenebras-lire.net/chronique-dune-mort-annoncee-gabriel"},
  "title": {"S": "Chronique d’une mort annoncée"},
  "writer": {"S": "Marquez, Gabriel Garcia"},

  "tags": {"S": "#Littérature"},
  "link": {"S": "https://post-tenebras-lire.net/chronique-dune-mort-annoncee-gabriel/"},

  "imageUrl": {"S": "https://post-tenebras-lire.net/assets/posts/2014-01-09-chronique-dune-mort-annoncee-gabriel.jpg"}
}
ITEM
}

resource "aws_dynamodb_table_item" "zakuro" {
  table_name = "${aws_dynamodb_table.feed-table.name}"
  hash_key   = "${aws_dynamodb_table.feed-table.hash_key}"
  item = <<ITEM
{
  "Id": {"S": "https://post-tenebras-lire.net/zakuro-aki-shimazaki"},
  "title": {"S": "Zakuro"},
  "writer": {"S": "Shimazaki, Aki"},

  "tags": {"S": "#Japon"},
  "link": {"S": "https://post-tenebras-lire.net/zakuro-aki-shimazaki/"},

  "imageUrl": {"S": "https://post-tenebras-lire.net/assets/posts/2013-12-22-zakuro-aki-shimazaki.jpg"}
}
ITEM
}

resource "aws_dynamodb_table_item" "monsieur-malaussène" {
  table_name = "${aws_dynamodb_table.feed-table.name}"
  hash_key   = "${aws_dynamodb_table.feed-table.hash_key}"
  item = <<ITEM
{
  "Id": {"S": "https://post-tenebras-lire.net/monsieur-malaussene-de-daniel-pennac"},
  "title": {"S": "Monsieur Malaussène"},
  "writer": {"S": "Pennac, Daniel"},

  "tags": {"S": "#Humour"},
  "link": {"S": "https://post-tenebras-lire.net/monsieur-malaussene-de-daniel-pennac/"},

  "imageUrl": {"S": "https://post-tenebras-lire.net/assets/posts/2013-12-20-monsieur-malaussene-de-daniel-pennac.jpg"}
}
ITEM
}

resource "aws_dynamodb_table_item" "cyanure" {
  table_name = "${aws_dynamodb_table.feed-table.name}"
  hash_key   = "${aws_dynamodb_table.feed-table.hash_key}"
  item = <<ITEM
{
  "Id": {"S": "https://post-tenebras-lire.net/cyanure-camilla-l%C3%A4ckberg"},
  "title": {"S": "Cyanure"},
  "writer": {"S": "Läckberg, Camilla"},

  "tags": {"S": "#Polar"},
  "link": {"S": "https://post-tenebras-lire.net/cyanure-camilla-l%C3%A4ckberg/"},

  "imageUrl": {"S": "https://post-tenebras-lire.net/assets/posts/2013-12-14-cyanure-camilla-l%C3%A4ckberg.jpg"}
}
ITEM
}

resource "aws_dynamodb_table_item" "le-vieil-homme-et-la-mer" {
  table_name = "${aws_dynamodb_table.feed-table.name}"
  hash_key   = "${aws_dynamodb_table.feed-table.hash_key}"
  item = <<ITEM
{
  "Id": {"S": "https://post-tenebras-lire.net/le-vieil-homme-et-la-mer-hemingway"},
  "title": {"S": "Le vieil homme et la mer"},
  "writer": {"S": "Hemingway, Ernest"},

  "tags": {"S": "#Littérature"},
  "link": {"S": "https://post-tenebras-lire.net/le-vieil-homme-et-la-mer-hemingway/"},

  "imageUrl": {"S": "https://post-tenebras-lire.net/assets/posts/2013-12-10-le-vieil-homme-et-la-mer-hemingway.png"}
}
ITEM
}

resource "aws_dynamodb_table_item" "de-l-inégalité-parmi-les-sociétés-essai-sur-l-homme-et-l-environnement-dans-l-histoire" {
  table_name = "${aws_dynamodb_table.feed-table.name}"
  hash_key   = "${aws_dynamodb_table.feed-table.hash_key}"
  item = <<ITEM
{
  "Id": {"S": "https://post-tenebras-lire.net/de-linegalite-parmi-les-societes-essai"},
  "title": {"S": "De l’inégalité parmi les sociétés : Essai sur l’homme et l’environnement dans l’histoire"},
  "writer": {"S": "Diamond, Jared Mason"},

  "tags": {"S": "#Histoire #Economie #Politique"},
  "link": {"S": "https://post-tenebras-lire.net/de-linegalite-parmi-les-societes-essai/"},

  "imageUrl": {"S": "https://post-tenebras-lire.net/assets/posts/2013-12-06-de-linegalite-parmi-les-societes-essai.jpg"}
}
ITEM
}

resource "aws_dynamodb_table_item" "les-hommes-frénétiques" {
  table_name = "${aws_dynamodb_table.feed-table.name}"
  hash_key   = "${aws_dynamodb_table.feed-table.hash_key}"
  item = <<ITEM
{
  "Id": {"S": "https://post-tenebras-lire.net/les-hommes-frenetiques-de-ernest"},
  "title": {"S": "Les Hommes frénétiques"},
  "writer": {"S": "Pérochon, Ernest"},

  "tags": {"S": "#Post-apocalyptique #Science-Fiction"},
  "link": {"S": "https://post-tenebras-lire.net/les-hommes-frenetiques-de-ernest/"},

  "imageUrl": {"S": "https://post-tenebras-lire.net/assets/posts/2013-12-05-les-hommes-frenetiques-de-ernest.png"}
}
ITEM
}

resource "aws_dynamodb_table_item" "le-grand-livre-des-gnomes" {
  table_name = "${aws_dynamodb_table.feed-table.name}"
  hash_key   = "${aws_dynamodb_table.feed-table.hash_key}"
  item = <<ITEM
{
  "Id": {"S": "https://post-tenebras-lire.net/le-grand-livre-des-gnomes-terry"},
  "title": {"S": "Le Grand Livre des gnomes"},
  "writer": {"S": "Pratchett, Terry"},

  "tags": {"S": "#Fantasy"},
  "link": {"S": "https://post-tenebras-lire.net/le-grand-livre-des-gnomes-terry/"},

  "imageUrl": {"S": "https://post-tenebras-lire.net/assets/posts/2013-11-26-le-grand-livre-des-gnomes-terry.jpg"}
}
ITEM
}

resource "aws_dynamodb_table_item" "harcèlement" {
  table_name = "${aws_dynamodb_table.feed-table.name}"
  hash_key   = "${aws_dynamodb_table.feed-table.hash_key}"
  item = <<ITEM
{
  "Id": {"S": "https://post-tenebras-lire.net/harcelement-par-jean-baptiste-ferrero"},
  "title": {"S": "Harcèlement"},
  "writer": {"S": "Ferrero, Jean-Baptiste"},

  "tags": {"S": "#Polar"},
  "link": {"S": "https://post-tenebras-lire.net/harcelement-par-jean-baptiste-ferrero/"},

  "imageUrl": {"S": "https://post-tenebras-lire.net/assets/posts/2013-11-14-harcelement-par-jean-baptiste-ferrero.jpg"}
}
ITEM
}

resource "aws_dynamodb_table_item" "le-samourai-virtuel-snow-crash" {
  table_name = "${aws_dynamodb_table.feed-table.name}"
  hash_key   = "${aws_dynamodb_table.feed-table.hash_key}"
  item = <<ITEM
{
  "Id": {"S": "https://post-tenebras-lire.net/le-samourai-virtuel-snow-crash-neal"},
  "title": {"S": "Le Samourai Virtuel (Snow Crash)"},
  "writer": {"S": "Stephenson, Neal"},

  "tags": {"S": "#Science-Fiction"},
  "link": {"S": "https://post-tenebras-lire.net/le-samourai-virtuel-snow-crash-neal/"},

  "imageUrl": {"S": "https://post-tenebras-lire.net/assets/posts/2013-11-12-le-samourai-virtuel-snow-crash-neal.jpg"}
}
ITEM
}

resource "aws_dynamodb_table_item" "l-affaire-charles-dexter-ward" {
  table_name = "${aws_dynamodb_table.feed-table.name}"
  hash_key   = "${aws_dynamodb_table.feed-table.hash_key}"
  item = <<ITEM
{
  "Id": {"S": "https://post-tenebras-lire.net/laffaire-charles-dexter-ward-lovecraft"},
  "title": {"S": "L’affaire Charles Dexter Ward"},
  "writer": {"S": "Lovecraft, Howard Phillips"},

  "tags": {"S": "#Fantastique"},
  "link": {"S": "https://post-tenebras-lire.net/laffaire-charles-dexter-ward-lovecraft/"},

  "imageUrl": {"S": "https://post-tenebras-lire.net/assets/posts/2013-11-02-laffaire-charles-dexter-ward-lovecraft.jpg"}
}
ITEM
}

resource "aws_dynamodb_table_item" "la-salamandre" {
  table_name = "${aws_dynamodb_table.feed-table.name}"
  hash_key   = "${aws_dynamodb_table.feed-table.hash_key}"
  item = <<ITEM
{
  "Id": {"S": "https://post-tenebras-lire.net/la-salamandre-par-masuji-ibuse"},
  "title": {"S": "La salamandre"},
  "writer": {"S": "Ibuse, Masuji"},

  "tags": {"S": "#Japon"},
  "link": {"S": "https://post-tenebras-lire.net/la-salamandre-par-masuji-ibuse/"},

  "imageUrl": {"S": "https://post-tenebras-lire.net/assets/posts/2013-10-28-la-salamandre-par-masuji-ibuse.jpg"}
}
ITEM
}

resource "aws_dynamodb_table_item" "en-même-temps-toute-la-terre-et-tout-le-ciel" {
  table_name = "${aws_dynamodb_table.feed-table.name}"
  hash_key   = "${aws_dynamodb_table.feed-table.hash_key}"
  item = <<ITEM
{
  "Id": {"S": "https://post-tenebras-lire.net/en-meme-temps-toute-la-terre-et-tout-le"},
  "title": {"S": "En même temps, toute la terre et tout le ciel"},
  "writer": {"S": "Ozeki, Ruth L."},

  "tags": {"S": "#Japon"},
  "link": {"S": "https://post-tenebras-lire.net/en-meme-temps-toute-la-terre-et-tout-le/"},

  "imageUrl": {"S": "https://post-tenebras-lire.net/assets/posts/2013-10-20-en-meme-temps-toute-la-terre-et-tout-le.jpg"}
}
ITEM
}

resource "aws_dynamodb_table_item" "les-eltychev" {
  table_name = "${aws_dynamodb_table.feed-table.name}"
  hash_key   = "${aws_dynamodb_table.feed-table.hash_key}"
  item = <<ITEM
{
  "Id": {"S": "https://post-tenebras-lire.net/les-eltychev-de-roman-sentchine"},
  "title": {"S": "Les Eltychev"},
  "writer": {"S": "Sentchine, Roman"},

  "tags": {"S": "#Russie"},
  "link": {"S": "https://post-tenebras-lire.net/les-eltychev-de-roman-sentchine/"},

  "imageUrl": {"S": "https://post-tenebras-lire.net/assets/posts/2013-10-12-les-eltychev-de-roman-sentchine.jpg"}
}
ITEM
}

resource "aws_dynamodb_table_item" "face-à-l-étoile" {
  table_name = "${aws_dynamodb_table.feed-table.name}"
  hash_key   = "${aws_dynamodb_table.feed-table.hash_key}"
  item = <<ITEM
{
  "Id": {"S": "https://post-tenebras-lire.net/face-letoile-de-neil-jomunsi"},
  "title": {"S": "Face à l’étoile"},
  "writer": {"S": "Jomunsi, Neil"},

  "tags": {"S": "#Nouvelle #Fantastique"},
  "link": {"S": "https://post-tenebras-lire.net/face-letoile-de-neil-jomunsi/"},

  "imageUrl": {"S": "https://post-tenebras-lire.net/assets/posts/2013-10-11-face-letoile-de-neil-jomunsi.jpg"}
}
ITEM
}

resource "aws_dynamodb_table_item" "par-delà-l-océan" {
  table_name = "${aws_dynamodb_table.feed-table.name}"
  hash_key   = "${aws_dynamodb_table.feed-table.hash_key}"
  item = <<ITEM
{
  "Id": {"S": "https://post-tenebras-lire.net/par-dela-locean-de-nicolas-b-wulf"},
  "title": {"S": "Par-delà l’océan"},
  "writer": {"S": "Wulf, Nicolas B."},

  "tags": {"S": "#Fantastique"},
  "link": {"S": "https://post-tenebras-lire.net/par-dela-locean-de-nicolas-b-wulf/"},

  "imageUrl": {"S": "https://post-tenebras-lire.net/assets/posts/2013-10-08-par-dela-locean-de-nicolas-b-wulf.jpg"}
}
ITEM
}

resource "aws_dynamodb_table_item" "celsius-233" {
  table_name = "${aws_dynamodb_table.feed-table.name}"
  hash_key   = "${aws_dynamodb_table.feed-table.hash_key}"
  item = <<ITEM
{
  "Id": {"S": "https://post-tenebras-lire.net/celsius-233-de-neil-jomunsi"},
  "title": {"S": "Celsius 233"},
  "writer": {"S": "Jomunsi, Neil"},

  "tags": {"S": "#Nouvelle"},
  "link": {"S": "https://post-tenebras-lire.net/celsius-233-de-neil-jomunsi/"},

  "imageUrl": {"S": "https://post-tenebras-lire.net/assets/posts/2013-10-04-celsius-233-de-neil-jomunsi.jpg"}
}
ITEM
}

resource "aws_dynamodb_table_item" "mourir-en-août" {
  table_name = "${aws_dynamodb_table.feed-table.name}"
  hash_key   = "${aws_dynamodb_table.feed-table.hash_key}"
  item = <<ITEM
{
  "Id": {"S": "https://post-tenebras-lire.net/mourir-en-aout-de-jean-baptiste-ferrero_1"},
  "title": {"S": "Mourir en août"},
  "writer": {"S": "Ferrero, Jean-Baptiste"},

  "tags": {"S": "#Polar"},
  "link": {"S": "https://post-tenebras-lire.net/mourir-en-aout-de-jean-baptiste-ferrero_1/"},

  "imageUrl": {"S": "https://post-tenebras-lire.net/assets/posts/2013-10-01-mourir-en-aout-de-jean-baptiste-ferrero_1.jpg"}
}
ITEM
}

resource "aws_dynamodb_table_item" "aurélia-sous-la-terre" {
  table_name = "${aws_dynamodb_table.feed-table.name}"
  hash_key   = "${aws_dynamodb_table.feed-table.hash_key}"
  item = <<ITEM
{
  "Id": {"S": "https://post-tenebras-lire.net/aurelia-sous-la-terre-de-neil-jomunsi"},
  "title": {"S": "Aurélia sous la terre"},
  "writer": {"S": "Jomunsi, Neil"},

  "tags": {"S": "#Nouvelle"},
  "link": {"S": "https://post-tenebras-lire.net/aurelia-sous-la-terre-de-neil-jomunsi/"},

  "imageUrl": {"S": "https://post-tenebras-lire.net/assets/posts/2013-09-27-aurelia-sous-la-terre-de-neil-jomunsi.jpg"}
}
ITEM
}

resource "aws_dynamodb_table_item" "le-grand-hozirus" {
  table_name = "${aws_dynamodb_table.feed-table.name}"
  hash_key   = "${aws_dynamodb_table.feed-table.hash_key}"
  item = <<ITEM
{
  "Id": {"S": "https://post-tenebras-lire.net/le-grand-hozirus-de-neil-jomunsi"},
  "title": {"S": "Le Grand-Hozirus"},
  "writer": {"S": "Jomunsi, Neil"},

  "tags": {"S": "#Nouvelle"},
  "link": {"S": "https://post-tenebras-lire.net/le-grand-hozirus-de-neil-jomunsi/"},

  "imageUrl": {"S": "https://post-tenebras-lire.net/assets/posts/2013-09-20-le-grand-hozirus-de-neil-jomunsi.jpg"}
}
ITEM
}

resource "aws_dynamodb_table_item" "la-symétrie-des-souffles" {
  table_name = "${aws_dynamodb_table.feed-table.name}"
  hash_key   = "${aws_dynamodb_table.feed-table.hash_key}"
  item = <<ITEM
{
  "Id": {"S": "https://post-tenebras-lire.net/la-symetrie-des-souffles-dalexandre"},
  "title": {"S": "La symétrie des Souffles"},
  "writer": {"S": "Jarry, Alexandre"},

  "tags": {"S": "#Abandonné #Fantastique"},
  "link": {"S": "https://post-tenebras-lire.net/la-symetrie-des-souffles-dalexandre/"},

  "imageUrl": {"S": "https://post-tenebras-lire.net/assets/posts/2013-09-18-la-symetrie-des-souffles-dalexandre.jpg"}
}
ITEM
}

resource "aws_dynamodb_table_item" "kukulkán" {
  table_name = "${aws_dynamodb_table.feed-table.name}"
  hash_key   = "${aws_dynamodb_table.feed-table.hash_key}"
  item = <<ITEM
{
  "Id": {"S": "https://post-tenebras-lire.net/kukulkan-de-neil-jomunsi-projetbradbury"},
  "title": {"S": "Kukulkán"},
  "writer": {"S": "Jomunsi, Neil"},

  "tags": {"S": "#Fantastique #Nouvelle"},
  "link": {"S": "https://post-tenebras-lire.net/kukulkan-de-neil-jomunsi-projetbradbury/"},

  "imageUrl": {"S": "https://post-tenebras-lire.net/assets/posts/2013-09-13-kukulkan-de-neil-jomunsi-projetbradbury.jpg"}
}
ITEM
}

resource "aws_dynamodb_table_item" "nouvelles-japonaises-papillon-suivi-de-la-lionne" {
  table_name = "${aws_dynamodb_table.feed-table.name}"
  hash_key   = "${aws_dynamodb_table.feed-table.hash_key}"
  item = <<ITEM
{
  "Id": {"S": "https://post-tenebras-lire.net/nouvelles-japonaises-papillon-suivi-de"},
  "title": {"S": "Nouvelles Japonaises : Papillon : Suivi de La lionne"},
  "writer": {"S": "Mishima, Yukio"},

  "tags": {"S": "#Japon #Nouvelle"},
  "link": {"S": "https://post-tenebras-lire.net/nouvelles-japonaises-papillon-suivi-de/"},

  "imageUrl": {"S": "https://post-tenebras-lire.net/assets/posts/2013-09-10-nouvelles-japonaises-papillon-suivi-de.jpeg"}
}
ITEM
}

resource "aws_dynamodb_table_item" "the-christian-delusion-why-faith-fails" {
  table_name = "${aws_dynamodb_table.feed-table.name}"
  hash_key   = "${aws_dynamodb_table.feed-table.hash_key}"
  item = <<ITEM
{
  "Id": {"S": "https://post-tenebras-lire.net/the-christian-delusion-why-faith-fails"},
  "title": {"S": "The Christian Delusion: Why Faith Fails"},
  "writer": {"S": "Loftus, John W."},

  "tags": {"S": "#Religion"},
  "link": {"S": "https://post-tenebras-lire.net/the-christian-delusion-why-faith-fails/"},

  "imageUrl": {"S": "https://post-tenebras-lire.net/assets/posts/2013-09-07-the-christian-delusion-why-faith-fails.jpg"}
}
ITEM
}

resource "aws_dynamodb_table_item" "le-dernier-invité" {
  table_name = "${aws_dynamodb_table.feed-table.name}"
  hash_key   = "${aws_dynamodb_table.feed-table.hash_key}"
  item = <<ITEM
{
  "Id": {"S": "https://post-tenebras-lire.net/le-dernier-invite-de-neil-jomunsi"},
  "title": {"S": "Le dernier invité"},
  "writer": {"S": "Jomunsi, Neil"},

  "tags": {"S": "#Nouvelle"},
  "link": {"S": "https://post-tenebras-lire.net/le-dernier-invite-de-neil-jomunsi/"},

  "imageUrl": {"S": "https://post-tenebras-lire.net/assets/posts/2013-09-06-le-dernier-invite-de-neil-jomunsi.jpg"}
}
ITEM
}

resource "aws_dynamodb_table_item" "onkalo" {
  table_name = "${aws_dynamodb_table.feed-table.name}"
  hash_key   = "${aws_dynamodb_table.feed-table.hash_key}"
  item = <<ITEM
{
  "Id": {"S": "https://post-tenebras-lire.net/onkalo-de-neil-jomunsi-projetbradbury"},
  "title": {"S": "Onkalo"},
  "writer": {"S": "Jomunsi, Neil"},

  "tags": {"S": "#Nouvelle #Science-Fiction"},
  "link": {"S": "https://post-tenebras-lire.net/onkalo-de-neil-jomunsi-projetbradbury/"},

  "imageUrl": {"S": "https://post-tenebras-lire.net/assets/posts/2013-08-30-onkalo-de-neil-jomunsi-projetbradbury.jpg"}
}
ITEM
}

resource "aws_dynamodb_table_item" "nouveau-message" {
  table_name = "${aws_dynamodb_table.feed-table.name}"
  hash_key   = "${aws_dynamodb_table.feed-table.hash_key}"
  item = <<ITEM
{
  "Id": {"S": "https://post-tenebras-lire.net/nouveau-message-de-neil-jomunsi-projet"},
  "title": {"S": "Nouveau Message"},
  "writer": {"S": "Jomunsi, Neil"},

  "tags": {"S": "#Nouvelle"},
  "link": {"S": "https://post-tenebras-lire.net/nouveau-message-de-neil-jomunsi-projet/"},

  "imageUrl": {"S": "https://post-tenebras-lire.net/assets/posts/2013-08-26-nouveau-message-de-neil-jomunsi-projet.jpg"}
}
ITEM
}

resource "aws_dynamodb_table_item" "trois-coups-contre-ma-porte" {
  table_name = "${aws_dynamodb_table.feed-table.name}"
  hash_key   = "${aws_dynamodb_table.feed-table.hash_key}"
  item = <<ITEM
{
  "Id": {"S": "https://post-tenebras-lire.net/trois-coups-contre-ma-porte-michael"},
  "title": {"S": "Trois coups contre ma porte"},
  "writer": {"S": "Roch, Michael"},

  "tags": {"S": "#Nouvelle"},
  "link": {"S": "https://post-tenebras-lire.net/trois-coups-contre-ma-porte-michael/"},

  "imageUrl": {"S": "https://post-tenebras-lire.net/assets/posts/2013-08-21-trois-coups-contre-ma-porte-michael.jpg"}
}
ITEM
}

resource "aws_dynamodb_table_item" "série-enfer-et-en-os-jésus-contre-hitler-n-4" {
  table_name = "${aws_dynamodb_table.feed-table.name}"
  hash_key   = "${aws_dynamodb_table.feed-table.hash_key}"
  item = <<ITEM
{
  "Id": {"S": "https://post-tenebras-lire.net/serie-enfer-et-en-os-jesus-contre"},
  "title": {"S": "Série : Enfer et en os (Jésus contre Hitler n°4)"},
  "writer": {"S": "Jomunsi, Neil"},

  "tags": {"S": "#Fantastique #Humour #Série"},
  "link": {"S": "https://post-tenebras-lire.net/serie-enfer-et-en-os-jesus-contre/"},

  "imageUrl": {"S": "https://post-tenebras-lire.net/assets/posts/2013-08-20-serie-enfer-et-en-os-jesus-contre.jpg"}
}
ITEM
}

resource "aws_dynamodb_table_item" "hackers-au-coeur-de-la-résistance-numérique" {
  table_name = "${aws_dynamodb_table.feed-table.name}"
  hash_key   = "${aws_dynamodb_table.feed-table.hash_key}"
  item = <<ITEM
{
  "Id": {"S": "https://post-tenebras-lire.net/hackers-au-coeur-de-la-resistance"},
  "title": {"S": "Hackers: Au coeur de la résistance numérique"},
  "writer": {"S": "Guiton, Amaelle"},

  "tags": {"S": "#Numerique"},
  "link": {"S": "https://post-tenebras-lire.net/hackers-au-coeur-de-la-resistance/"},

  "imageUrl": {"S": "https://post-tenebras-lire.net/assets/posts/2013-08-17-hackers-au-coeur-de-la-resistance.jpg"}
}
ITEM
}

resource "aws_dynamodb_table_item" "mitsuba" {
  table_name = "${aws_dynamodb_table.feed-table.name}"
  hash_key   = "${aws_dynamodb_table.feed-table.hash_key}"
  item = <<ITEM
{
  "Id": {"S": "https://post-tenebras-lire.net/mitsuba-par-aki-shimazaki-tres-beau"},
  "title": {"S": "Mitsuba"},
  "writer": {"S": "Shimazaki, Aki"},

  "tags": {"S": "#Japon"},
  "link": {"S": "https://post-tenebras-lire.net/mitsuba-par-aki-shimazaki-tres-beau/"},

  "imageUrl": {"S": "https://post-tenebras-lire.net/assets/posts/2013-08-15-mitsuba-par-aki-shimazaki-tres-beau.jpg"}
}
ITEM
}

resource "aws_dynamodb_table_item" "chalk" {
  table_name = "${aws_dynamodb_table.feed-table.name}"
  hash_key   = "${aws_dynamodb_table.feed-table.hash_key}"
  item = <<ITEM
{
  "Id": {"S": "https://post-tenebras-lire.net/chalk-une-excellente-serie-durban"},
  "title": {"S": "Chalk"},
  "writer": {"S": "Woets, Freddy"},

  "tags": {"S": "#Urban Fantasy"},
  "link": {"S": "https://post-tenebras-lire.net/chalk-une-excellente-serie-durban/"},

  "imageUrl": {"S": "https://post-tenebras-lire.net/assets/posts/2013-08-09-chalk-une-excellente-serie-durban.png"}
}
ITEM
}

resource "aws_dynamodb_table_item" "les-sumos-de-ryôgoku" {
  table_name = "${aws_dynamodb_table.feed-table.name}"
  hash_key   = "${aws_dynamodb_table.feed-table.hash_key}"
  item = <<ITEM
{
  "Id": {"S": "https://post-tenebras-lire.net/les-sumos-de-ryogoku-de-gilles-bordes"},
  "title": {"S": "Les sumos de Ryôgoku"},
  "writer": {"S": "Bordes-Pagès, Gilles"},

  "tags": {"S": "#Japon #Beau livre"},
  "link": {"S": "https://post-tenebras-lire.net/les-sumos-de-ryogoku-de-gilles-bordes/"},

  "imageUrl": {"S": "https://post-tenebras-lire.net/assets/posts/2013-08-07-les-sumos-de-ryogoku-de-gilles-bordes.jpg"}
}
ITEM
}

resource "aws_dynamodb_table_item" "les-annales-du-disque-monde-tome-10-les-zinzins-d-olive-oued" {
  table_name = "${aws_dynamodb_table.feed-table.name}"
  hash_key   = "${aws_dynamodb_table.feed-table.hash_key}"
  item = <<ITEM
{
  "Id": {"S": "https://post-tenebras-lire.net/court-avis-sur-les-zinzins-dolive-oueud"},
  "title": {"S": "Les Annales du Disque-Monde, Tome 10 : Les Zinzins d’Olive-Oued"},
  "writer": {"S": "Pratchett, Terry"},

  "tags": {"S": "#Fantasy #Humour #Série"},
  "link": {"S": "https://post-tenebras-lire.net/court-avis-sur-les-zinzins-dolive-oueud/"},

  "imageUrl": {"S": "https://post-tenebras-lire.net/assets/posts/2013-08-01-court-avis-sur-les-zinzins-dolive-oueud.jpg"}
}
ITEM
}

resource "aws_dynamodb_table_item" "mélanie-au-crépuscule" {
  table_name = "${aws_dynamodb_table.feed-table.name}"
  hash_key   = "${aws_dynamodb_table.feed-table.hash_key}"
  item = <<ITEM
{
  "Id": {"S": "https://post-tenebras-lire.net/nouvelle-fantastique-melanie-au"},
  "title": {"S": "Mélanie au Crépuscule"},
  "writer": {"S": "Sun, Sozuka"},

  "tags": {"S": "#Nouvelle #Fantastique"},
  "link": {"S": "https://post-tenebras-lire.net/nouvelle-fantastique-melanie-au/"},

  "imageUrl": {"S": "https://post-tenebras-lire.net/assets/posts/2013-08-01-nouvelle-fantastique-melanie-au.jpg"}
}
ITEM
}

resource "aws_dynamodb_table_item" "tokyo-sanpo-promenades-à-tokyo" {
  table_name = "${aws_dynamodb_table.feed-table.name}"
  hash_key   = "${aws_dynamodb_table.feed-table.hash_key}"
  item = <<ITEM
{
  "Id": {"S": "https://post-tenebras-lire.net/tokyo-sanpo-promenades-tokyo-de-florent"},
  "title": {"S": "Tokyo Sanpo : Promenades à Tokyo"},
  "writer": {"S": "Chavouet, Florent"},

  "tags": {"S": "#Voyage #Japon #Beau livre"},
  "link": {"S": "https://post-tenebras-lire.net/tokyo-sanpo-promenades-tokyo-de-florent/"},

  "imageUrl": {"S": "https://post-tenebras-lire.net/assets/posts/2013-06-20-tokyo-sanpo-promenades-tokyo-de-florent.jpg"}
}
ITEM
}

resource "aws_dynamodb_table_item" "mon-donjon-mon-dragon" {
  table_name = "${aws_dynamodb_table.feed-table.name}"
  hash_key   = "${aws_dynamodb_table.feed-table.hash_key}"
  item = <<ITEM
{
  "Id": {"S": "https://post-tenebras-lire.net/mon-donjon-mon-dragon-de-lilian-peschet"},
  "title": {"S": "Mon Donjon mon Dragon"},
  "writer": {"S": "Peschet, Lilian"},

  "tags": {"S": "#Fantastique"},
  "link": {"S": "https://post-tenebras-lire.net/mon-donjon-mon-dragon-de-lilian-peschet/"},

  "imageUrl": {"S": "https://post-tenebras-lire.net/assets/posts/2013-06-17-mon-donjon-mon-dragon-de-lilian-peschet.jpg"}
}
ITEM
}

resource "aws_dynamodb_table_item" "holocauste" {
  table_name = "${aws_dynamodb_table.feed-table.name}"
  hash_key   = "${aws_dynamodb_table.feed-table.hash_key}"
  item = <<ITEM
{
  "Id": {"S": "https://post-tenebras-lire.net/holocauste-de-christophe-siebert"},
  "title": {"S": "Holocauste"},
  "writer": {"S": "Siebert, Christophe"},

  "tags": {"S": "#Post-apocalyptique"},
  "link": {"S": "https://post-tenebras-lire.net/holocauste-de-christophe-siebert/"},

  "imageUrl": {"S": "https://post-tenebras-lire.net/assets/posts/2013-06-13-holocauste-de-christophe-siebert.png"}
}
ITEM
}

resource "aws_dynamodb_table_item" "plongée-sur-r-lyeh-un-roman-dont-vous-êtes-le-héros" {
  table_name = "${aws_dynamodb_table.feed-table.name}"
  hash_key   = "${aws_dynamodb_table.feed-table.hash_key}"
  item = <<ITEM
{
  "Id": {"S": "https://post-tenebras-lire.net/plongee-sur-rlyeh-loic-richard-un-roman"},
  "title": {"S": "Plongée sur R’Lyeh - Un roman dont vous êtes le héros"},
  "writer": {"S": "Richard, Loïc"},

  "tags": {"S": "#Fantastique #Livre Dont Vous Etes Le Héros"},
  "link": {"S": "https://post-tenebras-lire.net/plongee-sur-rlyeh-loic-richard-un-roman/"},

  "imageUrl": {"S": "https://post-tenebras-lire.net/assets/posts/2013-06-11-plongee-sur-rlyeh-loic-richard-un-roman.jpg"}
}
ITEM
}

resource "aws_dynamodb_table_item" "utopia" {
  table_name = "${aws_dynamodb_table.feed-table.name}"
  hash_key   = "${aws_dynamodb_table.feed-table.hash_key}"
  item = <<ITEM
{
  "Id": {"S": "https://post-tenebras-lire.net/roman-utopia-ahmed-khaled-towfik"},
  "title": {"S": "Utopia"},
  "writer": {"S": "Towfik, Ahmed Khaled"},

  "tags": {"S": "#Science-Fiction"},
  "link": {"S": "https://post-tenebras-lire.net/roman-utopia-ahmed-khaled-towfik/"},

  "imageUrl": {"S": "https://post-tenebras-lire.net/assets/posts/2013-06-08-roman-utopia-ahmed-khaled-towfik.png"}
}
ITEM
}

resource "aws_dynamodb_table_item" "radix" {
  table_name = "${aws_dynamodb_table.feed-table.name}"
  hash_key   = "${aws_dynamodb_table.feed-table.hash_key}"
  item = <<ITEM
{
  "Id": {"S": "https://post-tenebras-lire.net/un-roman-que-je-nai-pas-pu-finir-radix"},
  "title": {"S": "Radix"},
  "writer": {"S": "Attanasio, A. A."},

  "tags": {"S": "#Abandonné #Science-Fiction"},
  "link": {"S": "https://post-tenebras-lire.net/un-roman-que-je-nai-pas-pu-finir-radix/"},

  "imageUrl": {"S": "https://post-tenebras-lire.net/assets/posts/2013-06-05-un-roman-que-je-nai-pas-pu-finir-radix.jpg"}
}
ITEM
}

resource "aws_dynamodb_table_item" "la-laïcité" {
  table_name = "${aws_dynamodb_table.feed-table.name}"
  hash_key   = "${aws_dynamodb_table.feed-table.hash_key}"
  item = <<ITEM
{
  "Id": {"S": "https://post-tenebras-lire.net/la-laicite-par-guy-haarscher-aux-puf"},
  "title": {"S": "La Laïcité"},
  "writer": {"S": "Haarscher, Guy"},

  "tags": {"S": "#Politique #Religion"},
  "link": {"S": "https://post-tenebras-lire.net/la-laicite-par-guy-haarscher-aux-puf/"},

  "imageUrl": {"S": "https://post-tenebras-lire.net/assets/posts/2013-05-30-la-laicite-par-guy-haarscher-aux-puf.gif"}
}
ITEM
}

resource "aws_dynamodb_table_item" "doubt-1-2-3-4" {
  table_name = "${aws_dynamodb_table.feed-table.name}"
  hash_key   = "${aws_dynamodb_table.feed-table.hash_key}"
  item = <<ITEM
{
  "Id": {"S": "https://post-tenebras-lire.net/manga-doubt-1234"},
  "title": {"S": "Doubt : 1,2,3,4"},
  "writer": {"S": "Tonogai, Yoshiki"},

  "tags": {"S": "#Manga #Japon #Série"},
  "link": {"S": "https://post-tenebras-lire.net/manga-doubt-1234/"},

  "imageUrl": {"S": "https://post-tenebras-lire.net/assets/posts/2013-05-23-manga-doubt-1234.jpg"}
}
ITEM
}

resource "aws_dynamodb_table_item" "ce-qui-mordait-le-ciel" {
  table_name = "${aws_dynamodb_table.feed-table.name}"
  hash_key   = "${aws_dynamodb_table.feed-table.hash_key}"
  item = <<ITEM
{
  "Id": {"S": "https://post-tenebras-lire.net/sf-ce-qui-mordait-le-ciel-de-serge"},
  "title": {"S": "Ce qui mordait le ciel…"},
  "writer": {"S": "Brussolo, Serge"},

  "tags": {"S": "#Science-Fiction"},
  "link": {"S": "https://post-tenebras-lire.net/sf-ce-qui-mordait-le-ciel-de-serge/"},

  "imageUrl": {"S": "https://post-tenebras-lire.net/assets/posts/2013-05-18-sf-ce-qui-mordait-le-ciel-de-serge.jpg"}
}
ITEM
}

resource "aws_dynamodb_table_item" "le-japon-vu-du-train" {
  table_name = "${aws_dynamodb_table.feed-table.name}"
  hash_key   = "${aws_dynamodb_table.feed-table.hash_key}"
  item = <<ITEM
{
  "Id": {"S": "https://post-tenebras-lire.net/le-japon-vu-du-train-guide-de-voyage"},
  "title": {"S": "Le Japon vu du train"},
  "writer": {"S": "Leblanc, Claude"},

  "tags": {"S": "#Voyage #Japon"},
  "link": {"S": "https://post-tenebras-lire.net/le-japon-vu-du-train-guide-de-voyage/"},

  "imageUrl": {"S": "https://post-tenebras-lire.net/assets/posts/2013-05-01-le-japon-vu-du-train-guide-de-voyage.jpg"}
}
ITEM
}

resource "aws_dynamodb_table_item" "santetsu-11-mars-2011-après-le-cataclysme" {
  table_name = "${aws_dynamodb_table.feed-table.name}"
  hash_key   = "${aws_dynamodb_table.feed-table.hash_key}"
  item = <<ITEM
{
  "Id": {"S": "https://post-tenebras-lire.net/manga-temoignage-santetsu-11-mars-2011"},
  "title": {"S": "Santetsu : 11 mars 2011, après le cataclysme"},
  "writer": {"S": "Yoshimoto, Koji"},

  "tags": {"S": "#Manga #Japon"},
  "link": {"S": "https://post-tenebras-lire.net/manga-temoignage-santetsu-11-mars-2011/"},

  "imageUrl": {"S": "https://post-tenebras-lire.net/assets/posts/2013-04-27-manga-temoignage-santetsu-11-mars-2011.jpg"}
}
ITEM
}

resource "aws_dynamodb_table_item" "le-vase-de-sable" {
  table_name = "${aws_dynamodb_table.feed-table.name}"
  hash_key   = "${aws_dynamodb_table.feed-table.hash_key}"
  item = <<ITEM
{
  "Id": {"S": "https://post-tenebras-lire.net/roman-japonais-le-vase-de-sable-seicho"},
  "title": {"S": "Le vase de sable"},
  "writer": {"S": "Matsumoto, Seicho"},

  "tags": {"S": "#Japon #Polar"},
  "link": {"S": "https://post-tenebras-lire.net/roman-japonais-le-vase-de-sable-seicho/"},

  "imageUrl": {"S": "https://post-tenebras-lire.net/assets/posts/2013-04-26-roman-japonais-le-vase-de-sable-seicho.jpg"}
}
ITEM
}

resource "aws_dynamodb_table_item" "pour-mieux-comprendre-le-proche-orient-géopolitique-du-proche-orient-que-sais-je-n-3678" {
  table_name = "${aws_dynamodb_table.feed-table.name}"
  hash_key   = "${aws_dynamodb_table.feed-table.hash_key}"
  item = <<ITEM
{
  "Id": {"S": "https://post-tenebras-lire.net/pour-mieux-comprendre-le-proche-orient"},
  "title": {"S": "Pour mieux comprendre le Proche-Orient : Géopolitique du Proche-Orient « Que sais-je ? » n° 3678"},
  "writer": {"S": "Defay, Alexandre"},

  "tags": {"S": "#Politique #Géographie #Histoire"},
  "link": {"S": "https://post-tenebras-lire.net/pour-mieux-comprendre-le-proche-orient/"},

  "imageUrl": {"S": "https://post-tenebras-lire.net/assets/posts/2013-04-20-pour-mieux-comprendre-le-proche-orient.jpg"}
}
ITEM
}

resource "aws_dynamodb_table_item" "les-chronolithes" {
  table_name = "${aws_dynamodb_table.feed-table.name}"
  hash_key   = "${aws_dynamodb_table.feed-table.hash_key}"
  item = <<ITEM
{
  "Id": {"S": "https://post-tenebras-lire.net/les-chronolithes-robert-charles-wilson"},
  "title": {"S": "Les Chronolithes"},
  "writer": {"S": "Wilson, Robert-Charles"},

  "tags": {"S": "#Science-Fiction"},
  "link": {"S": "https://post-tenebras-lire.net/les-chronolithes-robert-charles-wilson/"},

  "imageUrl": {"S": "https://post-tenebras-lire.net/assets/posts/2013-04-12-les-chronolithes-robert-charles-wilson.jpg"}
}
ITEM
}

resource "aws_dynamodb_table_item" "ikebukuro-west-gate-park-tome-2" {
  table_name = "${aws_dynamodb_table.feed-table.name}"
  hash_key   = "${aws_dynamodb_table.feed-table.hash_key}"
  item = <<ITEM
{
  "Id": {"S": "https://post-tenebras-lire.net/policier-ikebukuro-west-gate-park-tome-2"},
  "title": {"S": "Ikebukuro West Gate Park : Tome 2"},
  "writer": {"S": "Ishida, Ira"},

  "tags": {"S": "#Japon #Polar"},
  "link": {"S": "https://post-tenebras-lire.net/policier-ikebukuro-west-gate-park-tome-2/"},

  "imageUrl": {"S": "https://post-tenebras-lire.net/assets/posts/2013-04-02-policier-ikebukuro-west-gate-park-tome-2.png"}
}
ITEM
}

resource "aws_dynamodb_table_item" "le-chemin-du-retour" {
  table_name = "${aws_dynamodb_table.feed-table.name}"
  hash_key   = "${aws_dynamodb_table.feed-table.hash_key}"
  item = <<ITEM
{
  "Id": {"S": "https://post-tenebras-lire.net/le-chemin-du-retour-par-neil-jomunsi"},
  "title": {"S": "Le chemin du retour"},
  "writer": {"S": "Jomunsi, Neil"},

  "tags": {"S": "#Fantastique #Nouvelle"},
  "link": {"S": "https://post-tenebras-lire.net/le-chemin-du-retour-par-neil-jomunsi/"},

  "imageUrl": {"S": "https://post-tenebras-lire.net/assets/posts/2013-03-22-le-chemin-du-retour-par-neil-jomunsi.png"}
}
ITEM
}

resource "aws_dynamodb_table_item" "je-suis-rage" {
  table_name = "${aws_dynamodb_table.feed-table.name}"
  hash_key   = "${aws_dynamodb_table.feed-table.hash_key}"
  item = <<ITEM
{
  "Id": {"S": "https://post-tenebras-lire.net/je-suis-rage-de-neil-jomunsi"},
  "title": {"S": "Je suis Rage"},
  "writer": {"S": "Jomunsi, Neil"},

  "tags": {"S": "#Fantastique"},
  "link": {"S": "https://post-tenebras-lire.net/je-suis-rage-de-neil-jomunsi/"},

  "imageUrl": {"S": "https://post-tenebras-lire.net/assets/posts/2013-03-14-je-suis-rage-de-neil-jomunsi.jpg"}
}
ITEM
}

resource "aws_dynamodb_table_item" "le-livre-du-thé" {
  table_name = "${aws_dynamodb_table.feed-table.name}"
  hash_key   = "${aws_dynamodb_table.feed-table.hash_key}"
  item = <<ITEM
{
  "Id": {"S": "https://post-tenebras-lire.net/le-livre-du-de-kakuzo-okakura-avis-et"},
  "title": {"S": "Le Livre du thé"},
  "writer": {"S": "Okakura, Kakuzô"},

  "tags": {"S": "#Japon"},
  "link": {"S": "https://post-tenebras-lire.net/le-livre-du-de-kakuzo-okakura-avis-et/"},

  "imageUrl": {"S": "https://post-tenebras-lire.net/assets/posts/2013-03-10-le-livre-du-de-kakuzo-okakura-avis-et.jpg"}
}
ITEM
}

resource "aws_dynamodb_table_item" "le-silence-du-bourreau" {
  table_name = "${aws_dynamodb_table.feed-table.name}"
  hash_key   = "${aws_dynamodb_table.feed-table.hash_key}"
  item = <<ITEM
{
  "Id": {"S": "https://post-tenebras-lire.net/le-silence-du-bourreau-francois-bizot"},
  "title": {"S": "Le silence du bourreau"},
  "writer": {"S": "Bizot, François"},

  "tags": {"S": "#Torture #Dictature #Procès"},
  "link": {"S": "https://post-tenebras-lire.net/le-silence-du-bourreau-francois-bizot/"},

  "imageUrl": {"S": "https://post-tenebras-lire.net/assets/posts/2013-02-27-le-silence-du-bourreau-francois-bizot.jpg"}
}
ITEM
}

resource "aws_dynamodb_table_item" "l-agneau" {
  table_name = "${aws_dynamodb_table.feed-table.name}"
  hash_key   = "${aws_dynamodb_table.feed-table.hash_key}"
  item = <<ITEM
{
  "Id": {"S": "https://post-tenebras-lire.net/lagneau-de-christopher-j-moore"},
  "title": {"S": "L’agneau"},
  "writer": {"S": "Moore, Christopher J."},

  "tags": {"S": "#Religion #Humour"},
  "link": {"S": "https://post-tenebras-lire.net/lagneau-de-christopher-j-moore/"},

  "imageUrl": {"S": "https://post-tenebras-lire.net/assets/posts/2013-02-23-lagneau-de-christopher-j-moore.jpg"}
}
ITEM
}

resource "aws_dynamodb_table_item" "la-fée-carabine" {
  table_name = "${aws_dynamodb_table.feed-table.name}"
  hash_key   = "${aws_dynamodb_table.feed-table.hash_key}"
  item = <<ITEM
{
  "Id": {"S": "https://post-tenebras-lire.net/lecture-la-fee-carabine-daniel-pennac"},
  "title": {"S": "La Fée Carabine"},
  "writer": {"S": "Pennac, Daniel"},

  "tags": {"S": "#Humour"},
  "link": {"S": "https://post-tenebras-lire.net/lecture-la-fee-carabine-daniel-pennac/"},

  "imageUrl": {"S": "https://post-tenebras-lire.net/assets/posts/2013-01-02-lecture-la-fee-carabine-daniel-pennac.jpg"}
}
ITEM
}

resource "aws_dynamodb_table_item" "la-mélancolie-des-sirènes-par-30-mètres-de-fond" {
  table_name = "${aws_dynamodb_table.feed-table.name}"
  hash_key   = "${aws_dynamodb_table.feed-table.hash_key}"
  item = <<ITEM
{
  "Id": {"S": "https://post-tenebras-lire.net/fanstastique-la-melancolie-des-sirenes"},
  "title": {"S": "La mélancolie des sirènes par 30 mètres de fond"},
  "writer": {"S": "Brussolo, Serge"},

  "tags": {"S": "#Fantastique"},
  "link": {"S": "https://post-tenebras-lire.net/fanstastique-la-melancolie-des-sirenes/"},

  "imageUrl": {"S": "https://post-tenebras-lire.net/assets/posts/2012-12-29-fanstastique-la-melancolie-des-sirenes.jpg"}
}
ITEM
}

resource "aws_dynamodb_table_item" "le-vieux-qui-ne-voulait-pas-fêter-son-anniversaire" {
  table_name = "${aws_dynamodb_table.feed-table.name}"
  hash_key   = "${aws_dynamodb_table.feed-table.hash_key}"
  item = <<ITEM
{
  "Id": {"S": "https://post-tenebras-lire.net/roman-le-vieux-qui-ne-voulait-pas-feter"},
  "title": {"S": "Le vieux qui ne voulait pas fêter son anniversaire"},
  "writer": {"S": "Jonasson, Jonas"},

  "tags": {"S": "#Humour"},
  "link": {"S": "https://post-tenebras-lire.net/roman-le-vieux-qui-ne-voulait-pas-feter/"},

  "imageUrl": {"S": "https://post-tenebras-lire.net/assets/posts/2012-12-21-roman-le-vieux-qui-ne-voulait-pas-feter.jpg"}
}
ITEM
}

resource "aws_dynamodb_table_item" "série-heil-yéti-jésus-contre-hitler-n-3" {
  table_name = "${aws_dynamodb_table.feed-table.name}"
  hash_key   = "${aws_dynamodb_table.feed-table.hash_key}"
  item = <<ITEM
{
  "Id": {"S": "https://post-tenebras-lire.net/roman-heil-yeti-jesus-contre-hitler-3"},
  "title": {"S": "Série : Heil Yéti! (Jésus contre Hitler n°3)"},
  "writer": {"S": "Jomunsi, Neil"},

  "tags": {"S": "#Série #Science-Fiction #Humour"},
  "link": {"S": "https://post-tenebras-lire.net/roman-heil-yeti-jesus-contre-hitler-3/"},

  "imageUrl": {"S": "https://post-tenebras-lire.net/assets/posts/2012-12-10-roman-heil-yeti-jesus-contre-hitler-3.jpg"}
}
ITEM
}

resource "aws_dynamodb_table_item" "spin" {
  table_name = "${aws_dynamodb_table.feed-table.name}"
  hash_key   = "${aws_dynamodb_table.feed-table.hash_key}"
  item = <<ITEM
{
  "Id": {"S": "https://post-tenebras-lire.net/roman-sf-spin-robert-charles-wilson"},
  "title": {"S": "Spin"},
  "writer": {"S": "Wilson, Robert-Charles"},

  "tags": {"S": "#Science-Fiction"},
  "link": {"S": "https://post-tenebras-lire.net/roman-sf-spin-robert-charles-wilson/"},

  "imageUrl": {"S": "https://post-tenebras-lire.net/assets/posts/2012-12-08-roman-sf-spin-robert-charles-wilson.jpg"}
}
ITEM
}

resource "aws_dynamodb_table_item" "a-comme-alone-alone-n-1" {
  table_name = "${aws_dynamodb_table.feed-table.name}"
  hash_key   = "${aws_dynamodb_table.feed-table.hash_key}"
  item = <<ITEM
{
  "Id": {"S": "https://post-tenebras-lire.net/roman-sf-comme-alone-alone-1-de-thomas"},
  "title": {"S": "A comme Alone (Alone, n°1)"},
  "writer": {"S": "Géha, Thomas"},

  "tags": {"S": "#Post-apocalyptique #Science-Fiction #Série"},
  "link": {"S": "https://post-tenebras-lire.net/roman-sf-comme-alone-alone-1-de-thomas/"},

  "imageUrl": {"S": "https://post-tenebras-lire.net/assets/posts/2012-12-02-roman-sf-comme-alone-alone-1-de-thomas.jpg"}
}
ITEM
}

resource "aws_dynamodb_table_item" "la-route" {
  table_name = "${aws_dynamodb_table.feed-table.name}"
  hash_key   = "${aws_dynamodb_table.feed-table.hash_key}"
  item = <<ITEM
{
  "Id": {"S": "https://post-tenebras-lire.net/roman-la-route-de-cormac-mccarthy"},
  "title": {"S": "La route"},
  "writer": {"S": "McCarthy, Cormac"},

  "tags": {"S": "#Post-apocalyptique #Science-Fiction"},
  "link": {"S": "https://post-tenebras-lire.net/roman-la-route-de-cormac-mccarthy/"},

  "imageUrl": {"S": "https://post-tenebras-lire.net/assets/posts/2012-11-23-roman-la-route-de-cormac-mccarthy.jpg"}
}
ITEM
}

resource "aws_dynamodb_table_item" "misquoting-jesus-the-story-behind-who-changed-the-bible-why" {
  table_name = "${aws_dynamodb_table.feed-table.name}"
  hash_key   = "${aws_dynamodb_table.feed-table.hash_key}"
  item = <<ITEM
{
  "Id": {"S": "https://post-tenebras-lire.net/misquoting-jesus-story-behind-who"},
  "title": {"S": "Misquoting Jesus: The Story Behind Who Changed the Bible &amp;amp; Why"},
  "writer": {"S": "Ehrman, Bart D."},

  "tags": {"S": "#Religion"},
  "link": {"S": "https://post-tenebras-lire.net/misquoting-jesus-story-behind-who/"},

  "imageUrl": {"S": "https://post-tenebras-lire.net/assets/posts/2012-11-21-misquoting-jesus-story-behind-who.jpg"}
}
ITEM
}

resource "aws_dynamodb_table_item" "chroniques-du-pays-des-mères" {
  table_name = "${aws_dynamodb_table.feed-table.name}"
  hash_key   = "${aws_dynamodb_table.feed-table.hash_key}"
  item = <<ITEM
{
  "Id": {"S": "https://post-tenebras-lire.net/roman-sf-chroniques-du-pays-des-meres"},
  "title": {"S": "Chroniques Du Pays Des Mères"},
  "writer": {"S": "Vonarburg, Elisabeth"},

  "tags": {"S": "#Science-Fiction"},
  "link": {"S": "https://post-tenebras-lire.net/roman-sf-chroniques-du-pays-des-meres/"},

  "imageUrl": {"S": "https://post-tenebras-lire.net/assets/posts/2012-11-11-roman-sf-chroniques-du-pays-des-meres.jpg"}
}
ITEM
}

resource "aws_dynamodb_table_item" "tsukushi" {
  table_name = "${aws_dynamodb_table.feed-table.name}"
  hash_key   = "${aws_dynamodb_table.feed-table.hash_key}"
  item = <<ITEM
{
  "Id": {"S": "https://post-tenebras-lire.net/roman-tsukushi-par-aki-shimazaki"},
  "title": {"S": "Tsukushi"},
  "writer": {"S": "Shimazaki, Aki"},

  "tags": {"S": "#Japon"},
  "link": {"S": "https://post-tenebras-lire.net/roman-tsukushi-par-aki-shimazaki/"},

  "imageUrl": {"S": "https://post-tenebras-lire.net/assets/posts/2012-10-15-roman-tsukushi-par-aki-shimazaki.jpg"}
}
ITEM
}

resource "aws_dynamodb_table_item" "tau-zéro" {
  table_name = "${aws_dynamodb_table.feed-table.name}"
  hash_key   = "${aws_dynamodb_table.feed-table.hash_key}"
  item = <<ITEM
{
  "Id": {"S": "https://post-tenebras-lire.net/sf-tau-zero-de-poul-anderson"},
  "title": {"S": "Tau Zéro"},
  "writer": {"S": "Anderson, Poul"},

  "tags": {"S": "#Science-Fiction"},
  "link": {"S": "https://post-tenebras-lire.net/sf-tau-zero-de-poul-anderson/"},

  "imageUrl": {"S": "https://post-tenebras-lire.net/assets/posts/2012-10-13-sf-tau-zero-de-poul-anderson.jpg"}
}
ITEM
}

resource "aws_dynamodb_table_item" "série-tentacules-en-folie-jésus-contre-hitler-2" {
  table_name = "${aws_dynamodb_table.feed-table.name}"
  hash_key   = "${aws_dynamodb_table.feed-table.hash_key}"
  item = <<ITEM
{
  "Id": {"S": "https://post-tenebras-lire.net/serie-tentacules-en-folie-jesus-contre"},
  "title": {"S": "Série : Tentacules en Folie (Jésus contre Hitler #2)"},
  "writer": {"S": "Jomunsi, Neil"},

  "tags": {"S": "#Science-Fiction #Série #Humour"},
  "link": {"S": "https://post-tenebras-lire.net/serie-tentacules-en-folie-jesus-contre/"},

  "imageUrl": {"S": "https://post-tenebras-lire.net/assets/posts/2012-10-11-serie-tentacules-en-folie-jesus-contre.jpg"}
}
ITEM
}

resource "aws_dynamodb_table_item" "republic-com-2-0" {
  table_name = "${aws_dynamodb_table.feed-table.name}"
  hash_key   = "${aws_dynamodb_table.feed-table.hash_key}"
  item = <<ITEM
{
  "Id": {"S": "https://post-tenebras-lire.net/book-republiccom-20-by-cass-r-sunstein"},
  "title": {"S": "Republic.com 2.0"},
  "writer": {"S": "Sunstein, Cass R."},

  "tags": {"S": "#Politique #Essai"},
  "link": {"S": "https://post-tenebras-lire.net/book-republiccom-20-by-cass-r-sunstein/"},

  "imageUrl": {"S": "https://post-tenebras-lire.net/assets/posts/2012-10-06-book-republiccom-20-by-cass-r-sunstein.jpg"}
}
ITEM
}

resource "aws_dynamodb_table_item" "série-zombies-nazis-en-sibérie-jésus-contre-hitler-n-1" {
  table_name = "${aws_dynamodb_table.feed-table.name}"
  hash_key   = "${aws_dynamodb_table.feed-table.hash_key}"
  item = <<ITEM
{
  "Id": {"S": "https://post-tenebras-lire.net/serie-zombies-nazis-en-siberie-jesus"},
  "title": {"S": "Série : Zombies Nazis en Sibérie (Jésus contre Hitler n°1)"},
  "writer": {"S": "Jomunsi, Neil"},

  "tags": {"S": "#Science-Fiction #Série #Humour"},
  "link": {"S": "https://post-tenebras-lire.net/serie-zombies-nazis-en-siberie-jesus/"},

  "imageUrl": {"S": "https://post-tenebras-lire.net/assets/posts/2012-10-02-serie-zombies-nazis-en-siberie-jesus.jpg"}
}
ITEM
}

resource "aws_dynamodb_table_item" "un-monde-d-azur" {
  table_name = "${aws_dynamodb_table.feed-table.name}"
  hash_key   = "${aws_dynamodb_table.feed-table.hash_key}"
  item = <<ITEM
{
  "Id": {"S": "https://post-tenebras-lire.net/roman-sf-un-monde-dazur-de-jack-vance"},
  "title": {"S": "Un monde d’azur"},
  "writer": {"S": "Vance, Jack"},

  "tags": {"S": "#Science-Fiction"},
  "link": {"S": "https://post-tenebras-lire.net/roman-sf-un-monde-dazur-de-jack-vance/"},

  "imageUrl": {"S": "https://post-tenebras-lire.net/assets/posts/2012-10-01-roman-sf-un-monde-dazur-de-jack-vance.jpg"}
}
ITEM
}

resource "aws_dynamodb_table_item" "park-life-吉田修" {
  table_name = "${aws_dynamodb_table.feed-table.name}"
  hash_key   = "${aws_dynamodb_table.feed-table.hash_key}"
  item = <<ITEM
{
  "Id": {"S": "https://post-tenebras-lire.net/roman-park-life-yoshida-shuichi"},
  "title": {"S": "Park Life - 吉田修"},
  "writer": {"S": "Shuichi, Yoshida"},

  "tags": {"S": "#Japon"},
  "link": {"S": "https://post-tenebras-lire.net/roman-park-life-yoshida-shuichi/"},

  "imageUrl": {"S": "https://post-tenebras-lire.net/assets/posts/2012-09-28-roman-park-life-yoshida-shuichi.jpg"}
}
ITEM
}

resource "aws_dynamodb_table_item" "hideout" {
  table_name = "${aws_dynamodb_table.feed-table.name}"
  hash_key   = "${aws_dynamodb_table.feed-table.hash_key}"
  item = <<ITEM
{
  "Id": {"S": "https://post-tenebras-lire.net/review-hideout"},
  "title": {"S": "Hideout"},
  "writer": {"S": "Kakizaki, Masasumi"},

  "tags": {"S": "#Manga #Japon"},
  "link": {"S": "https://post-tenebras-lire.net/review-hideout/"},

  "imageUrl": {"S": "https://post-tenebras-lire.net/assets/posts/2012-09-03-review-hideout.jpg"}
}
ITEM
}

resource "aws_dynamodb_table_item" "le-japon-vu-de-l-intérieur" {
  table_name = "${aws_dynamodb_table.feed-table.name}"
  hash_key   = "${aws_dynamodb_table.feed-table.hash_key}"
  item = <<ITEM
{
  "Id": {"S": "https://post-tenebras-lire.net/review-le-japon-vu-de-l"},
  "title": {"S": "Le Japon vu de l’intérieur"},
  "writer": {"S": "Michaud, David"},

  "tags": {"S": "#Japon #Photographie"},
  "link": {"S": "https://post-tenebras-lire.net/review-le-japon-vu-de-l/"},

  "imageUrl": {"S": "https://post-tenebras-lire.net/assets/posts/2012-08-28-review-le-japon-vu-de-l.jpg"}
}
ITEM
}

resource "aws_dynamodb_table_item" "la-tour-folkstrom" {
  table_name = "${aws_dynamodb_table.feed-table.name}"
  hash_key   = "${aws_dynamodb_table.feed-table.hash_key}"
  item = <<ITEM
{
  "Id": {"S": "https://post-tenebras-lire.net/review-la-tour-folkstrom"},
  "title": {"S": "La Tour Folkstrom"},
  "writer": {"S": "Balek, Jeff"},

  "tags": {"S": "#Fantastique"},
  "link": {"S": "https://post-tenebras-lire.net/review-la-tour-folkstrom/"},

  "imageUrl": {"S": "https://post-tenebras-lire.net/assets/posts/2012-08-22-review-la-tour-folkstrom.jpg"}
}
ITEM
}

resource "aws_dynamodb_table_item" "ikigami-préavis-de-mort-10" {
  table_name = "${aws_dynamodb_table.feed-table.name}"
  hash_key   = "${aws_dynamodb_table.feed-table.hash_key}"
  item = <<ITEM
{
  "Id": {"S": "https://post-tenebras-lire.net/review-ikigami-preavis-de-mort-10"},
  "title": {"S": "Ikigami, Préavis de Mort #10"},
  "writer": {"S": "Motorō, Mase"},

  "tags": {"S": "#Manga #Japon"},
  "link": {"S": "https://post-tenebras-lire.net/review-ikigami-preavis-de-mort-10/"},

  "imageUrl": {"S": "https://post-tenebras-lire.net/assets/posts/2012-08-20-review-ikigami-preavis-de-mort-10.jpg"}
}
ITEM
}

resource "aws_dynamodb_table_item" "l-affaire-sugaya" {
  table_name = "${aws_dynamodb_table.feed-table.name}"
  hash_key   = "${aws_dynamodb_table.feed-table.hash_key}"
  item = <<ITEM
{
  "Id": {"S": "https://post-tenebras-lire.net/review-laffaire-sugaya"},
  "title": {"S": "L’affaire Sugaya"},
  "writer": {"S": "Tachibana, Ken-ichi"},

  "tags": {"S": "#Manga #Japon"},
  "link": {"S": "https://post-tenebras-lire.net/review-laffaire-sugaya/"},

  "imageUrl": {"S": "https://post-tenebras-lire.net/assets/posts/2012-08-20-review-laffaire-sugaya.jpg"}
}
ITEM
}

resource "aws_dynamodb_table_item" "le-convoi-de-l-eau" {
  table_name = "${aws_dynamodb_table.feed-table.name}"
  hash_key   = "${aws_dynamodb_table.feed-table.hash_key}"
  item = <<ITEM
{
  "Id": {"S": "https://post-tenebras-lire.net/review-le-convoi-de-l"},
  "title": {"S": "Le Convoi De L’eau"},
  "writer": {"S": "Yoshimura, Akira"},

  "tags": {"S": "#Japon"},
  "link": {"S": "https://post-tenebras-lire.net/review-le-convoi-de-l/"},

  "imageUrl": {"S": "https://post-tenebras-lire.net/assets/posts/2012-08-18-review-le-convoi-de-l.jpg"}
}
ITEM
}

resource "aws_dynamodb_table_item" "les-déportés-du-cambrien" {
  table_name = "${aws_dynamodb_table.feed-table.name}"
  hash_key   = "${aws_dynamodb_table.feed-table.hash_key}"
  item = <<ITEM
{
  "Id": {"S": "https://post-tenebras-lire.net/review-les-deportes-du-cambrien"},
  "title": {"S": "Les déportés du Cambrien"},
  "writer": {"S": "Silverberg, Robert"},

  "tags": {"S": "#Science-Fiction"},
  "link": {"S": "https://post-tenebras-lire.net/review-les-deportes-du-cambrien/"},

  "imageUrl": {"S": "https://post-tenebras-lire.net/assets/posts/2012-07-27-review-les-deportes-du-cambrien.jpg"}
}
ITEM
}

resource "aws_dynamodb_table_item" "hi-my-name-is-loco-and-i-am-a-racist" {
  table_name = "${aws_dynamodb_table.feed-table.name}"
  hash_key   = "${aws_dynamodb_table.feed-table.hash_key}"
  item = <<ITEM
{
  "Id": {"S": "https://post-tenebras-lire.net/review-hi-my-name-is-loco-and-i-am"},
  "title": {"S": "Hi! My Name is Loco and I am a Racist"},
  "writer": {"S": "McNeil, Baye"},

  "tags": {"S": "#Japon"},
  "link": {"S": "https://post-tenebras-lire.net/review-hi-my-name-is-loco-and-i-am/"},

  "imageUrl": {"S": "https://post-tenebras-lire.net/assets/posts/2012-07-25-review-hi-my-name-is-loco-and-i-am.jpg"}
}
ITEM
}

resource "aws_dynamodb_table_item" "aphorismes" {
  table_name = "${aws_dynamodb_table.feed-table.name}"
  hash_key   = "${aws_dynamodb_table.feed-table.hash_key}"
  item = <<ITEM
{
  "Id": {"S": "https://post-tenebras-lire.net/review-aphorismes"},
  "title": {"S": "Aphorismes"},
  "writer": {"S": "Wilde, Oscar"},

  "tags": {"S": "#Essai"},
  "link": {"S": "https://post-tenebras-lire.net/review-aphorismes/"},

  "imageUrl": {"S": "https://post-tenebras-lire.net/assets/posts/2012-06-10-review-aphorismes.jpg"}
}
ITEM
}

resource "aws_dynamodb_table_item" "tonbo" {
  table_name = "${aws_dynamodb_table.feed-table.name}"
  hash_key   = "${aws_dynamodb_table.feed-table.hash_key}"
  item = <<ITEM
{
  "Id": {"S": "https://post-tenebras-lire.net/review-tonbo"},
  "title": {"S": "Tonbo"},
  "writer": {"S": "Shimazaki, Aki"},

  "tags": {"S": "#Japon"},
  "link": {"S": "https://post-tenebras-lire.net/review-tonbo/"},

  "imageUrl": {"S": "https://post-tenebras-lire.net/assets/posts/2012-06-08-review-tonbo.jpg"}
}
ITEM
}

resource "aws_dynamodb_table_item" "sex-and-the-japanese-the-sensual-side-of-japan" {
  table_name = "${aws_dynamodb_table.feed-table.name}"
  hash_key   = "${aws_dynamodb_table.feed-table.hash_key}"
  item = <<ITEM
{
  "Id": {"S": "https://post-tenebras-lire.net/review-sex-and-japanese-sensual-side-of"},
  "title": {"S": "Sex and the Japanese: The Sensual Side of Japan"},
  "writer": {"S": "Lafayette de Mente, Boyé"},

  "tags": {"S": "#Japon"},
  "link": {"S": "https://post-tenebras-lire.net/review-sex-and-japanese-sensual-side-of/"},

  "imageUrl": {"S": "https://post-tenebras-lire.net/assets/posts/2012-06-07-review-sex-and-japanese-sensual-side-of.jpg"}
}
ITEM
}

resource "aws_dynamodb_table_item" "au-pays-de-candy" {
  table_name = "${aws_dynamodb_table.feed-table.name}"
  hash_key   = "${aws_dynamodb_table.feed-table.hash_key}"
  item = <<ITEM
{
  "Id": {"S": "https://post-tenebras-lire.net/review-au-pays-de-candy"},
  "title": {"S": "Au pays de Candy"},
  "writer": {"S": "OWNI"},

  "tags": {"S": "#Politique #Surveillance"},
  "link": {"S": "https://post-tenebras-lire.net/review-au-pays-de-candy/"},

  "imageUrl": {"S": "https://post-tenebras-lire.net/assets/posts/2012-06-01-review-au-pays-de-candy.png"}
}
ITEM
}

resource "aws_dynamodb_table_item" "dites-nous-comment-survivre-à-notre-folie" {
  table_name = "${aws_dynamodb_table.feed-table.name}"
  hash_key   = "${aws_dynamodb_table.feed-table.hash_key}"
  item = <<ITEM
{
  "Id": {"S": "https://post-tenebras-lire.net/review-teach-us-to-outgrow-our-madness"},
  "title": {"S": "Dites-nous comment survivre à notre folie"},
  "writer": {"S": "Ōe, Kenzaburō"},

  "tags": {"S": "#Japon"},
  "link": {"S": "https://post-tenebras-lire.net/review-teach-us-to-outgrow-our-madness/"},

  "imageUrl": {"S": "https://post-tenebras-lire.net/assets/posts/2012-05-27-review-teach-us-to-outgrow-our-madness.jpg"}
}
ITEM
}

resource "aws_dynamodb_table_item" "des-fleurs-pour-algernon" {
  table_name = "${aws_dynamodb_table.feed-table.name}"
  hash_key   = "${aws_dynamodb_table.feed-table.hash_key}"
  item = <<ITEM
{
  "Id": {"S": "https://post-tenebras-lire.net/review-des-fleurs-pour-algernon"},
  "title": {"S": "Des fleurs pour Algernon"},
  "writer": {"S": "Keyes, Daniel"},

  "tags": {"S": "#Science-Fiction"},
  "link": {"S": "https://post-tenebras-lire.net/review-des-fleurs-pour-algernon/"},

  "imageUrl": {"S": "https://post-tenebras-lire.net/assets/posts/2012-05-12-review-des-fleurs-pour-algernon.jpg"}
}
ITEM
}

resource "aws_dynamodb_table_item" "les-années-douces-tome-2" {
  table_name = "${aws_dynamodb_table.feed-table.name}"
  hash_key   = "${aws_dynamodb_table.feed-table.hash_key}"
  item = <<ITEM
{
  "Id": {"S": "https://post-tenebras-lire.net/review-les-annees-douces-tome-2"},
  "title": {"S": "Les années douces : Tome 2"},
  "writer": {"S": "Taniguchi, Jirô"},

  "tags": {"S": "#Japon #Manga"},
  "link": {"S": "https://post-tenebras-lire.net/review-les-annees-douces-tome-2/"},

  "imageUrl": {"S": "https://post-tenebras-lire.net/assets/posts/2012-05-12-review-les-annees-douces-tome-2.jpg"}
}
ITEM
}

resource "aws_dynamodb_table_item" "ikebukuro-west-gate-park" {
  table_name = "${aws_dynamodb_table.feed-table.name}"
  hash_key   = "${aws_dynamodb_table.feed-table.hash_key}"
  item = <<ITEM
{
  "Id": {"S": "https://post-tenebras-lire.net/review-ikebukuro-west-gate-park"},
  "title": {"S": "Ikebukuro West Gate Park"},
  "writer": {"S": "Ishida, Ira"},

  "tags": {"S": "#Japon #Polar"},
  "link": {"S": "https://post-tenebras-lire.net/review-ikebukuro-west-gate-park/"},

  "imageUrl": {"S": "https://post-tenebras-lire.net/assets/posts/2012-05-03-review-ikebukuro-west-gate-park.png"}
}
ITEM
}

resource "aws_dynamodb_table_item" "roman-1q84-livre-3-octobre-décembre" {
  table_name = "${aws_dynamodb_table.feed-table.name}"
  hash_key   = "${aws_dynamodb_table.feed-table.hash_key}"
  item = <<ITEM
{
  "Id": {"S": "https://post-tenebras-lire.net/review-1q84-livre-3-octobre-decembre"},
  "title": {"S": "Roman : 1Q84, livre 3 Octobre-Décembre"},
  "writer": {"S": "Murakami, Haruki"},

  "tags": {"S": "#Japon"},
  "link": {"S": "https://post-tenebras-lire.net/review-1q84-livre-3-octobre-decembre/"},

  "imageUrl": {"S": "https://post-tenebras-lire.net/assets/posts/2012-04-29-review-1q84-livre-3-octobre-decembre.jpg"}
}
ITEM
}

resource "aws_dynamodb_table_item" "simon-s-cat-in-kitten-chaos" {
  table_name = "${aws_dynamodb_table.feed-table.name}"
  hash_key   = "${aws_dynamodb_table.feed-table.hash_key}"
  item = <<ITEM
{
  "Id": {"S": "https://post-tenebras-lire.net/review-simon-cat-in-kitten-chaos"},
  "title": {"S": "Simon’s Cat in Kitten Chaos"},
  "writer": {"S": "Tofield, Simon"},

  "tags": {"S": "#Humour"},
  "link": {"S": "https://post-tenebras-lire.net/review-simon-cat-in-kitten-chaos/"},

  "imageUrl": {"S": "https://post-tenebras-lire.net/assets/posts/2012-04-26-review-simon-cat-in-kitten-chaos.jpg"}
}
ITEM
}

resource "aws_dynamodb_table_item" "chroniques-martiennes" {
  table_name = "${aws_dynamodb_table.feed-table.name}"
  hash_key   = "${aws_dynamodb_table.feed-table.hash_key}"
  item = <<ITEM
{
  "Id": {"S": "https://post-tenebras-lire.net/review-chroniques-martiennes"},
  "title": {"S": "Chroniques Martiennes"},
  "writer": {"S": "Bradbury, Ray"},

  "tags": {"S": "#Science-Fiction"},
  "link": {"S": "https://post-tenebras-lire.net/review-chroniques-martiennes/"},

  "imageUrl": {"S": "https://post-tenebras-lire.net/assets/posts/2012-04-22-review-chroniques-martiennes.jpg"}
}
ITEM
}
