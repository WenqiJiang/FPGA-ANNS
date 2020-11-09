import numpy as np

a = np.random.randint(low=-10000, high=10000, size=32)

print(list(a))

a_sort = a
a_sort.sort()

print("Correct result: \n", a_sort)