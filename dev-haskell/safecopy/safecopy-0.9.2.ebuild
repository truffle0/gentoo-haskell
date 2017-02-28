# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

# ebuild generated by hackport 0.5.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Binary serialization with version control"
HOMEPAGE="https://github.com/acid-state/safecopy"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="public-domain"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=">=dev-haskell/cereal-0.5:=[profile?] <dev-haskell/cereal-0.6:=[profile?]
	<dev-haskell/old-time-1.2:=[profile?]
	<dev-haskell/text-1.3:=[profile?]
	>=dev-haskell/vector-0.10:=[profile?] <dev-haskell/vector-0.12:=[profile?]
	>=dev-lang/ghc-7.4.1:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.8
	test? ( >=dev-haskell/lens-4.7 <dev-haskell/lens-5.0
		dev-haskell/lens-action
		dev-haskell/quickcheck
		dev-haskell/quickcheck-instances
		dev-haskell/tasty
		dev-haskell/tasty-quickcheck )
"
