def mutate_string(string, position, character):
    st = list(string)
    st[position] = character
    string = "".join(st)
    return string

