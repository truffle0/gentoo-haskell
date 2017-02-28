# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

# ebuild generated by hackport 0.5.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="text builder for hoodle file format"
HOMEPAGE="http://hackage.haskell.org/package/hoodle-builder"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=">=dev-haskell/blaze-builder-0.3:=[profile?]
	>=dev-haskell/double-conversion-0.2.0.6:=[profile?]
	>=dev-haskell/hoodle-types-0.4:=[profile?]
	>=dev-haskell/lens-2.5:=[profile?]
	>=dev-haskell/strict-0.3:=[profile?]
	>dev-haskell/text-0.11:=[profile?]
	>=dev-lang/ghc-7.4.1:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.8
"
