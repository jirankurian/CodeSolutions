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


class Solution:
    def maxSubArraySum(self, arr, N):
        resetFlag = True
        localMax = arr[0]
        maxValue = arr[0]

        for value in arr:

            if resetFlag:
                maxValue = value
                sum = 0
                resetFlag = False

            sum += value

            if sum > value:
                temp = sum + maxValue
                if temp > maxValue:
                    if maxValue > localMax:
                        localMax = maxValue
                    maxValue = sum
                else:
                    if maxValue > localMax:
                        localMax = maxValue
                    resetFlag = True
            else:
                if value > maxValue:
                    maxValue = value
                    sum = maxValue

        if maxValue > localMax:
            return maxValue
        else:
            return localMax


def main():
    arr = [-36, 18, 29, 24, -77, 37]
    N = 6
    solution = Solution()
    print(solution.maxSubArraySum(arr, N))


if __name__ == "__main__":
    main()
