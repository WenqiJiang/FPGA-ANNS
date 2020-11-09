import numpy as np

# np.random.seed(123) # the first set of numbers I used
np.random.seed(456) # the first set of numbers I used
a = np.random.randint(low=0, high=10000, size=8192)
np.set_printoptions(threshold=100000000)

# print(a, split=",")

a_ls = list(a)
for i in range(int(8192 / 16)):
    print(str(a_ls[16 * i: 16 * (i + 1)])[1:-1] + ",")

a_ls_enum = []
for i in range(len(a)):
    a_ls_enum.append((a_ls[i], i))
# which numbers
s = sorted(a_ls_enum, key=lambda x: x[0], reverse=False)
# print(s[:32])
s_values = [p[0] for p in s[:32]]
s_idx = [p[1] for p in s[:32]]
print("top 32 values: \n", s_values)
print("top 32 indexes: \n", s_idx)
print("top 128 values: \n", [p[0] for p in s[:128]])