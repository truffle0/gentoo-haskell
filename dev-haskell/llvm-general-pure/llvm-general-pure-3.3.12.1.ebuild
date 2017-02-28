# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=5

# ebuild generated by hackport 0.4.2.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Pure Haskell LLVM functionality (no FFI)"
HOMEPAGE="http://hackage.haskell.org/package/llvm-general-pure"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""
RESTRICT=test # missing files

RDEPEND=">=dev-haskell/mtl-2.0.1.0:=[profile?]
	>=dev-haskell/parsec-3.1.3:=[profile?]
	>=dev-haskell/setenv-0.1.0:=[profile?]
	>=dev-haskell/transformers-0.3.0.0:=[profile?]
	>=dev-lang/ghc-7.4.1:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.8
	test? ( >=dev-haskell/hunit-1.2.4.2
		>=dev-haskell/quickcheck-2.5.1.1
		>=dev-haskell/test-framework-0.5
		>=dev-haskell/test-framework-hunit-0.2.7
		>=dev-haskell/test-framework-quickcheck2-0.3.0.1 )
"
