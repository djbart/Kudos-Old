import "ConvertLib.sol";

contract KudosCoin {
	mapping (address => uint) balances;

	function KudosCoin() {
		balances[tx.origin] = 10000;
	}

	function sendCoin(address receiver, uint amount) returns(bool sufficient) {
		if (balances[msg.sender] < amount) return false;
		balances[msg.sender] -= amount;
		balances[receiver] += amount;
		return true;
	}
	function getBalanceInEth(address addr) returns(uint){
		return ConvertLib.convert(getBalance(addr),2);
	}
  	function getBalance(address addr) returns(uint) {
    	return balances[addr];
  	}
}
