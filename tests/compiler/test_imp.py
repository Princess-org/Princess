# This file was compiled by the grace of your highness
# ~ Princess Vi Nightfall ~
# on 2020-01-15 12:44:38.587926
#
# Bow to the princess!

from princess.env import *
from princess.pbuiltins import *

__env = Environment()

# --- start of code ---
def plus_one(_46a):
    return p_return(((c_long(_46a.value + p_cast(int(1), c_long).value)),))
def plus(_47a, _47b):
    return p_return(((c_long(_47a.value + _47b.value)),))
foo = p_declare((int(20),), (c_long,))
# --- end of code ---
