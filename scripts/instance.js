// scripts/index.js
module.exports = async function main(callback) {
  try {
    const Instance = artifacts.require("Instance");
    const instance = await Instance.deployed();

    info = await instance.info();
    console.log("Instance info value is", info.toString());

    callback(0);
  } catch (error) {
    console.error(error);
    callback(1);
  }
}
