#!/bin/bash 

# These functions loop through all folders  matching "foldermatch" regex string, 
# find the wrfout files in each folder ,
# loop through all lead times (loop_plots_lastlead takes the last lead time),
# and call the plotting script using 
# 		python ${pyscript} ${arglist1} ${arglist2} ${arglist3}
#
# Variables defined externally (exported):
# run 
# foldermatch 
# prefix 
# dtlead 
# datapath 
# figpath 
# figsubfolder 
# figprefix 
# pyscript 
# arglist3
# geogfn 
# shpfn
# _________________________________________________________________________________
# _________________________________________________________________________________

loop_plots(){

    echo "in loop_plots_function.sh"
    echo "--------------------------------------"
    echo ${run}

    inpath=${datapath}/${run}
    echo "checking folder(s): ${inpath}/${foldermatch}"

    for exppath in ${inpath}/${foldermatch}
    do
	exp=${exppath##*/} # keep last string after all /
	export figpath=${figpath}
	echo "Setting figpath to ${figpath}"

	echo "Processing folder: ${inpath}/${exp}"
	fname=${prefix}'_'${run:0:4}'-'${run:4:2}'-'${run:6:2}'_'${run:8:2}

	# find the 1st wrfout file (initialization or restart time)
	wrfstart="$(find -H ${inpath}/${exp} -maxdepth 1 -name "wrfout_${prefix}*" | sort | head -n 1)"
	nfiles="$(find -H ${inpath}/${exp} -maxdepth 1 -name "wrfout_${prefix}*" | wc -l)"

	# trim string to get just wrfout_d0x_YYYY-MM-DD
	wrffnsubstr=${wrfstart##*/} # remove everyting before '/'
	wrffnsubstr=${wrffnsubstr%%:*}  # remove everyting after ':'

	echo -e "exp: ${exp} \nfile string: ${wrffnsubstr} \nnfiles: ${nfiles}"
	echo "wrfstart: ${wrfstart}"

	[[ ${nfiles} -eq 0 ]] && echo "0 files in ${inpath}/${exp}" && exit 1

	# ---------------------------------------------------------------
	# Fig file names
	# ---------------------------------------------------------------

	expfn=${exp}
	cycfn=${wrffnsubstr/wrfout_${prefix}/} # remove string wrfout_${prefix} 
	flead=$(python -c "print( f'{( ($nfiles-1)/$dtlead ):05.2f}' )")
	figname=${expfn}${cycfn}'00Z'
	[[ ! -d ${figpath}/${figsubfolder} ]] && mkdir -p ${figpath}/${figsubfolder}

	echo "Plotting ${nfiles} files" 

	for lead in $(seq 0 $((nfiles-1)) )
	do

	    flead=$(python -c "print( f'{( $lead/$dtlead ):05.2f}' )")
	    echo "flead" ${flead}

	    fig1=${figpath}/${figsubfolder}/${figprefix}_${figname}'+'${flead}'h.png'
	    echo "fig: ${fig1}"

	    # files per hour
	    fph=$(python -c "print( f'{( (1)/$dtlead ):4.2f}' )")
	    kplot=$(python -c "print( int(${flead} * ${dtlead}) )")

	    # ---------------------------------------------------------------
	    # Plots
	    # ---------------------------------------------------------------
    	    arglist1="--cycle=${run} --exper=${exp} --dom=${prefix} --dtlead=${fph}  --fcst_lead=${kplot}"
	    arglist2="--datroot=${datapath} --pltroot=${figpath} --geogfn=${geogfn} --shpfn=${shpfn}"

	    [[ ! -e ${fig1} ]] && echo "Fig not found: ${fig1}"  || echo "file exists: ${fig1} "

	    echo "-------------------------------------------------"
	    echo ${pyscript} 
	    echo ${arglist1}
	    echo ${arglist2}
	    echo ${arglist3}
	    echo "-------------------------------------------------"

    	    if [[ ! -e ${fig1} ]] 
	    then 
		echo "Fig: ${fig1}"  
		python ${pyscript} ${arglist1} ${arglist2} ${arglist3}
		[[ $? -ne 0 ]] && exit 1
	    fi 
	    echo "-------------------------------------------------"
	done
    done
}
export -f loop_plots

# _________________________________________________________________________________
# _________________________________________________________________________________

loop_plots_lastlead(){

    echo "in loop_plots_function.sh"
    echo "--------------------------------------"
    echo ${run}

    inpath="${datapath}/${run}"
    echo "checking folder(s): ${inpath}/${foldermatch}"

    for exppath in ${inpath}/${foldermatch}
    do
	exp=${exppath##*/} # keep last string after all /
	export figpath=${figpath}
	echo "Setting figpath to ${figpath}"

	echo "Processing folder: ${inpath}/${exp}"
	fname=${prefix}'_'${run:0:4}'-'${run:4:2}'-'${run:6:2}'_'${run:8:2}
	wrfstart="$(find -H ${inpath}/${exp} -maxdepth 1 -name "wrfout_${prefix}*" | sort | head -n 1)"
	nfiles="$(find -H ${inpath}/${exp} -maxdepth 1 -name "wrfout_${prefix}*" | wc -l)"

	wrffnsubstr=${wrfstart##*/} # remove everyting before '/'
	wrffnsubstr=${wrffnsubstr%%:*}  # remove everyting after ':'

	echo -e "exp: ${exp} \nfile string: ${wrffnsubstr} \nnfiles: ${nfiles}"
	echo "wrfstart: ${wrfstart}"

	[[ ${nfiles} -eq 0 ]] && echo "0 files in ${inpath}/${exp}" && continue #exit 1

	# ---------------------------------------------------------------
	# Fig file names
	# ---------------------------------------------------------------

	expfn=${exp}
	cycfn=${wrffnsubstr/wrfout_${prefix}/} # remove string wrfout_${prefix} 
	flead=$(python -c "print( f'{( $((nfiles-1))/$dtlead ):05.2f}' )")
	echo "flead" ${flead}

	figname=${expfn}${cycfn}'00Z'
	fig1=${figpath}/${figsubfolder}/${figprefix}_${figname}'+'${flead}'h.png'
	echo "fig: ${fig1}"

	[[ ! -d ${figpath}/${figsubfolder} ]] && mkdir -p ${figpath}/${figsubfolder}

	# files per hour
	fph=$(python -c "print( f'{( (1)/$dtlead ):4.2f}' )")
	kplot=$(python -c "print( int(${flead} * ${dtlead}) )")

	# ---------------------------------------------------------------
	# Plots
	# ---------------------------------------------------------------

    	arglist1="--cycle=${run} --exper=${exp} --dom=${prefix} --dtlead=${fph}  --fcst_lead=${kplot}"
	arglist2="--datroot=${datapath} --pltroot=${figpath} --geogfn=${geogfn} --shpfn=${shpfn}"

	[[ ! -e ${fig1} ]] && echo "Fig not found: ${fig1}"  || echo "file exists: ${fig1} "

	echo "-------------------------------------------------"
	echo ${pyscript} 
	echo ${arglist1}
	echo ${arglist2}
	echo ${arglist3}
	echo "-------------------------------------------------"

    	if [[ ! -e ${fig1} ]] 
	then 
	    echo "Fig: ${fig1}"  
	    python ${pyscript} ${arglist1} ${arglist2} ${arglist3}
	    [[ $? -ne 0 ]] && exit 1
	fi 
	echo "-------------------------------------------------"
    done

}
export -f loop_plots_lastlead
