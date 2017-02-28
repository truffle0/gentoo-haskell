# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

# ebuild generated by hackport 0.5.1.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Shell programming, Haskell-style"
HOMEPAGE="http://hackage.haskell.org/package/turtle"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=">=dev-haskell/ansi-wl-pprint-0.6:=[profile?] <dev-haskell/ansi-wl-pprint-0.7:=[profile?]
	>=dev-haskell/async-2.0.0.0:=[profile?] <dev-haskell/async-2.2:=[profile?]
	>=dev-haskell/clock-0.4.1.2:=[profile?] <dev-haskell/clock-0.8:=[profile?]
	>=dev-haskell/foldl-1.1:=[profile?] <dev-haskell/foldl-1.3:=[profile?]
	<dev-haskell/hostname-1.1:=[profile?]
	>=dev-haskell/managed-1.0.3:=[profile?] <dev-haskell/managed-1.1:=[profile?]
	>=dev-haskell/optional-args-1.0:=[profile?] <dev-haskell/optional-args-2.0:=[profile?]
	>=dev-haskell/optparse-applicative-0.13:=[profile?] <dev-haskell/optparse-applicative-0.14:=[profile?]
	<dev-haskell/stm-2.5:=[profile?]
	>=dev-haskell/system-fileio-0.2.1:=[profile?] <dev-haskell/system-fileio-0.4:=[profile?]
	>=dev-haskell/system-filepath-0.3.1:=[profile?] <dev-haskell/system-filepath-0.5:=[profile?]
	<dev-haskell/temporary-1.3:=[profile?]
	<dev-haskell/text-1.3:=[profile?]
	>=dev-haskell/unix-compat-0.4:=[profile?] <dev-haskell/unix-compat-0.5:=[profile?]
	>=dev-lang/ghc-7.8.2:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.18.1.3
	test? ( >=dev-haskell/doctest-0.7 <dev-haskell/doctest-0.12 )
"
