# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=5

# ebuild generated by hackport 0.4.6.9999
#hackport: flags: -network-bytestring

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="A fast, light-weight web server for WAI applications"
HOMEPAGE="http://github.com/yesodweb/wai"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="MIT"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE="+allow-sendfilefd warp-debug"

RESTRICT=test # missing files

RDEPEND=">=dev-haskell/auto-update-0.1.1:=[profile?] <dev-haskell/auto-update-0.2:=[profile?]
	>=dev-haskell/blaze-builder-0.4:=[profile?]
	dev-haskell/bytestring-builder:=[profile?]
	>=dev-haskell/case-insensitive-0.2:=[profile?]
	dev-haskell/http-date:=[profile?]
	>=dev-haskell/http-types-0.8.5:=[profile?]
	>=dev-haskell/http2-1.0.2:=[profile?]
	>=dev-haskell/iproute-1.3.1:=[profile?]
	>=dev-haskell/network-2.3:=[profile?]
	>=dev-haskell/simple-sendfile-0.2.7:=[profile?] <dev-haskell/simple-sendfile-0.3:=[profile?]
	>=dev-haskell/stm-2.3:=[profile?]
	>=dev-haskell/streaming-commons-0.1.10:=[profile?]
	dev-haskell/text:=[profile?]
	>=dev-haskell/unix-compat-0.2:=[profile?]
	>=dev-haskell/vault-0.3:=[profile?]
	>=dev-haskell/wai-3.0:=[profile?] <dev-haskell/wai-3.1:=[profile?]
	dev-haskell/word8:=[profile?]
	>=dev-lang/ghc-7.4.1:=
	allow-sendfilefd? ( dev-haskell/hashable:=[profile?] )
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.8
	test? ( dev-haskell/async
		>=dev-haskell/doctest-0.10.1
		>=dev-haskell/hspec-1.3
		dev-haskell/http
		dev-haskell/hunit
		>=dev-haskell/lifted-base-0.1
		dev-haskell/old-locale
		dev-haskell/quickcheck
		>=dev-haskell/transformers-0.2.2 )
"

src_configure() {
	haskell-cabal_src_configure \
		$(cabal_flag allow-sendfilefd allow-sendfilefd) \
		--flag=-network-bytestring \
		$(cabal_flag warp-debug warp-debug)
}
