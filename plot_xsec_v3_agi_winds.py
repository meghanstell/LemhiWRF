import os
import numpy as np
import argparse
import glob
#
import matplotlib.pyplot as plt
from matplotlib.colors import BoundaryNorm
from matplotlib.ticker import MaxNLocator
#
from mywrflib import create_datetitle
from plottinglib import cmap_midalpha
from postproclib import postproc_agi, postproc_3Dstate, postproc_xsec, postproc_xsec_sounding
#
from wrf import CoordPair, cape_2d
#
import datetime as dtt
from argparse import Namespace
#
from wrf import (vertcross, interpline, CoordPair, getvar)
from netCDF4 import Dataset
#
import argparse
from plottinglib import init_parser

# run plot_xsec_v3_agi_winds --cycle="2017013118" --exper="P1B-gI" --dom="d01" --dtlead=0.25 --fcst_lead=38 --datroot="/glade/derecho/scratch/frediani/WxMod/lemhi" --pltroot="/glade/work/frediani/Research/Projects/lemhi/plots" --geogfn="./data/geo_em.d02.nc.lemhi" --shpfn=['~/share/WxMod-postproc/geodata/lemhi'] --xs='x1' --xlat="44.784426,44.793861" --xlon="-114.516417,-112.953116"

# -----------------------------------------------------
parentparser = argparse.ArgumentParser(add_help=False)
parentparser.add_argument('--xs', type=str, help='cross section name')
parentparser.add_argument('--xlat', type=str, help='xsec latitude')
parentparser.add_argument('--xlon', type=str, help='xsec longitude')

# -----------------------------------------------------

args = init_parser(parent=parentparser)

thisrun = args.cycle
kplot = args.fcst_lead
exper = args.exper
dom = args.dom
datroot = args.datroot
pltroot = args.pltroot
geogfn = args.geogfn
shpfn = args.shpfn
dtlead = args.dtlead

xs = args.xs
lats_WE_xsec = [float(i) for i in args.xlat.split(',')]
lons_WE_xsec = [float(i) for i in args.xlon.split(',')]

# -----------------------------------------------------
print('Plotting {} kplot={}'.format(thisrun, kplot))
print(lats_WE_xsec)
print(lons_WE_xsec)

# ------------------------------------------------------
# Settings for this plot
# -----------------------------------------------------
outpath = f'{pltroot}/xsec'
basetitle = exper
# -----------------------------------------------------
f00 = geogfn
wrf_files = f'{datroot}/{thisrun}/{exper}'
print(f'wrf file location: {wrf_files}')
# -----------------------------------------------------

cross_strt = CoordPair(lat=lats_WE_xsec[0], lon=lons_WE_xsec[0])
cross_end = CoordPair(lat=lats_WE_xsec[1], lon=lons_WE_xsec[1])

plt.ion()
#plt.ioff()

flist = glob.glob(f'{wrf_files}/wrfout_{dom}_*')
flist.sort()

# --------------------------------------------------------
# Fig Title/ date

title = create_datetitle(dt=dtlead, flist=flist, idx=kplot)
ftitle = f'Fcst: {title["initleaddate"]}  Valid at {title["fdate"]}'
print('plotting:', ftitle)

# -----------------------------------------------------

if not os.path.exists(outpath):
    os.makedirs(outpath)

nospc = title["initleaddate"].replace(' ', '').replace(':', '')
figname = f'{outpath}/xsecv3_{xs}_{exper}_{nospc}'
print("Output file " + figname)  # 2Dagi_P1-GroupA_2016-12-03_18:00Z+00.00h.png

# WRF Data
# -----------------------------------------------------

# Namespace transforms variables from the dictionary to attributes
d0 = Namespace(**postproc_3Dstate(flist=flist[kplot]))
print(flist[kplot])

ylev = np.concatenate([np.arange(1000, 5000, 25), np.arange(5000, 8100, 100)])
ylev2 = np.arange(1000, 8100, 50)

# --------------------------------------------------------

# --------------------------------------------------------
# Data
# -----------------------------------------------------

x_agi = postproc_xsec(var='agi',
                      flist=flist[kplot],
                      rhoa=d0.rhoa,
                      ylev=ylev,
                      xsec=[cross_strt, cross_end]) / 1000

print(f'Max AgI (QNA1): {np.log10(x_agi.max().data)}')
# -----------------------------------------------------
x_vap = postproc_xsec(
    var='rv', flist=flist[kplot], rhoa=d0.rhoa, ylev=ylev, xsec=[cross_strt, cross_end
                                                                ]) * 1000

# wrf_files: Qx [kg/kg] = 1e6[g/m3] = 1e3[g/l]
#            Qx * rhoa [kg/m3] = [kg/m3]
x_snow1 = postproc_xsec(
    var='rs', flist=flist[kplot], rhoa=d0.rhoa, ylev=ylev, xsec=[cross_strt, cross_end
                                                                ]) * 1000
x_snow2 = postproc_xsec(
    var='rg', flist=flist[kplot], rhoa=d0.rhoa, ylev=ylev, xsec=[cross_strt, cross_end
                                                                ]) * 1000
x_snow3 = postproc_xsec(
    var='ri', flist=flist[kplot], rhoa=d0.rhoa, ylev=ylev, xsec=[cross_strt, cross_end
                                                                ]) * 1000

x_snow = np.where(np.isfinite(x_snow1), x_snow1, 0) + np.where(
    np.isfinite(x_snow2), x_snow2, 0) + np.where(np.isfinite(x_snow3), x_snow3, 0)

# -----------------------------------------------------

x_cloud1 = postproc_xsec(
    var='rc', flist=flist[kplot], rhoa=d0.rhoa, ylev=ylev, xsec=[cross_strt, cross_end
                                                                ]) * 1000
x_cloud2 = postproc_xsec(
    var='rr', flist=flist[kplot], rhoa=d0.rhoa, ylev=ylev, xsec=[cross_strt, cross_end
                                                                ]) * 1000
x_cloud = np.where(np.isfinite(x_cloud1), x_cloud1, 0) + np.where(
    np.isfinite(x_cloud2), x_cloud2, 0)

# -----------------------------------------------------

x_temp = postproc_xsec(var='theta_e',
                       flist=flist[kplot],
                       rhoa=d0.rhoa,
                       ylev=ylev,
                       xsec=[cross_strt, cross_end]) - 273.15

x_temp2 = postproc_xsec(var='theta',
                        flist=flist[kplot],
                        rhoa=d0.rhoa,
                        ylev=ylev,
                        xsec=[cross_strt, cross_end]) - 273.15

# -----------------------------------------------------
x = np.arange(x_cloud.shape[-1])

topo = postproc_xsec(var='topo',
                     flist=flist[kplot],
                     rhoa=d0.rhoa,
                     ylev=ylev,
                     xsec=[cross_strt, cross_end])

# -----------------------------------------------------
x_u, x_v = postproc_xsec(var='uv',
                         flist=flist[kplot],
                         rhoa=d0.rhoa,
                         ylev=ylev2,
                         xsec=[cross_strt, cross_end])
x_w = postproc_xsec(var='w',
                    flist=flist[kplot],
                    rhoa=d0.rhoa,
                    ylev=ylev2,
                    xsec=[cross_strt, cross_end])

# --------------------------------------------------------
# Plot
# --------------------------------------------------------------------

fig = plt.figure(figsize=(12, 12))
ax = fig.add_subplot(111)

ax.set_yticks(np.arange(0, 8000, 2000)[1:])
ax.set_yticklabels(np.arange(0, 8, 2)[1:])
ax.set_ylim(top=8000, bottom=1000)
ax.set_xlabel("Distance (km)", fontdict=dict(size=14))
ax.set_ylabel("Height (km)", fontdict=dict(size=14))
ax.tick_params(axis='both', labelsize=14)

# -----------------------------------------------------
# AgI

lev = [100, 1000, 10e3, 100e3, 1e6]
cmap = plt.get_cmap('gray_r', len(lev)-1)

# lines
p00 = ax.contour(x,
                 ylev,
                 #np.log10(x_agi),
                 np.ma.masked_less(x_agi, 10),
                 colors='black',
                 alpha=0.8,
                 levels=lev,
                 linestyles='solid',
                 linewidths=1,
                 corner_mask=True,
                 zorder=4)

# shades
p01 = ax.contourf(x,
                ylev,
                np.ma.masked_less(x_agi, 10),
                norm=BoundaryNorm(lev,
                                     ncolors=len(lev)-1,
                                     clip=False,
                                     extend='neither'),
                  #hatches=['.', '..', '...', '....'],
                  cmap=cmap,
                  alpha=0.5,
                  levels=lev,
                  corner_mask=True,
                  zorder=1)

#p00.clabel(inline=True)

# -----------------------------------------------------
# AgI colorbar

cbar_label = 'AgI Concentration [$L^{-1}$]'
cbar = fig.colorbar(
    p01,
    ax=ax,
    extend='both',
    spacing='uniform',
    location='bottom',
    # anchor=(0.25, 1),
    pad=0.075,
    shrink=0.6,
    ticks=lev[0:4])
cbar.set_ticklabels(['100', '1000' ,'10e3', '100e3'])

cbar.ax.tick_params(labelsize=14)
cbar.ax.set_xlabel(cbar_label, fontsize=14)

# -----------------------------------------------------
# Cloud Water

# [g/m3]
qclev = [0.001, 0.01, 0.05, 0.1, 0.25, 0.5, 0.75, 1]
cbar_label = 'Cloud Water, Rain [$g/m^{3}$]'
cmap = plt.get_cmap('YlOrRd', len(qclev))

p2 = ax.contourf(x,
                 ylev,
                 x_cloud,
                 levels=qclev,
                 norm=BoundaryNorm(qclev, ncolors=cmap.N, extend='max'),
                 cmap=cmap,
                 corner_mask=True,
                 alpha=0.7,
                 extend='max',
                 zorder=2)
# edgecolors='none',
# shading='nearest',
# snap=False,
# rasterized=True)

# l2 = ax.clabel(p2, inline=True, fontsize=12)

dummy = fig.colorbar(p2, ax=ax, orientation='horizontal', pad=0.075, shrink=0.4)
pp = ax.get_position()
dummy.remove()
ax.set_position(pp)

cbar2 = fig.colorbar(p2,
                     ax=ax,
                     cax=ax.inset_axes([0, -0.2, 0.4, 0.05]),
                     pad=0.075,
                     shrink=0.4,
                     ticks=[0.001, 0.01, 0.05, 0.1, 0.25, 0.5, 0.75, 1],
                     orientation='horizontal')
cbar2.set_ticklabels(['', '0.01', '', '0.1', '', '0.5', '', '1'])

cbar2.ax.tick_params(labelsize=12)
cbar2.ax.set_xlabel(cbar_label, fontsize=12)

# -----------------------------------------------------
# Cloud Snow

# [g/m3]
qslev = [0.001, 0.01, 0.05, 0.1, 0.25, 0.5, 0.75, 1]
cbar_label = 'Cloud Snow, Ice, Graupel [$g/m^{3}$]'
cmap = plt.get_cmap('PuBuGn', len(qslev))

p3 = ax.contourf(x,
                 ylev,
                 x_snow,
                 levels=qslev,
                 norm=BoundaryNorm(qslev, ncolors=cmap.N, extend='max'),
                 cmap=cmap,
                 corner_mask=True,
                 alpha=0.6,
                 extend='max',
                 zorder=3)
# edgecolors='none',
# shading='nearest',
# snap=False,
# rasterized=True)

#l2 = ax.clabel(p2, inline=True, fontsize=12)

cbar3 = fig.colorbar(p3,
                     ax=ax,
                     cax=ax.inset_axes([0.5, -0.2, 0.4, 0.05]),
                     pad=0.075,
                     shrink=0.4,
                     ticks=[0.001, 0.01, 0.05, 0.1, 0.25, 0.5, 0.75, 1],
                     orientation='horizontal')
cbar3.set_ticklabels(['', '0.01', '', '0.1', '', '0.5', '', '1'])

cbar3.ax.tick_params(labelsize=12)
cbar3.ax.set_xlabel(cbar_label, fontsize=12)

# -----------------------------------------------------
# Topography

p1 = ax.fill_between(x, 0, np.array(topo), facecolor="gray", edgecolor='gray', alpha=0.75)
# -----------------------------------------------------

# -----------------------------------------------------
# Temperature

templev = np.arange(20, 55, 5)
p3 = ax.contour(x,
                ylev,
                x_temp,
                levels=templev,
                colors='#27408b',
                linestyles='dashed',
                linewidths=1.5,
                alpha=1,
                zorder=5)
l3 = ax.clabel(p3, inline=True, fontsize=12)

# p4 = ax.contour(x,
#                 ylev,
#                 x_temp2,
#                 levels=templev,
#                 colors='firebrick',
#                 linestyles='dashed',
#                 linewidths=1.5,
#                 alpha=0.5,
#                 zorder=5)
# l4 = ax.clabel(p4, inline=True, fontsize=12)

# -----------------------------------------------------
# Winds

p5 = ax.quiver(
    x[::4],
    ylev2[::4],
    x_u[::4, ::4],
    x_w[::4, ::4],
    angles='uv',
    units='dots',  # for arrow dimensions (except length)
    #    scale=0.5,  # Number of data units (m/s) per arrow length unit (grid pt)
    # scale_units='x',
    pivot='tail',
    headaxislength=3,
    headlength=4,
    color='gray',
    alpha=0.75,
    zorder=6)

tx, ty = ax.get_position().corners()[-2]
t0 = fig.text(tx - 0.05,
              ty - 0.025,
              'UW Wind Speed [m/s]',
              ha='center',
              va='top',
              color='gray',
              fontsize=12)

# p25k = ax.quiverkey(p5,
#                     tx + 0,
#                     ty - 0.05,
#                     25,
#                     r'$25$',
#                     labelpos='S',
#                     coordinates='figure',
#                     fontproperties=dict(size=12))

p30k = ax.quiverkey(p5,
                    tx - 0.025,
                    ty - 0.05,
                    30,
                    r'$30$',
                    labelpos='S',
                    coordinates='figure',
                    color='gray',
                    labelcolor='gray',
                    fontproperties=dict(size=12))

p20k = ax.quiverkey(p5,
                    tx - 0.05,
                    ty - 0.05,
                    20,
                    r'$20$',
                    labelpos='S',
                    coordinates='figure',
                    color='gray',
                    labelcolor='gray',
                    fontproperties=dict(size=12))
p10k = ax.quiverkey(p5,
                   tx - 0.075,
                   ty - 0.05,
                   10,
                   r'$10$',
                   labelpos='S',
                   coordinates='figure',
                   color='gray',
                   labelcolor='gray',
                   fontproperties=dict(size=12))

# -----------------------------------------------------
# Title

axpos = ax.get_position()
t1 = fig.text(0.5, axpos.y1 + 0.06, basetitle, ha='center', va='top', fontsize=18)

t2 = ax.set_title(ftitle, loc='center', pad=5, fontsize=16)

# -----------------------------------------------------

fig.savefig(figname + '.png', bbox_inches='tight', dpi=100)
print('figure: ', figname + '.png')
