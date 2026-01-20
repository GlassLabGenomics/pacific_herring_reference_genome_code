#!/bin/bash

#SBATCH --time=7-00:00:00
#SBATCH --job-name=repmas
#SBATCH --cpus-per-task=12
#SBATCH --output=/scratch/letimm/comparative-genomics_Clupea/job_outfiles/repeatmasker_%A-%a.out
#SBATCH --mail-user=letimm@alaska.edu
#SBATCH --mail-type=ALL
#SBATCH --array=1-4%4

JOBS_FILE=/scratch/letimm/comparative-genomics_Clupea/scripts/repeatmaskerARRAY_input.txt
IDS=$(cat ${JOBS_FILE})

for sample_line in ${IDS}
do
        job_index=$(echo ${sample_line} | awk -F ":" '{print $1}')
        ref_genome=$(echo ${sample_line} | awk -F ":" '{print $2}')
        if [[ ${SLURM_ARRAY_TASK_ID} == ${job_index} ]]; then
                break
        fi
done

source /home/letimm/cactus/cactus-bin-v2.9.9/venv-cactus-v2.9.9/bin/activate

# Run repeatmasker to generate .gff of repeat regions in genome
/scratch/letimm/RepeatMasker/RepeatMasker \
  -species "actinopterygii" \
  -pa 12 \
  -gff \
  -no_is \
  -xsmall \
  -dir /scratch/letimm/comparative-genomics_Clupea/repeats \
  ${ref_genome}
