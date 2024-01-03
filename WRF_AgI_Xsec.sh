#2017013118
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
    --xs="x1"
    --xlat="44.784426,44.793861"
    --xlon="-114.516417,-112.953116"

mkdir -p /glade/work/meghan/Lemhi/WRF/plots/agi_xsection/2017013118

./run_plots_seeding_xsec_nodiff.sh \
    -d '2017013118' \
    -f 'P1B-gA' \
    -pfx 'd01' 
    

./run_plots_seeding_xsec_nodiff.sh  \
    -d '2017013118' \
    -f 'P1B-gB' \
    -pfx 'd01' 
  

./run_plots_seeding_xsec_nodiff.sh  \
    -d '2017013118' \
    -f 'P1B-gC' \
    -pfx 'd01' 
    

./run_plots_seeding_xsec_nodiff.sh  \
    -d '2017013118' \
    -f 'P1B-gD' \
    -pfx 'd01' 
    

./run_plots_seeding_xsec_nodiff.sh  \
    -d '2017013118' \
    -f 'P1B-gE' \
    -pfx 'd01' 
  
    
./run_plots_seeding_xsec_nodiff.sh  \
    -d '2017013118' \
    -f 'P1B-gF' \
    -pfx 'd01' 
    

./run_plots_seeding_xsec_nodiff.sh  \
    -d '2017013118' \
    -f 'P1B-gG' \
    -pfx 'd01' 
    
./run_plots_seeding_xsec_nodiff.sh  \
    -d '2017013118' \
    -f 'P1B-gH' \
    -pfx 'd01' 
   

./run_plots_seeding_xsec_nodiff.sh  \
    -d '2017013118' \
    -f 'P1B-gI' \
    -pfx 'd01' 
  

./run_plots_seeding_xsec_nodiff.sh  \
    -d '2017013118' \
    -f 'P1B-All' \
    -pfx 'd01' 
    

mkdir -p /glade/work/meghan/Lemhi/WRF/plots/agi_xsection_gifs/2017013118
mkdir -p /glade/work/meghan/Lemhi/WRF/plots/agi_xsection_movies/2017013118

#Convert images to gif
convert -dispose none -delay 100 \
    /glade/work/meghan/Lemhi/WRF/plots/agi_xsection/2017013118/agi3600_P1B-gA_2017-01-31_1800Z*.png \
    -loop 0 \
    /glade/work/meghan/Lemhi/WRF/plots/agi_xsection_gifs/2017013118/agi3600_P1B-gA_2017-01-31_1800Z_00.00_19.00.gif

convert -dispose none -delay 100 \
    /glade/work/meghan/Lemhi/WRF/plots/agi_xsection/2017013118/agi3600_P1B-gB_2017-01-31_1800Z*.png \
    -loop 0 \
    /glade/work/meghan/Lemhi/WRF/plots/agi_xsection_gifs/2017013118/agi3600_P1B-gB_2017-01-31_1800Z_00.00_19.00.gif
convert -dispose none -delay 100 \
    /glade/work/meghan/Lemhi/WRF/plots/agi_xsection/2017013118/agi3600_P1B-gC_2017-01-31_1800Z*.png \
    -loop 0 \
    /glade/work/meghan/Lemhi/WRF/plots/agi_xsection_gifs/2017013118/agi3600_P1B-gC_2017-01-31_1800Z_00.00_19.00.gif

convert -dispose none -delay 100 \
    /glade/work/meghan/Lemhi/WRF/plots/agi_xsection/2017013118/agi3600_P1B-gD_2017-01-31_1800Z*.png \
    -loop 0 \
    /glade/work/meghan/Lemhi/WRF/plots/agi_xsection_gifs/2017013118/agi3600_P1B-gD_2017-01-31_1800Z_00.00_19.00.gif

convert -dispose none -delay 100 \
    /glade/work/meghan/Lemhi/WRF/plots/agi_xsection/2017013118/agi3600_P1B-gE_2017-01-31_1800Z*.png \
    -loop 0 \
    /glade/work/meghan/Lemhi/WRF/plots/agi_xsection_gifs/2017013118/agi3600_P1B-gE_2017-01-31_1800Z_00.00_19.00.gif

convert -dispose none -delay 100 \
    /glade/work/meghan/Lemhi/WRF/plots/agi_xsection/2017013118/agi3600_P1B-gF_2017-01-31_1800Z*.png \
    -loop 0 \
    /glade/work/meghan/Lemhi/WRF/plots/agi_xsection_gifs/2017013118/agi3600_P1B-gF_2017-01-31_1800Z_00.00_19.00.gif

convert -dispose none -delay 100 \
    /glade/work/meghan/Lemhi/WRF/plots/agi_xsection/2017013118/agi3600_P1B-gG_2017-01-31_1800Z*.png \
    -loop 0 \
    /glade/work/meghan/Lemhi/WRF/plots/agi_xsection_gifs/2017013118/agi3600_P1B-gG_2017-01-31_1800Z_00.00_19.00.gif

convert -dispose none -delay 100 \
    /glade/work/meghan/Lemhi/WRF/plots/agi_xsection/2017013118/agi3600_P1B-gH_2017-01-31_1800Z*.png \
    -loop 0 \
    /glade/work/meghan/Lemhi/WRF/plots/agi_xsection_gifs/2017013118/agi3600_P1B-gH_2017-01-31_1800Z_00.00_19.00.gif

convert -dispose none -delay 100 \
    /glade/work/meghan/Lemhi/WRF/plots/agi_xsection/2017013118/agi3600_P1B-gI_2017-01-31_1800Z*.png \
    -loop 0 \
    /glade/work/meghan/Lemhi/WRF/plots/agi_xsection_gifs/2017013118/agi3600_P1B-gI_2017-01-31_1800Z_00.00_19.00.gif

#convert gif to movie
ffmpeg \
    -i /glade/work/meghan/Lemhi/WRF/plots/agi_xsection_gifs/2017013118/agi3600_P1B-gA_2017-01-31_1800Z_00.00_19.00.gif \
    -vf pad="width=ceil(iw/2)*2:height=ceil(ih/2)*2" \
    -pix_fmt yuv420p \
    /glade/work/meghan/Lemhi/WRF/plots/agi_xsection_movies/2017013118/agi3600_P1B-gA_2017-01-31_1800Z_00.00_19.00.mp4

ffmpeg \
    -i /glade/work/meghan/Lemhi/WRF/plots/agi_xsection_gifs/2017013118/agi3600_P1B-gB_2017-01-31_1800Z_00.00_19.00.gif \
    -vf pad="width=ceil(iw/2)*2:height=ceil(ih/2)*2" \
    -pix_fmt yuv420p \
    /glade/work/meghan/Lemhi/WRF/plots/agi_xsection_movies/2017013118/agi3600_P1B-gB_2017-01-31_1800Z_00.00_19.00.mp4

ffmpeg \
    -i /glade/work/meghan/Lemhi/WRF/plots/agi_xsection_gifs/2017013118/agi3600_P1B-gC_2017-01-31_1800Z_00.00_19.00.gif \
    -vf pad="width=ceil(iw/2)*2:height=ceil(ih/2)*2" \
    -pix_fmt yuv420p \
    /glade/work/meghan/Lemhi/WRF/plots/agi_xsection_movies/2017013118/agi3600_P1B-gC_2017-01-31_1800Z_00.00_19.00.mp4

ffmpeg \
    -i /glade/work/meghan/Lemhi/WRF/plots/agi_xsection_gifs/2017013118/agi3600_P1B-gD_2017-01-31_1800Z_00.00_19.00.gif \
    -vf pad="width=ceil(iw/2)*2:height=ceil(ih/2)*2" \
    -pix_fmt yuv420p \
    /glade/work/meghan/Lemhi/WRF/plots/agi_xsection_movies/2017013118/agi3600_P1B-gD_2017-01-31_1800Z_00.00_19.00.mp4

ffmpeg \
    -i /glade/work/meghan/Lemhi/WRF/plots/agi_xsection_gifs/2017013118/agi3600_P1B-gE_2017-01-31_1800Z_00.00_19.00.gif \
    -vf pad="width=ceil(iw/2)*2:height=ceil(ih/2)*2" \
    -pix_fmt yuv420p \
    /glade/work/meghan/Lemhi/WRF/plots/agi_xsection_movies/2017013118/agi3600_P1B-gE_2017-01-31_1800Z_00.00_19.00.mp4

ffmpeg \
    -i /glade/work/meghan/Lemhi/WRF/plots/agi_xsection_gifs/2017013118/agi3600_P1B-gF_2017-01-31_1800Z_00.00_19.00.gif \
    -vf pad="width=ceil(iw/2)*2:height=ceil(ih/2)*2" \
    -pix_fmt yuv420p \
    /glade/work/meghan/Lemhi/WRF/plots/agi_xsection_movies/2017013118/agi3600_P1B-gF_2017-01-31_1800Z_00.00_19.00.mp4

ffmpeg \
    -i /glade/work/meghan/Lemhi/WRF/plots/agi_xsection_gifs/2017013118/agi3600_P1B-gG_2017-01-31_1800Z_00.00_19.00.gif \
    -vf pad="width=ceil(iw/2)*2:height=ceil(ih/2)*2" \
    -pix_fmt yuv420p \
    /glade/work/meghan/Lemhi/WRF/plots/agi_xsection_movies/2017013118/agi3600_P1B-gG_2017-01-31_1800Z_00.00_19.00.mp4

ffmpeg \
    -i /glade/work/meghan/Lemhi/WRF/plots/agi_xsection_gifs/2017013118/agi3600_P1B-gH_2017-01-31_1800Z_00.00_19.00.gif \
    -vf pad="width=ceil(iw/2)*2:height=ceil(ih/2)*2" \
    -pix_fmt yuv420p \
    /glade/work/meghan/Lemhi/WRF/plots/agi_xsection_movies/2017013118/agi3600_P1B-gH_2017-01-31_1800Z_00.00_19.00.mp4

ffmpeg \
    -i /glade/work/meghan/Lemhi/WRF/plots/agi_xsection_gifs/2017013118/agi3600_P1B-gI_2017-01-31_1800Z_00.00_19.00.gif \
    -vf pad="width=ceil(iw/2)*2:height=ceil(ih/2)*2" \
    -pix_fmt yuv420p \
    /glade/work/meghan/Lemhi/WRF/plots/agi_xsection_movies/2017013118/agi3600_P1B-gI_2017-01-31_1800Z_00.00_19.00.mp4

#2016120900 

python code/plot_xsec_v3_agi_winds.py \
    --cycle=2016120900 \
    --exper="P1B-gA" \
    --dom="d01" \
    --dtlead=0.25 \
    --fcst_lead=38 \
    --datroot="/glade/work/meghan/Lemhi/WRF/data" \
    --pltroot="/glade/work/meghan/Lemhi/WRF/plots" \
    --geogfn="data/geodata/geo_em.d02.nc.lemhi" \
    --shpfn="['geodata/lemhi']" \
    --xs="x1"
    --xlat="44.784426,44.793861"
    --xlon="-114.516417,-112.953116"

mkdir -p /glade/work/meghan/Lemhi/WRF/plots/agi_xsection/2016120900

./run_plots_seeding_xsec_nodiff.sh \
    -d '2016120900' \
    -f 'P1B-gA' \
    -pfx 'd01'

./run_plots_seeding_xsec_nodiff.sh \
    -d '2016120900' \
    -f 'P1B-gB' \
    -pfx 'd01' 
   

./run_plots_seeding_xsec_nodiff.sh \
    -d '2016120900' \
    -f 'P1B-gC' \
    -pfx 'd01' 
  

./run_plots_seeding_xsec_nodiff.sh \
    -d '2016120900' \
    -f 'P1B-gD' \
    -pfx 'd01' 
 

./run_plots_seeding_xsec_nodiff.sh \
    -d '2016120900' \
    -f 'P1B-gE' \
    -pfx 'd01' 
  
    
./run_plots_seeding_xsec_nodiff.sh \
    -d '2016120900' \
    -f 'P1B-gF' \
    -pfx 'd01' 
   

./run_plots_seeding_xsec_nodiff.sh \
    -d '2016120900' \
    -f 'P1B-gG' \
    -pfx 'd01' 


./run_plots_seeding_xsec_nodiff.sh \
    -d '2016120900' \
    -f 'P1B-gH' \
    -pfx 'd01' 
  

./run_plots_seeding_xsec_nodiff.sh \
    -d '2016120900' \
    -f 'P1B-gI' \
    -pfx 'd01' 
   

mkdir -p /glade/work/meghan/Lemhi/WRF/plots/agi_xsection_gifs/2016120900
mkdir -p /glade/work/meghan/Lemhi/WRF/plots/agi_xsection_movies/2016120900

#Convert images to gif
convert -dispose none -delay 100 \
    /glade/work/meghan/Lemhi/WRF/plots/agi_xsection/2016120900/agi3600_P1B-gA_2016-12-09_0300Z*.png \
    -loop 0 \
    /glade/work/meghan/Lemhi/WRF/plots/agi_xsection_gifs/2016120900/agi3600_P1B-gA_2016-12-09_0300Z_00.00_19.00.gif

convert -dispose none -delay 100 \
    /glade/work/meghan/Lemhi/WRF/plots/agi_xsection/2016120900agi_xsection/2016120900/agi3600_P1B-gB_2016-12-09_0300Z*.png \
    -loop 0 \
    /glade/work/meghan/Lemhi/WRF/plots/agi_xsection_gifs/2016120900/agi3600_P1B-gB_2016-12-09_0300Z_00.00_19.00.gif
convert -dispose none -delay 100 \
    /glade/work/meghan/Lemhi/WRF/plots/agi_xsection/2016120900v/agi3600_P1B-gC_2016-12-09_0300Z*.png \
    -loop 0 \
    /glade/work/meghan/Lemhi/WRF/plots/agi_xsection_gifs/2016120900/agi3600_P1B-gC_2016-12-09_0300Z_00.00_19.00.gif

convert -dispose none -delay 100 \
    /glade/work/meghan/Lemhi/WRF/plots/agi_xsection/2016120900/agi3600_P1B-gD_2016-12-09_0300Z*.png \
    -loop 0 \
    /glade/work/meghan/Lemhi/WRF/plots/agi_xsection_gifs/2016120900/agi3600_P1B-gD_2016-12-09_0300Z_00.00_19.00.gif

convert -dispose none -delay 100 \
    /glade/work/meghan/Lemhi/WRF/plots/agi_xsection/2016120900/agi3600_P1B-gE_2016-12-09_0300Z*.png \
    -loop 0 \
    /glade/work/meghan/Lemhi/WRF/plots/agi_xsection_gifs/2016120900/agi3600_P1B-gE_2016-12-09_0300Z_00.00_19.00.gif

convert -dispose none -delay 100 \
    /glade/work/meghan/Lemhi/WRF/plots/agi_xsection/2016120900/agi3600_P1B-gF_2016-12-09_0300Z*.png \
    -loop 0 \
    /glade/work/meghan/Lemhi/WRF/plots/agi_xsection_gifs/2016120900/agi3600_P1B-gF_2016-12-09_0300Z_00.00_19.00.gif

convert -dispose none -delay 100 \
    /glade/work/meghan/Lemhi/WRF/plots/agi_xsection/2016120900/agi3600_P1B-gG_2016-12-09_0300Z*.png \
    -loop 0 \
    /glade/work/meghan/Lemhi/WRF/plots/agi_xsection_gifs/2016120900/agi3600_P1B-gG_2016-12-09_0300Z_00.00_19.00.gif

convert -dispose none -delay 100 \
    /glade/work/meghan/Lemhi/WRF/plots/agi_xsection/2016120900/agi3600_P1B-gH_2016-12-09_0300Z*.png \
    -loop 0 \
    /glade/work/meghan/Lemhi/WRF/plots/agi_xsection_gifs/2016120900/agi3600_P1B-gH_2016-12-09_0300Z_00.00_19.00.gif

convert -dispose none -delay 100 \
    /glade/work/meghan/Lemhi/WRF/plots/agi_xsection/2016120900/agi3600_P1B-gI_2016-12-09_0300Z*.png \
    -loop 0 \
    /glade/work/meghan/Lemhi/WRF/plots/agi_xsection_gifs/2016120900/agi3600_P1B-gI_2016-12-09_0300Z_00.00_19.00.gif

#Convert gifs to movie 
ffmpeg \
    -i /glade/work/meghan/Lemhi/WRF/plots/agi_xsection_gifs/2016120900/agi3600_P1B-gA_2016-12-09_0300Z_00.00_19.00.gif \
    -vf pad="width=ceil(iw/2)*2:height=ceil(ih/2)*2" \
    -pix_fmt yuv420p \
    /glade/work/meghan/Lemhi/WRF/plots/agi_xsection_movies/2016120900/agi3600_P1B-gA_2016-12-09_0300Z_00.00_19.00.mp4

ffmpeg \
    -i /glade/work/meghan/Lemhi/WRF/plots/agi_xsection_gifs/2016120900/agi3600_P1B-gB_2016-12-09_0300Z_00.00_19.00.gif \
    -vf pad="width=ceil(iw/2)*2:height=ceil(ih/2)*2" \
    -pix_fmt yuv420p \
    /glade/work/meghan/Lemhi/WRF/plots/agi_xsection_movies/2016120900/agi3600_P1B-gB_2016-12-09_0300Z_00.00_19.00.mp4

ffmpeg \
    -i /glade/work/meghan/Lemhi/WRF/plots/agi_xsection_gifs/2016120900/agi3600_P1B-gC_2016-12-09_0300Z_00.00_19.00.gif \
    -vf pad="width=ceil(iw/2)*2:height=ceil(ih/2)*2" \
    -pix_fmt yuv420p \
    /glade/work/meghan/Lemhi/WRF/plots/agi_xsection_movies/2016120900/agi3600_P1B-gC_2016-12-09_0300Z_00.00_19.00.mp4

ffmpeg \
    -i /glade/work/meghan/Lemhi/WRF/plots/agi_xsection_gifs/2016120900/agi3600_P1B-gD_2016-12-09_0300Z_00.00_19.00.gif \
    -vf pad="width=ceil(iw/2)*2:height=ceil(ih/2)*2" \
    -pix_fmt yuv420p \
    /glade/work/meghan/Lemhi/WRF/plots/agi_xsection_movies/2016120900/agi3600_P1B-gD_2016-12-09_0300Z_00.00_19.00.mp4

ffmpeg \
    -i /glade/work/meghan/Lemhi/WRF/plots/agi_xsection_gifs/2016120900/agi3600_P1B-gE_2016-12-09_0300Z_00.00_19.00.gif \
    -vf pad="width=ceil(iw/2)*2:height=ceil(ih/2)*2" \
    -pix_fmt yuv420p \
    /glade/work/meghan/Lemhi/WRF/plots/agi_xsection_movies/2016120900/agi3600_P1B-gE_2016-12-09_0300Z_00.00_19.00.mp4

ffmpeg \
    -i /glade/work/meghan/Lemhi/WRF/plots/agi_xsection_gifs/2016120900/agi3600_P1B-gF_2016-12-09_0300Z_00.00_19.00.gif \
    -vf pad="width=ceil(iw/2)*2:height=ceil(ih/2)*2" \
    -pix_fmt yuv420p \
    /glade/work/meghan/Lemhi/WRF/plots/agi_xsection_movies/2016120900/agi3600_P1B-gF_2016-12-09_0300Z_00.00_19.00.mp4

ffmpeg \
    -i /glade/work/meghan/Lemhi/WRF/plots/agi_xsection_gifs/2016120900/agi3600_P1B-gG_2016-12-09_0300Z_00.00_19.00.gif \
    -vf pad="width=ceil(iw/2)*2:height=ceil(ih/2)*2" \
    -pix_fmt yuv420p \
    /glade/work/meghan/Lemhi/WRF/plots/agi_xsection_movies/2016120900/agi3600_P1B-gG_2016-12-09_0300Z_00.00_19.00.mp4

ffmpeg \
    -i /glade/work/meghan/Lemhi/WRF/plots/agi_xsection_gifs/2016120900/agi3600_P1B-gH_2016-12-09_0300Z_00.00_19.00.gif \
    -vf pad="width=ceil(iw/2)*2:height=ceil(ih/2)*2" \
    -pix_fmt yuv420p \
    /glade/work/meghan/Lemhi/WRF/plots/agi_xsection_movies/2016120900/agi3600_P1B-gH_2016-12-09_0300Z_00.00_19.00.mp4

ffmpeg \
    -i /glade/work/meghan/Lemhi/WRF/plots/agi_xsection_gifs/2016120900/agi3600_P1B-gI_2016-12-09_0300Z_00.00_19.00.gif \
    -vf pad="width=ceil(iw/2)*2:height=ceil(ih/2)*2" \
    -pix_fmt yuv420p \
    /glade/work/meghan/Lemhi/WRF/plots/agi_xsection_movies/2016120900/agi3600_P1B-gI_2016-12-09_0300Z_00.00_19.00.mp4

#2019012300
python code/plot_xsec_v3_agi_winds.py \
    --cycle=2019012300 \
    --exper="P1B-gA" \
    --dom="d01" \
    --dtlead=0.25 \
    --fcst_lead=38 \
    --datroot="/glade/work/meghan/Lemhi/WRF/data" \
    --pltroot="/glade/work/meghan/Lemhi/WRF/plots" \
    --geogfn="data/geodata/geo_em.d02.nc.lemhi" \
    --shpfn="['geodata/lemhi']" \
    --xs="x1"
    --xlat="44.784426,44.793861"
    --xlon="-114.516417,-112.953116"

mkdir -p /glade/work/meghan/Lemhi/WRF/plots/agi_xsection/2019012300

./run_plots_seeding_xsec_nodiff.sh \
    -d '2019012300' \
    -f 'P1B-gA' \
    -pfx 'd01' 
  

./run_plots_seeding_xsec_nodiff.sh \
    -d '2019012300' \
    -f 'P1B-gB' \
    -pfx 'd01' 
   

./run_plots_seeding_xsec_nodiff.sh \
    -d '2019012300' \
    -f 'P1B-gC' \
    -pfx 'd01' 
  

./run_plots_seeding_xsec_nodiff.sh \
    -d '2019012300' \
    -f 'P1B-gD' \
    -pfx 'd01' 
    

./run_plots_seeding_xsec_nodiff.sh \
    -d '2019012300' \
    -f 'P1B-gE' \
    -pfx 'd01' 

    
./run_plots_seeding_xsec_nodiff.sh \
    -d '2019012300' \
    -f 'P1B-gF' \
    -pfx 'd01'


./run_plots_seeding_xsec_nodiff.sh \
    -d '2019012300' \
    -f 'P1B-gG' \
    -pfx 'd01' 
 

./run_plots_seeding_xsec_nodiff.sh \
    -d '2019012300' \
    -f 'P1B-gH' \
    -pfx 'd01' 
  

./run_plots_seeding_xsec_nodiff.sh \
    -d '2019012300' \
    -f 'P1B-gI' \
    -pfx 'd01' 
  

mkdir -p /glade/work/meghan/Lemhi/WRF/plots/agi_xsection_gifs/2019012300
mkdir -p /glade/work/meghan/Lemhi/WRF/plots/agi_xsection_movies/2019012300

#Convert Images to GIFS
convert -dispose none -delay 100 \
    /glade/work/meghan/Lemhi/WRF/plots/agi_xsection/2019012300/agi3600_P1B-gA_2019-01-23_1200Z*.png \
    -loop 0 \
    /glade/work/meghan/Lemhi/WRF/plots/agi_xsection_gifs/2019012300/agi3600_P1B-gA_2019-01-23_1200Z_00.00_19.00.gif

convert -dispose none -delay 100 \
    /glade/work/meghan/Lemhi/WRF/plots/agi_xsection/2019012300/agi3600_P1B-gB_2019-01-23_1200Z*.png \
    -loop 0 \
    /glade/work/meghan/Lemhi/WRF/plots/agi_xsection_gifs/2019012300/agi3600_P1B-gB_2019-01-23_1200Z_00.00_19.00.gif
convert -dispose none -delay 100 \
    /glade/work/meghan/Lemhi/WRF/plots/agi_xsection/2019012300/agi3600_P1B-gC_2019-01-23_1200Z*.png \
    -loop 0 \
    /glade/work/meghan/Lemhi/WRF/plots/agi_xsection_gifs/2019012300/agi3600_P1B-gC_2019-01-23_1200Z_00.00_19.00.gif

convert -dispose none -delay 100 \
    /glade/work/meghan/Lemhi/WRF/plots/agi_xsection/2019012300/agi3600_P1B-gD_2019-01-23_1200Z*.png \
    -loop 0 \
    /glade/work/meghan/Lemhi/WRF/plots/agi_xsection_gifs/2019012300/agi3600_P1B-gD_2019-01-23_1200Z_00.00_19.00.gif

convert -dispose none -delay 100 \
    /glade/work/meghan/Lemhi/WRF/plots/agi_xsection/2019012300/agi3600_P1B-gE_2019-01-23_1200Z*.png \
    -loop 0 \
    /glade/work/meghan/Lemhi/WRF/plots/agi_xsection_gifs/2019012300/agi3600_P1B-gE_2019-01-23_1200Z_00.00_19.00.gif

convert -dispose none -delay 100 \
    /glade/work/meghan/Lemhi/WRF/plots/agi_xsection/2019012300/agi3600_P1B-gF_2019-01-23_1200Z*.png \
    -loop 0 \
    /glade/work/meghan/Lemhi/WRF/plots/agi_xsection_gifs/2019012300/agi3600_P1B-gF_2019-01-23_1200Z_00.00_19.00.gif

convert -dispose none -delay 100 \
    /glade/work/meghan/Lemhi/WRF/plots/agi_xsection/2019012300/agi3600_P1B-gG_2019-01-23_1200Z*.png \
    -loop 0 \
    /glade/work/meghan/Lemhi/WRF/plots/agi_xsection_gifs/2019012300/agi3600_P1B-gG_2019-01-23_1200Z_00.00_19.00.gif

convert -dispose none -delay 100 \
    /glade/work/meghan/Lemhi/WRF/plots/agi_xsection/2019012300/agi3600_P1B-gH_2019-01-23_1200Z*.png \
    -loop 0 \
    /glade/work/meghan/Lemhi/WRF/plots/agi_xsection_gifs/2019012300/agi3600_P1B-gH_2019-01-23_1200Z_00.00_19.00.gif

convert -dispose none -delay 100 \
    /glade/work/meghan/Lemhi/WRF/plots/agi_xsection/2019012300/agi3600_P1B-gI_2019-01-23_1200Z*.png \
    -loop 0 \
    /glade/work/meghan/Lemhi/WRF/plots/agi_xsection_gifs/2019012300/agi3600_P1B-gI_2019-01-23_1200Z_00.00_19.00.gif

#Convert GIFS to movies 

ffmpeg \
    -i /glade/work/meghan/Lemhi/WRF/plots/agi_xsection_gifs/2019012300/agi3600_P1B-gA_2019-01-23_1200Z_00.00_19.00.gif \
    -vf pad="width=ceil(iw/2)*2:height=ceil(ih/2)*2" \
    -pix_fmt yuv420p \
    /glade/work/meghan/Lemhi/WRF/plots/agi_xsection_movies/2019012300/agi3600_P1B-gA_2019-01-23_1200Z_00.00_19.00.mp4

ffmpeg \
    -i /glade/work/meghan/Lemhi/WRF/plots/agi_xsection_gifs/2019012300/agi3600_P1B-gB_2019-01-23_1200Z_00.00_19.00.gif \
    -vf pad="width=ceil(iw/2)*2:height=ceil(ih/2)*2" \
    -pix_fmt yuv420p \
    /glade/work/meghan/Lemhi/WRF/plots/agi_xsection_movies/2019012300/agi3600_P1B-gB_2019-01-23_1200Z_00.00_19.00.mp4

ffmpeg \
    -i /glade/work/meghan/Lemhi/WRF/plots/agi_xsection_gifs/2019012300/agi3600_P1B-gC_2019-01-23_1200Z_00.00_19.00.gif \
    -vf pad="width=ceil(iw/2)*2:height=ceil(ih/2)*2" \
    -pix_fmt yuv420p \
    /glade/work/meghan/Lemhi/WRF/plots/agi_xsection_movies/2019012300/agi3600_P1B-gC_2019-01-23_1200Z_00.00_19.00.mp4

ffmpeg \
    -i /glade/work/meghan/Lemhi/WRF/plots/agi_xsection_gifs/2019012300/agi3600_P1B-gD_2019-01-23_1200Z_00.00_19.00.gif \
    -vf pad="width=ceil(iw/2)*2:height=ceil(ih/2)*2" \
    -pix_fmt yuv420p \
    /glade/work/meghan/Lemhi/WRF/plots/agi_xsection_movies/2019012300/agi3600_P1B-gD_2019-01-23_1200Z_00.00_19.00.mp4

ffmpeg \
    -i /glade/work/meghan/Lemhi/WRF/plots/agi_xsection_gifs/2019012300/agi3600_P1B-gE_2019-01-23_1200Z_00.00_19.00.gif \
    -vf pad="width=ceil(iw/2)*2:height=ceil(ih/2)*2" \
    -pix_fmt yuv420p \
    /glade/work/meghan/Lemhi/WRF/plots/agi_xsection_movies/2019012300/agi3600_P1B-gE_2019-01-23_1200Z_00.00_19.00.mp4

ffmpeg \
    -i /glade/work/meghan/Lemhi/WRF/plots/agi_xsection_gifs/2019012300/agi3600_P1B-gF_2019-01-23_1200Z_00.00_19.00.gif \
    -vf pad="width=ceil(iw/2)*2:height=ceil(ih/2)*2" \
    -pix_fmt yuv420p \
    /glade/work/meghan/Lemhi/WRF/plots/agi_xsection_movies/2019012300/agi3600_P1B-gF_2019-01-23_1200Z_00.00_19.00.mp4

ffmpeg \
    -i /glade/work/meghan/Lemhi/WRF/plots/agi_xsection_gifs/2019012300/agi3600_P1B-gG_2019-01-23_1200Z_00.00_19.00.gif \
    -vf pad="width=ceil(iw/2)*2:height=ceil(ih/2)*2" \
    -pix_fmt yuv420p \
    /glade/work/meghan/Lemhi/WRF/plots/agi_xsection_movies/2019012300/agi3600_P1B-gG_2019-01-23_1200Z_00.00_19.00.mp4

ffmpeg \
    -i /glade/work/meghan/Lemhi/WRF/plots/agi_xsection_gifs/2019012300/agi3600_P1B-gH_2019-01-23_1200Z_00.00_19.00.gif \
    -vf pad="width=ceil(iw/2)*2:height=ceil(ih/2)*2" \
    -pix_fmt yuv420p \
    /glade/work/meghan/Lemhi/WRF/plots/agi_xsection_movies/2019012300/agi3600_P1B-gH_2019-01-23_1200Z_00.00_19.00.mp4

ffmpeg \
    -i /glade/work/meghan/Lemhi/WRF/plots/agi_xsection_gifs/2019012300/agi3600_P1B-gI_2019-01-23_1200Z_00.00_19.00.gif \
    -vf pad="width=ceil(iw/2)*2:height=ceil(ih/2)*2" \
    -pix_fmt yuv420p \
    /glade/work/meghan/Lemhi/WRF/plots/agi_xsection_movies/2019012300/agi3600_P1B-gI_2019-01-23_1200Z_00.00_19.00.mp4





#######################################




