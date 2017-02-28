# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=5

# ebuild generated by hackport 0.2.18.9999

CABAL_FEATURES="lib profile haddock hscolour hoogle"
inherit darcs haskell-cabal

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="An mtl compatible version of the Ghc-Api monads and monad-transformers"
HOMEPAGE="http://darcsden.com/jcpetruzza/ghc-mtl"
#SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"
EDARCS_REPOSITORY="http://hub.darcs.net/jcpetruzza/ghc-mtl"

LICENSE="BSD"
SLOT="0/${PV}"

KEYWORDS=""
IUSE=""

RDEPEND=">=dev-haskell/exceptions-0.6:=[profile?]
	dev-haskell/extensible-exceptions:=[profile?]
	dev-haskell/mtl:=[profile?]
	>=dev-lang/ghc-6.10.4:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.6.0.3
"
