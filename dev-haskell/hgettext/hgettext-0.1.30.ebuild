# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

# ebuild generated by hackport 0.3.6.9999

CABAL_FEATURES="bin lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="Bindings to libintl.h (gettext, bindtextdomain)"
HOMEPAGE="https://github.com/vasylp/hgettext"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="amd64 x86"
IUSE=""

RDEPEND=">=dev-haskell/cabal-1.10:=[profile?]
	dev-haskell/haskell-src-exts:=[profile?]
	dev-haskell/setlocale:=[profile?]
	dev-haskell/uniplate:=[profile?]
	>=dev-lang/ghc-6.10.4:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.6.0.3
"

PATCHES=("${FILESDIR}"/${P}-hse-1.18.patch)
