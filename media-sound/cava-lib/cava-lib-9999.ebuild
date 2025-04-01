# Copyright 1999-2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit git-r3 autotools

DESCRIPTION="Cross-platform Audio Visualizer"
HOMEPAGE="https://github.com/LukashonakV/cava"

EGIT_REPO_URI="https://github.com/LukashonakV/cava.git"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64"
IUSE="alsa pulseaudio pipewire portaudio sndio jack sdl2 ncurses"

DEPEND="
  sci-libs/fftw
  dev-build/libtool
  dev-build/automake
  dev-util/pkgconf
  dev-libs/iniparser

  alsa? ( media-libs/alsa-lib )
  pulseaudio? ( media-sound/pulseaudio )
  pipewire? ( media-video/pipewire )
  portaudio? ( media-libs/portaudio )
  sndio? ( media-sound/sndio )
  jack? ( media-sound/jack2 )

  sdl2? ( media-libs/libsdl2 )
  ncurses? ( sys-libs/ncurses )
"
RDEPEND="${DEPEND}"
BDEPEND="
  
"

src_unpack(){
  git-r3_src_unpack
}

src_prepare(){
  default
}

src_configure(){
  cd ${S}
  ./autogen.sh
  ./configure
}

src_compile(){
  cd ${S}
  make
}

src_install(){
  cd ${S}
  make install DESTDIR=${D}
}
