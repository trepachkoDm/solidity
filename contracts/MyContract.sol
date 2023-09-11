// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
import "hardhat/console.sol";

contract MyContract {
    // Пример использования storage
    uint256 public storageVar;

    function setStorageVar(uint256 _value) public {
        storageVar = _value;
    }

    function calculate(uint256 _input) public pure returns (uint256 result) {
        // Прямое использование stack переменных для сложения
        return _input + 1 + 2;

        // до оптимизации:
        // uint256 stackVar1 = 1;
        // uint256 stackVar2 = 2;

        // Пример использования memory
        //     uint256[] memory memoryArray = new uint256[](3);
        //     memoryArray[0] = _input;
        //     memoryArray[1] = stackVar1;
        //     memoryArray[2] = stackVar2;

        //     result = memoryArray[0] + memoryArray[1] + memoryArray[2];
    }

    function processCalldata(
        bytes calldata _data
    ) external pure returns (bytes memory) {
        // Пример использования calldata
        return _data;
    }
}
