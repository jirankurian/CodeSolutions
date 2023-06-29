# Given an array of size N containing only 0s, 1s, and 2s; sort the array in ascending order.

# Example 1:

# Input:
# N = 5
# arr[]= {0 2 1 2 0}
# Output:
# 0 0 1 2 2
# Explanation:
# 0s 1s and 2s are segregated
# into ascending order.

# Example 2:

# Input:
# N = 3
# arr[] = {0 1 0}
# Output:
# 0 0 1
# Explanation:
# 0s 1s and 2s are segregated
# into ascending order.

# Your Task:
# You don't need to read input or print anything. Your task is to complete the function sort012() that takes an array arr and N as input parameters and sorts the array in-place.


# Expected Time Complexity: O(N)
# Expected Auxiliary Space: O(1)


# Constraints:
# 1 <= N <= 10^6
# 0 <= A[i] <= 2


class Solution:
    def sort012(self, arr, n):

        firstPointer = 0
        lastPointer = n-1

        counter = 0
        endFlag = False

        while counter < n:

            if counter < lastPointer + 1:
                while arr[counter] == 2:
                    if counter != lastPointer:
                        temp = arr[counter]
                        arr[counter] = arr[lastPointer]
                        arr[lastPointer] = temp
                        lastPointer -= 1
                    else:
                        endFlag = True
                        break
                if endFlag:
                    break

                while arr[counter] == 0:
                    if counter != firstPointer:
                        temp = arr[counter]
                        arr[counter] = arr[firstPointer]
                        arr[firstPointer] = temp
                        firstPointer += 1
                    else:
                        firstPointer += 1
                        break
            else:
                break

            counter += 1


def main():
    solution = Solution()

    N = 18
    arr = [2, 0, 2, 0, 0, 1, 2, 2, 1, 1, 0, 1, 2, 1, 0, 1, 2, 2]

    solution.sort012(arr, N)
    print(arr)


if __name__ == "__main__":
    main()
