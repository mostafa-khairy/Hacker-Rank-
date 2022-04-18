    list_ = []
    N = int(input())

    
for i in range(N) :
    s = input().split(" ")
    if s[0] == 'insert' :
        list_.insert(int(s[1]),int(s[2])) 
    elif s[0] == 'print' :
        print(list_)     
    elif s[0] == 'remove' :
        list_.remove(int(s[1]))    
    elif s[0] == 'append' :
        list_.append(int(s[1]))     
    elif s[0] == 'sort' :
        list_.sort()      
    elif s[0] == 'pop' :
        list_.pop()      
    else :
        list_.reverse()      
        
    
    
    
    
