# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

# ebuild generated by hackport 0.5

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Marking text regions"
HOMEPAGE="https://github.com/mvoidex/text-region"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=">=dev-haskell/aeson-0.9:=[profile?]
	>=dev-haskell/base-unicode-symbols-0.2:=[profile?]
	>=dev-haskell/groups-0.4.0:=[profile?]
	>=dev-haskell/lens-4.12:=[profile?]
	>=dev-haskell/mtl-2.2:=[profile?]
	>=dev-haskell/text-1.2.1:=[profile?]
	>=dev-lang/ghc-7.10.1:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.22.2.0
	test? ( dev-haskell/hspec )
"
