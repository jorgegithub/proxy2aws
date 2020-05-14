#!/bin/bash -x
#########################################################################
#      Copyright (C) 2020        Sebastian Francisco Colomar Bauza      #
#      SPDX-License-Identifier:  GPL-2.0-only                           #
#########################################################################
export debug=$debug							;
export stack=$stack							;
#########################################################################
set +x && test "$debug" = true && set -x 				;
#########################################################################
pwd=$( dirname $( readlink -f $0 ) ) 					;
#########################################################################
git clone https://github.com/secobau/proxy2aws.git proxy2aws		;
#########################################################################
folders=" configs secrets " 						;
for folder in $folders 							;
do 									\
  sudo cp --recursive --verbose proxy2aws/$folder / 		 	;
done 									;
#########################################################################
sudo rm --recursive --force proxy2aws 		 			;
#########################################################################
