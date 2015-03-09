#!/bin/csh

################################################################################
# function : exec_mdx
# description :
#   submit mdx execution
#
################################################################################
#set mdn = `more ./current_md_num`
#set nvs = `more ./current_vst_num`
set next_iend = 16
set dir = `pwd`

rm -r pdb_out
mkdir pdb_out

echo \# load.py > pdb_out/load.py

@ jj = 1
while( $jj <= $next_iend )
  ln -s $dir/no${jj}/mdx.out.pdb pdb_out/${jj}.pdb
  echo cmd.load\(\"${jj}.pdb\"\) >> pdb_out/load.py
  @ jj ++
end

echo cmd.remove\(\"resn WAT \| hydrogen\"\) >> pdb_out/load.py
echo cmd.hide\(\"everything\"\) >> pdb_out/load.py
echo cmd.show\(\"ribbon\"\) >> pdb_out/load.py
echo cmd.select\(\"h3\",\"i. 210-222\"\) >> pdb_out/load.py
echo cmd.orient\(\"h3\"\) >> pdb_out/load.py

