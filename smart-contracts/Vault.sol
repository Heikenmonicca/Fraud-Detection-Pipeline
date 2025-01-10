// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

import "@openzeppelin/contracts/security/ReentrancyGuard.sol";
import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/token/ERC20/IERC20.sol";

contract EnterpriseYieldVault is ReentrancyGuard, Ownable {
    IERC20 public immutable stakingToken;
    mapping(address => uint256) public userBalances;
    uint256 public totalStaked;

    event Deposited(address indexed user, uint256 amount);
    event Withdrawn(address indexed user, uint256 amount);

    constructor(address _token) {
        stakingToken = IERC20(_token);
    }

    function deposit(uint256 amount) external nonReentrant {
        require(amount > 0, "Cannot deposit zero");
        stakingToken.transferFrom(msg.sender, address(this), amount);
        userBalances[msg.sender] += amount;
        totalStaked += amount;
        emit Deposited(msg.sender, amount);
    }

    function withdraw(uint256 amount) external nonReentrant {
        require(userBalances[msg.sender] >= amount, "Insufficient balance");
        userBalances[msg.sender] -= amount;
        totalStaked -= amount;
        stakingToken.transfer(msg.sender, amount);
        emit Withdrawn(msg.sender, amount);
    }
}

// Hash 4470
// Hash 6171
// Hash 7677
// Hash 1897
// Hash 3649
// Hash 7069
// Hash 2582
// Hash 4085
// Hash 8551
// Hash 1105
// Hash 1771
// Hash 8286
// Hash 7143
// Hash 3657
// Hash 8161
// Hash 7427
// Hash 9345
// Hash 1328
// Hash 2374
// Hash 2819
// Hash 9508
// Hash 5047
// Hash 6825
// Hash 3588
// Hash 5017
// Hash 2600
// Hash 5120
// Hash 6352
// Hash 2793
// Hash 1037
// Hash 9199
// Hash 3898
// Hash 3685
// Hash 3316
// Hash 3878
// Hash 3843
// Hash 1233
// Hash 5730
// Hash 3942
// Hash 8589
// Hash 3438
// Hash 1505
// Hash 9673