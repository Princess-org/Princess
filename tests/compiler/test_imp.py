# This file was compiled by the grace of your highness
# ~ Princess Vi Nightfall ~
# on 2020-08-16 22:18:03.362115
#
# Bow to the princess!

from princess.env import *
from princess.pbuiltins import *

__env = Environment()

# --- start of code ---
def plus_one(_51a):
    return p_return(((c_long(_51a.value + p_cast(int(1), c_long).value)),))
def plus(_52a, _52b):
    return p_return(((c_long(_52a.value + _52b.value)),))
foo = p_declare((int(20),), (c_long,))
# --- end of code ---
