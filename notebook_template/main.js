define(['base/js/namespace', 'base/js/events'], function (Jupyter, events) {
  // Template cells including markdown and imports
  var setUp = function () {
  // PROJECT OVERVIEW
    Jupyter.notebook.insert_cell_at_index('markdown', 0)
      .set_text(`# [Insert Project Name] Overview
State notebook purpose here
## Summary of Results`)
  // ENVIRONMENT SETUP
    Jupyter.notebook.insert_cell_at_index('markdown', 1).set_text(`# Environment Setup
## Loading Dependencies`)
  // Loading Dependencies
    Jupyter.notebook.insert_cell_at_index('code', 2).set_text(`# import pandas as pd
# import os
# import git
# import re

# from pathlib import Path`)
  // Loading our Data MD
    Jupyter.notebook.insert_cell_at_index('markdown', 3).set_text(`## Loading our [Insert Name] Data
State info about the data (where is the data from, is there a data dictionary, etc etc)`)
    Jupyter.notebook.insert_cell_at_index('code', 4).set_text(`# # Read in the data
# repo_root = Path(git.Repo(os.getcwd(), search_parent_directories=True).git.rev_parse("--show-toplevel"))
# file_name = ''
# file_path = f'{repo_root}/{file_name}'
# orig_df = pd.read_csv(file_path)
# df = orig_df.copy()
# df.drop_duplicates(inplace=True)`)
  // Quick Data Exploration
    Jupyter.notebook.insert_cell_at_index('code', 5).set_text(`# # Quick exploration of the data
# display(df.shape)
# display(df.columns)
# display(df.info(null_counts=True))
# display(df.head())
# display(df.tail())`)
  // Data Cleaning and Imputation
    Jupyter.notebook.insert_cell_at_index('markdown', 6).set_text(`# Data Cleaning & Imputation
Clean data and handle missing values here
## Column Headers
## Missing Values
## Typos and Syntax Errors
## Removing Delimeters
## Fixing Timestamps
## Converting Types`)
  // Analysis / Modeling
    Jupyter.notebook.insert_cell_at_index('markdown', 7).set_text(`# Analysis/Modeling
Do work here`)
  // Results & Stats
    Jupyter.notebook.insert_cell_at_index('markdown', 8).set_text(`# Results
Show graphs and stats here`)
  // Future Considerations
    Jupyter.notebook.insert_cell_at_index('markdown', 9).set_text(`# Future Consideration
Future considerations here

## Next Steps
What happens next here?`)
  // Run all cells
    Jupyter.notebook.execute_all_cells()
  }
  // Prompts user to enter name for notebook
  var promptName = function () {
    // Open rename notebook box if 'Untitled' in name
    if (Jupyter.notebook.notebook_name.search('Untitled') != -1) {
      document.getElementsByClassName('filename')[0].click()
    }
  }
  // Run on start
  function load_ipython_extension () {
    // Add default cells for new notebook
    if (Jupyter.notebook.get_cells().length === 1) {
      setTimeout(setUp, 500)
    }
    promptName()
  }
  // Run when notebook is saved
  return {
    load_ipython_extension: load_ipython_extension
  }
})