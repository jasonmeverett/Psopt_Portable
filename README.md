# Psopt_Portable
PSOPT bundled with all required libraries. See `install-ubuntu-18.04.sh` script for more details on configuration steps, and for how this setup was configured.


## Library Dependencies
| Library | Version | `wget` Command | Notes |
| --- | --- | --- | --- |
| Ipopt | 3.12.12 | `wget --continue https://github.com/coin-or/Ipopt/archive/releases/3.12.12.tar.gz` | Can use Metis and Mumps by default, may want to customize matrix libraries for speed. Also, ensure static compilation. Also, COIN-OR recently modified their build system (including IPOPT), and this version does not include the updated build system. |
| ADOLC | 2.6.3 | `wget --continue https://www.coin-or.org/download/source/ADOL-C/ADOL-C-2.6.3.tgz` | Requires ColPack for installation |
| ColPack | 1.0.10 | `wget --continue https://github.com/CSCsw/ColPack/archive/v1.0.10.tar.gz` | Needs to be compiled as a third part addition to ADOLC |
| GNUPlot | `wget --continue https://sourceforge.net/projects/gnuplot/files/gnuplot/4.4.0/gnuplot-4.4.0.tar.gz/download` | Older version of GNUPlot |
| SuiteSparse | `wget --continue https://github.com/DrTimothyAldenDavis/SuiteSparse/archive/v4.4.4.tar.gz` | To be compiled into PSOPT |
| LUSOL | `wget --continue https://github.com/nwh/lusol/archive/build-2016-01-26.tar.gz` | To be compiled into PSOPT |
