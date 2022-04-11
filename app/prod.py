def prod(a, b):
    if not all(
            map(lambda p: isinstance(p, (int, float)), (a, b))
    ):
        raise TypeError("Not valid argument data type")
    print("prod.py: Valid arguments")
    return a * b

if __name__ == "__main__":
    print(prod(2,3))
    # print(prod("",4))