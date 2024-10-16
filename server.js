const express = require('express');
const path = require('path');

const app = express();
const PORT = process.env.PORT || 3000;

// Serve static files from the Flutter build directory
app.use(express.static(path.join(__dirname, 'build', 'web')));

// Handle all requests by returning the index.html file
app.get('*', (req, res) => {
    res.sendFile(path.join(__dirname, 'build', 'web', 'index.html'));
});

app.listen(PORT, () => {
    console.log(`Server is running on port ${PORT}`);
});