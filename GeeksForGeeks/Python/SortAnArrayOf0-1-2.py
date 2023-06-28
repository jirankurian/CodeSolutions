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
