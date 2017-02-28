# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

# ebuild generated by hackport 0.5.1.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="Simple and easy network connections API"
HOMEPAGE="https://github.com/vincenthz/hs-connection"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND="dev-haskell/byteable:=[profile?]
	dev-haskell/data-default-class:=[profile?]
	>=dev-haskell/network-2.3:=[profile?]
	>=dev-haskell/socks-0.5.5:=[profile?]
	>=dev-haskell/tls-1.3:=[profile?]
	>=dev-haskell/x509-1.5:=[profile?]
	>=dev-haskell/x509-store-1.5:=[profile?]
	>=dev-haskell/x509-system-1.5:=[profile?]
	>=dev-haskell/x509-validation-1.5:=[profile?]
	>=dev-lang/ghc-7.4.1:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.6
"
