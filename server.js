const express = require('express');
const path = require('path');

const app = express();

// Serve static files from the build/web directory
app.use(express.static(path.join(__dirname, 'build/web')));

// Handle all other routes by serving the index.html file
app.get('*', (req, res) => {
  res.sendFile(path.join(__dirname, 'build/web', 'index.html'));
});

// Start the server
const PORT = process.env.PORT || 8080;
app.listen(PORT, () => {
  console.log(`Server is running on port ${PORT}`);
});