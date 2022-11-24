# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.7.3.0
#hackport: flags: sse41:cpu_flags_x86_sse4_1,sse2:cpu_flags_x86_sse2,+integer-gmp,+random-initial-seed

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="A class for types that can be converted to a hash value"
HOMEPAGE="https://github.com/haskell-unordered-containers/hashable"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"

RESTRICT=test # fails 1 test consistently on ghc-9.0.2

RDEPEND=">=dev-haskell/base-orphans-0.8.6:=[profile?]
	>=dev-lang/ghc-8.4.3:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-2.2.0.1
	test? ( dev-haskell/hunit
		>=dev-haskell/quickcheck-2.4.0.1
		>=dev-haskell/random-1.0 <dev-haskell/random-1.3
		>=dev-haskell/test-framework-0.3.3
		dev-haskell/test-framework-hunit
		>=dev-haskell/test-framework-quickcheck2-0.2.9 )
"

src_configure() {
	haskell-cabal_src_configure \
		--flag=integer-gmp \
		--flag=random-initial-seed
}
