pragma solidity ^0.7.0;

contract learnStructs{
    struct Movie {
        string title;
        string director;
        uint movieId;
    }

    Movie movie;

    function setMovie() public {
        movie = Movie('Blade Runner', 'Ridley Scott', 1);
    }

    function getMovie()
}