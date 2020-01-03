# This file was compiled by the grace of your highness
# ~ Princess Vi Nightfall ~
# on 2020-01-03 15:57:11.759726
#
# Bow to the princess!

from princess.env import *
from princess.pbuiltins import *

__env = Environment()

# --- start of code ---
def plus_one(_3a):
    return p_return(((c_long(_3a.value + p_cast(int(1), c_long).value)),))
def plus(_4a, _4b):
    return p_return(((c_long(_4a.value + _4b.value)),))
foo = p_declare((int(20),), (c_long,))
# --- end of code ---
