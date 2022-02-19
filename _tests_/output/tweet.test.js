/**
 * Http mocking done thanks to :
 * https://scotch.io/tutorials/nodejs-tests-mocking-http-requests
 */

const tested = require('../../src/output/tweet');
const dotenv = require('dotenv');

const INFO = {
    id: 'https://post-tenebras-lire.net/H%C3%A9r%C3%A9sie-min%C3%A9rale-St%C3%A9phane-Desienne',
    title: 'Hérésie minérale',
    writer: 'Desienne, Stéphane',
    tags: ['Nouvelle', 'Science-Fiction', 'Religion'],
    link: 'https://post-tenebras-lire.net/H%C3%A9r%C3%A9sie-min%C3%A9rale-St%C3%A9phane-Desienne/'
};

describe('Testing posting', () => {

    beforeAll(() => {
        // use dotenv.config(); to load "real" env config
        dotenv.config({ path: '.envtest' });
        tested.config();
    });

    test('Enable next test to tweet', () => {
    });

    //ENABLING WILL TWEET
/*
    test('Should tweet', async () => {
        expect.assertions(1);
        // GIVEN
        let result = await tested.post(INFO);
        // THEN
        expect(result).toBeDefined();
    });
*/

});

