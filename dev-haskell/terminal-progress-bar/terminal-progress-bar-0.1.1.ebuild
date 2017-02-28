# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

# ebuild generated by hackport 0.5.1
#hackport: flags: example:examples

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="A simple progress bar in the terminal"
HOMEPAGE="https://github.com/roelvandijk/terminal-progress-bar"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE="examples"

RDEPEND=">=dev-haskell/stm-2.4:=[profile?] <dev-haskell/stm-3.0:=[profile?]
	>=dev-haskell/stm-chans-3.0.0:=[profile?] <dev-haskell/stm-chans-4.0:=[profile?]
	>=dev-lang/ghc-7.4.1:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.10
	test? ( >=dev-haskell/hunit-1.2.4.2 <dev-haskell/hunit-1.4
		>=dev-haskell/test-framework-0.3.3 <dev-haskell/test-framework-0.9
		>=dev-haskell/test-framework-hunit-0.2.6 <dev-haskell/test-framework-hunit-0.4 )
"

src_prepare() {
	default

	cabal_chdeps \
		'terminal-progress-bar == 0.1.0' 'terminal-progress-bar'
}

src_configure() {
	haskell-cabal_src_configure \
		$(cabal_flag examples example)
}
