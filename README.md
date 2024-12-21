# Unhandled Exception in Dart HTTP Request

This repository demonstrates a common error when making HTTP requests in Dart using the `http` package. The code attempts to fetch data from a remote API, but if the request fails (e.g., due to network issues or a server error), it throws an exception.

The solution shows how to handle the exception gracefully and prevent the app from crashing.  The key is to use `try-catch` blocks and handle any errors within the exception block before rethrowing it.