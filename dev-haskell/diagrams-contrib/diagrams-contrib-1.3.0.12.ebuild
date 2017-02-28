# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

# ebuild generated by hackport 0.5.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Collection of user contributions to diagrams EDSL"
HOMEPAGE="http://projects.haskell.org/diagrams/"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=">=dev-haskell/circle-packing-0.1:=[profile?] <dev-haskell/circle-packing-0.2:=[profile?]
	>=dev-haskell/colour-2.3.1:=[profile?] <dev-haskell/colour-2.4:=[profile?]
	>=dev-haskell/data-default-0.5.2:=[profile?] <dev-haskell/data-default-0.8:=[profile?]
	<dev-haskell/data-default-class-0.2:=[profile?]
	>=dev-haskell/diagrams-core-1.3:=[profile?] <dev-haskell/diagrams-core-1.4:=[profile?]
	>=dev-haskell/diagrams-lib-1.3:=[profile?] <dev-haskell/diagrams-lib-1.4:=[profile?]
	>=dev-haskell/diagrams-solve-0.1:=[profile?] <dev-haskell/diagrams-solve-0.2:=[profile?]
	>=dev-haskell/force-layout-0.4:=[profile?] <dev-haskell/force-layout-0.5:=[profile?]
	>=dev-haskell/lens-4.0:=[profile?] <dev-haskell/lens-4.15:=[profile?]
	>=dev-haskell/linear-1.11.3:=[profile?] <dev-haskell/linear-1.21:=[profile?]
	>=dev-haskell/monadrandom-0.1.8:=[profile?] <dev-haskell/monadrandom-0.5:=[profile?]
	>=dev-haskell/mtl-2.0:=[profile?] <dev-haskell/mtl-2.3:=[profile?]
	>=dev-haskell/parsec-3.1:=[profile?] <dev-haskell/parsec-3.2:=[profile?]
	>=dev-haskell/random-1.0:=[profile?] <dev-haskell/random-1.2:=[profile?]
	>=dev-haskell/semigroups-0.3.4:=[profile?] <dev-haskell/semigroups-0.19:=[profile?]
	>=dev-haskell/split-0.2.1:=[profile?] <dev-haskell/split-0.3:=[profile?]
	>=dev-haskell/text-0.11:=[profile?] <dev-haskell/text-1.3:=[profile?]
	>=dev-lang/ghc-7.4.1:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.10
	test? ( >=dev-haskell/hunit-1.2 <dev-haskell/hunit-1.4
		>=dev-haskell/quickcheck-2.4 <dev-haskell/quickcheck-2.10
		>=dev-haskell/test-framework-0.4 <dev-haskell/test-framework-0.9
		>=dev-haskell/test-framework-hunit-0.2 <dev-haskell/test-framework-hunit-0.4
		>=dev-haskell/test-framework-quickcheck2-0.2 <dev-haskell/test-framework-quickcheck2-0.4 )
"
