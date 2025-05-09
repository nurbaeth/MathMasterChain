// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract MathMasterChain {
    struct Question {
        string question;
        uint256 answer; // hashed answer
    }

    struct Player {
        uint256 score;
        uint256 lastAnswered;
    }

    Question[] public questions;
    mapping(address => Player) public players;

    address public owner;

    modifier onlyOwner() {
        require(msg.sender == owner, "Only owner");
        _;
    }

    constructor() {
        owner = msg.sender;
    }

    function addQuestion(string memory _question, uint256 _answer) public onlyOwner {
        questions.push(Question(_question, _answer));
    }

    function getQuestion(uint256 index) public view returns (string memory) {
        require(index < questions.length, "Invalid index");
        return questions[index].question;
    }

    function answerQuestion(uint256 index, uint256 _answer) public {
        require(index < questions.length, "Invalid index");
        require(players[msg.sender].lastAnswered < index + 1, "Already answered");

        if (_answer == questions[index].answer) {
            players[msg.sender].score += 1;
        }

        players[msg.sender].lastAnswered = index + 1;
    }

    function getScore(address player) public view returns (uint256) {
        return players[player].score;
    }

    function totalQuestions() public view returns (uint256) {
        return questions.length;
    }
}
