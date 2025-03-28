# Copyright 1999-2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2
 
EAPI=8

inherit git-r3

DESCRIPTION="A Bar/Panel for Hyprland with extensive customizability. "
HOMEPAGE="https://hyprpanel.com/"

EGIT_REPO_URI="https://github.com/Jas-SinghFSU/HyprPanel.git"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64"
IUSE=""
 
DEPEND="
  gui-libs/astal-gjs
  gui-apps/ags
  media-video/wireplumber
  gnome-base/libgtop
  net-wireless/bluez
  net-misc/networkmanager
  dev-util/dart-sass
  gui-apps/wl-clipboard
  sys-power/upower
  gnome-base/gvfs
"
RDEPEND="${DEPEND}"
BDEPEND=""

src_unpack(){
  git-r3_src_unpack
}

src_configure(){
  meson setup build
}

src_compile(){
  meson compile -C build
}

src_install(){
  meson install -C build
}
