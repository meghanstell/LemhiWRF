Recap-plotting-xsec.txt are the instructions from Maria on what to do.  I couldn't figure out how to do step 1 so I used the lat an lon coordinates already in the code.
WRC_AgI_Xsec.sh is the script file I tried to copy from when you helped me with this last time. It won't run and says the files cannot be found.
run_plots_seeding_xsec_nodiff.sh is the script from Maria I am supposed to run to get all of the times to run at the same time. 
plot_xsec_v3_agi_winds.py is the script that is supposed to make the plots

#source ~/.bashrc
source ./loop_plots_function.sh
#source ./hpc.config
#source ./path.config
export myhome="/glade/u/home/${USER}"
export mywork="/glade/work/${USER}"
export myscratch="/glade/derecho/scratch/${USER}"
export shpfn="['../geodata/lemhi']"
export datapath="/glade/work/meghan/Lemhi/WRF/data"
export figpath="/glade/work/meghan/Lemhi/WRF/plots"
export geogfn="../data/geodata/geo_em.d02.nc.lemhi"
