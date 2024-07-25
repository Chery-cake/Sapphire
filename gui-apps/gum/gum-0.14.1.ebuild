# Copyright 1999-2024 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

DESCRIPTION="A tool for glamorous shell scripts"
HOMEPAGE="https://github.com/chaos/scrub"
SRC_URI="https://github.com/charmbracelet/gum/releases/download/v${PV}/${PN}_${PV}_Linux_x86_64.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64"

RDEPEND="${DEPEND}"

S="${WORKDIR}/${PN}_${PV}_Linux_x86_64"

src_install(){
	mkdir ${D}/bin
	cd ${S}
	mv gum ${D}/bin
}
