# Copyright 1999-2024 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.8.5.1.9999
#hackport: flags: -debug

CABAL_HACKAGE_REVISION=3

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Efficient hashing-based container types"
HOMEPAGE="https://github.com/haskell-unordered-containers/unordered-containers"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64"

RDEPEND=">=dev-haskell/hashable-1.4:=[profile?] <dev-haskell/hashable-1.6:=[profile?]
	>=dev-lang/ghc-9.0.2:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-3.4.1.0
	test? ( dev-haskell/chasingbottoms
		dev-haskell/hunit
		>=dev-haskell/nothunks-0.1.3
		>=dev-haskell/quickcheck-2.4.0.1
		dev-haskell/random
		>=dev-haskell/tasty-1.4.0.3
		>=dev-haskell/tasty-hunit-0.10.0.3
		>=dev-haskell/tasty-quickcheck-0.10.1.2 )
"

src_configure() {
	haskell-cabal_src_configure \
		--flag=-debug
}