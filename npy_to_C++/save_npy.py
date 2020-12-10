# https://numpy.org/doc/stable/reference/routines.io.html
#   Save np array as binary

import numpy as np

vec_1D = [1.1, 2.2, 3.3, 4.4]
vec_2D = [vec_1D, vec_1D]

vec_1D = np.array(vec_1D, dtype=np.float32)
vec_2D = np.array(vec_2D, dtype=np.float32)

print("1D shape: {}\t2D shape: {}".format(vec_1D.shape, vec_2D.shape))

# https://numpy.org/doc/stable/reference/generated/numpy.ndarray.tofile.html
vec_1D.tofile("vec_1D.bin")
vec_2D.tofile("vec_2D.bin")
