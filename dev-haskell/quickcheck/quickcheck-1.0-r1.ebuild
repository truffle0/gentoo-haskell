# Copyright 1999-2005 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header:  $

CABAL_FEATURES="lib profile haddock"
inherit base haskell-cabal

MY_PN=QuickCheck
GHC_PV=6.6

DESCRIPTION="An automatic, specification based testing utility for Haskell programs"
HOMEPAGE=""
SRC_URI="http://www.haskell.org/ghc/dist/${GHC_PV}/ghc-${GHC_PV}-src-extralibs.tar.bz2"
LICENSE="BSD"
SLOT="0"

KEYWORDS="~x86 ~amd64"
IUSE=""

DEPEND=">=virtual/ghc-6.6"

S="${WORKDIR}/ghc-${GHC_PV}/libraries/${MY_PN}"
