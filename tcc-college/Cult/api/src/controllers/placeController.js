const Place = require("../models/Place");
const factory = require("./handlerFactory");

exports.index = factory.index(Place);
exports.show = factory.show(Place);
exports.store = factory.store(Place);
exports.update = factory.update(Place);
exports.destroy = factory.destroy(Place);
