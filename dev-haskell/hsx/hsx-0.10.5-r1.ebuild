# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=5

# ebuild generated by hackport 0.3.3.9999

CABAL_FEATURES="bin lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="HSX (Haskell Source with XML) allows literal XML syntax in Haskell source code"
HOMEPAGE="http://patch-tag.com/r/nibro/hsx"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE="+base4"

RDEPEND=">=dev-haskell/haskell-src-exts-1.13:=[profile?] <dev-haskell/haskell-src-exts-1.16:=[profile?]
	dev-haskell/mtl:=[profile?]
	dev-haskell/utf8-string:=[profile?]
	>=dev-lang/ghc-6.10.4:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.6.0.3
"
src_prepare() {
	epatch "${FILESDIR}"/${P}-haskell-src-exts.patch
	epatch "${FILESDIR}"/${P}-haskell-src-exts-2.patch
	cabal_chdeps \
		'haskell-src-exts >= 1.13 && < 1.14' \
		'haskell-src-exts >= 1.13 && < 1.16'
}

src_configure() {
	haskell-cabal_src_configure \
		$(cabal_flag base4 base4)
}
