# Given an array Arr[] of N integers. Find the contiguous sub-array(containing at least one number) which has the maximum sum and return its sum.


# Example 1:

# Input:
# N = 5
# Arr[] = {1,2,3,-2,5}

# Output:
# 9

# Explanation:
# Max subarray sum is 9
# of elements (1, 2, 3, -2, 5) which
# is a contiguous subarray.

# Example 2:

# Input:
# N = 4
# Arr[] = {-1,-2,-3,-4}

# Output:
# -1

# Explanation:
# Max subarray sum is -1
# of element (-1)

# Your Task:
# You don't need to read input or print anything. The task is to complete the function maxSubarraySum() which takes Arr[] and N as input parameters and returns the sum of subarray with maximum sum.


# Expected Time Complexity: O(N)
# Expected Auxiliary Space: O(1)


# Constraints:
# 1 ≤ N ≤ 106
# -107 ≤ A[i] ≤ 107

from Vector import DynamicVector

fn maxSubArraySum(arr: DynamicVector[Int], N: Int) -> Int:
    var resetFlag: Bool = True
    var localMax: Int = arr[0]
    var maxValue: Int = arr[0]
    var localSum: Int = 0

    var counter: Int = 0

    while counter < N:
        let value: Int = arr[counter]

        if resetFlag:
            maxValue = value
            localSum = 0
            resetFlag = False

        localSum += value

        if localSum > value:
            let temp: Int = localSum + maxValue
            if temp > maxValue:
                if maxValue > localMax:
                    localMax = maxValue
                maxValue = localSum
            else:
                if maxValue > localMax:
                    localMax = maxValue
                resetFlag = True
        else:
            if value > maxValue:
                maxValue = value
                localSum = maxValue
        counter += 1

    if maxValue > localMax:
        return maxValue
    else:
        return localMax

fn main():
    let N = 6
    var arr = DynamicVector[Int](N)
    arr.push_back(-36)
    arr.push_back(18)
    arr.push_back(29)
    arr.push_back(24)
    arr.push_back(-77)
    arr.push_back(37)

    print(maxSubArraySum(arr, N))

main()