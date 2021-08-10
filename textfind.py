def find():
    file = open("path", "r", encoding='utf-8')
    if "robot framework" in file.read():
        print("True")
    else:
        print("false")
