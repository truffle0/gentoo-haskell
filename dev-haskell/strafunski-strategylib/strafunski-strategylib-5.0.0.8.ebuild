# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=5

# ebuild generated by hackport 0.4.6.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

MY_PN="Strafunski-StrategyLib"
MY_P="${MY_PN}-${PV}"

DESCRIPTION="Library for strategic programming"
HOMEPAGE="http://hackage.haskell.org/package/Strafunski-StrategyLib"
SRC_URI="mirror://hackage/packages/archive/${MY_PN}/${PV}/${MY_P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=">dev-haskell/mtl-2.2:=[profile?]
	>dev-haskell/syb-0.3:=[profile?]
	>=dev-haskell/transformers-0.2:=[profile?]
	>=dev-lang/ghc-7.4.1:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.8
"

S="${WORKDIR}/${MY_P}"

src_prepare() {
	cabal_chdeps \
		'base > 4.4 && < 4.9' 'base > 4.4'
}
