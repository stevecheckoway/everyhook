# ABOUT

The `everyhook` package takes control of the six TeX token parameters
`everypar`, `everymath`, `everydisplay`, `everyhbox`, `everyvbox`, and
`everycr`. Real hooks for each of these can be installed using a stack like
interface. For compatibility with LaTeX standard classes and packages, each of
the `everyX` token lists can be set without interfering with the hooks.


# LICENSE

Copyright (C) 2010, 2011, 2014 by Stephen Checkoway

This file may be distributed and/or modified under the
conditions of the LaTeX Project Public License, either
version 1.3c of this license or (at your option) any later
version.  The latest version of this license is in:

    http://www.latex-project.org/lppl.txt

and version 1.3c or later is part of all distributions of
LaTeX version 2005/12/01 or later.

This work has the LPPL maintenance status 'maintained'.

The Current Maintainer of this work is Stephen Checkoway.

This work consists of everyhook.dtx and the derived file
everyhook.sty.

# REQUIREMENTS

- e-TeX
- `etoolbox` package

# INSTALLATION

1. Unpack the `everyhook.tds.zip` archive in the root directory of the
   local TeX installation tree.

2. Update the file name database, if required by running `mktexlsr`.
