try:
    line = input()
except:
    print("")
    quit()

index = line.find("nbsp;") + 5

string = ""

while line[index] != '<':
    string += line[index]
    index += 1

print(string)
