# Given an unsorted array A of size N that contains only positive integers, find a continuous sub-array that adds to a given number S and return the left and right index(1-based indexing) of that subarray.

# In case of multiple subarrays, return the subarray indexes which come first on moving from left to right.

# Note:- You have to return an ArrayList consisting of two elements left and right. In case no such subarray exists return an array consisting of element -1.

# Example 1:

# Input:
# N = 5, S = 12
# A[] = {1,2,3,7,5}
# Output: 2 4
# Explanation: The sum of elements from 2nd position to 4th position is 12.


# Example 2:

# Input:
# N = 10, S = 15
# A[] = {1,2,3,4,5,6,7,8,9,10}
# Output: 1 5
# Explanation: The sum of elements from 1st position to 5th position is 15.


# Your Task:
# You don't need to read input or print anything. The task is to complete the function subarraySum() which takes arr, N, and S as input parameters and returns an ArrayList containing the starting and ending positions of the first such occurring subarray from the left where sum equals to S. The two indexes in the array should be according to 1-based indexing. If no such subarray is found, return an array consisting of only one element that is -1.


# Expected Time Complexity: O(N)
# Expected Auxiliary Space: O(1)

# Constraints:
# 1 <= N <= 105
# 1 <= Ai <= 109
# 0<= S <= 1014

from Vector import DynamicVector

fn subArraySum(arr: DynamicVector[Int], n: Int, s: Int) -> DynamicVector[Int]:

    var leftIndex: Int = 0
    var rightIndex: Int = 0

    var localSum: Int = 0

    while rightIndex < n:
        localSum += arr[rightIndex]

        while localSum > s and leftIndex < rightIndex:
            localSum -= arr[leftIndex]
            leftIndex += 1

        if localSum == s:
            var result = DynamicVector[Int](2)
            result.push_back(leftIndex + 1)
            result.push_back(rightIndex + 1)
            return result

        rightIndex += 1

    var result = DynamicVector[Int](1)
    result.push_back(-1)
    return result

fn main():

    let n = 42
    let s = 468
    var a = DynamicVector[Int](42)
    a.push_back(135)
    a.push_back(101)
    a.push_back(170)
    a.push_back(125)
    a.push_back(79)
    a.push_back(159)
    a.push_back(163)
    a.push_back(65)
    a.push_back(106)
    a.push_back(146)
    a.push_back(82)
    a.push_back(28)
    a.push_back(162)
    a.push_back(92)
    a.push_back(196)
    a.push_back(143)
    a.push_back(28)
    a.push_back(37)
    a.push_back(192)
    a.push_back(5)
    a.push_back(103)
    a.push_back(154)
    a.push_back(93)
    a.push_back(183)
    a.push_back(22)
    a.push_back(117)
    a.push_back(119)
    a.push_back(96)
    a.push_back(48)
    a.push_back(127)
    a.push_back(172)
    a.push_back(139)
    a.push_back(70)
    a.push_back(113)
    a.push_back(68)
    a.push_back(100)
    a.push_back(36)
    a.push_back(95)
    a.push_back(104)
    a.push_back(12)
    a.push_back(123)
    a.push_back(134)

    let ans = subArraySum(a, n, s)

    var length: Int = len(ans)

    while length > 0:
        length -= 1
        print(ans[length])

main()