pragma solidity 0.7.0;

contract learningMapping{

    mapping(address => uint) public myMap;

    function setAdress(address _addr, uint _i) public {
        myMap[_addr] = _i;
    }

    function getAddress(address _addr) public view returns (uint){
        return myMap[_addr];
    }

    function removeAddress(address _addr) public {
        delete myMap[_addr];
    }
}

contract MapStruct {
    struct Movie {
        string title;
        string director;
    }

    mapping(uint => Movie) public movie;
    mapping(address => mapping(uint => Movie)) public myMovie;

    function addMovie(uint _movieId, string memory _title, string memory _director) public {
        movie[_movieId] = Movie(_title, _director);
    }

    function addMyMovie(uint _movieId, string memory _title, string memory _director) public {
        myMovie[msg.sender][_movieId] = Movie(_title, _director);
    }
}