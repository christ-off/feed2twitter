/**
 * Http mocking done thanks to :
 * https://scotch.io/tutorials/nodejs-tests-mocking-http-requests
 */

const tested = require('../../src/domain/transform-entry');
const dotenv = require('dotenv');

const ENTRY = {
  "title": [
    {
      "_": "Hérésie minérale",
      "$": { "type": "html"}
    }
  ],
  "link": [
    {
      "$": {
        "href": "https://post-tenebras-lire.net/H%C3%A9r%C3%A9sie-min%C3%A9rale-St%C3%A9phane-Desienne/",
        "rel": "alternate",
        "type": "text/html",
        "title": "Hérésie minérale"
      }
    }
  ],
  "published": ["2019-09-07T00:00:00+02:00"],
  "updated": ["2019-09-07T00:00:00+02:00"],
  "id": ["https://post-tenebras-lire.net/H%C3%A9r%C3%A9sie-min%C3%A9rale-St%C3%A9phane-Desienne"],
  "content": [
    {
      "_": "<p>Un voyage dans l’espace ? Une nouvelle forme de vie ? <br />\nUn père confronté au Grand Inquisiteur de la Congrégation pour la Doctrine de la Foi ?<br />\nCette nouvelle est pour moi !</p>\n\n<p>J’ai souvent de la peine avec les nouvelles.  Je les trouve trop courtes avec trop de personnages pour trop peu de pages.<br />\nStéphane Desienne maitrise l’exercice. Pas de multiplication des personnages. Pas de dispersion temporelle du récit.</p>\n\n<p>J’ai passé un bon moment évidemment trop bref.<br />\nLa question centrale de la nouvelle est qu’est-ce que la vie ? Qu’est-ce que la vie intelligente ?\nLe récit n’est pas sans rappeler la <a href=\"https://fr.wikipedia.org/wiki/Controverse_de_Valladolid\">Controverse de Valladolid</a><br />\nLe format empêche un long développement.<br />\nLe fond est très contemporain. À une époque où l’on découvre des planètes de façon journalière, on ne sait même pas quelle forme peut prendre la vie.<br />\nLa nouvelle jette un regard cru sur notre anthropomorphisme et nos travers bien humains.</p>\n\n<p>On entre aperçoit un univers qui n’est pas sans rappeler “<a href=\"/2015-05-30-roman-sf-les-dividendes-de-lapocalypse\">Les Dividendes de l’Apocalypse</a>”</p>\n\n<p>PS Stéphane c’est quand tu veux pour une “suite” aux Dividendes…</p>\n\n<h2 id=\"la-trouver-\">La trouver ?</h2>\n\n<p>C’était édité chez un éditeur maintenant disparu Walrus.<br />\nMais <a href=\"https://en.tipeee.com/cell68\">Stéphane Desienne est sur Tipee</a> est une des contreparties est “accéder à toute ma production, payante et gratuite, au format EPUB”</p>",
      "$": {"type": "html", "xml:base": "http://localhost:4000/H%C3%A9r%C3%A9sie-min%C3%A9rale-St%C3%A9phane-Desienne/"
      }
    }
  ],
  "author": [{"name": ["Christ_OFF"]}],
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
        "term": "Science-Fiction"
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
      "$": {"type": "html"}
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
};

describe('Test information extraction from entry', () => {

  beforeAll(() => {
    dotenv.config({ path: '.envtest' });
  });

  test('Should extract expected title', () => {
    // GIVEN
    const EXPECTED_STATUS = 'Ancien avis de #Lecture : Hérésie minérale - Desienne, Stéphane #Nouvelle #ScienceFiction #Religion https://post-tenebras-lire.net/H%C3%A9r%C3%A9sie-min%C3%A9rale-St%C3%A9phane-Desienne/';
    // WHEN
    let result = tested.extractStatus(ENTRY);
    // THEN
    expect(result).toBeDefined();
    expect(result).toEqual(EXPECTED_STATUS);
  });

});

