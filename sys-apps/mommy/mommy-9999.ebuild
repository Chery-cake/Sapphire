# Copyright 1999-2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit git-r3

DESCRIPTION="mommy's here to support you, in any shell, on any system~ ❤️"
HOMEPAGE="https://github.com/FWDekker/mommy"

EGIT_REPO_URI="https://github.com/FWDekker/mommy.git"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64"
IUSE=""

DEPEND=""
RDEPEND="${DEPEND}"
BDEPEND="
  dev-vcs/git
  dev-build/make
"

src_unpack(){
  git-r3_src_unpack
}

src_install(){
  emake install prefix="${D}/usr/"
}
