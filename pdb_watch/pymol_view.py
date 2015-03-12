"""
pymol_view.py
"""
print "pymol_view.py v1.1.1"
#try:
from pymol.cmd import * 
#except:
import glob
fff = glob.glob('*.pdb')
print fff
func = lambda a:a.split('.')[0]
fff = map(func,fff)
print fff

map(load,glob.glob('*.pdb'))
cmd.remove("resn WAT | hydrogen | resn CIP+CIM+NME")

#align_nishi2 = lambda a: align(a,fff[0])

"""
def align_nishi(aaa):
	align(aaa,fff[0])
	return
map(align_nishi,fff[1:])
"""
#map(align_nishi2,fff[1:])
map(lambda a: align(a,fff[0]),fff[1:])

"""
for i in range(len(fff)-1):
	#align("%s%s%s"%(fff[0],),fff[i+1])
	#align(fff[0],fff[i+1])
	align(fff[i+1],fff[0])
"""
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
	
