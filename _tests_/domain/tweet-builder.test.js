'use strict';

const tested = require('../../src/domain/tweet-builder');
const mockedTwitterAuthor = require('../../src/domain/get-author-twitter-handle');
jest.mock('../../src/domain/get-author-twitter-handle');

const COMPLEX_INFO = {
    id: 'https://post-tenebras-lire.net/H%C3%A9r%C3%A9sie-min%C3%A9rale-St%C3%A9phane-Desienne',
    title: 'Hérésie minérale',
    writer: 'Desienne, Stéphane',
    tags: "Nouvelle, Science-Fiction, Religion",
    link: 'https://post-tenebras-lire.net/H%C3%A9r%C3%A9sie-min%C3%A9rale-St%C3%A9phane-Desienne/'
};

const SIMPLE_INFO = {
    date: "2017-01-04T00:00:00+01:00",
    imageUrl: "https://post-tenebras-lire.net/assets/posts/2017-01-04-lecture-bad-science-de-ben-goldacre.webp",
    writer: "Goldacre, Ben",
    link: "https://post-tenebras-lire.net/lecture-bad-science-de-ben-goldacre/",
    Id: "https://post-tenebras-lire.net/lecture-bad-science-de-ben-goldacre",
    tags: "Science",
    title: "Bad Science"
};

describe('Test building tweet properties', () => {

    test('Should extract complex expected status', async () => {
        expect.assertions(4);
        // GIVEN
        const EXPECTED_STATUS = 'Ancien avis de #Lecture : Hérésie minérale - @DesienneAuteur #Nouvelle #ScienceFiction #Religion https://post-tenebras-lire.net/H%C3%A9r%C3%A9sie-min%C3%A9rale-St%C3%A9phane-Desienne/';
        mockedTwitterAuthor.getAuthorTwitterHandle = jest.fn().mockImplementation(() => {
            return '@DesienneAuteur'
        });
        // WHEN
        let result = await tested.extractStatus(COMPLEX_INFO);
        // THEN
        expect(result).toBeDefined();
        expect(result).toEqual(EXPECTED_STATUS);
        expect(mockedTwitterAuthor.getAuthorTwitterHandle.mock.calls.length).toBe(1);
        expect(mockedTwitterAuthor.getAuthorTwitterHandle.mock.calls[0][0]).toBe('Desienne, Stéphane');
    });

    test('Should extract simple expected status', async () => {
        expect.assertions(4);
        // GIVEN
        const EXPECTED_STATUS = 'Ancien avis de #Lecture : Bad Science - Goldacre, Ben #Science https://post-tenebras-lire.net/lecture-bad-science-de-ben-goldacre/';
        mockedTwitterAuthor.getAuthorTwitterHandle = jest.fn().mockImplementation(() => {
            return 'Goldacre, Ben'
        });
        // WHEN
        let result = await tested.extractStatus(SIMPLE_INFO);
        // THEN
        expect(result).toBeDefined();
        expect(result).toEqual(EXPECTED_STATUS);
        expect(mockedTwitterAuthor.getAuthorTwitterHandle.mock.calls.length).toBe(1);
        expect(mockedTwitterAuthor.getAuthorTwitterHandle.mock.calls[0][0]).toBe('Goldacre, Ben');
    });

});

