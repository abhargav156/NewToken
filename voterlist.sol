pragma solidity ^0.5.0;

contract Voterlist{
    address VoterId;
    struct Voter{
        string name;
        string VoterAddress;
        uint256 dob;
        uint256 WardNumber;
        string gender;
        string FatherName;
        
    }
    
    mapping(address=>Voter) public voters;
    
    constructor() public{
        
    }
    
    function addVoterRecord(address VoterId, string memory _name, string memory _VoterAddress, uint256 _dob, uint256 _WardNumber, string memory _gender, string memory _FatherName) 
    public {
        voters[VoterId].name = _name;
        voters[VoterId].VoterAddress = _VoterAddress;
        voters[VoterId].dob = _dob;
        voters[VoterId].WardNumber = _WardNumber;
        voters[VoterId].gender = _gender;
        voters[VoterId].FatherName = _FatherName;
        
        }
    function getVoterRecord(address VoterId) public view returns(string memory, string memory, uint256, uint256, string memory, string memory){
        return(voters[VoterId].name, voters[VoterId].VoterAddress,  voters[VoterId].dob,  voters[VoterId].WardNumber,  voters[VoterId].gender,  voters[VoterId].FatherName);
        
    }
    
}