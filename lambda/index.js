'use strict';

const clean = require('./lib/lambda').clean;

module.exports.handler = function(event, context, cb) {
  clean()
    .catch(err => console.log(err, err.stack))
    .then(() => context.succeed());
};
