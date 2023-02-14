pragma solidity ^0.8.0;

contract Tribe {
    struct Member {
        uint256 id;
        string name;
        uint256 age;
        string tribe;
    }

    mapping (uint256 => Member) public members;
    uint256 public memberCount;

    function addMember(uint256 _id, string memory _name, uint256 _age, string memory _tribe) public {
        members[memberCount] = Member(_id, _name, _age, _tribe);
        memberCount++;
    }

    function getMember(uint256 _id) public view returns (uint256, string memory, uint256, string memory) {
        Member storage member = members[_id];
        return (member.id, member.name, member.age, member.tribe);
    }
}
