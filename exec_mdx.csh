#!/bin/csh

################################################################################
# function : exec_mdx
# description :
#   submit mdx execution
#
################################################################################
#set mdn = `more ./current_md_num`
#set nvs = `more ./current_vst_num`
#set next_mdn = 6
#set iend = 8
set next_iend = 32
#set dir = /work01/hnishi/2ndTrial/ama2/vmcmd/1t7h_box/md
#set dir = /work1/t2g-14IAW/hnishi/2ndTrial/ama2/vmcmd/1t7h_box/md
set dir = `pwd`

@ jj = 1
while( $jj <= $next_iend )
#while( $jj <= 8 )
  cd ${dir}/no${jj} 
  pwd
  qsub qfile_mdx.csh
  #sleep 1s
  @ jj++
end



