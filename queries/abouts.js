const db = require("../db/dbConfig.js");

const getAllAbouts = async (videogame_id) => {
    try {
    const allAbouts = await db.any(
    "SELECT * FROM abouts WHERE app_id=$1",
    videogame_id
    );
    return allAbouts;
    } catch (err) {
    return err;
    }};

const getAbout = async (id) => {
  try {
    const oneAbout = await db.one("SELECT * FROM abouts WHERE id=$1", id);
    return oneAbout;
  } catch (error) {
    return error;
  }
};

const newAbout = async (about) => {
  try {
    const newAbout = await db.one(
      " INSERT INTO abouts (app_id, app_type, publisher, last_change, last_update, release_date) VALUES($1, $2, $3, $4, $5) RETURNING *",
      [
        about.app_id,
        about.app_type,
        about.publisher,
        about.last_change,
        about.last_update,
        about.release_date,
      ]
    );
    return newAbout;
  } catch (error) {
    return error;
  }
};

const deleteAbout = async (id) => {
  try {
    const deletedAbout = await db.one(
      "DELETE FROM abouts WHERE id = $1 RETURNING *",
      id
    );
    return deletedAbout;
  } catch (error) {
    return error;
  }
};

const updateAbout = async (id, about) => {
  try {
    const updatedAbout = await db.one(
      "UPDATE abouts SET app_id=$1, app_type=$2, publisher=$3, last_change=$4, last_update=$5 release_date=$6 where id=$7 RETURNING *",
      [
        about.app_id,
        about.app_type,
        about.publisher,
        about.last_change,
        about.last_update,
        about.release_date,
        id,
      ]
    );
    return updatedAbout;
  } catch (error) {
    return error;
  }
};
module.exports = {
  getAllAbouts,
  getAbout,
  newAbout,
  deleteAbout,
  updateAbout,
};