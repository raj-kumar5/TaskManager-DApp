# TaskManager DApp

**TaskManager DApp** is a decentralized application (DApp) that allows users to create tasks, assign them to team members, and mark them as completed on the Ethereum blockchain. This application is powered by a smart contract written in Solidity and interacts with the Ethereum blockchain through Web3.js.

## Features

- **Create Tasks**: Users can create new tasks with a description and assign them to a specific address.
- **Assign Tasks**: Tasks can be assigned to specific team members (by their Ethereum address).
- **Mark Tasks as Completed**: Assigned team members can mark tasks as completed.
- **Track Task Progress**: Track the progress of tasks, including their completion status.

## Table of Contents

- [Technologies Used](#technologies-used)
- [How to Use](#how-to-use)
- [Smart Contract Details](#smart-contract-details)
- [Frontend Details](#frontend-details)
- [Installation](#installation)
- [License](#license)

## Technologies Used

- **Solidity**: Smart contract programming language for the Ethereum blockchain.
- **Web3.js**: JavaScript library to interact with the Ethereum blockchain.
- **MetaMask**: Ethereum wallet to manage accounts and interact with the blockchain from the browser.
- **HTML/CSS**: Frontend design and structure.
- **JavaScript**: Logic for interacting with the Ethereum blockchain via Web3.js.

## How to Use

1. **Install MetaMask**: If you haven’t already, install the MetaMask browser extension from [here](https://metamask.io/download.html). Ensure that it’s connected to an Ethereum test network (e.g., Rinkeby) or the Ethereum mainnet.
2. **Deploy the Smart Contract**: Deploy the **TaskManager** contract on an Ethereum test network or the mainnet. You can use Remix, Hardhat, or Truffle for deployment. After deployment, make sure you have the contract address and ABI.

3. **Configure the Frontend**:

   - Open the `index.html` file in any text editor.
   - Replace the placeholder `YOUR_CONTRACT_ADDRESS` with the actual contract address of your deployed **TaskManager** contract.
   - Add the correct ABI (Application Binary Interface) of your deployed contract where indicated in the script section. The ABI is generated during contract compilation.

4. **Interacting with the DApp**:
   - Open the `index.html` file in your browser.
   - Connect your MetaMask wallet to the browser.
   - Use the form to create tasks by entering the task description and assigning a team member’s Ethereum address.
   - You can also mark tasks as completed by clicking the "Mark as Completed" button next to each task.

## Smart Contract Details

### Contract: **TaskManager**

The **TaskManager** contract allows users to create tasks, assign them to team members, and mark tasks as completed.

### Contract Functions:

1. **createTask**:

   - Parameters:
     - `description`: Task description (string).
     - `assignee`: Ethereum address of the team member to whom the task is assigned (address).
   - Creates a new task and assigns it to the specified address.

2. **markTaskCompleted**:

   - Parameters:
     - `taskId`: ID of the task to be marked as completed (uint256).
   - Marks the specified task as completed if the sender is the assigned assignee.

3. **taskIdCounter**:
   - Returns the current count of tasks created in the contract.
4. **tasks(taskId)**:
   - Retrieves the details of a task by its ID, including description, assignee, completion status, and creation timestamp.

### Events:

- **TaskCreated**: Emitted when a new task is created with task ID, description, assignee address, and timestamp.
- **TaskCompleted**: Emitted when a task is marked as completed with task ID and the assignee’s address.

## Frontend Details

The frontend is built using **HTML**, **CSS**, and **JavaScript**, leveraging **Web3.js** to interact with the Ethereum blockchain.

### Files:

1. **index.html**:

   - This is the main HTML file containing the structure for the TaskManager interface.
   - It includes a form for creating tasks and a list of tasks that are fetched from the blockchain.
   - Tasks can be marked as completed by clicking a button next to each task.

2. **Web3.js Integration**:
   - The script at the bottom of the `index.html` file initializes **Web3.js**, connects to the user's MetaMask wallet, and allows interaction with the **TaskManager** smart contract.
   - Functions like `createTask()`, `markTaskCompleted()`, and `loadTasks()` are defined for interacting with the blockchain.

### How the Frontend Works:

1. **Creating a Task**:

   - The user can create a new task by entering a description and the Ethereum address of the assignee.
   - The `createTask` function is called, which sends the transaction to the Ethereum network and creates the task on the blockchain.

2. **Marking a Task as Completed**:

   - Each task has a button to mark it as completed. When clicked, the `markTaskCompleted` function is called, which updates the task's completion status on the blockchain.

3. **Displaying Tasks**:
   - The `loadTasks` function fetches all tasks from the blockchain and displays them in a list format with details such as description, assignee, and completion status.

## Installation

### Prerequisites:

- **Node.js** (for Web3.js functionality).
- **MetaMask** extension for interacting with Ethereum blockchain.
- **Smart Contract** deployed on an Ethereum network.

### Steps to Install and Run Locally:

1. **Install Dependencies**:

   - Ensure that you have **MetaMask** installed in your browser.
   - Open the `index.html` file in a web browser (preferably Chrome or Firefox).

2. **Deploy Contract**:

   - Deploy the **TaskManager** contract to any Ethereum network (e.g., Rinkeby testnet).
   - Retrieve the contract's ABI and address after deployment.

3. **Configure Web3**:
   - Add the **contract address** and **ABI** to the frontend `index.html` file.
4. **Run the Application**:

   - Open the `index.html` file in your browser.
   - Ensure that MetaMask is connected to the Ethereum network and you have some test Ether (for test networks like Rinkeby).

5. **Create and Complete Tasks**:
   - Use the frontend to create tasks and assign them to team members.
   - Mark tasks as completed when appropriate.

## License

This project is open-source and licensed under the MIT License.

---
