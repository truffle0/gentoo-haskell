# Copyright 1999-2024 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.8.5.1.9999

CABAL_HACKAGE_REVISION=1

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Template Haskell code to generate instances of classes in some package"
HOMEPAGE="https://github.com/obsidiansystems/dependent-sum-template"

LICENSE="public-domain"
SLOT="0/${PV}"
KEYWORDS="~amd64"

RDEPEND="
	>=dev-haskell/some-1.0.1:=[profile?] <dev-haskell/some-1.1
	>=dev-haskell/th-abstraction-0.4:=[profile?]
	>=dev-lang/ghc-9.0.2:=
"
DEPEND="
	${RDEPEND}
	>=dev-haskell/cabal-3.4.1.0
	test? (
		dev-haskell/constraints-extras
	)
"