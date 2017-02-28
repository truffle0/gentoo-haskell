# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

# ebuild generated by hackport 0.5

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="relational-record on persisten backends"
HOMEPAGE="https://github.com/himura/persistent-relational-record"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE="test-examples"

RDEPEND=">=dev-haskell/conduit-1.0:=[profile?]
	dev-haskell/mtl:=[profile?]
	>=dev-haskell/persistable-record-0.4:=[profile?]
	>=dev-haskell/persistent-2.1:=[profile?]
	>=dev-haskell/relational-query-0.8.1:=[profile?]
	>=dev-haskell/resourcet-1.1:=[profile?]
	>=dev-haskell/text-0.8:=[profile?]
	>=dev-lang/ghc-7.8.2:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.18.1.3
	test? ( >=dev-haskell/hlint-1.7
		dev-haskell/hunit
		dev-haskell/persistent-template
		dev-haskell/test-framework
		dev-haskell/test-framework-hunit
		dev-haskell/test-framework-th
		test-examples? ( dev-haskell/monad-logger
					dev-haskell/persistent-mysql
					dev-haskell/transformers-base ) )
"

src_configure() {
	haskell-cabal_src_configure \
		$(cabal_flag test-examples test-examples)
}
