
import matplotlib.pyplot as plt
import numpy as np

size = 4
ls_cnt = [9, 11, 13, 15]
ls_metrics = [0.032, 0.045, .048, 0.055]
ls_nodes = [581, 728, 904, 1108]
ls_expanded = [463, 571, 707, 912]

str_rep_par = "N Rooms"

fig, ax = plt.subplots(1, 2, figsize=(10, 5))
ax = ax.ravel()

ax[0].plot(ls_cnt, ls_metrics, color='b')
ax[0].set_xticks(ls_cnt)
ax[0].set_ylabel('Metric')
ax[0].set_xlabel(str_rep_par)
ax[0].set_title('Metric vs. {} (N clients = {})'.format(str_rep_par, size))

ax[1].plot(ls_cnt, ls_nodes, color='r', label='Created Nodes')
ax[1].set_xticks(ls_cnt)
ax[1].set_ylabel('Created Nodes')
ax[1].set_xlabel(str_rep_par)
ax[1].set_title('Created nodes vs. {} (N clients = {})'.format(str_rep_par, size))

ax[1].plot(ls_cnt, ls_expanded, color='g', label='Expanded Nodes')
ax[1].set_xticks(ls_cnt)
ax[1].set_ylabel('Expanded Nodes')
ax[1].set_xlabel(str_rep_par)
ax[1].set_title('Expanded nodes vs. {} (N clients = {})'.format(str_rep_par, size))

plt.legend()
fig.tight_layout()

plt.show()