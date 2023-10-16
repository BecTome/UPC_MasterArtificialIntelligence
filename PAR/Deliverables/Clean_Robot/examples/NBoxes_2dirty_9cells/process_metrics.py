
import matplotlib.pyplot as plt
import numpy as np

size = 3
ls_boxes = [0, 2, 5, 7, 8]
ls_metrics = [0.009, 0.011, 0.033, 0.041, 0.137]
ls_times = [0.366, 0.412, 0.396, 0.563, 1.459]

fig, ax = plt.subplots(1, 2, figsize=(10, 5))
ax[0].plot(ls_boxes, ls_metrics, color='b')
ax[0].set_xticks(ls_boxes)
ax[0].set_ylabel('Metric')
ax[0].set_xlabel('Number of boxes')
ax[0].set_title('Metric vs. number of boxes (size = {})'.format(size))

ax[1].plot(ls_boxes, ls_times, color='b')
ax[1].set_xticks(ls_boxes)
ax[1].set_ylabel('Time (s)')
ax[1].set_xlabel('Number of boxes')
ax[1].set_title('Time vs. number of boxes (size = {})'.format(size))
fig.tight_layout()

plt.show()