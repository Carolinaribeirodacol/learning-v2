const express = require("express");
const authController = require("../controllers/authController");
const City = require("../models/City");
const APIFeatures = require("../utils/apiFeatures");
const axios = require("axios");

const router = express.Router();

router.post("/login", authController.login);
router.get("/city/search-photos", async function (req, res) {
  let filter = {};
  if (req.params.tourId) filter = { tour: req.params.tourId };

  const features = new APIFeatures(City.find(filter), req.query)
    .filter()
    .sort()
    .limitFields();
    // .paginate();

  const cities = await features.query;

  try {
    const citiesWithImages = [];

    for (const city of cities) {
      let searchObject = {
        text: `${city.name}`,
        // lat: city.latitude,
        // lon: city.longitude,
        accuracy: 16,
        tags: "lugares, cidade, city",
      };

      const response = await axios.get(
        "https://www.flickr.com/services/rest/",
        {
          params: {
            method: "flickr.photos.search",
            api_key: "4de99a8215fe64893ee603568b512e43",
            format: "json",
            nojsoncallback: 1,
            ...searchObject,
          },
        }
      );

      if (!response.data.photos.photo.length) {
        continue;
        // return res.status(404).json({
        //   ...searchObject,
        //   city: city.name,
        //   message: "Sem registros",
        // });
      }

      let imageObject = response.data.photos.photo[0];
      let url = `https://live.staticflickr.com/${imageObject.server}/${imageObject.id}_${imageObject.secret}.jpg`;

      city.image = url;
      city.save();

      citiesWithImages.push({
        ...searchObject,
        city: city.name,
        url,
      });
    }

    res.status(200).json({
      total: cities.length,
      cities: citiesWithImages,
    });
  } catch (error) {
    console.log(error);
  }
});

module.exports = router;
