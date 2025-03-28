# Copyright 1999-2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

VALA_USE_DEPEND="valadoc"

inherit git-r3 vala

DESCRIPTION="GLib-based library for translating DBusMenu-exported menus into GMenuModels. Used for vala-panel's system tray and all variants of vala-panel-appmenu. Can be used with GTK3 or GTK4."
HOMEPAGE="https://gitlab.com/vala-panel-project/vala-panel-appmenu"

EGIT_REPO_URI="https://gitlab.com/vala-panel-project/vala-panel-appmenu.git"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64"
IUSE=""

DEPEND="
  dev-libs/glib
  x11-libs/gtk+
  dev-lang/vala
  x11-libs/libwnck
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
  
  cd ${S}/subprojects/appmenu-glib-translator
  meson setup --prefix /usr build || die
}

src_install(){  
  cd ${S}/subprojects/appmenu-glib-translator
  meson install -C build --destdir "${D}" || die
}
