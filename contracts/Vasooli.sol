pragma solidity ^0.4.24;

// users add their stakes to contract
// user vote on withdrawal
// update collateralisation ratio

contract Vasooli{
	struct Member{
		address addr;
		string name;
	}
	address public admin;
	Member[] public members;
	mapping(address=>bool) hmap_members;
	constructor() public{
	    admin = msg.sender;
	}
	modifier isAdmin(){
		require(msg.sender == admin);
		_;
	}
	function addMember(address addr,string name) public isAdmin(){
		members.push(Member(addr,name));
		hmap_members[addr] == true;
	}
}