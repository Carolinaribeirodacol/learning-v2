const State = require("../models/State");
const factory = require("./handlerFactory");

exports.index = factory.index(State);
exports.show = factory.show(State);
exports.store = factory.store(State);
exports.update = factory.update(State);
exports.destroy = factory.destroy(State);
