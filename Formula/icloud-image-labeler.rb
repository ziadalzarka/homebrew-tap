class IcloudImageLabeler < Formula
  include Language::Python::Virtualenv

  desc "macOS CLI tool that auto-labels iCloud Photos using any OpenAI-compatible LLM"
  homepage "https://github.com/ziadalzarka/icloud-image-labeler"
  url "https://files.pythonhosted.org/packages/4b/6f/4f9b618646c9bfb83bfedd930b9fae294318647efaf428d688d2b12dee46/icloud_image_labeler-0.1.2.tar.gz"
  sha256 "f8fb62e781688423e98cd67d8b8abf791198cd2c59508fc4a42e94796d3109c5"
  license "MIT"

  depends_on :macos
  depends_on "python@3.11"
  depends_on "ffmpeg"
  depends_on "jpeg-turbo"
  depends_on "libheif"
  depends_on "libtiff"
  depends_on "little-cms2"
  depends_on "rust" => :build

  resource "aiofiles" do
    url "https://files.pythonhosted.org/packages/41/c3/534eac40372d8ee36ef40df62ec129bee4fdb5ad9706e58a29be53b2c970/aiofiles-25.1.0.tar.gz"
    sha256 "a8d728f0a29de45dc521f18f07297428d56992a742f0cd2701ba86e44d23d5b2"
  end

  resource "annotated-types" do
    url "https://files.pythonhosted.org/packages/ee/67/531ea369ba64dcff5ec9c3402f9f51bf748cec26dde048a2f973a4eea7f5/annotated_types-0.7.0.tar.gz"
    sha256 "aff07c09a53a08bc8cfccb9c85b05f1aa9a2a6f23728d790723543408344ce89"
  end

  resource "anyio" do
    url "https://files.pythonhosted.org/packages/96/f0/5eb65b2bb0d09ac6776f2eb54adee6abe8228ea05b20a5ad0e4945de8aac/anyio-4.12.1.tar.gz"
    sha256 "41cfcc3a4c85d3f05c932da7c26d0201ac36f72abd4435ba90d0464a3ffed703"
  end

  resource "appdirs" do
    url "https://files.pythonhosted.org/packages/d7/d8/05696357e0311f5b5c316d7b95f46c669dd9c15aaeecbb48c7d0aeb88c40/appdirs-1.4.4.tar.gz"
    sha256 "7d5d0167b2b1ba821647616af46a749d1c653740dd0d2415100fe26e27afdf41"
  end

  resource "Arpeggio" do
    url "https://files.pythonhosted.org/packages/3b/58/ba011f3cf8291804ce80f9d81289ac15f0319a27f9d7e3c124aa5e4981cc/Arpeggio-2.0.3.tar.gz"
    sha256 "9e85ad35cfc6c938676817c7ae9a1000a7c72a34c71db0c687136c460d12b85e"
  end

  resource "asgi-csrf" do
    url "https://files.pythonhosted.org/packages/0a/59/2b54a274b9c9cbe1c0edbe5d324925ffd88a31567fb50dc2138e0160bdef/asgi_csrf-0.11.tar.gz"
    sha256 "e19a4f87d5af3feabde04c57921ee15510c3bfb0565627df9cb20bcb303282c2"
  end

  resource "asgiref" do
    url "https://files.pythonhosted.org/packages/63/40/f03da1264ae8f7cfdbf9146542e5e7e8100a4c66ab48e791df9a03d3f6c0/asgiref-3.11.1.tar.gz"
    sha256 "5f184dc43b7e763efe848065441eac62229c9f7b0475f41f80e207a114eda4ce"
  end

  resource "beautifulsoup4" do
    url "https://files.pythonhosted.org/packages/c3/b0/1c6a16426d389813b48d95e26898aff79abbde42ad353958ad95cc8c9b21/beautifulsoup4-4.14.3.tar.gz"
    sha256 "6292b1c5186d356bba669ef9f7f051757099565ad9ada5dd630bd9de5fa7fb86"
  end

  resource "bitarray" do
    url "https://files.pythonhosted.org/packages/95/06/92fdc84448d324ab8434b78e65caf4fb4c6c90b4f8ad9bdd4c8021bfaf1e/bitarray-3.8.0.tar.gz"
    sha256 "3eae38daffd77c9621ae80c16932eea3fb3a4af141fb7cc724d4ad93eff9210d"
  end

  resource "bitmath" do
    url "https://files.pythonhosted.org/packages/ec/ec/808245570e00df2e1fe8252903da309f18eb58768f44fecc0215dafbc386/bitmath-1.3.3.1.tar.gz"
    sha256 "293325f01e65defe966853111df11d39215eb705a967cb115851da8c4cfa3eb8"
  end

  resource "bitstring" do
    url "https://files.pythonhosted.org/packages/15/a8/a80c890db75d5bdd5314b5de02c4144c7de94fd0cefcae51acaeb14c6a3f/bitstring-4.3.1.tar.gz"
    sha256 "a08bc09d3857216d4c0f412a1611056f1cc2b64fd254fb1e8a0afba7cfa1a95a"
  end

  resource "blessed" do
    url "https://files.pythonhosted.org/packages/0e/e6/f02d17a5ac70ca2d5794b105b8d8e9b5513e8b15ca6955440c0dbc90f363/blessed-1.17.12.tar.gz"
    sha256 "580429e7e0c6f6a42ea81b0ae5a4993b6205c6ccbb635d034b4277af8175753e"
  end

  resource "bpylist2" do
    url "https://files.pythonhosted.org/packages/ca/34/eb90ff6be953f6e4df08d4e8c0b761bea144242b6d711e922113411cc631/bpylist2-4.1.1.tar.gz"
    sha256 "0cc63284aee42f5c7e0ec87f8f59cdd35aaed05ad12d866b1868ea0c0caaafe1"
  end

  resource "certifi" do
    url "https://files.pythonhosted.org/packages/af/2d/7bf41579a8986e348fa033a31cdd0e4121114f6bce2457e8876010b092dd/certifi-2026.2.25.tar.gz"
    sha256 "e887ab5cee78ea814d3472169153c2d12cd43b14bd03329a39a9c6e2e80bfba7"
  end

  resource "cffi" do
    url "https://files.pythonhosted.org/packages/eb/56/b1ba7935a17738ae8453301356628e8147c79dbb825bcbc73dc7401f9846/cffi-2.0.0.tar.gz"
    sha256 "44d1b5909021139fe36001ae048dbdde8214afa20200eda0f64c068cac5d5529"
  end

  resource "cgmetadata" do
    url "https://files.pythonhosted.org/packages/27/30/c0d164d67d8611eafb93329921884f46763a725533f05fa47e682c5c5aa5/cgmetadata-0.2.0.tar.gz"
    sha256 "f6805dcb107bed1c736b3f0869c043637ffd8f8956b9bc7b4de6aa6e2876f5cf"
  end

  resource "charset-normalizer" do
    url "https://files.pythonhosted.org/packages/1d/35/02daf95b9cd686320bb622eb148792655c9412dbb9b67abb5694e5910a24/charset_normalizer-3.4.5.tar.gz"
    sha256 "95adae7b6c42a6c5b5b559b1a99149f090a57128155daeea91732c8d970d8644"
  end

  resource "click" do
    url "https://files.pythonhosted.org/packages/3d/fa/656b739db8587d7b5dfa22e22ed02566950fbfbcdc20311993483657a5c0/click-8.3.1.tar.gz"
    sha256 "12ff4785d337a1bb490bb7e9c2b1ee5da3112e94a8622f26a6c77f5d2fc6842a"
  end

  resource "click-default-group" do
    url "https://files.pythonhosted.org/packages/1d/ce/edb087fb53de63dad3b36408ca30368f438738098e668b78c87f93cd41df/click_default_group-1.2.4.tar.gz"
    sha256 "eb3f3c99ec0d456ca6cd2a7f08f7d4e91771bef51b01bdd9580cc6450fe1251e"
  end

  resource "datasette" do
    url "https://files.pythonhosted.org/packages/80/26/80b5480921d71891b8ff880fed6d44150b9164903d683efe2eb7405b61d8/datasette-0.65.2.tar.gz"
    sha256 "be956fb2633b8380d7f818b5ddab40d5c7346d5e9d4d24e81c43b1fb60267432"
  end

  resource "distro" do
    url "https://files.pythonhosted.org/packages/fc/f8/98eea607f65de6527f8a2e8885fc8015d3e6f5775df186e443e0964a11c3/distro-1.9.0.tar.gz"
    sha256 "2fa77c6fd8940f116ee1d6b94a2f90b13b5ea8d019b98bc8bafdcabcdd9bdbed"
  end

  resource "flexcache" do
    url "https://files.pythonhosted.org/packages/55/b0/8a21e330561c65653d010ef112bf38f60890051d244ede197ddaa08e50c1/flexcache-0.3.tar.gz"
    sha256 "18743bd5a0621bfe2cf8d519e4c3bfdf57a269c15d1ced3fb4b64e0ff4600656"
  end

  resource "flexparser" do
    url "https://files.pythonhosted.org/packages/82/99/b4de7e39e8eaf8207ba1a8fa2241dd98b2ba72ae6e16960d8351736d8702/flexparser-0.4.tar.gz"
    sha256 "266d98905595be2ccc5da964fe0a2c3526fbbffdc45b65b3146d75db992ef6b2"
  end

  resource "h11" do
    url "https://files.pythonhosted.org/packages/01/ee/02a2c011bdab74c6fb3c75474d40b3052059d95df7e73351460c8588d963/h11-0.16.0.tar.gz"
    sha256 "4e35b956cf45792e4caa5885e69fba00bdbc6ffafbfa020300e549b208ee5ff1"
  end

  resource "httpcore" do
    url "https://files.pythonhosted.org/packages/06/94/82699a10bca87a5556c9c59b5963f2d039dbd239f25bc2a63907a05a14cb/httpcore-1.0.9.tar.gz"
    sha256 "6e34463af53fd2ab5d807f399a9b45ea31c3dfa2276f15a2c3f00afff6e176e8"
  end

  resource "httpx" do
    url "https://files.pythonhosted.org/packages/b1/df/48c586a5fe32a0f01324ee087459e112ebb7224f646c0b5023f5e79e9956/httpx-0.28.1.tar.gz"
    sha256 "75e98c5f16b0f35b567856f597f06ff2270a374470a5c2392242528e3e3e42fc"
  end

  resource "hupper" do
    url "https://files.pythonhosted.org/packages/bd/e6/bb064537288eee2be97f3e0fcad8e7242bc5bbe9664ae57c7d29b3fa18c2/hupper-1.12.1.tar.gz"
    sha256 "06bf54170ff4ecf4c84ad5f188dee3901173ab449c2608ad05b9bfd6b13e32eb"
  end

  resource "icloud-image-labeler" do
    url "https://files.pythonhosted.org/packages/4b/6f/4f9b618646c9bfb83bfedd930b9fae294318647efaf428d688d2b12dee46/icloud_image_labeler-0.1.2.tar.gz"
    sha256 "f8fb62e781688423e98cd67d8b8abf791198cd2c59508fc4a42e94796d3109c5"
  end

  resource "idna" do
    url "https://files.pythonhosted.org/packages/6f/6d/0703ccc57f3a7233505399edb88de3cbd678da106337b9fcde432b65ed60/idna-3.11.tar.gz"
    sha256 "795dafcc9c04ed0c1fb032c2aa73654d8e8c5023a7df64a53f39190ada629902"
  end

  resource "itsdangerous" do
    url "https://files.pythonhosted.org/packages/9c/cb/8ac0172223afbccb63986cc25049b154ecfb5e85932587206f42317be31d/itsdangerous-2.2.0.tar.gz"
    sha256 "e0050c0b7da1eea53ffaf149c0cfbb5c6e2e2b69c4bef22c81fa6eb73e5f6173"
  end

  resource "janus" do
    url "https://files.pythonhosted.org/packages/d8/7f/69884b6618be4baf6ebcacc716ee8680a842428a19f403db6d1c0bb990aa/janus-2.0.0.tar.gz"
    sha256 "0970f38e0e725400496c834a368a67ee551dc3b5ad0a257e132f5b46f2e77770"
  end

  resource "jedi" do
    url "https://files.pythonhosted.org/packages/72/3a/79a912fbd4d8dd6fbb02bf69afd3bb72cf0c729bb3063c6f4498603db17a/jedi-0.19.2.tar.gz"
    sha256 "4770dc3de41bde3966b02eb84fbcf557fb33cce26ad23da12c742fb50ecb11f0"
  end

  resource "Jinja2" do
    url "https://files.pythonhosted.org/packages/df/bf/f7da0350254c0ed7c72f3e33cef02e048281fec7ecec5f032d4aac52226b/jinja2-3.1.6.tar.gz"
    sha256 "0137fb05990d35f1275a587e9aee6d56da821fc83491a0fb838183be43f66d6d"
  end

  resource "jiter" do
    url "https://files.pythonhosted.org/packages/0d/5e/4ec91646aee381d01cdb9974e30882c9cd3b8c5d1079d6b5ff4af522439a/jiter-0.13.0.tar.gz"
    sha256 "f2839f9c2c7e2dffc1bc5929a510e14ce0a946be9365fd1219e7ef342dae14f4"
  end

  resource "mac-alias" do
    url "https://files.pythonhosted.org/packages/fb/c9/2c28b2ea968a6bbc4327c0360b746fda3757cb11cf287d00078cf81a27e2/mac_alias-2.2.3.tar.gz"
    sha256 "1c7fa367687d66979f2ce4d1a8b2716cf1c9fb811741cab3cf3ca356555c2beb"
  end

  resource "makelive" do
    url "https://files.pythonhosted.org/packages/46/51/a546b6bad0f498fc0723fae6c336c3b73e5e47cffa2b3f83dcd966c084da/makelive-0.6.2.tar.gz"
    sha256 "df02b715116e462a3e7316517eb91b8f9a1dbad1d6d41352fd562f44a168e858"
  end

  resource "Mako" do
    url "https://files.pythonhosted.org/packages/9e/38/bd5b78a920a64d708fe6bc8e0a2c075e1389d53bef8413725c63ba041535/mako-1.3.10.tar.gz"
    sha256 "99579a6f39583fa7e5630a28c3c1f440e4e97a414b80372649c0ce338da2ea28"
  end

  resource "markdown-it-py" do
    url "https://files.pythonhosted.org/packages/5b/f5/4ec618ed16cc4f8fb3b701563655a69816155e79e24a17b651541804721d/markdown_it_py-4.0.0.tar.gz"
    sha256 "cb0a2b4aa34f932c007117b194e945bd74e0ec24133ceb5bac59009cda1cb9f3"
  end

  resource "markdown2" do
    url "https://files.pythonhosted.org/packages/e4/ae/07d4a5fcaa5509221287d289323d75ac8eda5a5a4ac9de2accf7bbcc2b88/markdown2-2.5.5.tar.gz"
    sha256 "001547e68f6e7fcf0f1cb83f7e82f48aa7d48b2c6a321f0cd20a853a8a2d1664"
  end

  resource "MarkupSafe" do
    url "https://files.pythonhosted.org/packages/7e/99/7690b6d4034fffd95959cbe0c02de8deb3098cc577c67bb6a24fe5d7caa7/markupsafe-3.0.3.tar.gz"
    sha256 "722695808f4b6457b320fdc131280796bdceb04ab50fe1795cd540799ebe1698"
  end

  resource "mdurl" do
    url "https://files.pythonhosted.org/packages/d6/54/cfe61301667036ec958cb99bd3efefba235e65cdeb9c84d24a8293ba1d90/mdurl-0.1.2.tar.gz"
    sha256 "bb413d29f5eea38f31dd4754dd7377d4465116fb207585f97bf925588687c1ba"
  end

  resource "mergedeep" do
    url "https://files.pythonhosted.org/packages/3a/41/580bb4006e3ed0361b8151a01d324fb03f420815446c7def45d02f74c270/mergedeep-1.3.4.tar.gz"
    sha256 "0096d52e9dad9939c3d975a774666af186eda617e6ca84df4c94dec30004f2a8"
  end

  resource "more-itertools" do
    url "https://files.pythonhosted.org/packages/ea/5d/38b681d3fce7a266dd9ab73c66959406d565b3e85f21d5e66e1181d93721/more_itertools-10.8.0.tar.gz"
    sha256 "f638ddf8a1a0d134181275fb5d58b086ead7c6a72429ad725c67503f13ba30bd"
  end

  resource "objexplore" do
    url "https://files.pythonhosted.org/packages/3b/a4/a3d92448b0319782a8578fcba0a00cc3e3335224fcf753d48f00ae948abf/objexplore-1.6.3.tar.gz"
    sha256 "8298ea17d66084b3ad6e04239da19d7051f2a80669b5c0118f7fb9b854ba6370"
  end

  resource "openai" do
    url "https://files.pythonhosted.org/packages/d7/91/2a06c4e9597c338cac1e5e5a8dd6f29e1836fc229c4c523529dca387fda8/openai-2.26.0.tar.gz"
    sha256 "b41f37c140ae0034a6e92b0c509376d907f3a66109935fba2c1b471a7c05a8fb"
  end

  resource "osxmetadata" do
    url "https://files.pythonhosted.org/packages/d4/35/5a786c117a1b1c7f3217cfd679cca9b8bfcd960bf963531d34efd0aaf0d8/osxmetadata-1.4.1.tar.gz"
    sha256 "1e33935d8777f96808a2742d43064c9d6672148ff0b19f5713629c2de1fab795"
  end

  resource "osxphotos" do
    url "https://files.pythonhosted.org/packages/b7/c2/152973a11fe205ad1bfe7860a9fb9a9e097294b47f1086b856844a4aa79e/osxphotos-0.75.6.tar.gz"
    sha256 "76773d09199fcf98dbd2aa915b82d6df791e8e91c8dadf0f47b93b644ad01b7e"
  end

  resource "packaging" do
    url "https://files.pythonhosted.org/packages/65/ee/299d360cdc32edc7d2cf530f3accf79c4fca01e96ffc950d8a52213bd8e4/packaging-26.0.tar.gz"
    sha256 "00243ae351a257117b6a241061796684b084ed1c516a08c48a3f7e147a9d80b4"
  end

  resource "parso" do
    url "https://files.pythonhosted.org/packages/81/76/a1e769043c0c0c9fe391b702539d594731a4362334cdf4dc25d0c09761e7/parso-0.8.6.tar.gz"
    sha256 "2b9a0332696df97d454fa67b81618fd69c35a7b90327cbe6ba5c92d2c68a7bfd"
  end

  resource "pathvalidate" do
    url "https://files.pythonhosted.org/packages/fa/2a/52a8da6fe965dea6192eb716b357558e103aea0a1e9a8352ad575a8406ca/pathvalidate-3.3.1.tar.gz"
    sha256 "b18c07212bfead624345bb8e1d6141cdcf15a39736994ea0b94035ad2b1ba177"
  end

  resource "photoscript" do
    url "https://files.pythonhosted.org/packages/b9/b8/55ef5e2285c8effe52d48ca053672b4a25bdc5c96e4666d187fa7deb95d3/photoscript-0.5.3.tar.gz"
    sha256 "4d54bb99866f2450903be9f4996f311097d816e26dfae55c541f2ef58fc745dd"
  end

  resource "pillow" do
    url "https://files.pythonhosted.org/packages/1f/42/5c74462b4fd957fcd7b13b04fb3205ff8349236ea74c7c375766d6c82288/pillow-12.1.1.tar.gz"
    sha256 "9ad8fa5937ab05218e2b6a4cff30295ad35afd2f83ac592e68c0d871bb0fdbc4"
  end

  resource "pillow-heif" do
    url "https://files.pythonhosted.org/packages/cd/58/2df4fc42840633e01c97b75965cb1bc6e14425973b92382391650e97e4b7/pillow_heif-1.3.0.tar.gz"
    sha256 "af8d2bda85e395677d5bb50d7bda3b5655c946cc95b913b5e7222fabacbb467f"
  end

  resource "platformdirs" do
    url "https://files.pythonhosted.org/packages/19/56/8d4c30c8a1d07013911a8fdbd8f89440ef9f08d07a1b50ab8ca8be5a20f9/platformdirs-4.9.4.tar.gz"
    sha256 "1ec356301b7dc906d83f371c8f487070e99d3ccf9e501686456394622a01a934"
  end

  resource "pluggy" do
    url "https://files.pythonhosted.org/packages/f9/e2/3e91f31a7d2b083fe6ef3fa267035b518369d9511ffab804f839851d2779/pluggy-1.6.0.tar.gz"
    sha256 "7dcc130b76258d33b90f61b658791dede3486c3e6bfb003ee5c9bfb396dd22f3"
  end

  resource "prompt-toolkit" do
    url "https://files.pythonhosted.org/packages/a1/96/06e01a7b38dce6fe1db213e061a4602dd6032a8a97ef6c1a862537732421/prompt_toolkit-3.0.52.tar.gz"
    sha256 "28cde192929c8e7321de85de1ddbe736f1375148b02f2e17edd840042b1be855"
  end

  resource "psutil" do
    url "https://files.pythonhosted.org/packages/aa/c6/d1ddf4abb55e93cebc4f2ed8b5d6dbad109ecb8d63748dd2b20ab5e57ebe/psutil-7.2.2.tar.gz"
    sha256 "0746f5f8d406af344fd547f1c8daa5f5c33dbc293bb8d6a16d80b4bb88f59372"
  end

  resource "ptpython" do
    url "https://files.pythonhosted.org/packages/b6/8c/7e904ceeb512b4530c7ca1d918d3565d694a1fa7df337cdfc36a16347d68/ptpython-3.0.32.tar.gz"
    sha256 "11651778236de95c582b42737294e50a66ba4a21fa01c0090ea70815af478fe0"
  end

  resource "py-applescript" do
    url "https://files.pythonhosted.org/packages/b2/13/781639401dd0e6fc11b2b6d4999ec8e951b50df2600eebee8e929b009da1/py-applescript-1.0.3.tar.gz"
    sha256 "fa22c955fc25b3d24e03e66825b36a721897ec0d9b6ce185a4d177e2d1ecfa6b"
  end

  resource "pycparser" do
    url "https://files.pythonhosted.org/packages/1b/7d/92392ff7815c21062bea51aa7b87d45576f649f16458d78b7cf94b9ab2e6/pycparser-3.0.tar.gz"
    sha256 "600f49d217304a5902ac3c37e1281c9fe94e4d0489de643a9504c5cdfdfc6b29"
  end

  resource "pydantic" do
    url "https://files.pythonhosted.org/packages/69/44/36f1a6e523abc58ae5f928898e4aca2e0ea509b5aa6f6f392a5d882be928/pydantic-2.12.5.tar.gz"
    sha256 "4d351024c75c0f085a9febbb665ce8c0c6ec5d30e903bdb6394b7ede26aebb49"
  end

  resource "pydantic_core" do
    url "https://files.pythonhosted.org/packages/71/70/23b021c950c2addd24ec408e9ab05d59b035b39d97cdc1130e1bce647bb6/pydantic_core-2.41.5.tar.gz"
    sha256 "08daa51ea16ad373ffd5e7606252cc32f07bc72b28284b6bc9c6df804816476e"
  end

  resource "Pygments" do
    url "https://files.pythonhosted.org/packages/b0/77/a5b8c569bf593b0140bde72ea885a803b82086995367bf2037de0159d924/pygments-2.19.2.tar.gz"
    sha256 "636cb2477cec7f8952536970bc533bc43743542f70392ae026374600add5b887"
  end

  resource "pyobjc-core" do
    url "https://files.pythonhosted.org/packages/b8/b6/d5612eb40be4fd5ef88c259339e6313f46ba67577a95d86c3470b951fce0/pyobjc_core-12.1.tar.gz"
    sha256 "2bb3903f5387f72422145e1466b3ac3f7f0ef2e9960afa9bcd8961c5cbf8bd21"
  end

  resource "pyobjc-framework-AppleScriptKit" do
    url "https://files.pythonhosted.org/packages/cd/f1/e0c07b2a9eb98f1a2050f153d287a52a92f873eeddb41b74c52c144d8767/pyobjc_framework_applescriptkit-12.1.tar.gz"
    sha256 "cb09f88cf0ad9753dedc02720065818f854b50e33eb4194f0ea34de6d7a3eb33"
  end

  resource "pyobjc-framework-AppleScriptObjC" do
    url "https://files.pythonhosted.org/packages/c0/4b/e4d1592207cbe17355e01828bdd11dd58f31356108f6a49f5e0484a5df50/pyobjc_framework_applescriptobjc-12.1.tar.gz"
    sha256 "dce080ed07409b0dda2fee75d559bd312ea1ef0243a4338606440f282a6a0f5f"
  end

  resource "pyobjc-framework-AVFoundation" do
    url "https://files.pythonhosted.org/packages/cd/42/c026ab308edc2ed5582d8b4b93da6b15d1b6557c0086914a4aabedd1f032/pyobjc_framework_avfoundation-12.1.tar.gz"
    sha256 "eda0bb60be380f9ba2344600c4231dd58a3efafa99fdc65d3673ecfbb83f6fcb"
  end

  resource "pyobjc-framework-Cocoa" do
    url "https://files.pythonhosted.org/packages/02/a3/16ca9a15e77c061a9250afbae2eae26f2e1579eb8ca9462ae2d2c71e1169/pyobjc_framework_cocoa-12.1.tar.gz"
    sha256 "5556c87db95711b985d5efdaaf01c917ddd41d148b1e52a0c66b1a2e2c5c1640"
  end

  resource "pyobjc-framework-Contacts" do
    url "https://files.pythonhosted.org/packages/4b/a0/ce0542d211d4ea02f5cbcf72ee0a16b66b0d477a4ba5c32e00117703f2f0/pyobjc_framework_contacts-12.1.tar.gz"
    sha256 "89bca3c5cf31404b714abaa1673577e1aaad6f2ef49d4141c6dbcc0643a789ad"
  end

  resource "pyobjc-framework-CoreAudio" do
    url "https://files.pythonhosted.org/packages/84/d1/0b884c5564ab952ff5daa949128c64815300556019c1bba0cf2ca752a1a0/pyobjc_framework_coreaudio-12.1.tar.gz"
    sha256 "a9e72925fcc1795430496ce0bffd4ddaa92c22460a10308a7283ade830089fe1"
  end

  resource "pyobjc-framework-CoreLocation" do
    url "https://files.pythonhosted.org/packages/cc/79/b75885e0d75397dc2fe1ed9ca80be2b64c18b817f5fb924277cb1bf7b163/pyobjc_framework_corelocation-12.1.tar.gz"
    sha256 "3674e9353f949d91dde6230ad68f6d5748a7f0424751e08a2c09d06050d66231"
  end

  resource "pyobjc-framework-CoreMedia" do
    url "https://files.pythonhosted.org/packages/da/7d/5ad600ff7aedfef8ba8f51b11d9aaacdf247b870bd14045d6e6f232e3df9/pyobjc_framework_coremedia-12.1.tar.gz"
    sha256 "166c66a9c01e7a70103f3ca44c571431d124b9070612ef63a1511a4e6d9d84a7"
  end

  resource "pyobjc-framework-CoreML" do
    url "https://files.pythonhosted.org/packages/30/2d/baa9ea02cbb1c200683cb7273b69b4bee5070e86f2060b77e6a27c2a9d7e/pyobjc_framework_coreml-12.1.tar.gz"
    sha256 "0d1a4216891a18775c9e0170d908714c18e4f53f9dc79fb0f5263b2aa81609ba"
  end

  resource "pyobjc-framework-CoreServices" do
    url "https://files.pythonhosted.org/packages/4c/b3/52338a3ff41713f7d7bccaf63bef4ba4a8f2ce0c7eaff39a3629d022a79a/pyobjc_framework_coreservices-12.1.tar.gz"
    sha256 "fc6a9f18fc6da64c166fe95f2defeb7ac8a9836b3b03bb6a891d36035260dbaa"
  end

  resource "pyobjc-framework-FSEvents" do
    url "https://files.pythonhosted.org/packages/43/17/21f45d2bca2efc72b975f2dfeae7a163dbeabb1236c1f188578403fd4f09/pyobjc_framework_fsevents-12.1.tar.gz"
    sha256 "a22350e2aa789dec59b62da869c1b494a429f8c618854b1383d6473f4c065a02"
  end

  resource "pyobjc-framework-Metal" do
    url "https://files.pythonhosted.org/packages/e7/06/a84f7eb8561d5631954b9458cfca04b690b80b5b85ce70642bc89335f52a/pyobjc_framework_metal-12.1.tar.gz"
    sha256 "bb554877d5ee2bf3f340ad88e8fe1b85baab7b5ec4bd6ae0f4f7604147e3eae7"
  end

  resource "pyobjc-framework-Photos" do
    url "https://files.pythonhosted.org/packages/b8/53/f8a3dc7f711034d2283e289cd966fb7486028ea132a24260290ff32d3525/pyobjc_framework_photos-12.1.tar.gz"
    sha256 "adb68aaa29e186832d3c36a0b60b0592a834e24c5263e9d78c956b2b77dce563"
  end

  resource "pyobjc-framework-Quartz" do
    url "https://files.pythonhosted.org/packages/94/18/cc59f3d4355c9456fc945eae7fe8797003c4da99212dd531ad1b0de8a0c6/pyobjc_framework_quartz-12.1.tar.gz"
    sha256 "27f782f3513ac88ec9b6c82d9767eef95a5cf4175ce88a1e5a65875fee799608"
  end

  resource "pyobjc-framework-ScriptingBridge" do
    url "https://files.pythonhosted.org/packages/0c/cb/adc0a09e8c4755c2281bd12803a87f36e0832a8fc853a2d663433dbb72ce/pyobjc_framework_scriptingbridge-12.1.tar.gz"
    sha256 "0e90f866a7e6a8aeaf723d04c826657dd528c8c1b91e7a605f8bb947c74ad082"
  end

  resource "pyobjc-framework-UniformTypeIdentifiers" do
    url "https://files.pythonhosted.org/packages/65/b8/dd9d2a94509a6c16d965a7b0155e78edf520056313a80f0cd352413f0d0b/pyobjc_framework_uniformtypeidentifiers-12.1.tar.gz"
    sha256 "64510a6df78336579e9c39b873cfcd03371c4b4be2cec8af75a8a3d07dff607d"
  end

  resource "pyobjc-framework-Vision" do
    url "https://files.pythonhosted.org/packages/c2/5a/08bb3e278f870443d226c141af14205ff41c0274da1e053b72b11dfc9fb2/pyobjc_framework_vision-12.1.tar.gz"
    sha256 "a30959100e85dcede3a786c544e621ad6eb65ff6abf85721f805822b8c5fe9b0"
  end

  resource "python-multipart" do
    url "https://files.pythonhosted.org/packages/94/01/979e98d542a70714b0cb2b6728ed0b7c46792b695e3eaec3e20711271ca3/python_multipart-0.0.22.tar.gz"
    sha256 "7340bef99a7e0032613f56dc36027b959fd3b30a787ed62d310e951f7c3a3a58"
  end

  resource "pytimeparse2" do
    url "https://files.pythonhosted.org/packages/19/10/cc63fecd69905eb4d300fe71bd580e4a631483e9f53fdcb8c0ad345ce832/pytimeparse2-1.7.1.tar.gz"
    sha256 "98668cdcba4890e1789e432e8ea0059ccf72402f13f5d52be15bdfaeb3a8b253"
  end

  resource "PyYAML" do
    url "https://files.pythonhosted.org/packages/05/8e/961c0007c59b8dd7729d542c61a4d537767a59645b82a0b521206e1e25c2/pyyaml-6.0.3.tar.gz"
    sha256 "d76623373421df22fb4cf8817020cbb7ef15c725b9d5e45f17e189bfc384190f"
  end

  resource "requests" do
    url "https://files.pythonhosted.org/packages/c9/74/b3ff8e6c8446842c3f5c837e9c3dfcfe2018ea6ecef224c710c85ef728f4/requests-2.32.5.tar.gz"
    sha256 "dbba0bac56e100853db0ea71b82b4dfd5fe2bf6d3754a8893c3af500cec7d7cf"
  end

  resource "rich" do
    url "https://files.pythonhosted.org/packages/ab/3a/0316b28d0761c6734d6bc14e770d85506c986c85ffb239e688eeaab2c2bc/rich-13.9.4.tar.gz"
    sha256 "439594978a49a09530cff7ebc4b5c7103ef57baf48d5ea3184f21d9a2befa098"
  end

  resource "rich-theme-manager" do
    url "https://files.pythonhosted.org/packages/33/27/8139d912017d8d885b44143235959ea7db679ad4bde8dd4e6d99b3e35517/rich-theme-manager-0.11.0.tar.gz"
    sha256 "3bc1effa4b6c42f72994b73c8b3c391b1c6e803deccc2fc3932da31b00f1a112"
  end

  resource "shortuuid" do
    url "https://files.pythonhosted.org/packages/8c/e2/bcf761f3bff95856203f9559baf3741c416071dd200c0fc19fad7f078f86/shortuuid-1.0.13.tar.gz"
    sha256 "3bb9cf07f606260584b1df46399c0b87dd84773e7b25912b7e391e30797c5e72"
  end

  resource "six" do
    url "https://files.pythonhosted.org/packages/94/e7/b2c673351809dca68a0e064b6af791aa332cf192da575fd474ed7d6f16a2/six-1.17.0.tar.gz"
    sha256 "ff70335d468e7eb6ec65b95b99d3a2836546063f63acc5171de367e834932a81"
  end

  resource "sniffio" do
    url "https://files.pythonhosted.org/packages/a2/87/a6771e1546d97e7e041b6ae58d80074f81b7d5121207425c964ddf5cfdbd/sniffio-1.3.1.tar.gz"
    sha256 "f4324edc670a0f49750a81b895f35c3adb843cca46f0530f79fc1babb23789dc"
  end

  resource "soupsieve" do
    url "https://files.pythonhosted.org/packages/7b/ae/2d9c981590ed9999a0d91755b47fc74f74de286b0f5cee14c9269041e6c4/soupsieve-2.8.3.tar.gz"
    sha256 "3267f1eeea4251fb42728b6dfb746edc9acaffc4a45b27e19450b676586e8349"
  end

  resource "strpdatetime" do
    url "https://files.pythonhosted.org/packages/97/93/901f61b8b0f615d9ac9fe57f2c7f2e23e0f58d5f2d95c1afa13e9d2b3940/strpdatetime-0.4.1.tar.gz"
    sha256 "095e8a8d21ea9de65fe8847bf892eef93bfa57dd3d675165fd67d22da39542b9"
  end

  resource "tenacity" do
    url "https://files.pythonhosted.org/packages/a3/4d/6a19536c50b849338fcbe9290d562b52cbdcf30d8963d3588a68a4107df1/tenacity-8.5.0.tar.gz"
    sha256 "8bc6c0c8a09b31e6cad13c47afbed1a567518250a9a171418582ed8d9c20ca78"
  end

  resource "textX" do
    url "https://files.pythonhosted.org/packages/f0/fe/1cec25321efa564257bcad2fca7da8d21b2beb826b32013bc8f85e67ae64/textx-4.3.0.tar.gz"
    sha256 "0facac8029ad124ef21e5838dd8eb67f10129efcee96ea3548f5fd62428a9880"
  end

  resource "toml" do
    url "https://files.pythonhosted.org/packages/be/ba/1f744cdc819428fc6b5084ec34d9b30660f6f9daaf70eead706e3203ec3c/toml-0.10.2.tar.gz"
    sha256 "b3bda1d108d5dd99f4a20d24d9c348e91c4db7ab1b749200bded2f839ccbe68f"
  end

  resource "tqdm" do
    url "https://files.pythonhosted.org/packages/09/a9/6ba95a270c6f1fbcd8dac228323f2777d886cb206987444e4bce66338dd4/tqdm-4.67.3.tar.gz"
    sha256 "7d825f03f89244ef73f1d4ce193cb1774a8179fd96f31d7e1dcde62092b960bb"
  end

  resource "typing-extensions" do
    url "https://files.pythonhosted.org/packages/72/94/1a15dd82efb362ac84269196e94cf00f187f7ed21c242792a923cdb1c61f/typing_extensions-4.15.0.tar.gz"
    sha256 "0cea48d173cc12fa28ecabc3b837ea3cf6f38c6d1136f85cbaaf598984861466"
  end

  resource "typing-inspection" do
    url "https://files.pythonhosted.org/packages/55/e3/70399cb7dd41c10ac53367ae42139cf4b1ca5f36bb3dc6c9d33acdb43655/typing_inspection-0.4.2.tar.gz"
    sha256 "ba561c48a67c5958007083d386c3295464928b01faa735ab8547c5692e87f464"
  end

  resource "tzdata" do
    url "https://files.pythonhosted.org/packages/5e/a7/c202b344c5ca7daf398f3b8a477eeb205cf3b6f32e7ec3a6bac0629ca975/tzdata-2025.3.tar.gz"
    sha256 "de39c2ca5dc7b0344f2eba86f49d614019d29f060fc4ebc8a417896a620b56a7"
  end

  resource "urllib3" do
    url "https://files.pythonhosted.org/packages/c7/24/5f1b3bdffd70275f6661c76461e25f024d5a38a46f04aaca912426a2b1d3/urllib3-2.6.3.tar.gz"
    sha256 "1b62b6884944a57dbe321509ab94fd4d3b307075e0c2eae991ac71ee15ad38ed"
  end

  resource "utitools" do
    url "https://files.pythonhosted.org/packages/e9/14/36b76591c7f9025e91b1af5b4544fc91a0b6e54ac0627d301253372701fa/utitools-0.4.0.tar.gz"
    sha256 "71a7303ac26094f597999ae31848a1864ffffe3e049396459aa1458defdbaf71"
  end

  resource "uvicorn" do
    url "https://files.pythonhosted.org/packages/32/ce/eeb58ae4ac36fe09e3842eb02e0eb676bf2c53ae062b98f1b2531673efdd/uvicorn-0.41.0.tar.gz"
    sha256 "09d11cf7008da33113824ee5a1c6422d89fbc2ff476540d69a34c87fab8b571a"
  end

  resource "wcwidth" do
    url "https://files.pythonhosted.org/packages/35/a2/8e3becb46433538a38726c948d3399905a4c7cabd0df578ede5dc51f0ec2/wcwidth-0.6.0.tar.gz"
    sha256 "cdc4e4262d6ef9a1a57e018384cbeb1208d8abbc64176027e2c2455c81313159"
  end

  resource "wheel" do
    url "https://files.pythonhosted.org/packages/89/24/a2eb353a6edac9a0303977c4cb048134959dd2a51b48a269dfc9dde00c8a/wheel-0.46.3.tar.gz"
    sha256 "e3e79874b07d776c40bd6033f8ddf76a7dad46a7b8aa1b2787a83083519a1803"
  end

  resource "whenever" do
    url "https://files.pythonhosted.org/packages/4d/67/cfc23dfe54ced1e4388826b29db9b9ab2c70a342b33b7e92cf15866f35a6/whenever-0.8.10.tar.gz"
    sha256 "5e2a3da71527e299f98eec5bb38c4e79d9527a127107387456125005884fb235"
  end

  resource "wrapt" do
    url "https://files.pythonhosted.org/packages/95/8f/aeb76c5b46e273670962298c23e7ddde79916cb74db802131d49a85e4b7d/wrapt-1.17.3.tar.gz"
    sha256 "f66eb08feaa410fe4eebd17f2a2c8e2e46d3476e9f8c783daa8e09e0faa666d0"
  end

  resource "wurlitzer" do
    url "https://files.pythonhosted.org/packages/33/90/623f99c55c7d0727a58eb2b7dfb65cb406c561a5c2e9a95b0d6a450c473d/wurlitzer-3.1.1.tar.gz"
    sha256 "bfb9144ab9f02487d802b9ff89dbd3fa382d08f73e12db8adc4c2fb00cd39bd9"
  end

  resource "xattr" do
    url "https://files.pythonhosted.org/packages/08/d5/25f7b19af3a2cb4000cac4f9e5525a40bec79f4f5d0ac9b517c0544586a0/xattr-1.3.0.tar.gz"
    sha256 "30439fabd7de0787b27e9a6e1d569c5959854cb322f64ce7380fedbfa5035036"
  end

  resource "xdg-base-dirs" do
    url "https://files.pythonhosted.org/packages/bf/d0/bbe05a15347538aaf9fa5b51ac3b97075dfb834931fcb77d81fbdb69e8f6/xdg_base_dirs-6.0.2.tar.gz"
    sha256 "950504e14d27cf3c9cb37744680a43bf0ac42efefc4ef4acf98dc736cab2bced"
  end

  def install
    venv = virtualenv_create(libexec, "python3.11")

    # Packages needing special installation
    special_packages = ["objexplore", "pyobjc-framework-Quartz"]

    # Install all standard resources first
    resources.each do |r|
      next if special_packages.include?(r.name)
      r.stage do
        venv.pip_install Pathname.pwd
      end
    end

    # pyobjc-framework-Quartz uses -Werror but CGWindowListCreateImageFromArray
    # is obsoleted in macOS 15+. Patch it out before building.
    resource("pyobjc-framework-Quartz").stage do
      inreplace "pyobjc_setup.py", 'cflags.append("-Werror")', 'pass'  
      venv.pip_install Pathname.pwd
    end

    # objexplore imports rich at build time (in get_requires_for_build_wheel),
    # so disable build isolation to let it find rich already in the virtualenv
    resource("objexplore").stage do
      system libexec/"bin/pip", "install", "--no-deps",
             "--no-build-isolation", "--no-binary", ":all:", "."
    end

    # Install the main package
    venv.pip_install_and_link buildpath
  end

  test do
    assert_match "icloud-image-labeler 0.1.2", shell_output("#{bin}/icloud-image-labeler --version")
  end
end
