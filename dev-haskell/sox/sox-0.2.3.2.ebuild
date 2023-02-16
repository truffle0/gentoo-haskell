# Copyright 1999-2023 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.8.0.0.9999
#hackport: flags: -executeshell

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="Play, write, read, convert audio signals using Sox"
HOMEPAGE="https://www.haskell.org/haskellwiki/Sox"

LICENSE="GPL-3"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"

RDEPEND=">=dev-haskell/explicit-exception-0.1.3:=[profile?] <dev-haskell/explicit-exception-0.3:=[profile?]
	>=dev-haskell/extensible-exceptions-0.1.1:=[profile?] <dev-haskell/extensible-exceptions-0.2:=[profile?]
	>=dev-haskell/sample-frame-0.0.1:=[profile?] <dev-haskell/sample-frame-0.1:=[profile?]
	>=dev-haskell/semigroups-0.1:=[profile?] <dev-haskell/semigroups-1.0:=[profile?]
	>=dev-haskell/utility-ht-0.0.5:=[profile?] <dev-haskell/utility-ht-0.1:=[profile?]
	>=dev-lang/ghc-8.4.3:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-2.2.0.1
"

src_configure() {
	haskell-cabal_src_configure \
		--flag=-executeshell
}
