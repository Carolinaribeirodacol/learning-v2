City = require('../Models/CityModel');

exports.index = function (req, res) {
    City.get(function (err, city) {
        if (err)
            res.json({
                status: "error",
                message: err
            });
        res.json({
            message: "Got city Successfully!",
            data: city       
        });
    });
};

exports.add = function (req, res) {
    var city = new City();
    city.name = req.body.name? req.body.name: city.name;
    city.country = req.body.country;

    city.save(function () {
        res.json({
            message: "New city Added!",
            data: city
        });
    });
};

exports.view = async function (req, res) {
    try {
        const city = await City.findById(req.query.id);
        res.json(city);
    } catch (err) {
        throw err;
    }
};

exports.update = async function (req, res) {
    try {
        const city = await City.findById(req.query.id);
        
        city.name = req.body.name? req.body.name: city.name;
        city.country = req.body.country;

        city.save(function () {
            res.json({
                message: "City Updated Successfully",
                data: city
            });
        });
    } catch (err) {
        throw err;
    }
};

exports.delete = async function (req, res) {
    try {

        const city = await City.findById(req.query.id);

        await city.delete(function () {
            res.json({
                message: "City Deleted Successfully",
                data: city
            });
        });
    } catch (err) {
        throw err;
    }
}