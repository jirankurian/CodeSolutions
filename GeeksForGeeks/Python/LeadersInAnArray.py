# Given an array A of positive integers. Your task is to find the leaders in the array. An element of array is leader if it is greater than or equal to all the elements to its right side. The rightmost element is always a leader.


# Example 1:

# Input:
# n = 6
# A[] = {16,17,4,3,5,2}
# Output: 17 5 2

# Explanation: The first leader is 17
# as it is greater than all the elements
# to its right.  Similarly, the next
# leader is 5. The right most element
# is always a leader so it is also
# included.


# Example 2:

# Input:
# n = 5
# A[] = {1,2,3,4,0}
# Output: 4 0


# Your Task:
# You don't need to read input or print anything. The task is to complete the function leader() which takes array A and n as input parameters and returns an array of leaders in order of their appearance.


# Expected Time Complexity: O(n)
# Expected Auxiliary Space: O(n)


# Constraints:
# 1 <= n <= 107
# 0 <= Ai <= 107
class Solution:

    def leaders(self, A, N):

        counter = N - 2
        newCounter = N - 1

        resultArray = [None] * N

        resultArray[newCounter] = A[newCounter]

        while counter >= 0:
            if A[counter] >= resultArray[newCounter]:
                newCounter -= 1
                resultArray[newCounter] = A[counter]

            counter -= 1

        return resultArray[newCounter:N]


def main():

    solution = Solution()

    N = 7

    A = [63, 70, 80, 33, 33, 47, 20]

    print(solution.leaders(A, N))


if __name__ == "__main__":
    main()
