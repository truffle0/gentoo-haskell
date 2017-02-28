# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

# ebuild generated by hackport 0.5.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="PGF backend for diagrams drawing EDSL"
HOMEPAGE="https://github.com/cchalmers/diagrams-pgf"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND="<dev-haskell/bytestring-builder-1.1:=[profile?]
	dev-haskell/colour:=[profile?]
	>=dev-haskell/diagrams-core-1.3:=[profile?] <dev-haskell/diagrams-core-1.4:=[profile?]
	>=dev-haskell/diagrams-lib-1.3:=[profile?] <dev-haskell/diagrams-lib-1.4:=[profile?]
	>=dev-haskell/hashable-1.1:=[profile?] <dev-haskell/hashable-1.3:=[profile?]
	dev-haskell/juicypixels:=[profile?]
	>=dev-haskell/mtl-2.1:=[profile?] <dev-haskell/mtl-3.0:=[profile?]
	>=dev-haskell/optparse-applicative-0.11:=[profile?] <dev-haskell/optparse-applicative-0.13:=[profile?]
	>=dev-haskell/split-0.1.2:=[profile?] <dev-haskell/split-0.3:=[profile?]
	<=dev-haskell/texrunner-0.0.2:=[profile?]
	dev-haskell/vector:=[profile?]
	dev-haskell/zlib:=[profile?]
	>=dev-lang/ghc-7.4.1:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.10
"
