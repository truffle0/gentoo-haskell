# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=5

# ebuild generated by hackport 0.3.4.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="The haskell application server stack + reload"
HOMEPAGE="http://happstack.com"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE="tests"

RDEPEND=">=dev-haskell/happstack-server-6:=[profile?]
	>=dev-haskell/mtl-2.0:=[profile?] <dev-haskell/mtl-2.3:=[profile?]
	>=dev-haskell/plugins-auto-0.0:=[profile?] <dev-haskell/plugins-auto-0.1:=[profile?]
	>=dev-haskell/th-lift-0.5:=[profile?]
	>=dev-lang/ghc-7.4.1:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.6
"

src_prepare() {
	cabal_chdeps \
		'template-haskell >= 2.6 && <2.8' 'template-haskell >= 2.6 && <2.9' \
		'happstack-server >= 6   && <7.2' 'happstack-server >= 6' \
		'th-lift          == 0.5.*' 'th-lift          >= 0.5' \
		'mtl              >= 2.0 && <2.2' 'mtl              >= 2.0 && <2.3' \
		'template-haskell >= 2.6 && <2.9' 'template-haskell >= 2.6'
}

src_configure() {
	haskell-cabal_src_configure \
		$(cabal_flag tests tests)
}
