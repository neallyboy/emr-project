'use strict';

module.exports = function defaultErrorHandlerMiddleware(error, req, res, next) {
  console.error(error);

  if (res.headersSend) {
    next(error);
  } else {
    res
      .status(500)
      .render('status/error');
  }
};
