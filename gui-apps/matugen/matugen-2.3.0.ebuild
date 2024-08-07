# Copyright 2024 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

# Auto-Generated by cargo-ebuild 0.5.4-r1

EAPI=8

CRATES="
	addr2line@0.21.0
	adler@1.0.2
	ahash@0.8.11
	aho-corasick@1.1.2
	aligned-vec@0.5.0
	anstream@0.6.5
	anstyle@1.0.4
	anstyle-parse@0.2.3
	anstyle-query@1.0.2
	anstyle-wincon@3.0.2
	anyhow@1.0.82
	arbitrary@1.3.2
	arg_enum_proc_macro@0.3.4
	arrayvec@0.7.4
	autocfg@1.1.0
	av1-grain@0.2.3
	avif-serialize@0.8.1
	backtrace@0.3.69
	base64@0.21.5
	bit_field@0.10.2
	bitflags@1.3.2
	bitflags@2.4.1
	bitstream-io@2.2.0
	built@0.7.2
	bumpalo@3.14.0
	bytemuck@1.14.0
	byteorder@1.5.0
	byteorder-lite@0.1.0
	bytes@1.5.0
	cc@1.0.83
	cfg-expr@0.15.8
	cfg-if@1.0.0
	cfg_aliases@0.1.1
	clap@4.4.11
	clap_builder@4.4.11
	clap_derive@4.4.7
	clap_lex@0.6.0
	clone_dyn@0.18.0
	clone_dyn_meta@0.18.0
	collection_tools@0.8.0
	color-eyre@0.6.2
	color_quant@1.1.0
	colorchoice@1.0.0
	colorsys@0.6.7
	const_format@0.2.32
	const_format_proc_macros@0.2.32
	convert_case@0.6.0
	core-foundation@0.9.4
	core-foundation-sys@0.8.6
	crc32fast@1.3.2
	crossbeam-deque@0.8.4
	crossbeam-epoch@0.9.17
	crossbeam-utils@0.8.18
	crunchy@0.2.2
	csv@1.3.0
	csv-core@0.1.11
	derive_more@1.0.0-beta.6
	derive_more-impl@1.0.0-beta.6
	derive_tools@0.24.0
	derive_tools_meta@0.23.0
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
	execute@0.2.13
	execute-command-macro@0.1.9
	execute-command-macro-impl@0.1.10
	execute-command-tokens@0.1.7
	exr@1.71.0
	eyre@0.6.11
	fdeflate@0.3.1
	flate2@1.0.28
	flume@0.11.0
	fnv@1.0.7
	form_urlencoded@1.2.1
	former_types@2.2.0
	futures-channel@0.3.30
	futures-core@0.3.30
	futures-io@0.3.30
	futures-sink@0.3.30
	futures-task@0.3.30
	futures-util@0.3.30
	generic-array@1.0.0
	getrandom@0.2.11
	gif@0.13.1
	gimli@0.28.1
	h2@0.3.22
	half@2.2.1
	hashbrown@0.14.3
	heck@0.4.1
	heck@0.5.0
	hermit-abi@0.3.3
	http@0.2.11
	http-body@0.4.6
	httparse@1.8.0
	httpdate@1.0.3
	humantime@2.1.0
	hyper@0.14.28
	hyper-rustls@0.24.2
	idna@0.5.0
	image@0.24.9
	image@0.25.1
	image-webp@0.1.2
	imgref@1.10.1
	indenter@0.3.3
	indexmap@2.2.6
	interpolate_name@0.2.4
	interval_adapter@0.21.0
	ipnet@2.9.0
	is-terminal@0.4.9
	iter_tools@0.17.0
	itertools@0.11.0
	itertools@0.12.1
	itoa@1.0.10
	jobserver@0.1.31
	jpeg-decoder@0.3.0
	js-sys@0.3.66
	lazy_static@1.4.0
	lebe@0.5.2
	libc@0.2.151
	libfuzzer-sys@0.4.7
	libredox@0.0.1
	linux-raw-sys@0.4.12
	lock_api@0.4.11
	log@0.4.20
	loop9@0.1.5
	macro_tools@0.28.0
	material-colors@0.3.2
	maybe-rayon@0.1.1
	memchr@2.6.4
	mime@0.3.17
	minimal-lexical@0.2.1
	miniz_oxide@0.7.1
	mio@0.8.10
	mod_interface@0.21.0
	mod_interface_meta@0.21.0
	new_debug_unreachable@1.0.6
	nom@7.1.3
	noop_proc_macro@0.3.0
	num-bigint@0.4.4
	num-derive@0.4.2
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
	paste@1.0.14
	percent-encoding@2.3.1
	pin-project-lite@0.2.13
	pin-utils@0.1.0
	pkg-config@0.3.30
	png@0.17.10
	ppv-lite86@0.2.17
	pretty_env_logger@0.5.0
	prettytable-rs@0.10.0
	proc-macro2@1.0.85
	profiling@1.0.15
	profiling-procmacros@1.0.15
	proper_path_tools@0.7.0
	qoi@0.4.1
	quick-error@2.0.1
	quote@1.0.36
	rand@0.8.5
	rand_chacha@0.3.1
	rand_core@0.6.4
	rav1e@0.7.1
	ravif@0.11.5
	rayon@1.8.0
	rayon-core@1.12.0
	redox_syscall@0.4.1
	redox_users@0.4.4
	regex@1.10.5
	regex-automata@0.4.7
	regex-syntax@0.8.2
	reqwest@0.11.23
	resolve-path@0.1.0
	rgb@0.8.37
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
	simd_helpers@0.1.0
	slab@0.4.9
	smallvec@1.11.2
	socket2@0.5.5
	spin@0.9.8
	strsim@0.10.0
	syn@2.0.66
	system-configuration@0.5.1
	system-configuration-sys@0.5.0
	system-deps@6.2.2
	target-lexicon@0.12.14
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
	typenum@1.17.0
	unicode-bidi@0.3.14
	unicode-ident@1.0.12
	unicode-normalization@0.1.22
	unicode-segmentation@1.11.0
	unicode-width@0.1.11
	unicode-xid@0.2.4
	untrusted@0.9.0
	update-informer@1.1.0
	upon@0.8.0
	ureq@2.9.1
	url@2.5.0
	utf8parse@0.2.1
	v_frame@0.3.8
	variadic_from@0.19.0
	version-compare@0.2.0
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
	weezl@0.1.8
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
	zune-core@0.4.12
	zune-inflate@0.2.54
	zune-jpeg@0.4.11
"

inherit cargo

DESCRIPTION="A material you color generation tool with templates"
# Double check the homepage as the cargo_metadata crate
# does not provide this value so instead repository is used
HOMEPAGE="https://github.com/InioX/matugen"
SRC_URI="
		https://github.com/InioX/matugen/archive/refs/tags/v${PV}.zip
		${CARGO_CRATE_URIS}"

# License set may be more restrictive as OR is not respected
# use cargo-license for a more accurate license picture
LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64"

RDEPEND="${DEPEND}"

# rust does not use *FLAGS from make.conf, silence portage warning
# update with proper path to binaries this crate installs, omit leading /
QA_FLAGS_IGNORED="usr/bin/${PN}"

src_unpack() {
    cargo_src_unpack
}

src_configure() {
#	cargo_gen_config
    cargo_src_configure
}

src_compile() {
	cargo_gen_config
#	cargo_src_compile
}

src_install(){
	cargo update || die
    cargo build --release || die
    mkdir ${D}/bin
    mv ${S}/target/release/matugen ${D}/bin
}
