
# coding: utf-8

# In[1]:


def fib(n):
    """
    A simple definition of fibonacci manually unrolled
    """
    if n<2:
        return 1
    x,y = 1,1
    for i in range(n-2):
        x,y = y,x+y
    return y


# In[2]:


[fib(i) for i in range(1,10)]


# In[4]:


import numpy as np
X = np.arange(1,30)
Y = np.array([fib(x) for x in X])
import matplotlib.pyplot as plt
fig, ax = plt.subplots()
ax.scatter(X, Y)
ax.set(xlabel='n', ylabel='fib(n)', title='The Fibonacci sequence grows fast !')

