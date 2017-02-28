# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

# ebuild generated by hackport 0.5.1.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="Asynchronous DNS Resolver"
HOMEPAGE="https://github.com/peti/hsdns"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="LGPL-3"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=">=dev-haskell/network-2.6.3.0:=[profile?]
	>=dev-lang/ghc-7.4.1:=
	net-libs/adns
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.8
"
