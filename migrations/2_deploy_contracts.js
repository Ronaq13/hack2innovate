var ConvertLib = artifacts.require("./BasicOracle.sol");
var MetaCoin = artifacts.require("./NanoLoanEngine.sol");
var MetaCoin = artifacts.require("./Oracle.sol");
var MetaCoin = artifacts.require("./RpSafeMath.sol");
var MetaCoin = artifacts.require("./Token.sol");

module.exports = function(deployer) {
  deployer.deploy(BasicOracle);
  deployer.deploy(NanoLoanEngine);
  deployer.deploy(Oracle);
  deployer.deploy(RpSafeMath);
  deployer.link(Token, Oracle, BasicOracle);
  deployer.link(Token, Oracle, BasicOracle, NanoLoanEngine);
  deployer.deploy(Token);
};
