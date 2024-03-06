const hre = require("hardhat");

const main = async () => {
  const PersonContract = await hre.ethers.getContractFactory("Person");
  const Person = await PersonContract.deploy();

  await Person.deployed();

  console.log("The Person contract was deployed to: ", Person.address);
};

const runMain = async () => {
  try {
    await main();
    process.exit(0);
  } catch (error) {
    console.error(error);
    process.exit(1);
  }
};

runMain();