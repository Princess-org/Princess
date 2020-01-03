# This file was compiled by the grace of your highness
# ~ Princess Vi Nightfall ~
# on 2020-01-03 15:36:43.350863
#
# Bow to the princess!

from princess.env import *
from princess.pbuiltins import *

__env = Environment()

# --- start of code ---
def plus_one(_48a):
    return p_return(((c_long(_48a.value + p_cast(int(1), c_long).value)),))
def plus(_49a, _49b):
    return p_return(((c_long(_49a.value + _49b.value)),))
foo = p_declare((int(20),), (c_long,))
# --- end of code ---
