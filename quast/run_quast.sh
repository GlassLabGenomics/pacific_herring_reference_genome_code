#!/bin/bash
#SBATCH --job-name=quast
#SBATCH --partition=defq
#SBATCH --cpus-per-task=8
#SBATCH --mem-per-cpu=4GB
#SBATCH --time=03:00:00

## Runs quast on gombessa, change to fit your server specifications
## Put your reference sequence path first, then all others after

set -o errexit

module --quiet purge
module load GCC/13.3.0
module load QUAST/5.2.0

FASTAPATHS=$@
OUTPATH="test_res"

quast -o "${OUTPATH}" "${@:2}" -r "$1" -t 8 --large --fragmented --split-scaffolds
