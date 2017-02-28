# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

# ebuild generated by hackport 0.5.1

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Serialization/deserialization using Python Pickle format"
HOMEPAGE="http://hackage.haskell.org/package/python-pickle"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=">=dev-haskell/attoparsec-0.13:=[profile?] <dev-haskell/attoparsec-0.14:=[profile?]
	>=dev-haskell/cereal-0.5:=[profile?] <dev-haskell/cereal-0.6:=[profile?]
	>=dev-haskell/cmdargs-0.10:=[profile?] <dev-haskell/cmdargs-0.11:=[profile?]
	>=dev-haskell/mtl-2.2:=[profile?] <dev-haskell/mtl-2.3:=[profile?]
	>=dev-lang/ghc-7.6.1:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.16.0
	test? ( >=dev-haskell/hunit-1.3 <dev-haskell/hunit-1.4
		>=dev-haskell/test-framework-0.8 <dev-haskell/test-framework-0.9
		>=dev-haskell/test-framework-hunit-0.3 <dev-haskell/test-framework-hunit-0.4 )
"
