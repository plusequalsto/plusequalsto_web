const dotenv = require('dotenv');
const express = require('express');
const cors = require('cors');
const sgMail = require('@sendgrid/mail');
const path = require('path');

dotenv.config();

const app = express();
sgMail.setApiKey(process.env.SENDGRID_API_KEY);
app.use(express.json());

app.use(cors());

// Serve static files from the Flutter build directory
app.use(express.static(path.join(__dirname, 'build', 'web')));

// Handle all requests by returning the index.html file
app.get('*', (req, res) => {
    res.sendFile(path.join(__dirname, 'build', 'web', 'index.html'));
});

app.post('/api/sendemail', async (req, res) => {
    const { fullName, email, subject, description } = req.body;

    const mailOptions = {
        from: {
            email: 'contact@plusequalsto.com', // Verified email
            name: 'Contact - Plus Equals To'
        },
        to: ['taki.uddin@plusequalsto.com'], // Recipient email
        subject: `From Plus Equals To Website: ${subject}`,
        text: `Full Name: ${fullName}\nEmail: ${email}\n\n${description}`,
    };

    try {
        await sgMail.send(mailOptions);
        console.log('Email sent successfully!');
        res.status(200).send({ message: 'Email sent successfully!' });
    } catch (error) {
        console.error('Error sending email:', error);
        res.status(500).send({
            message: 'Failed to send email.',
            error: error.response.body.errors[0], // Include detailed error info
        });
    }
});

app.listen(process.env.PORT, () => {
    console.log(`Server running on port ${process.env.PORT}`);
});