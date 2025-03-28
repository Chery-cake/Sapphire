# Copyright 1999-2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

VALA_USE_DEPEND="valadoc"

inherit git-r3 vala

DESCRIPTION="Building blocks for creating custom desktop shells"
HOMEPAGE="https://aylur.github.io/astal/"

EGIT_REPO_URI="https://github.com/Aylur/astal.git"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64"
IUSE=""

DEPEND="
  gui-libs/astal-io
  dev-build/meson
  dev-lang/vala[valadoc]
"
RDEPEND="${DEPEND}"
BDEPEND="
  dev-build/meson
  dev-lang/vala[valadoc]
  dev-libs/gobject-introspection
  ${vala_depend}
"

src_unpack(){
  git-r3_src_unpack
}

src_prepare(){
  default
  vala_setup
}

src_compile(){
  export VALAC="$(type -P valac-$(vala_best_api_version))"
  
  cd ${S}/lib/hyprland
  meson setup --prefix /usr build || die
}

src_install(){  
  cd ${S}/lib/hyprland
  meson install -C build --destdir "${D}" || die
}
