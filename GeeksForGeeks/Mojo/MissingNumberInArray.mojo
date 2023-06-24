# Given an array of size N-1 such that it only contains distinct integers in the range of 1 to N. Find the missing element.

# Example 1:

# Input:
# N = 5
# A[] = {1,2,3,5}
# Output: 4
# Example 2:

# Input:
# N = 10
# A[] = {6,1,2,8,3,4,7,10,5}
# Output: 9

# Your Task :
# You don't need to read input or print anything. Complete the function MissingNumber() that takes array and N as input  parameters and returns the value of the missing number.


# Expected Time Complexity: O(N)
# Expected Auxiliary Space: O(1)


# Constraints:
# 1 ≤ N ≤ 106
# 1 ≤ A[i] ≤ 106


from Vector import DynamicVector

fn missingNumber(array: DynamicVector[Int], n: Int) -> Int:

    var newArray = array
    newArray.push_back(0)
    newArray.push_back(0)

    for index in range(n):

        var value: Int = newArray[index]

        while index != value:
            newArray[index] = newArray[value]
            newArray[value] = value
            value = newArray[index]

            if newArray[index] == newArray[0]:
                break

    for index in range(n+1):

        if index != newArray[index]:
            return index

    return 0

fn main():
    let N = 5
    var A = DynamicVector[Int](4)
    A.push_back(1)
    A.push_back(2)
    A.push_back(3)
    A.push_back(5)

    let result: Int = missingNumber(A, N)

    print(result)

main()