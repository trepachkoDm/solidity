const { expect } = require("chai");

describe("MyContract", function () {
    let MyContract;
    let contract;

    beforeEach(async function () {
        MyContract = await ethers.getContractFactory("MyContract");
        contract = await MyContract.deploy();
        await contract.waitForDeployment();
    });

    describe("Setting storageVar", function () {
        it("Should set storageVar correctly", async function () {
            await contract.setStorageVar(123);
            expect(await contract.storageVar()).to.equal(123);
        });
    });

    describe("calculate function", function () {
        it("Should return correct sum", async function () {
            expect(await contract.calculate(5)).to.equal(8);
        });
    });

    describe("processCalldata function", function () {
        it("Should return input data", async function () {
            const inputData = ethers.encodeBytes32String("text");
            expect(await contract.processCalldata(inputData)).to.equal(inputData);
        });
    });
});
