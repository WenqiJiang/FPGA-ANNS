import numpy as np
import matplotlib as mpl
mpl.use('agg') # must declare this before 'import matplotlib.pyplot as plt'
import matplotlib.pyplot as plt 
from matplotlib.ticker import PercentFormatter
from matplotlib.ticker import FuncFormatter

if __name__ == "__main__":

    origin_data_sizes = [4] * 16 + [8] * 28 + [16] * 2 + [32] * 1
    origin_table_sizes = [100] * 4 + [500] * 2 + [1000] * 10 + [3000] * 1 + [10000] * 15 \
        + [20000] * 1 + [30000] * 1 + [100000] * 10 + [500000] * 1 + [1000000] * 1 + [10000000] * 1
    assert len(origin_data_sizes) == len(origin_data_sizes)
    table_num = len(origin_data_sizes)

    origin_storage = []
    for i in range(len(origin_table_sizes)):
        origin_storage.append(origin_table_sizes[i] * origin_data_sizes[i])
    origin_total_storage = np.sum(origin_storage)
    origin_distribution = np.cumsum(origin_storage) / origin_total_storage

    plt.title('Table Size Distribution of the Sample Model')
    plt.ylabel('Number of Elements in the Table (Logarithmic)')
    plt.xlabel('Table ID')

    x_axis_origin = np.arange(1, table_num + 1)
    y_axis = origin_storage
    # plt.plot(x_axis_origin, y_axis, 'r',label = '1.28GB Model')
    plt.yscale("log")
    plt.bar(x_axis_origin, y_axis)
    # money = [1.5e5, 2.5e6, 5.5e6, 2.0e7]


    # def millions(x, pos):
    #     'The two args are the value and tick position'
    #     return '$%1.1fM' % (x * 1e-6)


    # formatter = FuncFormatter(millions)

    # fig, ax = plt.subplots()
    # ax.yaxis.set_major_formatter(formatter)
    # plt.bar(x, money)
    # # plt.xticks(x, ('Bill', 'Fred', 'Mary', 'Sue'))
    plt.show()
    plt.savefig('tmp.png', dpi=200)