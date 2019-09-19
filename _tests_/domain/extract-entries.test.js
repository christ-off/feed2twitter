/**
 * Http mocking done thanks to :
 * https://scotch.io/tutorials/nodejs-tests-mocking-http-requests
 */

const tested = require('../../src/domain/extract-entries');

describe('Testing processing of feed', () => {

  test('Get should return empty array if no feed', () => {
    // GIVEN
    // WHEN
    let result = tested.extractEntries(null);
    // THEN
    expect(result).toBeDefined();
    expect(result).toEqual([]);
  });

  test('Get should return empty array if feed has no entry', () => {
    // GIVEN
    let feedContent = {
      "feed": {
        "$": {"xmlns": "http://www.w3.org/2005/Atom"},
        "generator": [{"_": "Jekyll", "$": {"uri": "https://jekyllrb.com/", "version": "3.7.4"}}],
        "link": [
          {"$": {"href": "http://localhost:4000/feed.xml", "rel": "self", "type": "application/atom+xml"}},
          {"$": {"href": "http://localhost:4000/", "rel": "alternate", "type": "text/html"}}
        ],
        "updated": ["2019-09-11T22:41:39+02:00"],
        "id": ["http://localhost:4000/feed.xml"],
        "title": [{"_": "Post Tenebras Lire", "$": {"type": "html"}}],
        "subtitle": [
          "Le blog de mes lectures : Fantastique, Japon, Polar, Science-fiction mais aussi vulgarisation scientifique"
        ],
        "author": [{"name": ["christ-off"]}],
        "entry": []
      }
    };
    // WHEN
    let result = tested.extractEntries(feedContent);
    // THEN
    expect(result).toBeDefined();
    expect(result).toEqual([]);
  });

  test('Get should return an array', () => {
    // GIVEN
    let feedContent = {
      "feed": {
        "$": {"xmlns": "http://www.w3.org/2005/Atom"},
        "generator": [{"_": "Jekyll", "$": {"uri": "https://jekyllrb.com/", "version": "3.7.4"}}],
        "link": [
          {"$": {"href": "http://localhost:4000/feed.xml", "rel": "self", "type": "application/atom+xml"}},
          {"$": {"href": "http://localhost:4000/", "rel": "alternate", "type": "text/html"}}
        ],
        "updated": ["2019-09-11T22:41:39+02:00"],
        "id": ["http://localhost:4000/feed.xml"],
        "title": [{"_": "Post Tenebras Lire", "$": {"type": "html"}}],
        "subtitle": [
          "Le blog de mes lectures : Fantastique, Japon, Polar, Science-fiction mais aussi vulgarisation scientifique"
        ],
        "author": [
          {
            "name": [
              "christ-off"
            ]
          }
        ],
        "entry": [
          {
            "title": [
              {
                "_": "Hérésie minérale",
                "$": {
                  "type": "html"
                }
              }
            ],
            "link": [
              {
                "$": {
                  "href": "http://localhost:4000/H%C3%A9r%C3%A9sie-min%C3%A9rale-St%C3%A9phane-Desienne/",
                  "rel": "alternate",
                  "type": "text/html",
                  "title": "Hérésie minérale"
                }
              }
            ],
            "published": [
              "2019-09-07T00:00:00+02:00"
            ],
            "updated": [
              "2019-09-07T00:00:00+02:00"
            ],
            "id": [
              "http://localhost:4000/H%C3%A9r%C3%A9sie%20min%C3%A9rale%20St%C3%A9phane%20Desienne"
            ],
            "content": [
              {
                "_": "<p>Un voyage dans l’espace ? Une nouvelle forme de vie ? <br />\nUn père confronté au Grand Inquisiteur de la Congrégation pour la Doctrine de la Foi ?<br />\nCette nouvelle est pour moi !</p>\n\n<p>J’ai souvent de la peine avec les nouvelles.  Je les trouve trop courtes avec trop de personnages pour trop peu de pages.<br />\nStéphane Desienne maitrise l’exercice. Pas de multiplication des personnages. Pas de dispersion temporelle du récit.</p>\n\n<p>J’ai passé un bon moment évidemment trop bref.<br />\nLa question centrale de la nouvelle est qu’est-ce que la vie ? Qu’est-ce que la vie intelligente ?\nLe récit n’est pas sans rappeler la <a href=\"https://fr.wikipedia.org/wiki/Controverse_de_Valladolid\">Controverse de Valladolid</a><br />\nLe format empêche un long développement.<br />\nLe fond est très contemporain. À une époque où l’on découvre des planètes de façon journalière, on ne sait même pas quelle forme peut prendre la vie.<br />\nLa nouvelle jette un regard cru sur notre anthropomorphisme et nos travers bien humains.</p>\n\n<p>On entre aperçoit un univers qui n’est pas sans rappeler “<a href=\"/2015-05-30-roman-sf-les-dividendes-de-lapocalypse\">Les Dividendes de l’Apocalypse</a>”</p>\n\n<p>PS Stéphane c’est quand tu veux pour une “suite” aux Dividendes…</p>\n\n<h2 id=\"la-trouver-\">La trouver ?</h2>\n\n<p>C’était édité chez un éditeur maintenant disparu Walrus.<br />\nMais <a href=\"https://en.tipeee.com/cell68\">Stéphane Desienne est sur Tipee</a> est une des contreparties est “accéder à toute ma production, payante et gratuite, au format EPUB”</p>",
                "$": {
                  "type": "html",
                  "xml:base": "http://localhost:4000/H%C3%A9r%C3%A9sie-min%C3%A9rale-St%C3%A9phane-Desienne/"
                }
              }
            ],
            "author": [
              {
                "name": [
                  "Christ_OFF"
                ]
              }
            ],
            "category": [
              {
                "$": {
                  "term": "Desienne, Stéphane"
                }
              },
              {
                "$": {
                  "term": "Nouvelle"
                }
              },
              {
                "$": {
                  "term": "Science-fiction"
                }
              },
              {
                "$": {
                  "term": "Religion"
                }
              }
            ],
            "summary": [
              {
                "_": "Un voyage dans l’espace ? Une nouvelle forme de vie ? Un père confronté au Grand Inquisiteur de la Congrégation pour la Doctrine de la Foi ? Cette nouvelle est pour moi !",
                "$": {
                  "type": "html"
                }
              }
            ],
            "media:thumbnail": [
              {
                "$": {
                  "xmlns:media": "http://search.yahoo.com/mrss/",
                  "url": "http://localhost:4000/2019-09-07-H%C3%A9r%C3%A9sie%20min%C3%A9rale%20St%C3%A9phane%20Desienne.jpg"
                }
              }
            ]
          },
          {
            "title": [
              {
                "_": "Le Jugement de Jéhovah",
                "$": {
                  "type": "html"
                }
              }
            ],
            "link": [
              {
                "$": {
                  "href": "http://localhost:4000/Le-Jugement-de-J%C3%A9hovah-James-Morrow/",
                  "rel": "alternate",
                  "type": "text/html",
                  "title": "Le Jugement de Jéhovah"
                }
              }
            ],
            "published": [
              "2019-09-06T00:00:00+02:00"
            ],
            "updated": [
              "2019-09-06T00:00:00+02:00"
            ],
            "id": [
              "http://localhost:4000/Le-Jugement-de-J%C3%A9hovah-James-Morrow"
            ],
            "content": [
              {
                "_": "<p>J’écris un peu mes critiques dans l’esprit de recommander ou pas une lecture. <br />\nEt là, je suis un peu partagé. À qui recommander ce livre ?</p>\n\n<h2 id=\"un-petit-résumé-tout-dabord\">Un petit résumé tout d’abord</h2>\n\n<p>Dans le précédent tome, le corps de Dieu est tombé dans l’océan.<br />\nSon corps, objet de toutes les convoitises, a été remorqué avec moult péripéties.<br />\nDans ce tome, on suit Martin luttant contre un cancer incurable et qui a perdu sa femme.<br />\nMartin décide de faire un procès à Dieu. Mais, mais il est mort !<br />\nEt bien pas complètement, déjà le fiston est revenu après trois jours et qui sait s’il n’est pas dans un coma très profond ?<br />\nMais un procès avec quels enjeux ?<br />\nLe corps de Dieu est maintenu réfrigéré et on fait circuler du sang au cas où il resterait un espoir.  <br />\nL’enjeu du procès est de débrancher Dieu et de le laisser mourir/pourrir pour de bon.<br />\nRien que cela.<br />\nMais revenons à la question</p>\n\n<h2 id=\"à-qui-recommander-ce-livre-\">À qui recommander ce livre ?</h2>\n\n<p>Si le mot théodicée ne vous dit rien… une grande partie du livre vous semblera obscur.<br />\nThéodicée :  explication de l’apparente contradiction entre l’existence du mal et celle de Dieu. <br />\nSi vous êtes un spécialiste des justifications du mal malgré l’existence de Dieu alors le roman vous paraitra un peu léger.</p>\n\n<p>Il n’y a pas que le fond qui me ferait hésiter.\nLe roman oscille entre humour et gravité.\nEn effet, Martin décide d’énumérer et d’illustrer les maux présents sur terre.<br />\nCe moment du procès est beaucoup trop long. Tellement long d’ailleurs que même les autres personnages s’en agacent ! C’est dire.</p>\n\n<h2 id=\"rassurez-vous-jai-quand-même-passé-un-bon-moment\">Rassurez-vous j’ai quand même passé un bon moment.</h2>\n\n<p>Il y a de très bonnes trouvailles.<br />\nPar exemple, Martin se promène un moment dans le cerveau de Dieu et rencontre les représentations divines de Noé, Abraham, Job …\nNoé qui parle de tous ceux qu’il n’a pas pu laisser monter dans l’arche et qui tapaient sur la coque.</p>\n\n<p>Pour revenir à la théodicée, il y a de bons passages illustrant les différents arguments de la défense.</p>\n\n<p>J’ai donc apprécié, mais sans doute, car je suis dans la très fine catégorie des athées modestes connaisseurs de théodicée</p>\n\n<h2 id=\"mon-conseil-\">Mon conseil ?</h2>\n\n<p>Regardez plutôt ces deux vidéos de Monsieur Phi. :</p>\n<ul>\n  <li>\n    <table>\n      <tbody>\n        <tr>\n          <td>Notre monde est-il le meilleur des mondes possibles ? (Ft. Dieu)</td>\n          <td>Grain de philo#27</td>\n        </tr>\n      </tbody>\n    </table>\n  </li>\n</ul>\n<iframe width=\"560\" height=\"315\" src=\"https://www.youtube-nocookie.com/embed/zA9nXK1idqI\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen=\"\"></iframe>\n<ul>\n  <li>\n    <table>\n      <tbody>\n        <tr>\n          <td>Leibniz : meilleur avocat du meilleur des mondes</td>\n          <td>Grain de philo #28</td>\n        </tr>\n      </tbody>\n    </table>\n  </li>\n</ul>\n<iframe width=\"560\" height=\"315\" src=\"https://www.youtube-nocookie.com/embed/HrdIuwChv64\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen=\"\"></iframe>\n\n<h2 id=\"le-trouver-\">Le trouver ?</h2>\n\n<p>Je recommande la version eBook bien réalisée et sans DRM</p>\n\n<div class=\"sevenswitch-sell-box sevenswitch-sell-box-complete\"><a href=\"https://www.7switch.com/fr/ebook/9782846266857/from/chtilecteur\" class=\"sevenswitch-sell sevenswitch-sell-large\">Acheter</a></div>\n<script src=\"https://www.7switch.com/assets/widget.js\" type=\"text/javascript\"></script>",
                "$": {
                  "type": "html",
                  "xml:base": "http://localhost:4000/Le-Jugement-de-J%C3%A9hovah-James-Morrow/"
                }
              }
            ],
            "author": [
              {
                "name": [
                  "Christ_OFF"
                ]
              }
            ],
            "category": [
              {
                "$": {
                  "term": "Morrow, James"
                }
              },
              {
                "$": {
                  "term": "Religion"
                }
              },
              {
                "$": {
                  "term": "Humour"
                }
              }
            ],
            "summary": [
              {
                "_": "J’écris un peu mes critiques dans l’esprit de recommander ou pas une lecture. Et là, je suis un peu partagé. À qui recommander ce livre ?",
                "$": {
                  "type": "html"
                }
              }
            ],
            "media:thumbnail": [
              {
                "$": {
                  "xmlns:media": "http://search.yahoo.com/mrss/",
                  "url": "http://localhost:4000/2019-09-06-Le-Jugement-de-J%C3%A9hovah-James-Morrow.jpg"
                }
              }
            ]
          },
          {
            "title": [
              {
                "_": "Le livre jaune",
                "$": {
                  "type": "html"
                }
              }
            ],
            "link": [
              {
                "$": {
                  "href": "http://localhost:4000/Le-livre-jaune-Michael-Roch/",
                  "rel": "alternate",
                  "type": "text/html",
                  "title": "Le livre jaune"
                }
              }
            ],
            "published": [
              "2019-08-26T00:00:00+02:00"
            ],
            "updated": [
              "2019-08-26T00:00:00+02:00"
            ],
            "id": [
              "http://localhost:4000/Le-livre-jaune-Michael-Roch"
            ],
            "content": [
              {
                "_": "<p>Comment parler du Livre jaune ?<br />\nJ’ai trouvé une métaphore.<br />\nL’écriture c’est un peu comme le travail du bois.</p>\n\n<p>Il y a les textes qui ne sont que des buches débitées à la hache.<br />\nC’est brutal, plein d’aspérités, d’échardes, peu travaillé.<br />\nC’est peu respectueux du lecteur. Les phrases s’emboitent mal.  Certains bouts se détachent sans cohérence.<br />\nBref ça ressemble à mes critiques.</p>\n\n<p>Il y a des textes en planches débitées à la scierie.<br />\nOui le contact est plus doux. Le texte peut être même poli mécaniquement.<br />\nMais toutes les planches se ressemblent.<br />\nVites touchées (euh lues) elles sont vites remisées.</p>\n\n<p>Il y a les planches rabotées. Le texte a été travaillé, mais on lui a retiré toutes les aspérités.<br />\nC’est lisse, doux au touché. On peut prendre plaisir à laisser trainer ses doigts en surface..<br />\nMais certains abusent du rabot. La planche est fine. Elle ne pèse plus grand-chose dans la main du lecteur.<br />\nElle est belle, claire, mais manque de profondeur.</p>\n\n<p>Et il y a le bois choisi et travaillé à la main par un ouvrier.<br />\nOuvrier ??? Ouvrier ??? me dites-vous…<br />\nSavez-vous d’où provient le mot “ouvrier” ?  <br />\nC’est un mot issu du terme latin « operari » (ouvrer, soit agir, opérer, travailler avec ses mains) et « operarius » (celui qui fait) nous dit Wikipedia.  <br />\nOeuvre, ouvrier qu’elle belle proximité n’est-ce pas ?<br />\nRevenons à la métaphore.<br />\nLe livre jaune est une sculpture de bois travaillée par un ouvrier du mot.<br />\nMichel Roch, muni de son ciseau à bois, y a sculpté une histoire onirique.<br />\nIl a laissé dans le récit mille renflements, arabesques, détours, courbes, creux, bosses, protubérances et élévations.  <br />\nOui on s’y perd parfois et la phrase précédente n’est qu’une mauvaise et pâle imitation des tournures de phrases qui pourraient vous freiner, vous égarer.<br />\nMais laissez vos doigts glisser.<br />\nVous ne saurez au début vers quel recoin sombre ou lumineux ils vous guideront.</p>\n\n<p>Il n’y a pas que la sculpture du récit. Il y a aussi le traitement du bois en surface : le vocabulaire.  <br />\nIci point de peinture industrielle, de vernis chimique.<br />\nMichel Roch utilise une cire naturelle qu’il a fait pénétrer lentement dans le bois.<br />\nCette cire est généreuse. Le vocabulaire est riche. Les termes sont toujours bien choisis.</p>\n\n<p>C’est bien beau me direz-vous, mais quid du fond, de la sculpture ?<br />\nQue vous êtes impatients !</p>\n\n<p>Et bien je vous laisse le découvrir. Je pense que le chemin qui amène à la fin du roman est plus important que le dénouement.<br />\nLe chemin commence dans l’obscurité et le dépaysement. Soyez persévérants.<br />\nLa sculpture est profonde comme les sentiments qui imprègnent le récit.<br />\nMichel est un conteur des sentiments.</p>\n\n<h2 id=\"autres-avis\">Autres avis</h2>\n\n<ul>\n  <li>Passez voir Deidre de ma part sur <a href=\"http://atraverslamarelle.org/le-livre-jaune-michael-roch-mu-editions\">A travers la marelle</a></li>\n</ul>\n\n<h2 id=\"le-trouver-\">Le trouver ?</h2>\n\n<p>Je recommande la version eBook bien réalisée et sans DRM</p>\n\n<div class=\"sevenswitch-sell-box sevenswitch-sell-box-complete\"><a href=\"https://www.7switch.com/fr/ebook/9782490239092/from/chtilecteur\" class=\"sevenswitch-sell sevenswitch-sell-large\">Acheter</a></div>\n<script src=\"https://www.7switch.com/assets/widget.js\" type=\"text/javascript\"></script>",
                "$": {
                  "type": "html",
                  "xml:base": "http://localhost:4000/Le-livre-jaune-Michael-Roch/"
                }
              }
            ],
            "author": [
              {
                "name": [
                  "Christ_OFF"
                ]
              }
            ],
            "category": [
              {
                "$": {
                  "term": "Roch, Michael"
                }
              },
              {
                "$": {
                  "term": "Onirique"
                }
              }
            ],
            "summary": [
              {
                "_": "Comment parler du Livre jaune ? J’ai trouvé une métaphore. L’écriture c’est un peu comme le travail du bois.",
                "$": {
                  "type": "html"
                }
              }
            ],
            "media:thumbnail": [
              {
                "$": {
                  "xmlns:media": "http://search.yahoo.com/mrss/",
                  "url": "http://localhost:4000/2019-08-26-Le-livre-jaune-Michael-Roch.jpg"
                }
              }
            ]
          },
          {
            "title": [
              {
                "_": "La fille de la supérette",
                "$": {
                  "type": "html"
                }
              }
            ],
            "link": [
              {
                "$": {
                  "href": "http://localhost:4000/La-fille-de-la-sup%C3%A9rette-Sayaka-Murata/",
                  "rel": "alternate",
                  "type": "text/html",
                  "title": "La fille de la supérette"
                }
              }
            ],
            "published": [
              "2019-08-25T00:00:00+02:00"
            ],
            "updated": [
              "2019-08-25T00:00:00+02:00"
            ],
            "id": [
              "http://localhost:4000/La-fille-de-la-sup%C3%A9rette-Sayaka-Murata"
            ],
            "content": [
              {
                "_": "<p>Est davantage un témoignage qu’on objet littéraire : le témoignage de la pression sociale au Japon, la pression de la normalité.<br />\nLa narratrice :</p>\n<ul>\n  <li>n’est pas mariée</li>\n  <li>n’a pas d’enfant</li>\n  <li>n’a qu’un travail temporaire dans un Konbini (le titre original du roman)</li>\n</ul>\n\n<p>Elle n’a jamais réussi à comprendre les codes de la communication humaine.<br />\nAlors le konbini est pour elle le refuge parfait : tout est codifié y compris et surtout les interactions humaines.<br />\nPas besoin de savoir comment saluer : le manuel, la formation, la répétition se chargent de vous l’inculquer.<br />\nUn travail aussi aliénant est pour elle un cadre structuré, rassurant.<br />\nMais, mais la société, ses amies, ses proches ne peuvent accepter et comprendre.<br />\nQue lui reste-t-il alors comme solution ? \nLe subterfuge, l’illusion, l’apparence de la normalité.</p>\n\n<p>C’est un livre qui nous renvoie à nos propres comportements.<br />\nEn lisant le récit, on est plein d’empathie pour la narratrice.<br />\nOn se dit “mais accepter la telle quelle est !”<br />\nMais somme-nous, suis-je, capables de laisser les autres, les différents vivre en paix ?</p>\n\n<h2 id=\"pour-en-savoir-plus\">Pour en savoir plus</h2>\n\n<ul>\n  <li>Un article du JapanTimes qui parle de l’accueil qu’a reçu le livre \n<a href=\"https://www.japantimes.co.jp/culture/2018/06/09/books/convenience-store-woman-sayaka-murata-questions-normality-modern-japan/\">In ‘Convenience Store Woman’, Sayaka Murata questions normality in modern Japan</a></li>\n</ul>\n\n<h2 id=\"dautres-avis\">D’autres avis</h2>\n\n<ul>\n  <li><a href=\"https://nounours36.wordpress.com/2019/02/12/kombini-de-sayaka-murata/\">Bookmaniac</a></li>\n</ul>",
                "$": {
                  "type": "html",
                  "xml:base": "http://localhost:4000/La-fille-de-la-sup%C3%A9rette-Sayaka-Murata/"
                }
              }
            ],
            "author": [
              {
                "name": [
                  "Christ_OFF"
                ]
              }
            ],
            "category": [
              {
                "$": {
                  "term": "Murata, Sayaka"
                }
              },
              {
                "$": {
                  "term": "Japon"
                }
              }
            ],
            "summary": [
              {
                "_": "Est davantage un témoignage qu’on objet littéraire : le témoignage de la pression sociale au Japon, la pression de la normalité. La narratrice : n’est pas mariée n’a pas d’enfant n’a qu’un travail temporaire dans un Konbini (le titre original du roman)",
                "$": {
                  "type": "html"
                }
              }
            ],
            "media:thumbnail": [
              {
                "$": {
                  "xmlns:media": "http://search.yahoo.com/mrss/",
                  "url": "http://localhost:4000/2019-08-25-La-fille-de-la-sup%C3%A9rette-Sayaka-Murata.jpg"
                }
              }
            ]
          },
          {
            "title": [
              {
                "_": "Le chant de Kali",
                "$": {
                  "type": "html"
                }
              }
            ],
            "link": [
              {
                "$": {
                  "href": "http://localhost:4000/Le-chant-de-Kali-Dan-Simmons/",
                  "rel": "alternate",
                  "type": "text/html",
                  "title": "Le chant de Kali"
                }
              }
            ],
            "published": [
              "2019-08-21T00:00:00+02:00"
            ],
            "updated": [
              "2019-08-21T00:00:00+02:00"
            ],
            "id": [
              "http://localhost:4000/Le-chant-de-Kali-Dan-Simmons"
            ],
            "content": [
              {
                "_": "<p>Vous avez envie de plonger dans une poisseuse obscurité ?<br />\nVous désirez ressentir la peur atavique d’être poursuivi, dans des rues pleines de détritus, par des fanatiques sanguinaires ?<br />\nVous craignez d’être englouti et déchiré par une foule hystérique ?</p>\n\n<p>Alors ce roman est pour vous.</p>\n\n<p>Vous aurez en bonus…<br />\nL’angoisse de vous perdre de nuit dans une ville tentaculaire inconnue.<br />\nLa sordide rencontre avec des adorateurs de divinités assoiffées de sacrifices. <br />\nLa fréquentation de cadavre en décomposition.<br />\nLa peur de perdre des êtres chers aux mains d’individus prêts à l’innommable.<br />\nLa rencontre avec un poète transformé pour le pire.<br />\nLa confrontation avec la lèpre.<br />\nUn aperçu de première main sur des rites répugnants.<br />\nUne plongée dans de malsaines ténèbres.<br />\nLa folie.<br />\nLa souffrance physique et morale.</p>\n\n<p>Vous l’aurez compris c’est un roman morbide, moite, glauque, mais fascinant.  <br />\nSans doute la lecture qui vous donnera le moins envie d’aller à Calcutta.</p>",
                "$": {
                  "type": "html",
                  "xml:base": "http://localhost:4000/Le-chant-de-Kali-Dan-Simmons/"
                }
              }
            ],
            "author": [
              {
                "name": [
                  "Christ_OFF"
                ]
              }
            ],
            "category": [
              {
                "$": {
                  "term": "Simmons, Dan"
                }
              },
              {
                "$": {
                  "term": "Fantastique"
                }
              },
              {
                "$": {
                  "term": "Horreur"
                }
              },
              {
                "$": {
                  "term": "Inde"
                }
              }
            ],
            "summary": [
              {
                "_": "Vous avez envie de plonger dans une poisseuse obscurité ? Vous désirez ressentir la peur atavique d’être poursuivi, dans des rues pleines de détritus, par des fanatiques sanguinaires ? Vous craignez d’être englouti et déchiré par une foule hystérique ?",
                "$": {
                  "type": "html"
                }
              }
            ],
            "media:thumbnail": [
              {
                "$": {
                  "xmlns:media": "http://search.yahoo.com/mrss/",
                  "url": "http://localhost:4000/2019-08-21-Le-chant-de-Kali-Dan-Simmons.png"
                }
              }
            ]
          },
          {
            "title": [
              {
                "_": "Les annales du Disque-Monde, Tome 29 : Le régiment monstrueux",
                "$": {
                  "type": "html"
                }
              }
            ],
            "link": [
              {
                "$": {
                  "href": "http://localhost:4000/Les-annales-du-Disque-Monde-Le-r%C3%A9giment-monstrueux/",
                  "rel": "alternate",
                  "type": "text/html",
                  "title": "Les annales du Disque-Monde, Tome 29 : Le régiment monstrueux"
                }
              }
            ],
            "published": [
              "2019-08-19T00:00:00+02:00"
            ],
            "updated": [
              "2019-08-19T00:00:00+02:00"
            ],
            "id": [
              "http://localhost:4000/Les-annales-du-Disque-Monde-Le-r%C3%A9giment-monstrueux"
            ],
            "content": [
              {
                "_": "<p>La lecture d’un roman du disque monde est toujours un moment drôle et agréable.<br />\nAu fur et à mesure que j’avance dans la série, je trouve que le thème qui sous-tend le récit est de plus en plus grave.<br />\nEt c’est une bonne chose.</p>\n\n<p>Pour cet opus, on suit Margot, serveuse dans l’auberge familiale, qui va s’engager dans l’invicible (sic) armée de Borogravie.<br />\nElle s’enrôle, car elle veut retrouver son frère.<br />\nElle l’a toujours protégé et elle a besoin de lui, car voyez-vous en Borogravie personne n’autoriserait une femme à tenir un établissement.<br />\nToute la société, l’armée et la religion borograviennes traitent les femmes comme moins que rien.</p>\n\n<p>On va suivre Margot dans une épopée bien différente (et incomparablement moins niaise) de celle de Mulan.\nElle est incorporée dans le régiment monstrueux (enfin plutôt l’escouade), car s’engage avec elle un “Igor”, un vampire, un troll et quelques autres personnages hauts en couleur.\nL’aventure est palpitante.<br />\nLes dialogues savoureux et bien envoyés.<br />\nCela m’a fait penser par moment aux aventures militaires du “Brave Soldat Chveïk”.<br />\nSoyons clair on entrevoie assez facilement ce qu’il va se passer, mais cela ne gâche rien au plaisir.<br />\nIl y a des moments de pure jubilation et des moments plus prenants (ceux où le disque-monde se rapproche du nôtre).</p>\n\n<p>Encore un bon tome du disque monde. Vivement le suivant</p>",
                "$": {
                  "type": "html",
                  "xml:base": "http://localhost:4000/Les-annales-du-Disque-Monde-Le-r%C3%A9giment-monstrueux/"
                }
              }
            ],
            "author": [
              {
                "name": [
                  "Christ_OFF"
                ]
              }
            ],
            "category": [
              {
                "$": {
                  "term": "Pratchett, Terry"
                }
              },
              {
                "$": {
                  "term": "Fantasy"
                }
              },
              {
                "$": {
                  "term": "Humour"
                }
              }
            ],
            "summary": [
              {
                "_": "La lecture d’un roman du disque monde est toujours un moment drôle et agréable. Au fur et à mesure que j’avance dans la série, je trouve que le thème qui sous-tend le récit est de plus en plus grave. Et c’est une bonne chose.",
                "$": {
                  "type": "html"
                }
              }
            ],
            "media:thumbnail": [
              {
                "$": {
                  "xmlns:media": "http://search.yahoo.com/mrss/",
                  "url": "http://localhost:4000/2019-08-19-Les-annales-du-Disque-Monde-Le-r%C3%A9giment-monstrueux.jpg"
                }
              }
            ]
          },
          {
            "title": [
              {
                "_": "Andromède: Voyager Tome 3",
                "$": {
                  "type": "html"
                }
              }
            ],
            "link": [
              {
                "$": {
                  "href": "http://localhost:4000/Androm%C3%A8de_Voyager_Tome_3_stephanne_desienne/",
                  "rel": "alternate",
                  "type": "text/html",
                  "title": "Andromède: Voyager Tome 3"
                }
              }
            ],
            "published": [
              "2019-08-12T00:00:00+02:00"
            ],
            "updated": [
              "2019-08-12T00:00:00+02:00"
            ],
            "id": [
              "http://localhost:4000/Androm%C3%A8de_Voyager_Tome_3_stephanne_desienne"
            ],
            "content": [
              {
                "_": "<h2 id=\"avis\">Avis</h2>\n\n<p>L’aventure prend de l’ampleur. L’échelle dépasse l’humain, le solaire pour atteindre le galactique ou plus.  <br />\nC’est toujours aussi passionnant.<br />\nJ’ai juste été un peu perdu tant certains personnages prennent parfois un peu trop de distance spatiale et temporelle avec le reste du récit.<br />\nC’est pourtant le propre de la science-fiction, non ?</p>\n\n<p>D’un point de vue personnel, il me reste un doute :<br />\nUne entité avancée nous donnerait t’elle vraiment un coup de pouce ? Elle nous a observé pratiquer l’art de l’auto-anéantissement.\nL’humanité vaut t’elle d’être sauvée d’elle même ?</p>\n\n<p>Point bonus : j’aime les romans de science-fiction où le contact ne se fait pas avec des insectes (sauf si ce sont des arachnides comme dans, l’exccccelllent “Dans la toile du temps”), ou une société à l’orgnisation si proche de nous.\nPoint bonus : les personnages clefs sont des femmes.</p>\n\n<p>C’est une bonne conclusion pour une trilogie ambitieuse.</p>\n\n<h2 id=\"liens\">Liens</h2>\n\n<ul>\n  <li><a href=\"https://www.editionsdu38.com/science-fiction-fantasy-fantastique-collection-du-fou/science-fiction/voyager-3-androm%C3%A8de/\">Les editions du 38</a></li>\n  <li>Achat chez 7Switch :</li>\n</ul>\n<div class=\"sevenswitch-sell-box sevenswitch-sell-box-complete\"><a href=\"https://www.7switch.com/fr/ebook/9782374536965/from/chtilecteur\" class=\"sevenswitch-sell sevenswitch-sell-large\">Acheter</a></div>\n<script src=\"https://www.7switch.com/assets/widget.js\" type=\"text/javascript\"></script>",
                "$": {
                  "type": "html",
                  "xml:base": "http://localhost:4000/Androm%C3%A8de_Voyager_Tome_3_stephanne_desienne/"
                }
              }
            ],
            "author": [
              {
                "name": [
                  "Christ_OFF"
                ]
              }
            ],
            "category": [
              {
                "$": {
                  "term": "Desienne, Stéphane"
                }
              },
              {
                "$": {
                  "term": "Science-fiction"
                }
              }
            ],
            "summary": [
              {
                "_": "Avis",
                "$": {
                  "type": "html"
                }
              }
            ],
            "media:thumbnail": [
              {
                "$": {
                  "xmlns:media": "http://search.yahoo.com/mrss/",
                  "url": "http://localhost:4000/2019-08-12-Androm%C3%A8de_Voyager_Tome_3_stephanne_desienne.jpg"
                }
              }
            ]
          },
          {
            "title": [
              {
                "_": "Confins: Voyager Tome 2",
                "$": {
                  "type": "html"
                }
              }
            ],
            "link": [
              {
                "$": {
                  "href": "http://localhost:4000/Confins_Voyager_Tome-2_stephanne_desienne/",
                  "rel": "alternate",
                  "type": "text/html",
                  "title": "Confins: Voyager Tome 2"
                }
              }
            ],
            "published": [
              "2019-08-11T00:00:00+02:00"
            ],
            "updated": [
              "2019-08-11T00:00:00+02:00"
            ],
            "id": [
              "http://localhost:4000/Confins_Voyager_Tome%202_stephanne_desienne"
            ],
            "content": [
              {
                "_": "<h2 id=\"avis\">Avis</h2>\n\n<p>J’avais lu le tome 1 <a href=\"/roman-sf-voyager-de-stephanne-desienne/\">“Voyager, tome 1 : Jonctions”</a> en regrettant un manque de suite !<br />\nDes années plus tard j’ai pu enfin poursuivre l’aventure.</p>\n\n<p>Aventure est le bon mot.  Voyager est une véritable poursuite spatiale.\nLe tome 2 permet de poser encore mieux le décor. On découvre dans quel état est la terre.  On découvre l’espace terrain de domination.  <br />\nEt oui, l’humanité est égale à elle-même : toujours à la recherche du pouvoir personnel aux dépens des factions d’en face.\nAlors, quand il s’agit de découvrir qui ou quoi aurait pu retirer les disques des sondes voyager …\nCar ce ne sont pas des humains…<br />\nJe ne spolierais pas le tome, mais certaines réponses sont données. Le suspens est clairement plus relevé : les enjeux sont immenses et personne ne fera de cadeaux.\nHeureusement, certaines femmes et un chimpanzé en particulier vont tenter de ramener tout le monde à la raison.\nVont-ils réussir à offrir une porte de sortie à une humanité divisée, mais vulnérable ?\nEt bien la suite au tome 3 !</p>\n\n<h2 id=\"liens\">Liens</h2>\n\n<ul>\n  <li><a href=\"https://www.editionsdu38.com/science-fiction-fantasy-fantastique-collection-du-fou/science-fiction/voyager-2-confins/\">Les editions du 38</a></li>\n  <li>Achat chez 7Switch :</li>\n</ul>\n<div class=\"sevenswitch-sell-box sevenswitch-sell-box-complete\"><a href=\"https://www.7switch.com/fr/ebook/9782374536859/from/chtilecteur\" class=\"sevenswitch-sell sevenswitch-sell-large\">Acheter</a></div>\n<script src=\"https://www.7switch.com/assets/widget.js\" type=\"text/javascript\"></script>",
                "$": {
                  "type": "html",
                  "xml:base": "http://localhost:4000/Confins_Voyager_Tome-2_stephanne_desienne/"
                }
              }
            ],
            "author": [
              {
                "name": [
                  "Christ_OFF"
                ]
              }
            ],
            "category": [
              {
                "$": {
                  "term": "Desienne, Stéphane"
                }
              },
              {
                "$": {
                  "term": "Science-fiction"
                }
              }
            ],
            "summary": [
              {
                "_": "Avis",
                "$": {
                  "type": "html"
                }
              }
            ],
            "media:thumbnail": [
              {
                "$": {
                  "xmlns:media": "http://search.yahoo.com/mrss/",
                  "url": "http://localhost:4000/2019-08-11-Confins_Voyager_Tome%202_stephanne_desienne.jpg"
                }
              }
            ]
          },
          {
            "title": [
              {
                "_": "La mort immortelle",
                "$": {
                  "type": "html"
                }
              }
            ],
            "link": [
              {
                "$": {
                  "href": "http://localhost:4000/La_mort_immortelle_Cixin_Liu/",
                  "rel": "alternate",
                  "type": "text/html",
                  "title": "La mort immortelle"
                }
              }
            ],
            "published": [
              "2019-08-07T00:00:00+02:00"
            ],
            "updated": [
              "2019-08-07T00:00:00+02:00"
            ],
            "id": [
              "http://localhost:4000/La_mort_immortelle_Cixin_Liu"
            ],
            "content": [
              {
                "_": "<p>Comme dans mes précédents avis : je vais divulgâcher\nJe suis dans le troisième tome alors une simple ligne ne suffit pas\nIl faut un mur (c’est la triste mode en ce moment)\nNe franchissez pas ce mur si vous craignez d’en savoir trop sur les tomes précédents</p>\n\n<p><code class=\"highlighter-rouge\">================================================</code><br />\n<code class=\"highlighter-rouge\">|| || || || || mur de spoil || || || || || || ||</code> <br />\n<code class=\"highlighter-rouge\">================================================</code></p>\n\n<p>La trilogie repose entre autres sur l’idée de forêt sombre :</p>\n<ul>\n  <li>l’univers est avare en ressources propices à la vie</li>\n  <li>la vie épuise ces ressources</li>\n  <li>dans un vaste univers “sombre” celui qui dévoile sa position risque avant tout la convoitise de civilisations plus puissantes.</li>\n</ul>\n\n<p>Alors, Luo Ji va s’appuyer là-dessus pour dissuader les tri-solariens de venir conquérir la Terre.<br />\nOui une dissuasion bien humaine, un jeu du perdant perdant : si vous venez, on annonce à tous la position de votre système planétaire.\nOui un de vos voisins viendra vous rendre une visite peu amicale\nOui comme nous sommes voisins, quelqu’un ne tardera pas à faire le rapprochement et nous détruire aussi.\nDevant cela, les tri-solariens “capitulent”.</p>\n\n<p>Mais … le ferme Luo Ji clef de voute de la dissuasion (il a le pouvoir de déclencher le message) va laisser sa place à Cheng Xin.<br />\nQui elle va décider de ne pas utiliser cette dissuasion.<br />\nElle abandonne le perdant perdant pour … Une défaite totale de l’humanité.<br />\nJ’ai été alors plongé dans une grande perplexité.<br />\nQuel message essaye de nous passer l’auteur ?  Très franchement, je n’ai pas encore trouvé.\nCheng Xin survit à cela. Je ne suis pas arrivé à comprendre comment elle peut continuer à vivre malgré l’écrasement de l’humanité (qui est parquée en Australie).  <br />\nDes centaines de millions de morts et vivre avec ça.</p>\n\n<p>L’histoire ne s’arrête pas là.</p>\n\n<p>De nombreux rebondissements vont permettre à l’humanité de renverser le cours des choses et se disséminer dans l’espace.\nDe grandes découvertes.<br />\nDe grands destins pour un récit qui nous emmène très loin dans le temps et dans l’espace.</p>\n\n<p>Cheng Xin se trouve liée à des hommes aux destins extraordinaires :</p>\n<ul>\n  <li>Un envoyé auprès des tri-solariens, qui va employer des moyens très humains (des contes !) pour leur révéler de profonds secrets tri-solariens.</li>\n  <li>Un “ennemi” de Cheng Xin qui se soumet pourtant à son jugement. Car oui elle influe de nouveau sur le destin de l’humanité en faisant un choix qui condamne à priori l’humanité (de nouveau !).</li>\n</ul>\n\n<p>De nouveaux thèmes fascinants apparaissent :</p>\n\n<p>Nos voisins vont sans doute nous détruire pour éviter le moindre risque.\nComment leur dire qu’ils n’ont rien à craindre ? Et qu’ils le comprennent et en soient certains ?</p>\n\n<p>Que deviennent les bouts d’humanité à bord des vaisseaux à jamais séparés de l’humanité ?<br />\nUn petit groupe, isolé, en mode survie est bien prompt a perdre certaines valeurs.</p>\n\n<p>Je me demande ce qu’a voulu dire l’auteur ?</p>\n<ul>\n  <li>Les “défaites” de Cheng Xin, son refus d’entrer dans des jeux perdant-perdant, est-il au bout du compte le bon chemin ?</li>\n  <li>Et peut-être : que doit-on sauver de l’humanité ?</li>\n</ul>\n\n<p>Passionnant donc même si Cheng Xin me laisse perplexe, l’impénétrable Luo Ji est au final bien plus compréhensible.</p>",
                "$": {
                  "type": "html",
                  "xml:base": "http://localhost:4000/La_mort_immortelle_Cixin_Liu/"
                }
              }
            ],
            "author": [
              {
                "name": [
                  "Christ_OFF"
                ]
              }
            ],
            "category": [
              {
                "$": {
                  "term": "Liu, Cixin"
                }
              },
              {
                "$": {
                  "term": "Science-fiction"
                }
              }
            ],
            "summary": [
              {
                "_": "Comme dans mes précédents avis : je vais divulgâcher Je suis dans le troisième tome alors une simple ligne ne suffit pas Il faut un mur (c’est la triste mode en ce moment) Ne franchissez pas ce mur si vous craignez d’en savoir trop sur les tomes précédents ================================================ || || || || || mur de spoil || || || || || || || ================================================",
                "$": {
                  "type": "html"
                }
              }
            ],
            "media:thumbnail": [
              {
                "$": {
                  "xmlns:media": "http://search.yahoo.com/mrss/",
                  "url": "http://localhost:4000/2019-08-07-La_mort_immortelle_Cixin_Liu.jpg"
                }
              }
            ]
          },
          {
            "title": [
              {
                "_": "L’histoire du Québec en 30 secondes",
                "$": {
                  "type": "html"
                }
              }
            ],
            "link": [
              {
                "$": {
                  "href": "http://localhost:4000/L_histoire_du_Qu%C3%A9bec_en_30_secondes_Jean-Pierre_Charland/",
                  "rel": "alternate",
                  "type": "text/html",
                  "title": "L'histoire du Québec en 30 secondes"
                }
              }
            ],
            "published": [
              "2019-07-31T00:00:00+02:00"
            ],
            "updated": [
              "2019-07-31T00:00:00+02:00"
            ],
            "id": [
              "http://localhost:4000/L_histoire_du_Qu%C3%A9bec_en_30_secondes_Jean-Pierre_Charland"
            ],
            "content": [
              {
                "_": "<p>Un ouvrage d’introduction à l’histoire du Québec.\nLe titre “en 3 secondes” laisse penser à un ouvrage de faible niveau.\nChaque chapitre porte sur une période, un thème, un personnage.\nEt oui, il y a par chapitre un résumé qui se lit en 3 secondes\nMais il y a aussi une ou deux pages pour traiter correctement le sujet.\nHélas, le contenu manque souvent de mise en perspective et de contexte</p>\n\n<p>En résumé : une bonne introduction avec des références pour creuser vraiment le sujet</p>",
                "$": {
                  "type": "html",
                  "xml:base": "http://localhost:4000/L_histoire_du_Qu%C3%A9bec_en_30_secondes_Jean-Pierre_Charland/"
                }
              }
            ],
            "author": [
              {
                "name": [
                  "Christ_OFF"
                ]
              }
            ],
            "category": [
              {
                "$": {
                  "term": "Charland, Jean-Pierre"
                }
              },
              {
                "$": {
                  "term": "Histoire"
                }
              },
              {
                "$": {
                  "term": "Québec"
                }
              }
            ],
            "summary": [
              {
                "_": "Un ouvrage d’introduction à l’histoire du Québec. Le titre “en 3 secondes” laisse penser à un ouvrage de faible niveau. Chaque chapitre porte sur une période, un thème, un personnage. Et oui, il y a par chapitre un résumé qui se lit en 3 secondes Mais il y a aussi une ou deux pages pour traiter correctement le sujet. Hélas, le contenu manque souvent de mise en perspective et de contexte",
                "$": {
                  "type": "html"
                }
              }
            ],
            "media:thumbnail": [
              {
                "$": {
                  "xmlns:media": "http://search.yahoo.com/mrss/",
                  "url": "http://localhost:4000/2019-07-31-L_histoire_du_Qu%C3%A9bec_en_30_secondes_Jean-Pierre_Charland.jpg"
                }
              }
            ]
          }
        ]
      }
    };
    // WHEN
    let result = tested.extractEntries(feedContent);
    // THEN
    expect(result).toBeDefined();
    expect(result.length).toBe(10);
    expect(result[0].id[0]).toBe('http://localhost:4000/H%C3%A9r%C3%A9sie%20min%C3%A9rale%20St%C3%A9phane%20Desienne');
  });

});

