# Unhandled Exception in Dart Async Function

This repository demonstrates a common issue in Dart asynchronous programming: insufficient exception handling in `async` functions.

The `bug.dart` file contains code that fetches data from an API.  While it includes a `try-catch` block, the `rethrow` statement can obscure the source of errors if not carefully managed.

The `bugSolution.dart` file offers an improved approach, showcasing best practices for handling exceptions to provide more informative error messages and prevent unexpected crashes.