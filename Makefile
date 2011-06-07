.SUFFIXES: .pdf
.PHONY: all clean distclean

all: gittalk.pdf

%.pdf: %.tex
	xelatex -interaction=nonstopmode $<

clean:
	for ext in aux log toc lof lot dlog bbl blg out tpt fdb_latexmk; do \
		$(RM) gittalk.$$ext; \
	done
	$(RM) *.bak *~

distclean: clean
	for ext in dvi ps ps.gz pdf; do \
		$(RM) gittalk.$$ext; \
	done
