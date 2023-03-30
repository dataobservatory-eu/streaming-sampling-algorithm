# Sampling music streaming data

This subtask feeds into [Economy of music in Europe: Methods and indicators](https://openmuse.dataobservatory.eu/resources/report-european-music-economy/)

Our approach draws on SSSA and REPREX competence in quantitative finance methodology. The selectivity bias in streaming data accessible by EU music stakeholders is a problem analogous to the statistical characterization of the price movements, volumes and return of illiquid, infrequently traded securities, or, symmetrically, in estimating duration models of high frequency arrival process in discretized continuous time models (Bottazzi et al. 2020). In these use cases,several approaches are possible: e.g., dynamic reverse sampling to identify the part of the repertoire that is persistently active; zero-inflated models explicitly accounting for the occurrence of “no event”; or branching arrival processes generating cascades of events over a very low baseline intensity (Shi, Dai, and Long 2021; Sucarrat and Grønneberg 2020). A common-sense example of the application of finance methodology to track price and volume in complex markets with imperfect information is the Dow Jones Industrial Average, which gives accurate guidance on price movements and risk for an entire market, using special averaging and periodical rebalancing of only 30 share prices. Using similar statistical methods, we will identify and track the domestic and international performance of limited baskets of recordings/works that are representative of particular streaming market segments: e.g., Italian emerging artists or Slovak classical performers. This approach was piloted in CEEMID, which created price and volume indexes for 20 European countries to reveal why streaming revenue growth concentrates around the top ca. 1% of rights-holders (Antal, 2020a), and further used in UK policy work related to the parliamentary inquiry into streaming economics (Hesmondhalgh et al., 2021).

🌈 Contribution guidelines - you must abide by the [Contributor Covenant](https://www.contributor-covenant.org/version/2/1/code_of_conduct/) Code of Conduct.


## Ignored files in .gitignore
We place a list of folders and files that are ignored for synchronization from the user’s client computer to Github and beyond.  These are usually passwords, login credentials, project management or log files used by your IDE or other work environment.  We by default, excluded all RStudio standards, and usually all Jupiter Notebook standards, and a few Windows/Mac specific files.
We also ignore a standard folder called `not_included`,  which serves as the place of your personal scrapbook, sandbox, that you do not want to share with anybody.

## Data folders

We have two data folders, which may have numerous subfolders.

`data-raw`:  Raw, unprocessed data, as received, downloaded, collected. Please try to ingest data as well-documented as possible.  If the ingestion is not done by our reproducible tools that log the download, copying, and bibliographic references, you are requested to create a standard bibliographic reference for any data that you place here. You can use your favorite citation management tool or join our shared, open-source, Zotero account, but eventually, the data asset must be added to the bib/data-raw.bib files as a standard, BibLatex data citation. We use the DataCite standard, which almost fully corresponds to DublinCore.

`data`: This folder contains the processed data or our outputs.  Any data here must adhere to the tidy data principle and be documented by DataCite standards.  We are developing a tool, dataset, which will do this automatically in WP4.  We can investigate a Python connector for this if there is a need for that.
Bibliographic reference folders.

## Referencing and attribution

`bib`: Contains all bibliography: used citations, data used, visualisation used, datasets created, visualizations created, public text document outputs created.


## Visualisation folders

We save visualisations in folders corresponding to the file format. This is the best way to ensure that pandoc or any compiles has the necessary plugins to work with the visualizations. Every visualization that is intended to made pubic gets a bibliographic citation and a globally unique DOI identifier. 

`png`: contains visualisations in Portable Network Graphics format (our preferred format.)

`jpg`: Contains visualization in Joint Photographic Experts Group format.

`webp`: Contains visualisations in WebP is an open image file format developed by Google intended as a replacement for JPEG, PNG, and GIF file formats.  We prefer this for content intended for web use (presentations, blogposts), because it works much faster and better with browsers than PNG or JPG.

[…] You can use other formats if necessary.


## Program code folders
`R`: contains any script in the R language.

`Py`: contains script in the Python language [if there is any, create the folder at first time use].

`CPP`: contains script in the C++ language [if there is any, create the folder at first time use].

## Text markup folders
`tex`: Tex document markup language templates.
`css` : CSS style templates [if there is any, create the folder at first time use].

## Final text outputs 

The final text outputs are in the `_book` folder.  They are weaved together by pandoc, knitr and bookdown if they are made of several source files, hence the name book. If they are created from a single file, they are not technically a book but they are here in HTML, EPUB, PDF, or docx or pptx formats. 

## Source texts

The source texts are stored in Rmd, md, or tex files in the main folder.  We prefer Rmd, because Posit can integrate well R, Python, C++ code, and via pandoc and knitr various Latex and Word compilers.  But you can use any flavor of .md or .tex. 

 Rmd is technically a plan .md with a special YAML heading for machine use and optional R, Python, or C++ code placeholders. If you decide to use other .md editors, we will create an empty template that contains the non-visible YAML heading for machine processing.
