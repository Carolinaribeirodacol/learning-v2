const Trip = require("../models/Trip");
const factory = require("./handlerFactory");

exports.index = factory.index(Trip);
exports.show = factory.show(Trip);
exports.store = factory.store(Trip);
exports.update = factory.update(Trip);
exports.destroy = factory.destroy(Trip);
