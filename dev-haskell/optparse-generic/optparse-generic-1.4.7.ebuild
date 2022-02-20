# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.7.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="Auto-generate a command-line parser for your datatype"
HOMEPAGE="https://hackage.haskell.org/package/optparse-generic"
SRC_URI="https://hackage.haskell.org/package/${P}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"

RDEPEND="<dev-haskell/only-0.2:=[profile?]
	>=dev-haskell/optparse-applicative-0.16.0.0:=[profile?] <dev-haskell/optparse-applicative-0.18:=[profile?]
	>=dev-haskell/system-filepath-0.3.1:=[profile?] <dev-haskell/system-filepath-0.5:=[profile?]
	<dev-haskell/text-2.1:=[profile?]
	>=dev-haskell/transformers-compat-0.3:=[profile?] <dev-haskell/transformers-compat-0.8:=[profile?]
	<dev-haskell/void-0.8:=[profile?]
	>=dev-lang/ghc-8.4.3:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-2.2.0.1
"