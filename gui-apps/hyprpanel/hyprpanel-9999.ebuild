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
  dev-libs/gjs
  gui-apps/ags
  media-video/wireplumber
  gnome-base/libgtop
  net-wireless/bluez
  net-misc/networkmanager
  dev-util/dart-sass
  gui-apps/wl-clipboard
  sys-power/upower
  gnome-base/gvfs
  <x11-libs/gtksourceview-4.0.0
  net-libs/libsoup
"
RDEPEND="
  ${DEPEND}

  gui-libs/astal-cava
  gui-libs/astal-hyprland
  gui-libs/astal-mpris
  gui-libs/astal-notifd
  gui-libs/astal-tray
  gui-libs/astal-wireplumber
  gui-libs/astal-network
  gui-libs/astal-bluetooth
  gui-libs/astal-wayland-glib
  gui-libs/astal-battery
  gui-libs/astal-powerprofiles
  gui-libs/astal-river
"

BDEPEND=""

src_unpack(){
  git-r3_src_unpack
}

src_configure(){
  meson setup build || die
}

src_compile(){
  meson compile -C build || die
}

src_install(){
  meson install -C build --destdir "${D}" || die
}
