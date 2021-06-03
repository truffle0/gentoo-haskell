# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

# ebuild generated by hackport 0.6.9999
#hackport: flags: -check_alignment,-old_toolchain_inliner,+support_deepseq,support_aesni:cpu_flags_x86_aes,support_pclmuldq:cpu_flags_x86_sse4_1,support_sse:cpu_flags_x86_sse,support_rdrand:cpu_flags_x86_rdrand

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Cryptography Primitives sink"
HOMEPAGE="https://github.com/haskell-crypto/cryptonite"
SRC_URI="https://hackage.haskell.org/package/${P}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE="cpu_flags_x86_rdrand cpu_flags_x86_aes cpu_flags_x86_sse cpu_flags_x86_sse4_1 +integer-gmp"

RDEPEND=">=dev-haskell/basement-0.0.6:=[profile?]
	>=dev-haskell/memory-0.14.14:=[profile?]
	>=dev-lang/ghc-7.6.1:=
	virtual/libc
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.18
	test? ( dev-haskell/tasty
		dev-haskell/tasty-hunit
		dev-haskell/tasty-kat
		dev-haskell/tasty-quickcheck )
"

src_configure() {
	haskell-cabal_src_configure \
		--flag=-check_alignment \
		$(cabal_flag integer-gmp integer-gmp) \
		--flag=-old_toolchain_inliner \
		$(cabal_flag cpu_flags_x86_aes support_aesni) \
		--flag=support_deepseq \
		$(cabal_flag cpu_flags_x86_sse4_1 support_pclmuldq) \
		$(cabal_flag cpu_flags_x86_rdrand support_rdrand) \
		$(cabal_flag cpu_flags_x86_sse support_sse)
}
