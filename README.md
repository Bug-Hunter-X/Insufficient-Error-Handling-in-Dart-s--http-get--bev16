# Insufficient Error Handling in Dart's `http.get`

This example demonstrates a common issue in Dart asynchronous programming: insufficient error handling in HTTP requests.  The basic `try-catch` block might not provide enough details, leading to difficulty in debugging.

## Bug
The `bug.dart` file shows a function that fetches data using `http.get`. While it includes error handling, the error messages can be too generic.

## Solution
The `bugSolution.dart` file shows an improved approach.  It uses `on` clauses for specific exception types and logs more detailed information.  This helps pinpoint the root cause of errors more effectively.

## How to Reproduce
1. Clone this repository.
2. Run `bug.dart`.  If the server is down or returns an error, the printed message is not specific enough.  Try it with a non-existent URL to see the difference. 
3. Then run `bugSolution.dart`. Note the more detailed error reporting.