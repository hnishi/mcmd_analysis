#!/bin/csh

################################################################################
# function : exec_mdx
# description :
#   submit mdx execution
#
################################################################################
#set mdn = `more ./current_md_num`
#set nvs = `more ./current_vst_num`
set next_iend = 32
set dir = `pwd`

#rm -r crd_out
#mkdir crd_out


@ jj = 1
while( $jj <= $next_iend )
  #ln -s $dir/no${jj}/mdx.crd crd_out/${jj}.crd
  cd $dir/no$jj
  quatnishi ../../quat.inp > quat.log &
  @ jj ++
end


