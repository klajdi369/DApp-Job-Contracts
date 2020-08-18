pragma solidity >=0.4.22 <0.7.0;

contract jobContract {
    uint public jobCount = 0;
    
    struct jobStruct {
        string jobName;
        string devName;
        string buyerName;
        uint price;
        uint256 created;
        uint256 expires;
    }
    
    mapping(uint => jobStruct) public jobs;
    
    constructor() public {
        jobs[0] = jobStruct("Init", "RW", "RW", 300, now, now+60);
    }
    
    function addJob(string memory name, string memory developer, string memory buyer, uint price, uint duration) public {
        jobCount++;
        jobs[jobCount] = jobStruct(name, developer, buyer, price, now, now+(duration*24*60*60));
    }
    // function getJobs() public returns (string memory){
    //     return jobs[0];
    // }
}