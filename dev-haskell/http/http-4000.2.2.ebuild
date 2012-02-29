# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header:  $

# ebuild generated by hackport 0.2.13

EAPI="3"

CABAL_FEATURES="lib profile haddock hscolour hoogle"
inherit base haskell-cabal

MY_PN="HTTP"
MY_P="${MY_PN}-${PV}"

DESCRIPTION="A library for client-side HTTP"
HOMEPAGE="https://github.com/haskell/HTTP"
SRC_URI="http://hackage.haskell.org/packages/archive/${MY_PN}/${PV}/${MY_P}.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~alpha ~amd64 ~ia64 ~ppc ~ppc64 ~sparc ~x86 ~x86-fbsd ~ppc-macos ~x86-macos"
IUSE="test"

RDEPEND="=dev-haskell/mtl-2.0*
		dev-haskell/network
		dev-haskell/parsec
		>=dev-lang/ghc-6.8.2"
DEPEND="${RDEPEND}
		>=dev-haskell/cabal-1.8
		test? ( >=dev-haskell/cabal-1.10
			dev-haskell/hunit
			dev-haskell/httpd-shed
			=dev-haskell/split-0.1*
			dev-haskell/test-framework
			dev-haskell/test-framework-hunit
		)
		"

S="${WORKDIR}/${MY_P}"

src_configure() {
	cabal_src_configure $(use test && use_enable test tests) #395351
}
