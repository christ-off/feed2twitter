"use strict";

String.prototype.hyphensToNothing = function () {
    return this.replace(/-/g, " ");
};

String.prototype.spacesToNothing = function () {
    return this.replace(/ /g, "");
};

exports.tagify = input => {
    return "#" +
        input
            .hyphensToNothing()
            .spacesToNothing()
        ;
}