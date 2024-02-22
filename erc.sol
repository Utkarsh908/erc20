// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract DegenToken is ERC20 {
    address owner;

    mapping(address => uint256) public prizeSelections;

    event Redemption(address indexed user, uint256 prizeId);

    constructor() ERC20("Degen", "DGN") {
        owner = msg.sender;
    }

    modifier onlyOwner() {
        require(msg.sender == owner, "Only owner can call this function");
        _;
    }

    function mint(address to, uint256 amount) public onlyOwner {
        _mint(to, amount);
    }

    function burn(uint256 amount) public {
        _burn(_msgSender(), amount);
    }

    function transferTokens(address to, uint256 amount) public {
        _transfer(msg.sender, to, amount);
    }

    function balanceOf(address account) public view override returns (uint256) {
        return super.balanceOf(account);
    }

    function redeem(uint256 prizeId) public {
    require(prizeId > 0 && prizeId <= 10, "Invalid prize selection");
    uint256 balance = balanceOf(msg.sender);
    require(balance >= prizeId, "Insufficient balance");

    prizeSelections[msg.sender] = prizeId;
    _burn(msg.sender, prizeId);
    emit Redemption(msg.sender, prizeId);
}
}

