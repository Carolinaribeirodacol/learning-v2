const User = require("../models/User");
const factory = require("./handlerFactory");

exports.index = factory.index(User);
exports.show = factory.show(User);
exports.store = factory.store(User);
exports.update = factory.update(User);
exports.destroy = factory.destroy(User);
