const hre = require('hardhat');
const { upgrades } = require('hardhat');

async function main() {
  // const nounsToken = await hre.ethers.getContractFactory('contracts/NounsToken.sol:NounsToken');
  // const NounsToken = await nounsToken.deploy(
  //   '0xD16e82a3712c51251c90441F3439d5033b3f40c7',
  //   '0xD16e82a3712c51251c90441F3439d5033b3f40c7',
  //   '0x078baF2a806abCF81D01Bf8941d98C15787E98a0',
  //   '0x033b6d044eb3a0E8b6fB3A161DeA067A28Efb841',
  //   '0x0000000000000000000000000000000000000000',
  // );
  // await NounsToken.deployed();
  // console.log('NounsToken deployed to:', NounsToken.address);

  const ProxyRegistryMock = await hre.ethers.getContractFactory(
    'contracts/NounsAuctionHouseV2.sol:NounsAuctionHouseV2',
  );
  const proxyRegistryMock = await ProxyRegistryMock.deploy();
  // const proxyRegistryMock = await upgrades.deployProxy(ProxyRegistryMock, [
  //   '0xE4F1caD511a8c1Ce95b35c31d2a4Bf06c3aAE1f4', // nouns token
  //   '0x52eF3d68BaB452a294342DC3e5f464d7f610f72E', // weth
  //   600, // _duration 10 mins
  //   1, // _reservePrice
  //   30, // timebuffer
  //   2, // _minBidIncrementPercentage
  // ]);
  await proxyRegistryMock.deployed();
  console.log('proxyRegistryMock deployed to:', proxyRegistryMock.address);
}

// We recommend this pattern to be able to use async/await everywhere
// and properly handle errors.
main().catch(error => {
  console.error(error);
  process.exitCode = 1;
});
