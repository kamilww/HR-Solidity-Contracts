pragma solidity ^0.5.0;

// lvl 1: equal split
contract AssociateProfitSplitter {
    // Creates three payable addresses representing `employee_one`, `employee_two` and `employee_three`.
    address payable employee_one;
    address payable employee_two;
    address payable employee_three;

    constructor(address payable _one, address payable _two, address payable _three) public {
        employee_one = _one;
        employee_two = _two;
        employee_three = _three;
    }
    
    // returns contract balance for contract
    function balance() public view returns(uint) {
        return address(this).balance;
    }

    // function to send profit sharing to employees as an equal split
    function deposit() public payable {
        // Splits `msg.value` into three
        uint amount = msg.value / 3;

        // Transfers the amount to each employee equaly
        employee_one.transfer(amount);
        employee_two.transfer(amount);
        employee_three.transfer(amount);

        // takes care of a potential remainder by sending back to HR (`msg.sender`)
        msg.sender.transfer(msg.value - amount * 3);
    }

    function() external payable {
        // calls deposit function as fallback
        deposit();
    }
}
