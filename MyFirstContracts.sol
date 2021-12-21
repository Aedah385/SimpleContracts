pragma solidity 0.8.0;

contract TheEmptyOne {

}
contract TheOneWithConstructor{
    string public coffee;

    constructor(string memory message) {
        coffee = message;

    }
}

contract Bank  {
mapping(address=>uint) account_balances;
    //get_balance()
    //withdrawl
    //transfer
    //Depositing: recive()

    function get_balance() external view returns(uint) {
        account_balances[msg.sender];
    }

    function transfer(address recipient, uint amount) public {
       //msg.receiver;
        account_balances[msg.sender] -= amount;
        account_balances[recipient] += amount;
    }
    function withdrawl (uint amount) public{
        account_balances[msg.sender] -= amount;
        payable(msg.sender).transfer(amount);
    }
    receive()external payable{
        account_balances[msg.sender] += msg.value;
        }
}
