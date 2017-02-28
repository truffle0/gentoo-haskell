# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

# ebuild generated by hackport 0.5.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Parsing and pretty-printing Bash shell scripts"
HOMEPAGE="https://github.com/knrafto/language-bash/"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=">=dev-haskell/parsec-3.0:=[profile?] <dev-haskell/parsec-4.0:=[profile?]
	>=dev-lang/ghc-7.8.2:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.18.1.3
	test? ( dev-haskell/quickcheck
		dev-haskell/tasty
		dev-haskell/tasty-expected-failure
		dev-haskell/tasty-hunit
		dev-haskell/tasty-quickcheck )
"

PATCHES=("${FILESDIR}"/${PN}-0.6.1-ghc-8.patch)
