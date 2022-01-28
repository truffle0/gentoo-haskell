# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.7.9999
#hackport: flags: -ghci-data-files

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Generate HTML docs from a dhall package"
HOMEPAGE="https://dhall-lang.org/
	https://hackage.haskell.org/package/dhall-docs"
SRC_URI="https://hackage.haskell.org/package/${P}/${P}.tar.gz
	https://hackage.haskell.org/package/${P}/revision/2.cabal -> ${PF}.cabal"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"

RDEPEND="<dev-haskell/cryptonite-0.30:=[profile?]
	>=dev-haskell/file-embed-0.0.10.0:=[profile?]
	>=dev-haskell/lens-family-core-1.0.0:=[profile?] <dev-haskell/lens-family-core-2.2:=[profile?]
	>=dev-haskell/lucid-2.9.12:=[profile?]
	>=dev-haskell/megaparsec-7:=[profile?] <dev-haskell/megaparsec-9.3:=[profile?]
	<dev-haskell/memory-0.17:=[profile?]
	>=dev-haskell/mmark-0.0.7.0:=[profile?] <dev-haskell/mmark-0.8:=[profile?]
	>=dev-haskell/mtl-2.2.1:=[profile?] <dev-haskell/mtl-2.3:=[profile?]
	>=dev-haskell/optparse-applicative-0.14.0.0:=[profile?] <dev-haskell/optparse-applicative-0.17:=[profile?]
	>=dev-haskell/path-0.7.0:=[profile?] <dev-haskell/path-0.10:=[profile?]
	>=dev-haskell/path-io-1.6.0:=[profile?] <dev-haskell/path-io-1.7:=[profile?]
	>=dev-haskell/prettyprinter-1.5.1:=[profile?] <dev-haskell/prettyprinter-1.8:=[profile?]
	>=dev-haskell/text-0.11.1.0:=[profile?] <dev-haskell/text-1.3:=[profile?]
	>=dev-lang/dhall-1.38.0:=[profile?] <dev-lang/dhall-1.41:=[profile?]
	>=dev-lang/ghc-8.4.3:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-2.2.0.1
	test? ( >=dev-haskell/doctest-0.7.0 <dev-haskell/doctest-0.19 )"
#		<dev-haskell/foldl-1.5
#		dev-haskell/hashable
#		<dev-haskell/tasty-1.5
#		>=dev-haskell/tasty-hunit-0.10 <dev-haskell/tasty-hunit-0.11
#		<dev-haskell/tasty-silver-3.4
#		<dev-haskell/turtle-1.6 )

PATCHES=(
	"${FILESDIR}/${PN}-1.0.7-package-imports.patch"
	"${FILESDIR}/${PN}-1.0.7-disable-tasty-tests.patch"
)

src_prepare() {
	cp -v "${DISTDIR}/${PF}.cabal" "${S}/${PN}.cabal" || die

	cabal_chdeps \
		'lucid                >= 2.9.12    && < 2.10' 'lucid >=2.9.12'

	default
}

src_configure() {
	haskell-cabal_src_configure \
		--flag=-ghci-data-files
}