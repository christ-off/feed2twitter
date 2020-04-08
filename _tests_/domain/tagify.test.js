'use strict';

const tested = require('../../src/domain/tagify');

describe('Test tagifying post tags', () => {

    test('Should work on simple case', () => {
        // GIVEN
        let scanarii = [
            ["simple", "#simple"],
            ["Science-Fiction", "#ScienceFiction"],
            ["Coup De Cœur", "#CoupDeCœur"],
            ["eBook Sans DRM", "#eBookSansDRM"]
        ];
        // WHEN
        scanarii.forEach(scenario => {
            let result = tested.tagify(scenario[0]);
            // THEN
            expect(result).toBe(scenario[1]);
        });
    });
});

