# Dipendenze:
#
#   - make
#   - pandoc
#   - pdflatex
#   - Potrebbe essere necessario installare librsvg
#
# Altrimenti se usate Guix potete spawnare una shell
# con tutte le dipendenze necessarie con:
#
#   $ guix environment -m manifest.scm
#
# Occhio che TexLive pesa ~2.6GB, se volete cacharlo
# è possibile usare
#
#   $ guix package -p $directory -m manifest.scm
#
# per creare un profilo, e
#
#   $ GUIX_PROFILE="$directory"; . "$GUIX_PROFILE/etc/profile"
#
# per attivarlo.

all: pdf html

pdf:
	pandoc README.md -o README.pdf
html:
	pandoc README.md -o README.html
