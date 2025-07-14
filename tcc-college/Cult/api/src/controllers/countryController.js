const Country = require("../models/Country");
const factory = require("./handlerFactory");

exports.index = factory.index(Country);
exports.show = factory.show(Country);
exports.store = factory.store(Country);
exports.update = factory.update(Country);
exports.destroy = factory.destroy(Country);
