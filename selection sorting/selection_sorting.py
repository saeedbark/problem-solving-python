
def selection_sort(list):
    n = len(list)

    for i in range(n):
        min_index = i
        for j in range(i,n):
            if(list[j]< list[i]):
                min_index = j
        min_value =list.pop(min_index)
        list.insert(i,min_value)
    
    
    
arr = [4,3,1]
selection_sort(arr)  
print(arr)          