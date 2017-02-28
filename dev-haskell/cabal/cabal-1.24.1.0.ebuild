# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

# ebuild generated by hackport 0.5.9999
#hackport: flags: -bundled-binary-generic

CABAL_FEATURES="lib profile test-suite"
CABAL_FEATURES+=" nocabaldep" # in case installed Cabal is broken
inherit haskell-cabal

MY_PN="Cabal"
MY_P="${MY_PN}-${PV}"

DESCRIPTION="A framework for packaging Haskell software"
HOMEPAGE="http://www.haskell.org/cabal/"
SRC_URI="mirror://hackage/packages/archive/${MY_PN}/${PV}/${MY_P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~alpha ~amd64 ~ia64 ~ppc ~ppc64 ~sparc ~x86 ~amd64-linux ~x86-linux ~ppc-macos ~x86-macos ~x86-solaris"
IUSE=""

RESTRICT=test # circular dependencies

RDEPEND=">=dev-lang/ghc-7.8.1:="
DEPEND="${RDEPEND}"

S="${WORKDIR}/${MY_P}"

CABAL_CORE_LIB_GHC_PV="PM:8.0.2_rc1"

src_configure() {
	haskell-cabal_src_configure \
		--flag=-bundled-binary-generic
}
