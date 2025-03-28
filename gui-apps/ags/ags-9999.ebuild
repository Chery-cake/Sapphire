# Copyright 1999-2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2
 
EAPI=8

inherit git-r3 go-module

DESCRIPTION="Scaffolding CLI for Astal+TypeScript "
HOMEPAGE="https://aylur.github.io/ags/"

EGIT_REPO_URI="https://github.com/Aylur/ags.git"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64"
IUSE=""

DEPEND="
  gui-libs/gjs
"
RDEPEND="${DEPEND}"
BDEPEND="
  dev-libs/gobject-introspection
  dev-lang/go
"

src_unpack(){
  git-r3_src_unpack
  go-module_live_vendor
}

src_install(){
  cd ${S}
  GOPATH=${D} go install -ldflags "\
    -X 'main.gtk4LayerShell=$(pkg-config --variable=libdir gtk4-layer-shell-0)/libgtk4-layer-shell.so' \
    -X 'main.astalGjs=$(pkg-config --variable=srcdir astal-gjs)'"
}
