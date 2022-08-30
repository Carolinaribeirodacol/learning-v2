const TripDay = require("../models/TripDay");
const factory = require("./handlerFactory");

exports.index = factory.index(TripDay);
exports.show = factory.show(TripDay);
exports.store = factory.store(TripDay);
exports.update = factory.update(TripDay);
exports.destroy = factory.destroy(TripDay);
