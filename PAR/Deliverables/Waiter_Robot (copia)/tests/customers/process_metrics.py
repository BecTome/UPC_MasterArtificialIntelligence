
import matplotlib.pyplot as plt
import numpy as np

size = 7
ls_cnt = [1, 2, 3, 4, 5]
ls_metrics = [0.009, 0.017, 0.025, 0.029, 0.035]
ls_nodes = [91, 193, 279, 369, 460]
ls_expanded = [77, 149, 191, 283, 334]

str_rep_par = "N Customers"

fig, ax = plt.subplots(1, 2, figsize=(10, 5))
ax = ax.ravel()

ax[0].plot(ls_cnt, ls_metrics, color='b')
ax[0].set_xticks(ls_cnt)
ax[0].set_ylabel('Metric')
ax[0].set_xlabel(str_rep_par)
ax[0].set_title('Metric vs. {} (N = {})'.format(str_rep_par, size))

ax[1].plot(ls_cnt, ls_nodes, color='r', label='Created Nodes')
ax[1].set_xticks(ls_cnt)
ax[1].set_ylabel('Created Nodes')
ax[1].set_xlabel(str_rep_par)
ax[1].set_title('Created nodes vs. {} (N = {})'.format(str_rep_par, size))

ax[1].plot(ls_cnt, ls_expanded, color='g', label='Expanded Nodes')
ax[1].set_xticks(ls_cnt)
ax[1].set_ylabel('Expanded Nodes')
ax[1].set_xlabel(str_rep_par)
ax[1].set_title('Expanded nodes vs. {} (N = {})'.format(str_rep_par, size))

plt.legend()
fig.tight_layout()

plt.show()