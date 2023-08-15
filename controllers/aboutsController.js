const express = require("express");

const { getVideogame } = require("../queries/videogames.js");
const abouts = express.Router({ mergeParams: true });
const {
  getAllAbouts,
  getAbout,
  newAbout,
  deleteAbout,
  updateAbout,
} = require("../queries/abouts.js");

// INDEX
abouts.get("/", async (req, res) => {
    const { videogameId } = req.params;
    
    try {
      const allAbouts = await getAllAbouts(videogameId);
      res.json(allAbouts);
    } catch (err) {
      res.json(err);
    }
  });

// SHOW
abouts.get("/:id", async (req, res) => {
  const { id } = req.params;
  const about = await getAbout(id);
  if (about) {
    res.json(about);
  } else {
    res.status(404).json({ error: "not found" });
  }
});

// UPDATE
abouts.put("/:id", async (req, res) => {
  const { id } = req.params;
  const updatedAbout = await updateAbout(id, req.body);
  if (updatedAbout.id) {
    res.status(200).json(updatedAbout);
  } else {
    res.status(404).json("About not found");
  }
});

abouts.post("/", async (req, res) => {
  const about = await newAbout(req.body);
  res.status(200).json(review);
});

// DELETE
abouts.delete("/:id", async (req, res) => {
  const { id } = req.params;

  const deletedAbout = await deleteAbout(id);
  if (deletedAbout.id) {
    res.status(200).json(deletedAbout);
  } else {
    res.status(404).json({ error: "About not found" });
  }
});

// TEST JSON NEW
// {
//     "reviewer":"Lou",
//      "title": "Fryin Better",
//      "content": "With the great tips and tricks I found here",
//      "bookmark_id": "2",
//      "rating": "4"
// }
module.exports = abouts;