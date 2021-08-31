pragma solidity *;

interface GitHub {
    function peek() external view returns (bytes32 _value, bool _hasValue);
}

contract GitHubNFT is GitHub {

    uint256 public value;
    bool public hasValue;

    event SetValue(uint256 value, bool hasValue);

    constructor() public {
        value = 9007199254740991 * 10**18;
        hasValue = true;
        emit SetValue(value, hasValue);
    }

    function setValue(uint256 _value, bool _hasValue) public {
        value = _value;
        hasValue = _hasValue;
        emit SetValue(value, hasValue);
    }

    function peek() public view override returns (bytes32 _value, bool _hasValue) {
        _value = bytes32(value);
        _hasValue = hasValue;
    }
}
