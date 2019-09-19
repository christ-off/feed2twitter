/**
 * Http mocking done thanks to :
 * https://scotch.io/tutorials/nodejs-tests-mocking-http-requests
 */

const tested = require('../../src/domain/tweet-builder');

const INFO = {
    id: 'https://post-tenebras-lire.net/H%C3%A9r%C3%A9sie-min%C3%A9rale-St%C3%A9phane-Desienne',
    title: 'Hérésie minérale',
    writer: 'Desienne, Stéphane',
    tags: ['Nouvelle', 'Science-Fiction', 'Religion'],
    link: 'https://post-tenebras-lire.net/H%C3%A9r%C3%A9sie-min%C3%A9rale-St%C3%A9phane-Desienne/',
    imageUrl: 'https://post-tenebras-lire.net/2019-09-07-H%C3%A9r%C3%A9sie%20min%C3%A9rale%20St%C3%A9phane%20Desienne.jpg'
};

describe('Test building tweet properties', () => {

    test('Should extract expected status', () => {
        // GIVEN
        const EXPECTED_STATUS = 'Ancien avis de #Lecture : Hérésie minérale - Desienne, Stéphane #Nouvelle #ScienceFiction #Religion https://post-tenebras-lire.net/H%C3%A9r%C3%A9sie-min%C3%A9rale-St%C3%A9phane-Desienne/';
        // WHEN
        let result = tested.extractStatus(INFO);
        // THEN
        expect(result).toBeDefined();
        expect(result).toEqual(EXPECTED_STATUS);
    });

});

