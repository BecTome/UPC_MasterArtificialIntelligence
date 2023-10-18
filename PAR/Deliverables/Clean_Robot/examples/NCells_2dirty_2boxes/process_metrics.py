
import matplotlib.pyplot as plt
import numpy as np

nboxes = 2
ls_n = [2, 3, 4, 5]
ls_metrics = [0.008, 0.01, 0.024, 0.022]
ls_times = [0.37, 0.346, 0.403, 0.423]
ls_nodes = [36, 81, 358, 462]
ls_expanded = [12, 37, 261, 287]

fig, ax = plt.subplots(2, 2, figsize=(10, 5))
ax = ax.ravel()

ax[0].plot(ls_n, ls_metrics, color='b')
ax[0].set_xticks(ls_n)
ax[0].set_ylabel('Metric')
ax[0].set_xlabel('Dimension')
ax[0].set_title('Metric vs. size (N boxes = {})'.format(nboxes))

ax[1].plot(ls_n, ls_times, color='b')
ax[1].set_xticks(ls_n)
ax[1].set_ylabel('Time (s)')
ax[1].set_xlabel('Dimension')
ax[1].set_title('Time vs. size (N boxes = {})'.format(nboxes))

ax[2].plot(ls_n, ls_nodes, color='k')
ax[2].set_xticks(ls_n)
ax[2].set_ylabel('Created Nodes')
ax[2].set_xlabel('Dimension')
ax[2].set_title('Created nodes vs. size (N boxes = {})'.format(nboxes))

ax[3].plot(ls_n, ls_expanded, color='k')
ax[3].set_xticks(ls_n)
ax[3].set_ylabel('Expanded Nodes')
ax[3].set_xlabel('Dimension')
ax[3].set_title('Expanded nodes vs. size (N boxes = {})'.format(nboxes))

fig.tight_layout()

plt.show()