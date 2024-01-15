const jwt = require('jsonwebtoken');

const secretKey = 'unlockss'; // Your JWT secret key
const userId = '123456'; // Replace with the user's ID or payload data

// Generate a JWT token
const token = jwt.sign({ userId }, secretKey, { expiresIn: '1h' }); // Set expiration as needed
console.log(token);