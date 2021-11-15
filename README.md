# PY-50507_uvicorn-pycharm-bug-demo
Demo of PyCharm bug PY-50507

https://youtrack.jetbrains.com/issue/PY-50507

1. Clone this repo locally
2. Run `make setup` to create a virtualenv and install uvicorn
3. Install standard uvicorn dependencies with `pip install uvicorn[standard]`
   If you get `ModuleNotFoundError: No module named 'asgiref'` then this is the problem. 
4. Run this demo app with either `make run`, or `uvicorn example:app`, 
   or clicking Run in PyCharm on the `uvicorn` app defined in the `.run` directory.
5. If the service runs successfully you should see 
`INFO:     Uvicorn running on http://127.0.0.1:8000 (Press CTRL+C to quit)`
6. Click the link (or open the address manually) to confirm the service serves the expected "Hello, world!" response.
7. Stop the app and instead run the Profiler within PyCharm on the app
8. Observe error: `AttributeError: partially initialized module 'logging' has no attribute 'Formatter' (most likely due to a circular import)
`