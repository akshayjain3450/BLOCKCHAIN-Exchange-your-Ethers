pragma solidity 0.5.1; //latest version
contract simplestorage
{
    mapping(int => person)public people;   // person array is initialised and people button
    
    int public count=0 ;   // to make button i wrote public
    struct person{
        int id;
        string firstname;
        string lastname;
        
    }
    
    function add_person(int id,string memory  firstname,string  memory lastname) public {    // we changed version so some times it ask to write memory
        
        
        count=count+1;                                  // how many times we add it wil count
        people[count]=person(id,firstname,lastname);
    }
    
}