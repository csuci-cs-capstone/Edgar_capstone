const express = require('express')
const app = express()
const path = require('path');
const port = 3000
const file = "index.html";

app.get('/', (req, res) => {
    res.sendFile(path.join(__dirname, file), function (err){
        if (err) {
            next(err);
        }
        else {
            console.log('Sent:', file);
        }
    })
})

app.listen(port, () => {
    console.log(`App listening on port ${port}`)
})