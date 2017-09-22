const express = require('express');
const router = express.Router();
const data = require('../data.js');

router.get('/', (req,res) => {
    res.render('todonts/index', {
        todonts: data.seededToDonts
    });
});

module.exports = router;