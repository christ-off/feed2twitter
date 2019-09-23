'use strict';

const tested = require('../../src/domain/tweet-builder');
const mockedTwitterAuthor = require('../../src/domain/get-author-twitter-handle');
jest.mock('../../src/domain/get-author-twitter-handle');

const INFO = {
    id: 'https://post-tenebras-lire.net/H%C3%A9r%C3%A9sie-min%C3%A9rale-St%C3%A9phane-Desienne',
    title: 'Hérésie minérale',
    writer: 'Desienne, Stéphane',
    tags: ['Nouvelle', 'Science-Fiction', 'Religion'],
    link: 'https://post-tenebras-lire.net/H%C3%A9r%C3%A9sie-min%C3%A9rale-St%C3%A9phane-Desienne/',
    imageUrl: 'https://post-tenebras-lire.net/2019-09-07-H%C3%A9r%C3%A9sie%20min%C3%A9rale%20St%C3%A9phane%20Desienne.jpg'
};

describe('Test building tweet properties', () => {

    test('Should extract expected status', async () => {
        expect.assertions(4);
        // GIVEN
        const EXPECTED_STATUS = 'Ancien avis de #Lecture : Hérésie minérale - @DesienneAuteur #Nouvelle #ScienceFiction #Religion https://post-tenebras-lire.net/H%C3%A9r%C3%A9sie-min%C3%A9rale-St%C3%A9phane-Desienne/';
        mockedTwitterAuthor.getAuthorTwitterHandle = jest.fn().mockImplementation(() => { return '@DesienneAuteur' } );
        // WHEN
        let result = await tested.extractStatus(INFO);
        // THEN
        expect(result).toBeDefined();
        expect(result).toEqual(EXPECTED_STATUS);
        expect(mockedTwitterAuthor.getAuthorTwitterHandle.mock.calls.length).toBe(1);
        expect(mockedTwitterAuthor.getAuthorTwitterHandle.mock.calls[0][0]).toBe('Desienne, Stéphane');
    });

});

