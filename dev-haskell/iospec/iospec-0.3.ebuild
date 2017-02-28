# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=5

# ebuild generated by hackport 0.4.5.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit eutils haskell-cabal

MY_PN="IOSpec"
MY_P="${MY_PN}-${PV}"

DESCRIPTION="A pure specification of the IO monad"
HOMEPAGE="http://hackage.haskell.org/package/IOSpec"
SRC_URI="mirror://hackage/packages/archive/${MY_PN}/${PV}/${MY_P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND="dev-haskell/mtl:=[profile?]
	>=dev-haskell/quickcheck-2:2=[profile?] <dev-haskell/quickcheck-3:2=[profile?]
	dev-haskell/stream:=[profile?]
	>=dev-lang/ghc-7.4:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.22.2.0
"

S="${WORKDIR}/${MY_P}"

src_prepare() {
	epatch "${FILESDIR}"/${P}-ghc-7.8.patch
}
