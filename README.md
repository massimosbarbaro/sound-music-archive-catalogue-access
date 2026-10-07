# Bilingual catalogue of a sound and music archive

[![DOI](https://zenodo.org/badge/DOI/10.5281/zenodo.23205224.svg)](https://doi.org/10.5281/zenodo.23205224)

*Catalogo bilingue italiano-sloveno di un archivio sonoro e musicale*

**db** · 2018 · version 34  
Author: **Massimo Sbarbaro** ([ORCID 0009-0006-8965-9013](https://orcid.org/0009-0006-8965-9013))

## Overview

This database catalogues the recordings and scores of a sound and music archive, with a bilingual Italian–Slovene interface. Each record describes a piece by musical landscape, category and field, original and new file name, title, author, album, archive, arrangement, ensemble, performer, informant, place and date of recording, province, publisher and year, conductor, notes and score. Earlier separate lists were merged into a single catalogue through append queries.

I designed and programmed this application in 2018. It is published here in 2026 as part of the documented record of my software work, with a permanent DOI on Zenodo.

## Main functions

- Main menu and bilingual search window (`fOpen`, `fdbPulitoRicerca`).
- Record entry and editing (`fdbPulito`, `fdbPulitoModifica`).
- Attachments for audio files and scores (`fAllegati`, `fAllegatiMod`).
- Append queries that merge the older lists into the main catalogue (`qAccodaDbMusica`).

## Data

Main table `DbMusica` and the older source lists it was built from.

## Technology

Microsoft Access 2000–2003 format (.mdb), VBA.

## Repository contents

| Path | Content |
|---|---|
| `database/` | The Access application, emptied of all data. |
| `source/` | Plain-text export (UTF-8) of forms, reports, macros, VBA modules (`SaveAsText`) and of the SQL of every query. |
| `docs/schema.md` | Tables and fields. |

## What is not included

The database is published **empty**: every table has been emptied and the file compacted, so no record of the original data survives. Logos and names of the organisations that used the application have been removed from forms, reports and code, together with printer settings and any credential. Forms, reports, queries, macros and VBA code are otherwise unchanged and are also provided as plain text in `source/`.

## Related repositories

- [sheet-music-editions-inventory-access](https://github.com/massimosbarbaro/sheet-music-editions-inventory-access)
- [music-library-catalogue-access](https://github.com/massimosbarbaro/music-library-catalogue-access)

## How to cite

Use the citation metadata in [`CITATION.cff`](CITATION.cff) (GitHub: *Cite this repository*). The release is archived on Zenodo with the DOI [10.5281/zenodo.23205224](https://doi.org/10.5281/zenodo.23205224).

> Sbarbaro, Massimo. 2018. *Bilingual catalogue of a sound and music archive*. Software (db, 2018), version 34. Zenodo. https://doi.org/10.5281/zenodo.23205224.

## License

Released under the [MIT License](LICENSE). © 2018 Massimo Sbarbaro.
