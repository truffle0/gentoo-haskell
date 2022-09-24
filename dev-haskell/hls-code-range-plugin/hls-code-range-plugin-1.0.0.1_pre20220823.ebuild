# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.7.2.2.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="HLS Plugin to support smart selection range"
HOMEPAGE="https://hackage.haskell.org/package/hls-code-range-plugin"

REPO_NAME="haskell-language-server"
REPO_URI="https://github.com/haskell/${REPO_NAME}"
COMMIT="55d90241440c5282b9e60cf80a98fd8698e1f8d9"
BRANCH="master"
SRC_URI="${REPO_URI}/archive/${COMMIT}.tar.gz -> ${REPO_NAME}-${COMMIT}.tar.gz"
S="${WORKDIR}/${REPO_NAME}-${COMMIT}/plugins/${PN}"
CABAL_FILE="${S}/${PN}.cabal"

CABAL_CHDEPS=(
	"version:            1.0.0.0" "version:            1.0.0.1"
)

LICENSE="Apache-2.0"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"

RDEPEND="
	dev-haskell/aeson:=[profile?]
	dev-haskell/extra:=[profile?]
	>=dev-haskell/ghcide-1.6:=[profile?] <dev-haskell/ghcide-1.8:=[profile?]
	dev-haskell/hashable:=[profile?]
	>=dev-haskell/hls-plugin-api-1.3:=[profile?] <dev-haskell/hls-plugin-api-1.5:=[profile?]
	dev-haskell/lens:=[profile?]
	dev-haskell/lsp:=[profile?]
	dev-haskell/semigroupoids:=[profile?]
	dev-haskell/vector:=[profile?]
	>=dev-lang/ghc-8.6.3:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-2.4.0.1
	test? (
		dev-haskell/lsp-test
		dev-haskell/tasty-hunit
		>=dev-haskell/hls-test-utils-1.2 <dev-haskell/hls-test-utils-1.4
	)
"