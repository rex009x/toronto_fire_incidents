# Starter folder

## Overview

In addition to the COVID-19 pandemic, a surge in fire incidents across the city of Toronto became a more pressing concern. Confined within your homes to ensure safety through isolation, the looming threat of household fires increases. Whether it be a measly kitchen fire to potential end of humanity, this analysis aims to contextualize data into narratives that can be absorbed and develop valuable insights. With data observation and analysis, a more compelling story will be discovered which will shed light on the broader events occurring in the world beyond the raw numbers.

## File Structure
-   `input/data` contains the data sources used in analysis including the raw and processed data.
-   `outputs/paper` contains the files used to generate the paper, including the Quarto document, reference bibliography file, and the PDF of the paper.
-   `scripts` contains the R scripts used to simulate, download, test, and clean data.
## How to Run

1. Run `scripts/01-download_data.R`, this will retrieve the required data
2. Run `scripts/02-data_cleaning.R`, clean and prepare the data before visualization
3. Run `output/paper/paper.qmd`, executing this file will generate a pdf

## LLM Usage
No LLM or generative AI was used during the development of this paper.