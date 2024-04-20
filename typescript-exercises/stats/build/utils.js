"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
exports.dateStringToDate = function (dateString) {
    // 28/10/2020
    var dateParts = dateString.split('/').map(function (value) {
        return parseInt(value);
    }); // ['28', '10', '2020']
    return new Date(dateParts[2], dateParts[1] - 1, dateParts[0]);
};
