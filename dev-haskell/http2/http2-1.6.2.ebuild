# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

# ebuild generated by hackport 0.4.7.9999
#hackport: flags: -devel

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="HTTP/2.0 library including frames and HPACK"
HOMEPAGE="http://hackage.haskell.org/package/http2"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND="dev-haskell/bytestring-builder:=[profile?]
	dev-haskell/case-insensitive:=[profile?]
	dev-haskell/psqueues:=[profile?]
	dev-haskell/stm:=[profile?]
	>=dev-lang/ghc-7.6.1:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.16.0
	test? ( dev-haskell/aeson
		dev-haskell/aeson-pretty
		>=dev-haskell/doctest-0.9.3
		dev-haskell/glob
		dev-haskell/hex
		>=dev-haskell/hspec-1.3
		dev-haskell/text
		dev-haskell/unordered-containers
		dev-haskell/vector
		dev-haskell/word8 )
"

src_prepare() {
	# workaround Cabal bug at picking unused deps
	eapply "${FILESDIR}"/${PN}-1.6.0-less-deps.patch
	eapply "${FILESDIR}"/${PN}-1.6.0-even-less-deps.patch
	eapply_user
}

src_configure() {
	haskell-cabal_src_configure \
		--flag=-devel
}
