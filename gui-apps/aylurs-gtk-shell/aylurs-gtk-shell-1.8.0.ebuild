# Copyright 1999-2024 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

DESCRIPTION="Aylurs's Gtk Shell (AGS), An eww inspired gtk widget system."
HOMEPAGE="https://github.com/Aylur/ags"
SRC_URI="
    https://github.com/Aylur/ags/releases/download/v${PV}/ags-v${PV}.tar.gz -> ${P}.tar.gz
    https://github.com/Aylur/ags/releases/download/v${PV}/node_modules-v${PV}.tar.gz -> node_modules.tar.gz"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="~amd64"
IUSE="bluetooth greetd service utils notfications networkmanager powerprofile battery"

REQUIRED_USE=""

FEATURES="-network-sandbox"

ODEPEND="
    bluetooth? ( >=net-wireless/gnome-bluetooth-42 )
    greetd? ( gui-libs/greetd )
    service? ( dev-libs/libdbusmenu )
    utils? ( net-libs/libsoup )
    notfications? ( x11-libs/libnotify )
    networkmanager? ( net-misc/networkmanager )
    powerprofile? ( sys-power/power-profiles-daemon )
    battery? ( sys-power/upower )
"

DEPEND="
    dev-libs/gjs
    >=dev-libs/glib-2.76.4
    sys-libs/glibc
    >=x11-libs/gtk+-3
    gui-libs/gtk-layer-shell[introspection]
    sys-libs/pam

    ${ODEPEND}
"
RDEPEND="${DEPEND}"

BDEPEND="
    dev-libs/gobject-introspection
    dev-build/meson
    net-libs/nodejs
    dev-lang/typescript
"

S="${WORKDIR}"

src_compile(){
    cd "${S}"
    mv node_modules ags
    cd "${S}/ags"
    meson setup build || die
}

src_install(){
    cd "${S}/ags"
    meson install -C build --destdir "${D}" || die
    dosym /usr/local/share/com.github.Aylur.ags/com.github.Aylur.ags /usr/local/bin/ags
}
