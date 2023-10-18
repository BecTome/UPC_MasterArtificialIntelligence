
import matplotlib.pyplot as plt
import numpy as np

size = 3
ls_boxes = [0, 2, 5, 7, 8]
ls_metrics = [0.009, 0.011, 0.033, 0.041, 0.137]
ls_times = [0.366, 0.412, 0.396, 0.563, 1.459]
ls_nodes = [40, 54, 462, 5724, 38596]
ls_expanded = [18, 16, 414, 1572, 11900]

fig, ax = plt.subplots(2, 2, figsize=(10, 5))
ax = ax.ravel()

ax[0].plot(ls_boxes, ls_metrics, color='b')
ax[0].set_xticks(ls_boxes)
ax[0].set_ylabel('Metric')
ax[0].set_xlabel('N Boxes')
ax[0].set_title('Metric vs. N Boxes (N = {})'.format(size))

ax[1].plot(ls_boxes, ls_times, color='b')
ax[1].set_xticks(ls_boxes)
ax[1].set_ylabel('Time (s)')
ax[1].set_xlabel('N Boxes')
ax[1].set_title('Time vs. N Boxes (N = {})'.format(size))

ax[2].plot(ls_boxes, ls_nodes, color='k')
ax[2].set_xticks(ls_boxes)
ax[2].set_ylabel('Created Nodes')
ax[2].set_xlabel('N Boxes')
ax[2].set_title('Created nodes vs. N Boxes (N = {})'.format(size))

ax[3].plot(ls_boxes, ls_expanded, color='k')
ax[3].set_xticks(ls_boxes)
ax[3].set_ylabel('Expanded Nodes')
ax[3].set_xlabel('N Boxes')
ax[3].set_title('Expanded nodes vs. N Boxes (N = {})'.format(size))

fig.tight_layout()

plt.show()