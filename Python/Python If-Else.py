    n = int(input().strip())
    if n % 2 == 0 and n in range(2 , 5 ) or n % 2 == 0 and n > 20 : 
        print('Not Weird')
    else :
         print('Weird'
               
# or 
               
               
 
n = int(input().strip())

if n % 2 != 0 :
    print("Weird")
if n % 2 == 0 : 
    if n in range(2,5):
        print("Not Weird")    
    elif n in range(6,21) :
        print("Weird")
    else :
        print("Not Weird")    
               
