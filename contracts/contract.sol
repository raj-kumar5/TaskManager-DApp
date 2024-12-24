// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract TaskManager {

    // Struct to represent a task
    struct Task {
        string description;  // Description of the task
        address assignee;    // Address of the team member assigned to the task
        bool completed;      // Task completion status
        uint256 createdAt;   // Timestamp when the task was created
    }

    // Mapping to store tasks by task ID
    mapping(uint256 => Task) public tasks;

    // Event to log the creation of a new task
    event TaskCreated(uint256 taskId, string description, address assignee, uint256 createdAt);

    // Event to log task completion
    event TaskCompleted(uint256 taskId, address assignee);

    uint256 public taskIdCounter;

    // Function 1: Create a new task and assign it to a team member
    function createTask(string calldata description, address assignee) external {
        require(assignee != address(0), "Invalid assignee address");

        // Create a new task
        taskIdCounter++;
        tasks[taskIdCounter] = Task({
            description: description,
            assignee: assignee,
            completed: false,
            createdAt: block.timestamp
        });

        // Emit event for task creation
        emit TaskCreated(taskIdCounter, description, assignee, block.timestamp);
    }

    // Function 2: Mark a task as completed by the assigned team member
    function markTaskCompleted(uint256 taskId) external {
        Task storage task = tasks[taskId];

        // Ensure the task exists and the sender is the assigned team member
        require(task.assignee == msg.sender, "You are not the assignee of this task");
        require(!task.completed, "Task already completed");

        // Mark the task as completed
        task.completed = true;

        // Emit event for task completion
        emit TaskCompleted(taskId, msg.sender);
    }
}
