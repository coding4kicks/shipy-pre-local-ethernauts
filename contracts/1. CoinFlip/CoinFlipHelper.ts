import { expect } from "chai";
import { ethers } from "hardhat";

const helper = async (victim: any, attacker: any) => {
  // add code here that will help you pass the test
  let consecutiveWins = await victim.consecutiveWins();
  while (consecutiveWins < 10) {
    const txn = await attacker.hackContract();
    txn.wait();
    consecutiveWins = await victim.consecutiveWins();
  }
};

export default helper;
