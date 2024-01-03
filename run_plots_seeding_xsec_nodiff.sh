#!/bin/bash

# ./run_plots_seeding_xsec.sh -d '2016011700' -f 'P2-T3_4250' -pfx 'd01' -r 'snake' -i 'era5' -xlat \'${lat1},${lat2}\' -xlon \'${lon1},${lon2}\' -xid "${xid}"

# Postprocess all folders under the run directory with name matching ${foldermatch}
foldermatch='*'

# ---------------------------------------------------------------
# Parse dates from command line
# ---------------------------------------------------------------

((!$#)) && echo 'Provide date as YYYYMMDDhh' && exit 1

arg=''
while [ $# -gt 0 ]
do
    key="${1}"
    case "${key}" in

	-f)
	    foldermatch="${2}"
	    echo "Foldermatch string: ${foldermatch}"
	    shift 2 ## shift past key and value
	    ;;
	-pfx)
	    prefix="${2}"
	    #echo "prefix string: ${prefix}"
	    shift 2 ## shift past key and value
	    ;;
	-r)
	    export region="${2}"
	    #echo "Region: ${region}"
	    shift 2 ## shift past key and value
	    ;;
	-i)
	    export ibc="${2}"
	    #echo "IBC: ${ibc}"
	    shift 2 ## shift past key and value
	    ;;
	-xlat)
	    xlat="${2}"
	    echo "XSec lat: ${xlat}"
	    shift 2 ## shift past key and value
	    ;;
	-xlon)
	    xlon="${2}"
	    echo "XSec lon: ${xlon}"
	    shift 2 ## shift past key and value
	    ;;
	-xid)
	    xid="${2}"
	    echo "XSec ID: ${xid}"
	    shift 2 ## shift past key and value
	    ;;
	-d)
	    [[ "${#2}" -ne 10 ]] && echo "invalid date ${2}." && exit 1
	    run="${2}"
	    shift 2
    esac
done

echo "Processing dates: ${run}"
echo "with folder experiment name matching: ${foldermatch}"
echo "prefix: ${prefix:?Invalid prefix. Provide -pfx}"
# echo "region: ${region:?Invalid region. Provide -r}"
# echo "IBC: ${ibc:?Invalid IBC. Provide -i}"
echo "xlon: ${xlon}" 
echo "xlat: ${xlat}" 
echo "xid: ${xid}" 

dtlead=4 # 4 files per hour: 0.25h intervals
# ---------------------------------------------------------------
# Start here
# ---------------------------------------------------------------

# source ~/.bashrc
source ./loop_plots_function.sh
export myhome="/glade/u/home/${USER}"
export mywork="/glade/work/${USER}"
export myscratch="/glade/derecho/scratch/${USER}"
export shpfn="['../geodata/lemhi']"
export datapath="/glade/work/meghan/Lemhi/WRF/data"
export figpath="/glade/work/meghan/Lemhi/WRF/plots"
export geogfn="../data/geodata/geo_em.d02.nc.lemhi"
# source ./hpc.config
# source ./path.config
# conda activate forge38

# ---------------------------------------------------------------
# xsec

figsubfolder='xsec'
figprefix="xsecv3_${xid}"
pyscript='plot_xsec_v3_agi_winds.py'

arglist3="--xlat="${xlat}" --xlon="${xlon}" --xs="${xid}""
echo "arglist3: ${arglist3}"
echo "looping to call ${pyscript}"

loop_plots

# ---------------------------------------------------------------
