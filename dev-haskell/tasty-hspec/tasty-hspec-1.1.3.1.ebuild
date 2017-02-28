# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

# ebuild generated by hackport 0.5.1.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="Hspec support for the Tasty test framework"
HOMEPAGE="https://github.com/mitchellwrosen/tasty-hspec"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=">=dev-haskell/hspec-2:=[profile?] <dev-haskell/hspec-2.5:=[profile?]
	>=dev-haskell/hspec-core-2:=[profile?] <dev-haskell/hspec-core-2.5:=[profile?]
	>=dev-haskell/quickcheck-2.7:2=[profile?]
	dev-haskell/random:=[profile?]
	>=dev-haskell/tagged-0.7:=[profile?]
	>=dev-haskell/tasty-0.8:=[profile?]
	>=dev-haskell/tasty-quickcheck-0.3:=[profile?]
	>=dev-haskell/tasty-smallcheck-0.1:=[profile?]
	>=dev-lang/ghc-7.4.1:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.10
"
