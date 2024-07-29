# Copyright 1999-2024 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} pypy3 )

DESCRIPTION="Material You color algorithms for Python!"
HOMEPAGE="
	https://github.com/eylles/pywal16
	https://pypi.org/project/pywal16/
"
SRC_URI="https://github.com/eylles/pywal16/archive/refs/tags/${PV}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64"

DEPEND=""
RDEPEND="${DEPEND}"
BDEPEND="
	dev-python/build
"

S="${WORKDIR}/pywal16-${PV}"

src_compile(){
	cd ${S}
	python -m build --wheel --no-isolation
}

src_install(){
	python -m installer --destdir="${D}" dist/*.whl
}
