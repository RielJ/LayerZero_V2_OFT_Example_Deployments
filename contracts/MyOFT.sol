// SPDX-License-Identifier: MIT
pragma solidity ^0.8.22;

/*
 .----------------.  .----------------.  .----------------.  .----------------.  .----------------. 
| .--------------. || .--------------. || .--------------. || .--------------. || .--------------. |
| | ____    ____ | || |  ____  ____  | || |     ____     | || |  _________   | || |  _________   | |
| ||_   \  /   _|| || | |_  _||_  _| | || |   .'    `.   | || | |_   ___  |  | || | |  _   _  |  | |
| |  |   \/   |  | || |   \ \  / /   | || |  /  .--.  \  | || |   | |_  \_|  | || | |_/ | | \_|  | |
| |  | |\  /| |  | || |    \ \/ /    | || |  | |    | |  | || |   |  _|      | || |     | |      | |
| | _| |_\/_| |_ | || |    _|  |_    | || |  \  `--'  /  | || |  _| |_       | || |    _| |_     | |
| ||_____||_____|| || |   |______|   | || |   `.____.'   | || | |_____|      | || |   |_____|    | |
| |              | || |              | || |              | || |              | || |              | |
| '--------------' || '--------------' || '--------------' || '--------------' || '--------------' |
 '----------------'  '----------------'  '----------------'  '----------------'  '----------------' 
*/

import { Ownable } from "@openzeppelin/contracts/access/Ownable.sol";
import { OFT } from "@layerzerolabs/oft-evm/contracts/OFT.sol";

contract MyOFT is OFT {
    constructor(
        string memory _name,
        string memory _symbol,
        address _lzEndpoint,
        address _delegate
    ) OFT(_name, _symbol, _lzEndpoint, _delegate) Ownable(_delegate) {
        _mint(0x86febB73a6e5aaf4aB0E656CcFD2F94883896378, 1_000_000_000 * 10 ** 18);
    }
}