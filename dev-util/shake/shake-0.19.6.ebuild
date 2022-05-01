# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.7.1.1.9999
#hackport: flags: -cloud,-portable

CABAL_FEATURES="lib profile haddock hoogle hscolour" # test-suite
inherit haskell-cabal
RESTRICT="test" # Tests give error, will need investigation

DESCRIPTION="Build system library, like Make, but more accurate dependencies"
HOMEPAGE="https://shakebuild.com"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE="embed-files"

RDEPEND=">=dev-haskell/extra-1.6.19:=[profile?]
	dev-haskell/filepattern:=[profile?]
	>=dev-haskell/hashable-1.1.2.3:=[profile?]
	>=dev-haskell/heaps-0.3.6.1:=[profile?]
	dev-haskell/js-dgtable:=[profile?]
	dev-haskell/js-flot:=[profile?]
	dev-haskell/js-jquery:=[profile?]
	dev-haskell/primitive:=[profile?]
	dev-haskell/random:=[profile?]
	>=dev-haskell/unordered-containers-0.2.7:=[profile?]
	>=dev-haskell/utf8-string-0.3:=[profile?]
	>=dev-lang/ghc-8.4.3:=
	embed-files? ( >=dev-haskell/file-embed-0.0.11:=[profile?] )
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-2.2.0.1
"

src_configure() {
	haskell-cabal_src_configure \
		--flag=-cloud \
		$(cabal_flag embed-files embed-files) \
		--flag=-portable
}