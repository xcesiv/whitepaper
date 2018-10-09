# DuraChain White Paper
**Abstract:** Using an adapted version of the Matrix Spec, we present electronic health event environment implemented using distributed ledger technology. Such an environment will allow providers of durable medical equipment to more efficiently provide care to their patients and reduce delivery times for equipment. We also provide details about how electronic health events can be further developed so as to allow for use of our technology in all areas of healthcare delivery. With the right tool and proper deployment, electronic health events have the potential to radically transform the management of healthcare data.

**Keywords:** healthcare technology, durable medical equipment, distributed ledger technology, electronic health event, Matrix

This document was prepared using the LaTeX2e typesetting environment, produced by Leslie Lamport and the LaTeX3 team. It is free software based on the TeX system developed by Donald Knuth.

It relies on the `pdflatex` engine and `bibtex` for bibliopgraphy management.

Additionally, a number of other packages were required to set the document you see here. The packages we used are all included in the 2018 release of TeXLive, which is distributed by the TeX Users Group. Please consult `wp.sty`, the file that provides the `whitepaper` document class, for more information on the packages we used.

## Setup Details
The DuraChain white paper is a living document and will be updated continuously as we continue to design, develop, and deploy our electronic health event environment. This being the case, this repository is meant to serve up a hot, fresh PDF version of the white paper as it is modified. You can find the latest version of the PDF at [https://durachain.github.io/whitepaper.pdf](https://durachain.github.io/whitepaper.pdf).

There are several reasons why someone may choose to download the contents of this repository and/or compile the paper on their own. For those so inclined, the documentation that follows presents one of many paths that can be taken to realize this goal.

### Build From Source
The DuraChain White Paper repository comes with a script file to simply build the document (bash.sh). To do so, pen up your bash shell (Terminal for MacOSX users) and input the following:

1. `git clone https://github.com/durachain/whitepaper`
1. `cd whitepaper`
1. `bash build.sh`

You will now have a new directory in the repository (build/) where you can find the latest build of the White Paper (build/whitepaper.pdf).

### TeXLive2018
TeXLive2018 is a library that contains all of the macros and packages used to compile this document. It may be possible to compile this document with previous TeXLive distributions, but we make no warranty to that.

If you have not already, download the TeXLive2018 distribution appropriate for your system and install it:
- macOS
- Linux
- Windows

It may be necessary to set the `PATH` for TeXLive.
- macOS
- Linux
- Windows

### Text Editor or LaTeX Client
You will also need a LaTeX client or a multipurpose text editor to interact with the contents of this repository.

#### Atom
We recommned Atom, a text editor made available by GitHub that can be configured and customized for a variety of purposes, including working with LaTeX files.

It is available for:
- macOS
- Linux
- Windows

#### Configure Atom
A variety of packages are available for Atom that can enhance functionality and workflow.

Of particular note are:
- `language-text`, an Atom core package that supports plaintext and
- `atom-latex`, which makes it possible to run LaTeX engines and bibliography software without the use of the command line.

A number of other packages can improve the LaTeX experience when using Atom. These include:
- `language-latex`, which supports syntax highlighting;
- `latex-autocomplete`, which provides autofill options for LaTeX; and
- `latex-wordcount`, which does a decent job at estiamting document word counts.

## Issues
If you'd like to submit an issue to the DuraChain White Paper repository, please open an [issue](https://github.com/durachain/whitepaper/issues) and follow the template for submission.

## Contribute to the DuraChain White Paper
If you'd like to contribute to the DuraChain White Paper, please fork the repository and once you've made your contributions in your our directory, submit a pull request to the master branch.

### List of Contributors to the DuraChain White Paper
- [xcesiv](https://github.com/xcesiv)
- [whimzyy](https://github.com/whimzyy)
- [swaevior](https://github.com/swaevior)
-
