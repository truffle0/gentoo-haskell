# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=5

# ebuild generated by hackport 0.4.7.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Validating an email address string against RFC 5322"
HOMEPAGE="http://porg.es/blog/email-address-validation-simpler-faster-more-correct"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=">=dev-haskell/attoparsec-0.10.0:=[profile?]
	>=dev-lang/ghc-7.4.1:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.10
	test? ( >=dev-haskell/hunit-1.2 <dev-haskell/hunit-2
		>=dev-haskell/quickcheck-2.4
		>=dev-haskell/test-framework-0.4.1
		dev-haskell/test-framework-hunit
		dev-haskell/test-framework-quickcheck2 )
"
