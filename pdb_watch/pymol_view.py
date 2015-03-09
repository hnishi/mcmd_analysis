"""
ver. 1.0.0
"""
from pymol.cmd import * 
import glob

map(load,glob.glob('*.pdb'))

cmd.remove("resn WAT | hydrogen")
cmd.hide("everything")
cmd.show("ribbon")
#cmd.select("h3","i. 210-222")
#cmd.orient("h3")

### cut below here and paste into script ###
set_view ("\
     0.200583056,    0.873856008,   -0.442877114,\
    -0.113997869,   -0.428173661,   -0.896476626,\
    -0.973021448,    0.230303943,    0.013732688,\
     0.000000000,    0.000000000,  -58.141948700,\
    -0.692646980,  -12.820801735,    3.635968685,\
    41.228359222,   75.055503845,    0.000000000 ")
### cut above here and paste into script ###

cmd.ray()
cmd.png("all.png")
save("all.pse")

quit()
	
