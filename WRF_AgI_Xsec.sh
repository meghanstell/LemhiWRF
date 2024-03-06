#2017013118
#2016120900 
#2019012300


#echo $variable to see what variables are in there


bash
conda activate dorn 

#Group A
A_lats=("44.89,44.90" "44.87,44.88" "44.95,44.96" "45.04,45.05" "45.14,45.15")
A_lons=("-114.3,-112.9" "-114.3,-112.9" "-114.3,-112.9" "-114.3,-112.9" "-114.3,-112.9")
A_xs_names=("A1" "A2" "A3" "A4" "A5")
A_days=("2017013118") # "2016120900" "2019012300")
A_xpers=("P1B-gA")

#Group B
B_lats=("44.83,44.84" "44.73,44.74" "44.62,44.63")
B_lons=("-114.3,-112.9" "-114.3,-112.9" "-114.3,-112.9")
B_xs_names=("B1" "B2" "B3")
B_days=("2017013118") # "2016120900" "2019012300")
B_xpers=("P1B-gB")

#Group C
C_lats=("45.01,45.02" "44.93,44.94" "44.82,44.83" "44.73,44.74")
C_lons=("-114.3,-112.9" "-114.3,-112.9" "-114.3,-112.9" "-114.3,-112.9")
C_xs_names=("C1" "C2" "C3" "C4")
C_days=("2017013118") # "2016120900" "2019012300")
C_xpers=("P1B-gC")

#Group D
D_lats=("44.57,44.58" "44.49,44.50" "44.45,44.56")
D_lons=("-114.3,-112.9" "-114.3,-112.9" "-114.3,-112.9")
D_xs_names=("D1" "D2" "D3")
D_days=("2017013118") # "2016120900" "2019012300")
D_xpers=("P1B-gD")

#Group E
E_lats=("44.68,44.69" "44.62,44.63" "44.55,44.56" "44.46,44.47")
E_lons=("-114.3,-112.9" "-114.3,-112.9" "-114.3,-112.9" "-114.3,-112.9")
E_xs_names=("E1" "E2" "E3" "E4")
E_days=("2017013118") # "2016120900" "2019012300")
E_xpers=("P1B-gE")

#Group F
F_lats=("45.06,45.07" "44.82,44.83" "44.68,44.69" "44.57,44.58")
F_lons=("-114.3,-112.9" "-114.3,-112.9" "-114.3,-112.9" "-114.3,-112.9")
F_xs_names=("F1" "F2" "F3" "F4")
F_days=("2017013118") # "2016120900" "2019012300")
F_xpers=("P1B-gF")

#Group G
G_lats=("45.21,45.22" "45.11,45.12" "45.04,45.05" "44.98,44.99")
G_lons=("-114.3,-112.9" "-114.3,-112.9" "-114.3,-112.9" "-114.3,-112.9")
G_xs_names=("G1" "G2" "G3" "G4")
G_days=("2017013118") # "2016120900" "2019012300")
G_xpers=("P1B-gG")

#Group H
H_lats=("44.84,44.85" "44.79,44.80" "44.73,44.74" "44.72,44.73")
H_lons=("-114.3,-112.9" "-114.3,-112.9" "-114.3,-112.9" "-114.3,-112.9")
H_xs_names=("H1" "H2" "H3" "H4")
H_days=("2017013118") # "2016120900" "2019012300")
H_xpers=("P1B-gH")

#Group I
I_lats=("44.44,44.45" "44.53,44.54" "44.65,44.66" "44.74,44.75")
I_lons=("-114.3,-112.9" "-114.3,-112.9" "-114.3,-112.9" "-114.3,-112.9")
I_xs_names=("I1" "I2" "I3" "I4")
I_days=("2017013118") # "2016120900" "2019012300")
I_xpers=("P1B-gI")

#runs all of the days at once 
# Example:
#    run_all
function run_all(){
    for _day in ${days[@]}; do
      run_day ${_day} &
    done
}
function set_a(){
    export lats=( "${A_lats[@]}" )
    export lons=( "${A_lons[@]}" )
    export xs_names=( "${A_xs_names[@]}" )
    export days=( "${A_days[@]}" )
    export xpers=( "${A_xpers[@]}" )
}
function run_A(){
    set_a
    run_all
    wait
}
function set_b(){
    export lats=( "${B_lats[@]}" )
    export lons=( "${B_lons[@]}" )
    export xs_names=( "${B_xs_names[@]}" )
    export days=( "${B_days[@]}" )
    export xpers=( "${B_xpers[@]}" )
}
function run_B(){
    set_b
    run_all
    wait
}
function set_c(){
    export lats=( "${C_lats[@]}" )
    export lons=( "${C_lons[@]}" )
    export xs_names=( "${C_xs_names[@]}" )
    export days=( "${C_days[@]}" )
    export xpers=( "${C_xpers[@]}" )
}
function run_C(){
    set_c
    run_all
    wait
}
function set_d(){
    export lats=( "${D_lats[@]}" )
    export lons=( "${D_lons[@]}" )
    export xs_names=( "${D_xs_names[@]}" )
    export days=( "${D_days[@]}" )
    export xpers=( "${D_xpers[@]}" )
}
function run_D(){
    set_d
    run_all
    wait
}
function set_e(){
    export lats=( "${E_lats[@]}" )
    export lons=( "${E_lons[@]}" )
    export xs_names=( "${E_xs_names[@]}" )
    export days=( "${E_days[@]}" )
    export xpers=( "${E_xpers[@]}" )
}
function run_E(){
    set_e
    run_all
    wait
}
function set_f(){
    export lats=( "${F_lats[@]}" )
    export lons=( "${F_lons[@]}" )
    export xs_names=( "${F_xs_names[@]}" )
    export days=( "${F_days[@]}" )
    export xpers=( "${F_xpers[@]}" )
}
function run_F(){
    set_f
    run_all
    wait
}
function set_g(){
    export lats=( "${G_lats[@]}" )
    export lons=( "${G_lons[@]}" )
    export xs_names=( "${G_xs_names[@]}" )
    export days=( "${G_days[@]}" )
    export xpers=( "${G_xpers[@]}" )
}
function run_G(){
    set_g
    run_all
    wait
}
function set_h(){
    export lats=( "${H_lats[@]}" )
    export lons=( "${H_lons[@]}" )
    export xs_names=( "${H_xs_names[@]}" )
    export days=( "${H_days[@]}" )
    export xpers=( "${H_xpers[@]}" )
}
function run_H(){
    set_h
    run_all
    wait
}
function set_i(){
    export lats=( "${I_lats[@]}" )
    export lons=( "${I_lons[@]}" )
    export xs_names=( "${I_xs_names[@]}" )
    export days=( "${I_days[@]}" )
    export xpers=( "${I_xpers[@]}" )
}
function run_I(){
    set_i
    run_all
    wait
}

#Provide day and it runs the run_xper function 
#run_day _insert date 
#do this instead of run_all if just running one day 
# Example:
#    run_day 2017013118
function run_day(){
    day=$1
    mkdir -p /glade/work/meghan/Lemhi/WRF/plots/agi_xsection_gifs/${day}
    mkdir -p /glade/work/meghan/Lemhi/WRF/plots/agi_xsection_movies/${day}
    for _xper in ${xpers[@]}; do
      run_xper $day ${_xper} &
    done
    wait  #waits for all of the background functions ending in & to run 
}

#Runs A-I experiments for all lats and lons 
#you can run this and specify the day and xper instead of run_day or run_all 
# Example:
#    run_xper 2017013118 P1B-gA
function run_xper(){
    day=$1
    xper=$2
    for i in ${!xs_names[@]}; do
        run_swath $day $xper ${lats[$i]} ${lons[$i]} ${xs_names[$i]} &
    done
}

#Creates .png images 
# Example:
#    run_swath 2017013118 P1B-gA 44.82333,45.032222 -113.963056,-113.225278 x1
function run_swath(){
    day=$1
    xper=$2
    xlat=$3
    xlon=$4
    xid=$5
    echo -e "Running swath :: day: $day, xper: $xper, xid: $xid"
    echo -e "./run_plots_seeding_xsec_nodiff.sh -d $day -f $xper -pfx 'd01' -xlat $xlat -xlon $xlat -xid $xid"
    ./run_plots_seeding_xsec_nodiff.sh -d $day -f $xper -pfx 'd01' -xlat $xlat -xlon $xlon -xid $xid
    echo -e "Done running swath :: day: $day, xper: $xper, xid: $xid"
    convert_swath $day $xper $xid    
}

#Creates gifs and movies 
# Example:
#    convert_swath 2017013118 P1B-gA x1
function convert_swath(){
    day=$1
    xper=$2
    xid=$3
    _year=${day:0:4}
    _month=${day:4:2}
    _day=${day:6:2}
    _hour=${day:8:2}
    _gif_file=/glade/work/meghan/Lemhi/WRF/plots/agi_xsection_gifs/${day}/xsecv3_${xid}_${xper}_${_year}-${_month}-${_day}.gif
    _mov_file=/glade/work/meghan/Lemhi/WRF/plots/agi_xsection_movies/${day}/xsecv3_${xid}_${xper}_${_year}-${_month}-${_day}.mp4
    echo -e "Creating GIF: ${_gif_file}"
    echo -e "convert -dispose none -delay 100 /glade/work/meghan/Lemhi/WRF/plots/xsec/xsecv3_${xid}_${xper}_${_year}-${_month}-${_day}_*.png -loop 0 ${_gif_file}"
    convert -dispose none -delay 100 /glade/work/meghan/Lemhi/WRF/plots/xsec/xsecv3_${xid}_${xper}_${_year}-${_month}-${_day}_*.png -loop 0 ${_gif_file}
    echo -e "Created GIF: ${_gif_file}"

    echo -e "Creating MOV: ${_mov_file}"
    echo -e "ffmpeg -i ${_gif_file} -vf pad="width=ceil\(iw/2\)*2:height=ceil\(ih/2\)*2" -pix_fmt yuv420p ${_mov_file}"
    ffmpeg -i ${_gif_file} -vf pad="width=ceil(iw/2)*2:height=ceil(ih/2)*2" -pix_fmt yuv420p ${_mov_file}
    echo -e "Created MOV: ${_mov_file}"
    
}


##################################################################
mkdir -p /glade/work/meghan/Lemhi/WRF/plots/xsec
mkdir -p /glade/work/meghan/Lemhi/WRF/plots/agi_xsection_gifs/2017013118
mkdir -p /glade/work/meghan/Lemhi/WRF/plots/agi_xsection_movies/2017013118

#run in WRF directory 
python code/plot_xsec_v3_agi_winds.py \
    --cycle=2017013118 \
    --exper="P1B-gA" \
    --dom="d01" \
    --dtlead=0.25 \
    --fcst_lead=38 \
    --datroot="/glade/work/meghan/Lemhi/WRF/data" \
    --pltroot="/glade/work/meghan/Lemhi/WRF/plots" \
    --geogfn="data/geodata/geo_em.d02.nc.lemhi" \
    --shpfn="['geodata/lemhi']" \
    --xs="x1" \
    --xlat="44.784426,44.793861" \
    --xlon="-114.516417,-112.953116"

#run in code directory
./run_plots_seeding_xsec_nodiff.sh \
    -d '2017013118' \
    -f 'P1B-gA' \
    -pfx 'd01' \
    -xlat "44.784426,44.793861" \
    -xlon "-114.516417,-112.953116" \
    -xid "x1"

./run_plots_seeding_xsec_nodiff.sh  \
    -d '2017013118' \
    -f 'P1B-gB' \
    -pfx 'd01' \
    -xlat "44.784426,44.793861" \
    -xlon "-114.516417,-112.953116" \
    -xid "x1"

./run_plots_seeding_xsec_nodiff.sh  \
    -d '2017013118' \
    -f 'P1B-gC' \
    -pfx 'd01' \
    -xlat "44.784426,44.793861" \
    -xlon "-114.516417,-112.953116" \
    -xid "x1"

./run_plots_seeding_xsec_nodiff.sh  \
    -d '2017013118' \
    -f 'P1B-gD' \
    -pfx 'd01' \
    -xlat "44.784426,44.793861" \
    -xlon "-114.516417,-112.953116" \
    -xid "x1"
    
./run_plots_seeding_xsec_nodiff.sh  \
    -d '2017013118' \
    -f 'P1B-gE' \
    -pfx 'd01' \
    -xlat "44.784426,44.793861" \
    -xlon "-114.516417,-112.953116" \
    -xid "x1"
  
    
./run_plots_seeding_xsec_nodiff.sh  \
    -d '2017013118' \
    -f 'P1B-gF' \
    -pfx 'd01' \
    -xlat "44.784426,44.793861" \
    -xlon "-114.516417,-112.953116" \
    -xid "x1"

./run_plots_seeding_xsec_nodiff.sh  \
    -d '2017013118' \
    -f 'P1B-gG' \
    -pfx 'd01' \
    -xlat "44.784426,44.793861" \
    -xlon "-114.516417,-112.953116" \
    -xid "x1"
    
./run_plots_seeding_xsec_nodiff.sh  \
    -d '2017013118' \
    -f 'P1B-gH' \
    -pfx 'd01' \
    -xlat "44.784426,44.793861" \
    -xlon "-114.516417,-112.953116" \
    -xid "x1"

./run_plots_seeding_xsec_nodiff.sh  \
    -d '2017013118' \
    -f 'P1B-gI' \
    -pfx 'd01' \
    -xlat "44.784426,44.793861" \
    -xlon "-114.516417,-112.953116" \
    -xid "x1"

./run_plots_seeding_xsec_nodiff.sh  \
    -d '2017013118' \
    -f 'P1B-All' \
    -pfx 'd01' \
    -xlat "44.784426,44.793861" \
    -xlon "-114.516417,-112.953116" \
    -xid "x1"
    
#Convert images to gif
convert -dispose none -delay 100 \
    /glade/work/meghan/Lemhi/WRF/plots/xsec/xsecv3_x1_P1B-gA_2017-01-31_1800Z*.png \
    -loop 0 \
    /glade/work/meghan/Lemhi/WRF/plots/agi_xsection_gifs/2017013118/xsecv3_x1_P1B-gA_2017-01-31_1800Z_00.00_19.00.gif

convert -dispose none -delay 100 \
    /glade/work/meghan/Lemhi/WRF/plots/xsec/xsecv3_x1_P1B-gB_2017-01-31_1800Z*.png \
    -loop 0 \
    /glade/work/meghan/Lemhi/WRF/plots/agi_xsection_gifs/2017013118/xsecv3_x1_P1B-gB_2017-01-31_1800Z_00.00_19.00.gif
convert -dispose none -delay 100 \
    /glade/work/meghan/Lemhi/WRF/plots/xsec/xsecv3_x1_P1B-gC_2017-01-31_1800Z*.png \
    -loop 0 \
    /glade/work/meghan/Lemhi/WRF/plots/agi_xsection_gifs/2017013118/xsecv3_x1_P1B-gC_2017-01-31_1800Z_00.00_19.00.gif

convert -dispose none -delay 100 \
    /glade/work/meghan/Lemhi/WRF/plots/xsec/xsecv3_x1_P1B-gD_2017-01-31_1800Z*.png \
    -loop 0 \
    /glade/work/meghan/Lemhi/WRF/plots/agi_xsection_gifs/2017013118/xsecv3_x1_P1B-gD_2017-01-31_1800Z_00.00_19.00.gif

convert -dispose none -delay 100 \
    /glade/work/meghan/Lemhi/WRF/plots/xsec/xsecv3_x1_P1B-gE_2017-01-31_1800Z*.png \
    -loop 0 \
    /glade/work/meghan/Lemhi/WRF/plots/agi_xsection_gifs/2017013118/xsecv3_x1_P1B-gE_2017-01-31_1800Z_00.00_19.00.gif

convert -dispose none -delay 100 \
    /glade/work/meghan/Lemhi/WRF/plots/xsec/xsecv3_x1_P1B-gF_2017-01-31_1800Z*.png \
    -loop 0 \
    /glade/work/meghan/Lemhi/WRF/plots/agi_xsection_gifs/2017013118/xsecv3_x1_P1B-gF_2017-01-31_1800Z_00.00_19.00.gif

convert -dispose none -delay 100 \
    /glade/work/meghan/Lemhi/WRF/plots/xsec/xsecv3_x1_P1B-gG_2017-01-31_1800Z*.png \
    -loop 0 \
    /glade/work/meghan/Lemhi/WRF/plots/agi_xsection_gifs/2017013118/xsecv3_x1_P1B-gG_2017-01-31_1800Z_00.00_19.00.gif

convert -dispose none -delay 100 \
    /glade/work/meghan/Lemhi/WRF/plots/xsec/xsecv3_x1_P1B-gH_2017-01-31_1800Z*.png \
    -loop 0 \
    /glade/work/meghan/Lemhi/WRF/plots/agi_xsection_gifs/2017013118/xsecv3_x1_P1B-gH_2017-01-31_1800Z_00.00_19.00.gif

convert -dispose none -delay 100 \
    /glade/work/meghan/Lemhi/WRF/plots/xsec/xsecv3_x1_P1B-gI_2017-01-31_1800Z*.png \
    -loop 0 \
    /glade/work/meghan/Lemhi/WRF/plots/agi_xsection_gifs/2017013118/xsecv3_x1_P1B-gI_2017-01-31_1800Z_00.00_19.00.gif

#convert gif to movie
ffmpeg \
    -i /glade/work/meghan/Lemhi/WRF/plots/agi_xsection_gifs/2017013118/xsecv3_x1_P1B-gA_2017-01-31_1800Z_00.00_19.00.gif \
    -vf pad="width=ceil(iw/2)*2:height=ceil(ih/2)*2" \
    -pix_fmt yuv420p \
    /glade/work/meghan/Lemhi/WRF/plots/agi_xsection_movies/2017013118/xsecv3_x1_P1B-gA_2017-01-31_1800Z_00.00_19.00.mp4

ffmpeg \
    -i /glade/work/meghan/Lemhi/WRF/plots/agi_xsection_gifs/2017013118/xsecv3_x1_P1B-gB_2017-01-31_1800Z_00.00_19.00.gif \
    -vf pad="width=ceil(iw/2)*2:height=ceil(ih/2)*2" \
    -pix_fmt yuv420p \
    /glade/work/meghan/Lemhi/WRF/plots/agi_xsection_movies/2017013118/xsecv3_x1_P1B-gB_2017-01-31_1800Z_00.00_19.00.mp4

ffmpeg \
    -i /glade/work/meghan/Lemhi/WRF/plots/agi_xsection_gifs/2017013118/xsecv3_x1_P1B-gC_2017-01-31_1800Z_00.00_19.00.gif \
    -vf pad="width=ceil(iw/2)*2:height=ceil(ih/2)*2" \
    -pix_fmt yuv420p \
    /glade/work/meghan/Lemhi/WRF/plots/agi_xsection_movies/2017013118/xsecv3_x1_P1B-gC_2017-01-31_1800Z_00.00_19.00.mp4

ffmpeg \
    -i /glade/work/meghan/Lemhi/WRF/plots/agi_xsection_gifs/2017013118/xsecv3_x1_P1B-gD_2017-01-31_1800Z_00.00_19.00.gif \
    -vf pad="width=ceil(iw/2)*2:height=ceil(ih/2)*2" \
    -pix_fmt yuv420p \
    /glade/work/meghan/Lemhi/WRF/plots/agi_xsection_movies/2017013118/xsecv3_x1_P1B-gD_2017-01-31_1800Z_00.00_19.00.mp4

ffmpeg \
    -i /glade/work/meghan/Lemhi/WRF/plots/agi_xsection_gifs/2017013118/xsecv3_x1_P1B-gE_2017-01-31_1800Z_00.00_19.00.gif \
    -vf pad="width=ceil(iw/2)*2:height=ceil(ih/2)*2" \
    -pix_fmt yuv420p \
    /glade/work/meghan/Lemhi/WRF/plots/agi_xsection_movies/2017013118/xsecv3_x1_P1B-gE_2017-01-31_1800Z_00.00_19.00.mp4

ffmpeg \
    -i /glade/work/meghan/Lemhi/WRF/plots/agi_xsection_gifs/2017013118/xsecv3_x1_P1B-gF_2017-01-31_1800Z_00.00_19.00.gif \
    -vf pad="width=ceil(iw/2)*2:height=ceil(ih/2)*2" \
    -pix_fmt yuv420p \
    /glade/work/meghan/Lemhi/WRF/plots/agi_xsection_movies/2017013118/xsecv3_x1_P1B-gF_2017-01-31_1800Z_00.00_19.00.mp4

ffmpeg \
    -i /glade/work/meghan/Lemhi/WRF/plots/agi_xsection_gifs/2017013118/xsecv3_x1_P1B-gG_2017-01-31_1800Z_00.00_19.00.gif \
    -vf pad="width=ceil(iw/2)*2:height=ceil(ih/2)*2" \
    -pix_fmt yuv420p \
    /glade/work/meghan/Lemhi/WRF/plots/agi_xsection_movies/2017013118/xsecv3_x1_P1B-gG_2017-01-31_1800Z_00.00_19.00.mp4

ffmpeg \
    -i /glade/work/meghan/Lemhi/WRF/plots/agi_xsection_gifs/2017013118/xsecv3_x1_P1B-gH_2017-01-31_1800Z_00.00_19.00.gif \
    -vf pad="width=ceil(iw/2)*2:height=ceil(ih/2)*2" \
    -pix_fmt yuv420p \
    /glade/work/meghan/Lemhi/WRF/plots/agi_xsection_movies/2017013118/xsecv3_x1_P1B-gH_2017-01-31_1800Z_00.00_19.00.mp4

ffmpeg \
    -i /glade/work/meghan/Lemhi/WRF/plots/agi_xsection_gifs/2017013118/xsecv3_x1_P1B-gI_2017-01-31_1800Z_00.00_19.00.gif \
    -vf pad="width=ceil(iw/2)*2:height=ceil(ih/2)*2" \
    -pix_fmt yuv420p \
    /glade/work/meghan/Lemhi/WRF/plots/agi_xsection_movies/2017013118/xsecv3_x1_P1B-gI_2017-01-31_1800Z_00.00_19.00.mp4

#2016120900 


#2019012300




