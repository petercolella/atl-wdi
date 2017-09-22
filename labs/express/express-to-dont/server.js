const express = require('express');
const hbs = require('hbs');

const app = express();
const todontsController = require('./controllers/todonts_controller');

app.set('view engine', 'hbs');

app.use('/todonts', todontsController);

app.get('/', (req, res) => {
    res.send('Home Page')
})

const port = process.env.PORT || 3000;
app.listen(port, () => {
    console.info('Server Up -- Ready to serve todonts on port', port, "//", new Date());
});