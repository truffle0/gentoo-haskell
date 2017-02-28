# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=5

# ebuild generated by hackport 0.4.3.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="A Lua language interpreter embedding in Haskell"
HOMEPAGE="http://hackage.haskell.org/package/hslua"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="MIT"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE="apicheck system-lua"

RDEPEND=">=dev-haskell/mtl-2.1:=[profile?]
	>=dev-lang/ghc-7.4.1:=
	system-lua? ( dev-lang/lua )
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.8
	system-lua? ( virtual/pkgconfig )
"

src_configure() {
	haskell-cabal_src_configure \
		$(cabal_flag apicheck apicheck) \
		$(cabal_flag system-lua system-lua)
}
