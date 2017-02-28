# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=5

# ebuild generated by hackport 0.4.4.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="Haskell suite library for package management and integration with Cabal"
HOMEPAGE="http://documentup.com/haskell-suite/haskell-packages"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="MIT"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=">=dev-haskell/aeson-0.6:=[profile?]
	>=dev-haskell/cabal-1.14:=[profile?] <=dev-haskell/cabal-1.20.0.2:=[profile?]
	>=dev-haskell/haskell-src-exts-1.14:=[profile?]
	dev-haskell/hse-cpp:=[profile?]
	>=dev-haskell/mtl-2.1:=[profile?]
	>=dev-haskell/optparse-applicative-0.11:=[profile?]
	dev-haskell/tagged:=[profile?]
	>=dev-haskell/transformers-0.3:=[profile?]
	>=dev-haskell/transformers-compat-0.3:=[profile?]
	>=dev-lang/ghc-7.4.1:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.10
"
