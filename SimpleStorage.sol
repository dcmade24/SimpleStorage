//SPDX-License-Identifier: MIT

pragma solidity ^0.8.22;  //stating our version

contract SimpleStorage {

    uint256 public fn;
    struct Person {
        uint256 fnp; 
        string name;
    }
    Person[] public personList;
    mapping(string => uint256) public nametofn;

    function store(uint256 _fn) public{
        fn = _fn;
    }
    function retrieve() public view returns(uint256){
        return fn;
    }
    function addPerson (string memory _name, uint256 _fn) public {
        personList.push(Person(_fn, _name));
        nametofn[_name] = _fn;
    }
}