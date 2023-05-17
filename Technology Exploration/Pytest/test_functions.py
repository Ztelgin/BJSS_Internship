import NewFunctions.myFunctions
import pytest

def test_functionThatAdds():
    assert NewFunctions.functionThatAdds(3) == 4
    assert NewFunctions.functionThatAdds(5) == 6

def test_functionThatDivides():
    assert NewFunctions.functionThatDivides(10,5) == 2
    assert NewFunctions.functionThatDivides(15,3) == 5
    with pytest.raises(ZeroDivisionError):
        assert NewFunctions.functionThatDivides(15,0)

def test_functionThatDeepCopiesObject():
    orig = NewFunctions.myObject(5)
    new = NewFunctions.functionThatDeepCopiesObject(orig)
    assert orig.val == new.val
    assert orig is not new