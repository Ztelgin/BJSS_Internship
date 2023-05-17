class myObject:
    def __init__(self, x) -> None:
        self.val = x

def functionThatAdds(x):
    return x + 1

def functionThatDivides(x, y):
    return x / y

def functionThatDeepCopiesObject(x):
    return myObject(x.val)
