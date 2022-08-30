const City = require("../models/City");
const factory = require("./handlerFactory");

exports.index = factory.index(City);
exports.show = factory.show(City);
exports.store = factory.store(City);
exports.update = factory.update(City);
exports.destroy = factory.destroy(City);
