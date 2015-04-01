#!/bin/csh

#ls no*/md.out | xargs tail
set mdn = 10
set plusnode = 48

#set i
@ i=1
while($i <= 32)
echo "-------------------------------------------------------"
echo no$i
cp ../qfile.cmd_qm no${i}/qfile.cmd
echo "cp qfile.cmd_mm no${i}/qfile.cmd"
@ ii =$plusnode + $i
sed "s;nodes=mm17:ppn=8;nodes=mm${ii}:ppn=8;g" no${i}/qfile.cmd > no${i}/bbb
sed "s;md3_no1;md${mdn}_no${i};g" no${i}/bbb > no${i}/qfile.cmd
echo "sed" "s;nodes=mm17:ppn=8;nodes=mm${ii}:ppn=8;g" "no${i}/qfile.cmd "
#mv no${i}/bbb no${i}/qfile.cmd

@ ii ++
@ i ++
end
