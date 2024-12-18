PACKAGE := $(shell grep '^Package:' DESCRIPTION | sed -E 's/^Package:[[:space:]]+//')
RSCRIPT = Rscript --no-init-file

.PHONY: docs

deps:
	Rscript -e "pak::local_install_dev_deps(root = '.')"

install: doc build
	R CMD INSTALL . && rm *.tar.gz

build:
	R CMD build --no-build-vignettes .

doc:
	${RSCRIPT} -e "devtools::document()"

docs:
	${RSCRIPT} -e "pkgdown::build_site()"

eg:
	${RSCRIPT} -e "devtools::run_examples()"

test:
	${RSCRIPT} -e "devtools::test()"

check: build
	_R_CHECK_SYSTEM_CLOCK=FALSE _R_CHECK_CRAN_INCOMING_=FALSE R CMD CHECK --as-cran --no-manual `ls -1tr ${PACKAGE}*gz | tail -n1`
	@rm -f `ls -1tr ${PACKAGE}*gz | tail -n1`
	@rm -rf ${PACKAGE}.Rcheck

readme:
	${RSCRIPT} -e "knitr::knit('README.Rmd')"

check_windows:
	${RSCRIPT} -e "devtools::check_win_devel(); devtools::check_win_release()"
