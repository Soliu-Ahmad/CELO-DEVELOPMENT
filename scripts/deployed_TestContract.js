const hre = require("hardhat");

const main = async () => {
  const TestContract = await hre.ethers.getContractFactory("TestContract");
  const TestingContractCalls = await TestContract.deploy();

  await TestingContractCalls.deployed();

  console.log(
    "The TestContractCall contract was deployed to: ",
    TestingContractCalls.address
  );
}

const runMain = async () => {
  try {
    await main();
    process.exit(0);
  } catch (error) {
    console.error(error);
    process.exit(1);
  }
}

runMain();