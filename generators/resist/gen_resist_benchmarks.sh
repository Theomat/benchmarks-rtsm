#!/bin/bash
git clone https://github.com/HelgeS/RESIST_perf_clustering.git

FOLDER="./RESIST_perf_clustering/data"
DST="./benchmarks/"
function gen(){
    name=$1
    shift
    python generators/resist/resist_converter.py -f $FOLDER/$name $@
    mv ${name}_*.csv $DST
}

gen gcc ctime --cost ctime
rm $FOLDER/imagemagick/.csv
gen imagemagick time size --cost time
gen lingeling conflicts reductions -i cps
gen nodejs ops
gen poppler time size --cost time
gen sqlite q1 q2 q3 q4 q5 q6 q7 q8 q9 q10 q11 q12 q13 q14 q15
rm $DST/sqlite_q1_q2.csv
rm $DST/sqlite_q1_q2_q3.csv
rm $DST/sqlite_q1_q2_q3_q4.csv
rm $DST/sqlite_q1_q2_q3_q4_q5_q6.csv
rm $DST/sqlite_q1_q2_q3_q4_q5_q6_q7.csv
rm $DST/sqlite_q1_q2_q3_q4_q5_q6_q7_q8.csv
rm $DST/sqlite_q1_q2_q3_q4_q5_q6_q7_q8_q9.csv
rm $DST/sqlite_q1_q2_q3_q4_q5_q6_q7_q8_q9_q10_q11.csv
rm $DST/sqlite_q1_q2_q3_q4_q5_q6_q7_q8_q9_q10_q11_q12.csv
rm $DST/sqlite_q1_q2_q3_q4_q5_q6_q7_q8_q9_q10_q11_q12_q13.csv
rm $DST/sqlite_q1_q2_q3_q4_q5_q6_q7_q8_q9_q10_q11_q12_q13_q14.csv
gen x264 etime cpu size fps kbs --cost etime -i usertime systemtime elapsedtime cabac ref deblock analyse me subme mixed_ref me_range trellis 8x8dct fast_pskip chroma_qp_offset bframes b_pyramid b_adapt direct weightb open_gop weightp scenecut rc_lookahead mbtree qpmax aq-mode frames
gen xz time size --cost time

yes | rm -r ./RESIST_perf_clustering