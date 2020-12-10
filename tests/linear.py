import torch
from torch.nn.functional import linear

a = torch.ones(3, 4)
w = torch.eye(5, 4)
b = torch.add(torch.zeros(3, 5), 1.5)

print(linear(a, w, b))

a = torch.ones(1, 3, 4)
w = torch.eye(5, 4)
b = torch.ones(3, 5)

print(linear(a, w, bias=b))
