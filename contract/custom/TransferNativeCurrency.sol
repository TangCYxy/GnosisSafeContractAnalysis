// SPDX-License-Identifier: MIT
pragma solidity ^0.6.12;



contract NativeCurrencyTransfer {
    function transferNativeCurrency(address payable recipient, uint256 amount)
    external
    {
        (bool success,) = recipient.call{value: amount}("");
        require(success, 'transfer native currency failed');
    }
}