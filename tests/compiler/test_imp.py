# This file was compiled by the grace of your highness
# ~ Princess Vi Nightfall ~
# on 2020-01-12 17:07:43.674749
#
# Bow to the princess!

from princess.env import *
from princess.pbuiltins import *

__env = Environment()

# --- start of code ---
def plus_one(_49a):
    return p_return(((c_long(_49a.value + p_cast(int(1), c_long).value)),))
def plus(_50a, _50b):
    return p_return(((c_long(_50a.value + _50b.value)),))
foo = p_declare((int(20),), (c_long,))
# --- end of code ---
