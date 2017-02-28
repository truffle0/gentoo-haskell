# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

# ebuild generated by hackport 0.5.9999
#hackport: flags: example:examples

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="OAuth 2.0 authentication plugins"
HOMEPAGE="https://github.com/thoughtbot/yesod-auth-oauth2"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE="examples +network-uri"

RDEPEND=">=dev-haskell/aeson-0.6:=[profile?] <dev-haskell/aeson-0.12:=[profile?]
	>=dev-haskell/authenticate-1.3.2.7:=[profile?] <dev-haskell/authenticate-1.4:=[profile?]
	>=dev-haskell/hoauth2-0.4.7:=[profile?] <dev-haskell/hoauth2-0.6:=[profile?]
	>=dev-haskell/http-client-0.4.0:=[profile?] <dev-haskell/http-client-0.5:=[profile?]
	>=dev-haskell/http-conduit-2.0:=[profile?] <dev-haskell/http-conduit-3.0:=[profile?]
	>=dev-haskell/http-types-0.8:=[profile?] <dev-haskell/http-types-0.10:=[profile?]
	>=dev-haskell/lifted-base-0.2:=[profile?] <dev-haskell/lifted-base-0.4:=[profile?]
	dev-haskell/random:=[profile?]
	>=dev-haskell/text-0.7:=[profile?] <dev-haskell/text-2.0:=[profile?]
	>=dev-haskell/transformers-0.2.2:=[profile?] <dev-haskell/transformers-0.6:=[profile?]
	>=dev-haskell/vector-0.10:=[profile?] <dev-haskell/vector-0.12:=[profile?]
	>=dev-haskell/yesod-auth-1.3:=[profile?] <dev-haskell/yesod-auth-1.5:=[profile?]
	>=dev-haskell/yesod-core-1.2:=[profile?] <dev-haskell/yesod-core-1.5:=[profile?]
	>=dev-haskell/yesod-form-1.3:=[profile?] <dev-haskell/yesod-form-1.5:=[profile?]
	>=dev-lang/ghc-7.4.1:=
	examples? ( dev-haskell/load-env:=[profile?]
			dev-haskell/warp:=[profile?]
			dev-haskell/yesod:=[profile?] )
	network-uri? ( >=dev-haskell/network-uri-2.6:=[profile?] )
	!network-uri? ( <dev-haskell/network-2.6:=[profile?] )
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.8
	test? ( dev-haskell/hspec )
"

src_configure() {
	haskell-cabal_src_configure \
		$(cabal_flag examples example) \
		$(cabal_flag network-uri network-uri)
}
