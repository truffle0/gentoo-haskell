# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

# ebuild generated by hackport 0.5.4

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="An implementation of the Jinja2 template language in Haskell"
HOMEPAGE="https://bitbucket.org/tdammers/ginger"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="MIT"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND="dev-haskell/aeson:=[profile?]
	dev-haskell/aeson-pretty:=[profile?]
	>=dev-haskell/data-default-0.5:=[profile?]
	dev-haskell/http-types:=[profile?]
	>=dev-haskell/mtl-2.2:=[profile?]
	>=dev-haskell/parsec-3.0:=[profile?]
	>=dev-haskell/safe-0.3:=[profile?]
	>=dev-haskell/scientific-0.3:=[profile?]
	dev-haskell/text:=[profile?]
	>=dev-haskell/unordered-containers-0.2.5:=[profile?]
	dev-haskell/utf8-string:=[profile?]
	dev-haskell/vector:=[profile?]
	>=dev-lang/ghc-7.10.1:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.22.2.0
	test? ( dev-haskell/tasty
		dev-haskell/tasty-hunit
		dev-haskell/tasty-quickcheck )
"
