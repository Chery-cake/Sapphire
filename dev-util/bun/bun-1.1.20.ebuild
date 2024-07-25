# Copyright 1999-2024 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

DESCRIPTION="Incredibly fast JavaScript runtime, bundler, test runner, and package manager – all in one"
HOMEPAGE="https://github.com/oven-sh/bun"
SRC_URI="https://github.com/oven-sh/bun/releases/download/bun-v${PV}/bun-linux-x64.zip -> ${P}.zip"

S="${WORKDIR}/bun-linux-x64"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64"

RDEPEND="${DEPEND}"
BDEPEND="
	app-arch/unzip
"

src_install(){
	mkdir ${D}/bin
	mv ${S}/bun ${D}/bin
}
