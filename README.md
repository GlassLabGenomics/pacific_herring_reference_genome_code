# Pacific Herring Reference Genome Code

Repository containing scripts, code, and metadata accompanying the Pacific herring (*Clupea pallasii*) reference genome manuscript.

## Overview

This repository provides descriptions of the workflows and analysis scripts used for figures and analyses accompanying this  manuscript.

## Repository Structure

```
pacific_herring_reference_genome_code/
├── busco/                    # BUSCO completeness assessment
├── pairwise_alignment/       # Genome-to-genome alignment analyses
├── phylogeny/               # Phylogenetic tree construction
├── quast/                   # Assembly quality statistics
└── LICENSE                  # MIT License
```

## Directories

### `busco/`
Scripts and results for BUSCO (Benchmarking Universal Single-Copy Orthologs) analysis to assess genome assembly completeness and quality.

### `pairwise_alignment/`
Code for performing pairwise genome alignments, comparing the Pacific herring assembly to related species.

### `phylogeny/`
Scripts for phylogenetic analysis and tree construction to place Pacific herring in evolutionary context relative to other Clupeids.

### `quast/`
QUAST (Quality Assessment Tool for Genome Assemblies) analysis scripts and outputs for evaluating assembly statistics such as N50, total length, and number of scaffolds.

## Data Availability

The Pacific herring reference genome and associated raw sequencing data are available through NCBI and other public repositories [(include link)].
Please refer to the manuscript for specific accession numbers and data access information.

## Citation

If you use this code or the Pacific herring reference genome in your research, please cite:

[Citation information to be added upon manuscript publication]

## Dependencies

Bioinformatics tools required for running these analyses include:

- BUSCO v?
- QUAST v?
- Alignment tools (e.g., nf-core pairgenomealign, minimap2)
- Phylogenetic software (e.g., IQ-TREE) versions?
- Python v?
- R (for visualization and statistical analyses)

Specific version requirements and additional dependencies are documented within individual analysis directories.

## Usage

Each subdirectory contains scripts specific to that analysis. Please refer to individual directories for detailed usage instructions and requirements.

## Contributing

This repository primarily serves as a record of the analyses performed for the manuscript. For questions or issues, please open an issue on GitHub or contact the corresponding author.

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## Contact

For questions regarding this repository or the Pacific herring reference genome project, please contact: letimm@alaska.edu

---

**Repository maintained by:** GlassLabGenomics  
**Last updated:** December 2025
