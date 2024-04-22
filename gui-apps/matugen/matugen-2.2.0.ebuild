# Copyright 1999-2024 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

CRATES="
	addr2line@0.21.0
	adler@1.0.2
	ahash@0.8.7
	aho-corasick@1.1.2
	anstream@0.6.5
	anstyle@1.0.4
	anstyle-parse@0.2.3
	anstyle-query@1.0.2
	anstyle-wincon@3.0.2
	autocfg@1.1.0
	backtrace@0.3.69
	base64@0.21.5
	bit_field@0.10.2
	bitflags@1.3.2
	bitflags@2.4.1
	bumpalo@3.14.0
	bytemuck@1.14.0
	byteorder@1.5.0
	bytes@1.5.0
	cc@1.0.83
	cfg-if@1.0.0
	clap@4.4.11
	clap_builder@4.4.11
	clap_derive@4.4.7
	clap_lex@0.6.0
	color-eyre@0.6.2
	color_quant@1.1.0
	colorchoice@1.0.0
	colorsys@0.6.7
	core-foundation@0.9.4
	core-foundation-sys@0.8.6
	crc32fast@1.3.2
	crossbeam-deque@0.8.4
	crossbeam-epoch@0.9.17
	crossbeam-utils@0.8.18
	crunchy@0.2.2
	csv@1.3.0
	csv-core@0.1.11
	directories@5.0.1
	dirs@4.0.0
	dirs-next@2.0.0
	dirs-sys@0.3.7
	dirs-sys@0.4.1
	dirs-sys-next@0.1.2
	either@1.9.0
	encode_unicode@1.0.0
	encoding_rs@0.8.33
	enquote@1.1.0
	env_logger@0.10.1
	equivalent@1.0.1
	errno@0.3.8
	exr@1.71.0
	eyre@0.6.11
	fdeflate@0.3.1
	flate2@1.0.28
	flume@0.11.0
	fnv@1.0.7
	form_urlencoded@1.2.1
	futures-channel@0.3.30
	futures-core@0.3.30
	futures-io@0.3.30
	futures-sink@0.3.30
	futures-task@0.3.30
	futures-util@0.3.30
	getrandom@0.2.11
	gif@0.12.0
	gimli@0.28.1
	h2@0.3.22
	half@2.2.1
	hashbrown@0.14.3
	heck@0.4.1
	hermit-abi@0.3.3
	http@0.2.11
	http-body@0.4.6
	httparse@1.8.0
	httpdate@1.0.3
	humantime@2.1.0
	hyper@0.14.28
	hyper-rustls@0.24.2
	idna@0.5.0
	image@0.24.7
	indenter@0.3.3
	indexmap@2.2.2
	ipnet@2.9.0
	is-terminal@0.4.9
	itoa@1.0.10
	jpeg-decoder@0.3.0
	js-sys@0.3.66
	lazy_static@1.4.0
	lebe@0.5.2
	libc@0.2.151
	libredox@0.0.1
	linux-raw-sys@0.4.12
	lock_api@0.4.11
	log@0.4.20
	material-colors@0.1.6
	memchr@2.6.4
	mime@0.3.17
	miniz_oxide@0.7.1
	mio@0.8.10
	num-integer@0.1.45
	num-rational@0.4.1
	num-traits@0.2.17
	num_cpus@1.16.0
	object@0.32.2
	once_cell@1.19.0
	option-ext@0.2.0
	owo-colors@3.5.0
	owo-colors@4.0.0
	paris@1.5.15
	paris-log@1.0.2
	percent-encoding@2.3.1
	pin-project-lite@0.2.13
	pin-utils@0.1.0
	png@0.17.10
	pretty_env_logger@0.5.0
	prettytable-rs@0.10.0
	proc-macro2@1.0.71
	qoi@0.4.1
	quote@1.0.33
	rayon@1.8.0
	rayon-core@1.12.0
	redox_syscall@0.4.1
	redox_users@0.4.4
	regex@1.10.2
	regex-automata@0.4.3
	regex-syntax@0.8.2
	reqwest@0.11.23
	resolve-path@0.1.0
	ring@0.17.7
	rustc-demangle@0.1.23
	rustix@0.38.28
	rustls@0.21.10
	rustls-pemfile@1.0.4
	rustls-webpki@0.101.7
	rustversion@1.0.14
	ryu@1.0.16
	scopeguard@1.2.0
	sct@0.7.1
	semver@1.0.20
	serde@1.0.193
	serde_derive@1.0.193
	serde_json@1.0.108
	serde_spanned@0.6.5
	serde_urlencoded@0.7.1
	simd-adler32@0.3.7
	slab@0.4.9
	smallvec@1.11.2
	socket2@0.5.5
	spin@0.9.8
	strsim@0.10.0
	syn@2.0.43
	system-configuration@0.5.1
	system-configuration-sys@0.5.0
	term@0.7.0
	termcolor@1.4.0
	thiserror@1.0.51
	thiserror-impl@1.0.51
	tiff@0.9.0
	tinyvec@1.6.0
	tinyvec_macros@0.1.1
	tokio@1.35.1
	tokio-rustls@0.24.1
	tokio-util@0.7.10
	toml@0.8.8
	toml_datetime@0.6.5
	toml_edit@0.21.0
	tower-service@0.3.2
	tracing@0.1.40
	tracing-core@0.1.32
	try-lock@0.2.5
	unicode-bidi@0.3.14
	unicode-ident@1.0.12
	unicode-normalization@0.1.22
	unicode-width@0.1.11
	untrusted@0.9.0
	update-informer@1.1.0
	upon@0.8.0
	ureq@2.9.1
	url@2.5.0
	utf8parse@0.2.1
	version_check@0.9.4
	want@0.3.1
	wasi@0.11.0+wasi-snapshot-preview1
	wasm-bindgen@0.2.89
	wasm-bindgen-backend@0.2.89
	wasm-bindgen-futures@0.4.39
	wasm-bindgen-macro@0.2.89
	wasm-bindgen-macro-support@0.2.89
	wasm-bindgen-shared@0.2.89
	web-sys@0.3.66
	webpki-roots@0.25.3
	weezl@0.1.7
	winapi@0.3.9
	winapi-i686-pc-windows-gnu@0.4.0
	winapi-util@0.1.6
	winapi-x86_64-pc-windows-gnu@0.4.0
	windows-sys@0.48.0
	windows-sys@0.52.0
	windows-targets@0.48.5
	windows-targets@0.52.0
	windows_aarch64_gnullvm@0.48.5
	windows_aarch64_gnullvm@0.52.0
	windows_aarch64_msvc@0.48.5
	windows_aarch64_msvc@0.52.0
	windows_i686_gnu@0.48.5
	windows_i686_gnu@0.52.0
	windows_i686_msvc@0.48.5
	windows_i686_msvc@0.52.0
	windows_x86_64_gnu@0.48.5
	windows_x86_64_gnu@0.52.0
	windows_x86_64_gnullvm@0.48.5
	windows_x86_64_gnullvm@0.52.0
	windows_x86_64_msvc@0.48.5
	windows_x86_64_msvc@0.52.0
	winnow@0.5.30
	winreg@0.50.0
	zerocopy@0.7.32
	zerocopy-derive@0.7.32
	zune-inflate@0.2.54
"

inherit cargo

DESCRIPTION="A material you color generation tool with templates"
HOMEPAGE="https://github.com/InioX/matugen"
SRC_URI="
    https://github.com/InioX/matugen/archive/refs/tags/v${PV}.tar.gz -> ${P}.tar.gz
    ${CARGO_CRATE_URIS}"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64"
IUSE=""

REQUIRED_USE=""

DEPEND="
    dev-lang/rust
"
RDEPEND="${DEPEND}"
BDEPEND=""

# rust does not use *FLAGS from make.conf, silence portage warning
# update with proper path to binaries this crate installs, omit leading /
QA_FLAGS_IGNORED="usr/bin/${PN}"

src_unpack() {
    unpack ${P}.tar.gz
    cargo_src_unpack
}

src_configure() {
    cargo_src_configure
}

src_compile() {
	cargo_gen_config
	cargo_src_compile
}

src_install(){
	cargo update || die
    cargo build || die
    mkdir ${D}/bin
    mv ${S}/target/release/matugen ${D}/bin
}
