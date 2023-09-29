pragma solidity ^0.8.0;

contract EthToInrConverter {

    // The exchange rate of ETH to INR
    uint256 public exchangeRate;

    constructor(uint256 _exchangeRate) {
        exchangeRate = _exchangeRate;
    }

    // Converts a given amount of ETH to INR
    function convertEthToInr(uint256 _ethAmount) public view returns (uint256) {
        return _ethAmount * exchangeRate;
    }

    // Converts a given amount of INR to ETH
    function convertInrToEth(uint256 _inrAmount) public view returns (uint256) {
        return _inrAmount / exchangeRate;
    }
}
