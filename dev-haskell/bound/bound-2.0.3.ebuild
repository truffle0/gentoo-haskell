# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

# ebuild generated by hackport 0.6.7.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Making de Bruijn Succ Less"
HOMEPAGE="https://github.com/ekmett/bound/"
SRC_URI="https://hackage.haskell.org/package/${P}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE="+template-haskell"

RDEPEND=">=dev-haskell/bifunctors-3:=[profile?] <dev-haskell/bifunctors-6:=[profile?]
	>=dev-haskell/bytes-0.4:=[profile?] <dev-haskell/bytes-1:=[profile?]
	>=dev-haskell/cereal-0.3.5.2:=[profile?] <dev-haskell/cereal-0.6:=[profile?]
	>=dev-haskell/comonad-3:=[profile?] <dev-haskell/comonad-6:=[profile?]
	>=dev-haskell/hashable-1.2.5.0:=[profile?] <dev-haskell/hashable-1.4:=[profile?]
	>=dev-haskell/mmorph-1.0:=[profile?] <dev-haskell/mmorph-1.2:=[profile?]
	>=dev-haskell/profunctors-3.3:=[profile?] <dev-haskell/profunctors-6:=[profile?]
	>=dev-haskell/th-abstraction-0.4:=[profile?] <dev-haskell/th-abstraction-0.5:=[profile?]
	>=dev-haskell/transformers-compat-0.5:=[profile?] <dev-haskell/transformers-compat-1:=[profile?]
	>=dev-lang/ghc-8.4.3:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-2.2.0.1
	test? ( >=dev-haskell/deriving-compat-0.3.4 <dev-haskell/deriving-compat-0.6
		dev-haskell/functor-classes-compat
		dev-haskell/vector
		dev-haskell/void )
"

src_configure() {
	haskell-cabal_src_configure \
		$(cabal_flag template-haskell template-haskell)
}