# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

# ebuild generated by hackport 0.5.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="Use network sockets together with the pipes library"
HOMEPAGE="https://github.com/k0001/pipes-network"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND="dev-haskell/network:=[profile?]
	>=dev-haskell/network-simple-0.4.0.1:=[profile?] <dev-haskell/network-simple-0.5:=[profile?]
	>=dev-haskell/pipes-4.0:=[profile?] <dev-haskell/pipes-4.3:=[profile?]
	>=dev-haskell/pipes-safe-2.1:=[profile?] <dev-haskell/pipes-safe-2.3:=[profile?]
	>=dev-haskell/transformers-0.2:=[profile?] <dev-haskell/transformers-0.6:=[profile?]
	>=dev-lang/ghc-7.4.1:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.8
"
