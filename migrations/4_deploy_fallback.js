const Fallback = artifacts.require("Fallback");

module.exports = async function (deployer) {
  await deployer.deploy(Fallback);
};
