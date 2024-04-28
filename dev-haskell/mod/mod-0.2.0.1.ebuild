# Copyright 1999-2024 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.8.5.1.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Fast type-safe modular arithmetic"
HOMEPAGE="https://github.com/Bodigrim/mod"

LICENSE="MIT"
SLOT="0/${PV}"
KEYWORDS="~amd64"
IUSE="+semirings +vector"

RDEPEND=">=dev-lang/ghc-9.0.2:=
	semirings? ( >=dev-haskell/semirings-0.5:=[profile?] )
	vector? ( dev-haskell/primitive:=[profile?]
			>=dev-haskell/vector-0.12:=[profile?] )
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-3.4.1.0
	test? ( dev-haskell/quickcheck-classes-base
		>=dev-haskell/tasty-0.10
		>=dev-haskell/tasty-quickcheck-0.9 <dev-haskell/tasty-quickcheck-0.11
		semirings? ( >=dev-haskell/quickcheck-classes-0.6.3 )
		vector? ( >=dev-haskell/quickcheck-classes-0.6.3 ) )
"

src_configure() {
	haskell-cabal_src_configure \
		$(cabal_flag semirings semirings) \
		$(cabal_flag vector vector)
}
