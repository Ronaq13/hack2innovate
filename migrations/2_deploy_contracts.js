var BasicOracle = artifacts.require("./BasicOracle.sol");
var MetaCoin = artifacts.require("./NanoLoanEngine.sol");
var Oracle = artifacts.require("./Oracle.sol");
var RpSafeMath = artifacts.require("./RpSafeMath.sol");
var Tokenq = artifacts.require("./Token.sol");

module.exports = function(deployer) {
  deployer.deploy(BasicOracle);
  deployer.deploy(MetaCoin);
  deployer.deploy(Oracle);
  deployer.deploy(RpSafeMath);
  deployer.link(Tokenq, Oracle, BasicOracle);
  deployer.link(Tokenq, Oracle, BasicOracle, MetaCoin);
  deployer.deploy(Tokenq);
};
