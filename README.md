# Roadiz documentation

<a href="https://readthedocs.org/projects/roadiz/?badge=latest" style="text-decoration: none;">
    <img src="https://readthedocs.org/projects/roadiz/badge/?version=latest">
</a>

## Prepare translations

```bash
make gettext
sphinx-intl update -p _build/locale -l fr
```

Then translate each *.po* file with *PoEdit*.
And build your documentation with:

```bash
make -e SPHINXOPTS="-D language='fr'" html
```