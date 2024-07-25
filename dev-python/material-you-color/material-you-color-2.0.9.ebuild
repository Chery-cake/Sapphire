
# Copyright 1999-2024 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} pypy3 )

DESCRIPTION="Material You color algorithms for Python!"
HOMEPAGE="
	https://github.com/T-Dynamos/materialyoucolor-python
	https://pypi.org/project/materialyoucolor/
"
SRC_URI="https://github.com/T-Dynamos/materialyoucolor-python/releases/download/v${PV}/materialyoucolor-${PV}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64"

DEPEND=""
RDEPEND="${DEPEND}"
BDEPEND="
	dev-python/build
"

S="${WORKDIR}/materialyoucolor-${PV}"

src_compile(){
	cd ${S}
	python -m build --wheel --no-isolation
}

src_install(){
	python -m installer --destdir="${D}" dist/*.whl
}
