
import matplotlib.pyplot as plt
import numpy as np

nboxes = 2
ls_n = [2, 3, 4, 5]
ls_metrics = [0.008, 0.01, 0.024, 0.022]
ls_times = [0.37, 0.346, 0.403, 0.423]

fig, ax = plt.subplots(1, 2, figsize=(10, 5))
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
fig.tight_layout()

plt.show()