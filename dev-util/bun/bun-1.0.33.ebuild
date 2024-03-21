# Copyright 1999-2024 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

DESCRIPTION="Incredibly fast JavaScript runtime, bundler, test runner, and package manager – all in one"
HOMEPAGE="hthttps://github.com/oven-sh/bun"
SRC_URI="
    https://github.com/oven-sh/bun/releases/download/bun-v${PV}/bun-linux-x64.zip -> ${P}.zip"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

REQUIRED_USE=""

DEPEND=""
RDEPEND="${DEPEND}"
BDEPEND=""

S="${WORKDIR}/bun-linux-x64"

src_install(){
    mkdir ${D}/bin
    mv ${S}/bun ${D}/bin
}
