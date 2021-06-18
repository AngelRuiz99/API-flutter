const { Router } = require('express');

const router = Router();

router.get('/test', (req, res) => {
    const data = {
        "name": "Jorge",
        "website": "nose.com"
    };
    res.send(data);
});

module.exports = router;