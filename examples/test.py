
import torch
import numpy as np
import os

print('hello, world')
print(torch.cuda.is_available())

with open('out', 'w') as f:
	f.write('some output')
