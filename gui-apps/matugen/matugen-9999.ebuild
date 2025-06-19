# Copyright 1999-2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2
 
EAPI=8

inherit git-r3 cargo

DESCRIPTION="A material you color generation tool "
HOMEPAGE="https://github.com/InioX/matugen"

EGIT_REPO_URI="https://github.com/InioX/matugen.git"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64"
IUSE=""

DEPEND=""
RDEPEND="${DEPEND}"
BDEPEND=""

src_unpack(){
  git-r3_src_unpack
  cargo_live_src_unpack
}
