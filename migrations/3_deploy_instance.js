const Instance = artifacts.require("Instance");

module.exports = async function (deployer) {
  await deployer.deploy(Instance, 'takethis');
};
