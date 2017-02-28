# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

# ebuild generated by hackport 0.5.1.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="A pagination approach for yesod"
HOMEPAGE="https://github.com/pbrisbin/yesod-paginator"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=">=dev-haskell/persistent-2.0:=[profile?]
	>=dev-haskell/resourcet-0.4.4:=[profile?]
	>=dev-haskell/text-0.11:=[profile?] <dev-haskell/text-2.0:=[profile?]
	>=dev-haskell/yesod-1.4:=[profile?]
	>=dev-lang/ghc-7.8.2:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.18.1.3
	test? ( dev-haskell/data-default
		dev-haskell/hspec
		dev-haskell/wai-extra
		dev-haskell/yesod-core
		dev-haskell/yesod-test )
"
