// const SLP = artifacts.require("SLP.sol");
// const AXS = artifacts.require("AXS.sol");
// const WETH = artifacts.require("WETH.sol");
// const USDC = artifacts.require("USDC.sol");
// const RON = artifacts.require("RON.sol");
// const BNB = artifacts.require("BNB.sol");
// const MATIC = artifacts.require("MATIC.sol");
// const AVAX = artifacts.require("AVAX.sol");
// module.exports = async (deployer) => {
//   await deployer.deploy(SLP);
//   await deployer.deploy(AXS);
//   await deployer.deploy(WETH);
//   await deployer.deploy(USDC);
//   await deployer.deploy(RON);
//   await deployer.deploy(BNB);
//   await deployer.deploy(MATIC);
//   await deployer.deploy(AVAX);
// }



const RONIX = artifacts.require("RONIX.sol");
module.exports = async (deployer) => {

  try {
    const test = await deployer.deploy(RONIX);

} catch(e){
console.log(e)
}
}
  
