#pseudocode from the recommended Wikipedia article

#procedure bubbleSort(A : list of sortable items)
#    n := length(A)
#    repeat
#        swapped := false
#        for i := 1 to n-1 inclusive do
#            { if this pair is out of order }
#            if A[i-1] > A[i] then
#                { swap them and remember something changed }
#                swap(A[i-1], A[i])
#                swapped := true
#            end if
#        end for
#    until not swapped
#end procedure

def bubble_sort(arr)
  n = arr.length
  swapped = nil
  until swapped == false do
    swapped = false
    (n-1).times do |i|
      if arr[i] > arr[i + 1]
        arr[i], arr[i + 1] = arr[i + 1], arr[i]
        swapped = true
      end
    end
  end
  arr
end
