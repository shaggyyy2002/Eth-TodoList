// SPDX-License-Identifier: MIT
pragma solidity >=0.4.22 <0.9.0;
contract TodoList{
 uint public taskCount = 0; //Represents the state of the smart contracts.

    struct Task{
        uint id;
        string content;
        bool completed;
    }
    mapping(uint => Task) public tasks;  //uint acts as a positive integer here will act as a database.

    constructor() public{
        createTask("Check out Linktree for Nitin");
    }

    function createTask(string memory _content) public{
        taskCount++;
        tasks[taskCount] = Task(taskCount, _content, false);
    }
}