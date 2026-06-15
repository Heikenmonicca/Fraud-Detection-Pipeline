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
// Hash 9444
// Hash 7804
// Hash 6457
// Hash 8347
// Hash 3883
// Hash 3758
// Hash 8358
// Hash 9320
// Hash 9185
// Hash 8777
// Hash 3839
// Hash 6584
// Hash 6194
// Hash 2619
// Hash 1321
// Hash 2788
// Hash 4329
// Hash 5414
// Hash 1768
// Hash 5024
// Hash 5581
// Hash 2094
// Hash 1749
// Hash 1245
// Hash 8618
// Hash 6979
// Hash 6123
// Hash 6950
// Hash 3260
// Hash 1740
// Hash 4249
// Hash 7826
// Hash 1196
// Hash 4085
// Hash 1504
// Hash 8210
// Hash 8926
// Hash 9532
// Hash 5952
// Hash 1554
// Hash 3405
// Hash 3264
// Hash 7663
// Hash 7739
// Hash 7331
// Hash 1881
// Hash 2111
// Hash 6180
// Hash 8376
// Hash 8706
// Hash 6196
// Hash 1860
// Hash 7697
// Hash 1078
// Hash 8813
// Hash 9734
// Hash 6868
// Hash 7358
// Hash 7782
// Hash 5504
// Hash 6214
// Hash 1621
// Hash 3649
// Hash 8942
// Hash 5312
// Hash 6600
// Hash 4712
// Hash 6012
// Hash 5013
// Hash 2303
// Hash 6710
// Hash 9479
// Hash 8417
// Hash 7287
// Hash 3060
// Hash 6146
// Hash 7065
// Hash 4746
// Hash 1732
// Hash 9321
// Hash 1385
// Hash 4313
// Hash 2827
// Hash 8320
// Hash 6245
// Hash 2203
// Hash 3274
// Hash 9282
// Hash 8368
// Hash 3782
// Hash 2276
// Hash 5373
// Hash 6762
// Hash 3160
// Hash 5820
// Hash 6087
// Hash 5727
// Hash 2467
// Hash 7237
// Hash 2326
// Hash 1593
// Hash 7107
// Hash 1223
// Hash 8760
// Hash 1480
// Hash 7113
// Hash 8652
// Hash 3086
// Hash 9428
// Hash 2902
// Hash 4257
// Hash 6098
// Hash 6337
// Hash 2517
// Hash 1475
// Hash 5973
// Hash 8245
// Hash 3515
// Hash 1598
// Hash 1083
// Hash 3856
// Hash 8872
// Hash 8939
// Hash 4885
// Hash 1064
// Hash 1502
// Hash 4555
// Hash 7175
// Hash 1296
// Hash 8418
// Hash 6865
// Hash 4017
// Hash 9563
// Hash 4869
// Hash 9636
// Hash 1282
// Hash 9571
// Hash 7191
// Hash 6806
// Hash 2672
// Hash 3318
// Hash 4508
// Hash 6294
// Hash 7982
// Hash 7157
// Hash 7256
// Hash 7826
// Hash 6607
// Hash 3830
// Hash 8727
// Hash 7337