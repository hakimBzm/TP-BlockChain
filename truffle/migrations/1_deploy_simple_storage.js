// migrations/2_deploy_contracts.js

const MarriageContract = artifacts.require("MarriageContract");

module.exports = function (deployer) {
  // Arguments pour le constructeur : epoux, epouse, dateMariage
  deployer.deploy(MarriageContract, "Alice", "Bob", 1679840000); // Remplacez les noms et la date
};
