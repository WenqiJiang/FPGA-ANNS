import numpy as np
import matplotlib.pyplot as plt


N = 5
t_memory_access = [8.25, 11.6, 14.65, 49]
t_computation = [12 - 8.25, 17.1 - 11.6, 22.3 - 14.65, 86 - 49]
ind = np.arange(len(t_memory_access))    # the x locations for the groups
width = 0.35       # the width of the bars: can also be len(x) sequence

p1 = plt.bar(ind, t_memory_access, width)
p2 = plt.bar(ind, t_computation, width, bottom=t_memory_access)

plt.title('Time Consumption: Embedding Lookup VS Computation')
plt.xticks(ind, ('32', '64', '128', '1024'))
plt.yticks(np.arange(0, 90, 10))
plt.legend((p1[0], p2[0]), ('Embedding Layer', 'Neural Network Computation'))

plt.ylabel('Time Consumption / ms')
plt.xlabel('Batch Size')
plt.show()
plt.savefig('keras_lookup_vs_computation.png', dpi=200)