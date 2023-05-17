import requests
import pytest

def test_onBench():
    
    # Assume we have a function called my_function that returns a value
    result = requests.get('http://127.0.0.1:5000/onbench/')

    # Test that the result is not None
    assert result.text == '[["Johnny Blue"]]\n'