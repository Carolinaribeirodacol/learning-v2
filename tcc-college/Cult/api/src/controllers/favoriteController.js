const Favorite = require("../models/Favorite");
const factory = require("./handlerFactory");

exports.index = factory.index(Favorite);
exports.show = factory.show(Favorite);
exports.store = factory.store(Favorite);
exports.update = factory.update(Favorite);
exports.destroy = factory.destroy(Favorite);
