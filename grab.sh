dest=bitstream
base=indy_ecdcom

mkdir $dest 2>/dev/null

bit=project/project.runs/impl_1/top_level_wrapper.bit
ltx=project/project.runs/impl_1/top_level_wrapper.ltx

if [ ! -f $bit ]; then
    echo "${bit} doesn't appear to exist"
    exit 1
fi

rm -rf ${dest}/${base}.bit
rm -rf ${dest}/${base}.ltx

                cp $bit ${dest}/${base}.bit
test -f $ltx && cp $ltx ${dest}/${base}.ltx
