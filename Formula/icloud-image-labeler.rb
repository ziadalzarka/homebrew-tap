class IcloudImageLabeler < Formula
  include Language::Python::Virtualenv

  desc "macOS CLI tool that auto-labels iCloud Photos using any OpenAI-compatible LLM"
  homepage "https://github.com/ziadalzarka/icloud-image-labeler"
  url "https://github.com/ziadalzarka/icloud-image-labeler/archive/refs/tags/v0.1.2.tar.gz"
  sha256 "555a5afe825ac242336ea50008088338db062ef8a1319b46a66fd6ec205fad8a"
  license "MIT"

  depends_on :macos
  depends_on "python@3.11"
  depends_on "ffmpeg"
  depends_on "rust" => :build

  resource "aiofiles" do
    url "https://files.pythonhosted.org/packages/bc/8a/340a1555ae33d7354dbca4faa54948d76d89a27ceef032c8c3bc661d003e/aiofiles-25.1.0-py3-none-any.whl"
    sha256 "abe311e527c862958650f9438e859c1fa7568a141b22abcd015e120e86a85695"
  end

  resource "annotated-types" do
    url "https://files.pythonhosted.org/packages/78/b6/6307fbef88d9b5ee7421e68d78a9f162e0da4900bc5f5793f6d3d0e34fb8/annotated_types-0.7.0-py3-none-any.whl"
    sha256 "1f02e8b43a8fbbc3f3e0d4f0f4bfc8131bcb4eebe8849b8e5c773f3a1c582a53"
  end

  resource "anyio" do
    url "https://files.pythonhosted.org/packages/38/0e/27be9fdef66e72d64c0cdc3cc2823101b80585f8119b5c112c2e8f5f7dab/anyio-4.12.1-py3-none-any.whl"
    sha256 "d405828884fc140aa80a3c667b8beed277f1dfedec42ba031bd6ac3db606ab6c"
  end

  resource "appdirs" do
    url "https://files.pythonhosted.org/packages/3b/00/2344469e2084fb287c2e0b57b72910309874c3245463acd6cf5e3db69324/appdirs-1.4.4-py2.py3-none-any.whl"
    sha256 "a841dacd6b99318a741b166adb07e19ee71a274450e68237b4650ca1055ab128"
  end

  resource "Arpeggio" do
    url "https://files.pythonhosted.org/packages/84/4d/53b8186b41842f7a5e971b1d1c28e678364dcf841e4170f5d14d38ac1e2a/Arpeggio-2.0.3-py2.py3-none-any.whl"
    sha256 "9374d9c531b62018b787635f37fd81c9a6ee69ef2d28c5db3cd18791b1f7db2f"
  end

  resource "asgi-csrf" do
    url "https://files.pythonhosted.org/packages/82/1c/5d954baaf144852a4762368b37c06202b277378ea412acc5565f69acc9e9/asgi_csrf-0.11-py3-none-any.whl"
    sha256 "03ac140115f39d4295288a9adf74fdc6ae607f6ef44abee8466520458207242b"
  end

  resource "asgiref" do
    url "https://files.pythonhosted.org/packages/5c/0a/a72d10ed65068e115044937873362e6e32fab1b7dce0046aeb224682c989/asgiref-3.11.1-py3-none-any.whl"
    sha256 "e8667a091e69529631969fd45dc268fa79b99c92c5fcdda727757e52146ec133"
  end

  resource "beautifulsoup4" do
    url "https://files.pythonhosted.org/packages/1a/39/47f9197bdd44df24d67ac8893641e16f386c984a0619ef2ee4c51fbbc019/beautifulsoup4-4.14.3-py3-none-any.whl"
    sha256 "0918bfe44902e6ad8d57732ba310582e98da931428d231a5ecb9e7c703a735bb"
  end

  resource "bitarray" do
    url "https://files.pythonhosted.org/packages/5e/7b/f957ad211cb0172965b5f0881b67b99e2b6d41512af0a1001f44a44ddf4a/bitarray-3.8.0-cp311-cp311-macosx_11_0_arm64.whl"
    sha256 "4d9984017314da772f5f7460add7a0301a4ffc06c72c2998bb16c300a6253607"
  end

  resource "bitmath" do
    url "https://files.pythonhosted.org/packages/ec/ec/808245570e00df2e1fe8252903da309f18eb58768f44fecc0215dafbc386/bitmath-1.3.3.1.tar.gz"
    sha256 "293325f01e65defe966853111df11d39215eb705a967cb115851da8c4cfa3eb8"
  end

  resource "bitstring" do
    url "https://files.pythonhosted.org/packages/bf/02/1a870bab76f2896d827aa4963be95e56675ffa1453e53525d13c43036edf/bitstring-4.4.0-py3-none-any.whl"
    sha256 "feac49524fcf3ef27e6081e86f02b10d2adf6c3773bf22fbe0e7eea9534bc737"
  end

  resource "blessed" do
    url "https://files.pythonhosted.org/packages/88/34/61e670039aefca011b5e6fb1a73de18165ef6d016ac16df423b20d719e64/blessed-1.17.12-py2.py3-none-any.whl"
    sha256 "0a74a8d3f0366db600d061273df77d44f0db07daade7bb7a4d49c8bc22ed9f74"
  end

  resource "bpylist2" do
    url "https://files.pythonhosted.org/packages/8b/e5/b552c94fc965153c9dcad4b64202e5170d4918716bc082d4fa6c6230579c/bpylist2-4.1.1-py3-none-any.whl"
    sha256 "4862eab78d9d908d532393208b6771cebc8debef99ab851b54a0a0e28e2bec6b"
  end

  resource "certifi" do
    url "https://files.pythonhosted.org/packages/9a/3c/c17fb3ca2d9c3acff52e30b309f538586f9f5b9c9cf454f3845fc9af4881/certifi-2026.2.25-py3-none-any.whl"
    sha256 "027692e4402ad994f1c42e52a4997a9763c646b73e4096e4d5d6db8af1d6f0fa"
  end

  resource "cffi" do
    url "https://files.pythonhosted.org/packages/4f/8b/f0e4c441227ba756aafbe78f117485b25bb26b1c059d01f137fa6d14896b/cffi-2.0.0-cp311-cp311-macosx_11_0_arm64.whl"
    sha256 "2de9a304e27f7596cd03d16f1b7c72219bd944e99cc52b84d0145aefb07cbd3c"
  end

  resource "cgmetadata" do
    url "https://files.pythonhosted.org/packages/e1/05/c735618c13d67d31a50d896d1f607d6c03fd70278c28c8eaa4c81fa6fdee/cgmetadata-0.2.0-py3-none-any.whl"
    sha256 "531ee6c4d120c134c57589181bc5fb053bcdf9d7b949f33d3e5ab5db5d7d7f07"
  end

  resource "charset-normalizer" do
    url "https://files.pythonhosted.org/packages/62/28/ff6f234e628a2de61c458be2779cb182bc03f6eec12200d4a525bbfc9741/charset_normalizer-3.4.6-cp311-cp311-macosx_10_9_universal2.whl"
    sha256 "82060f995ab5003a2d6e0f4ad29065b7672b6593c8c63559beefe5b443242c3e"
  end

  resource "click" do
    url "https://files.pythonhosted.org/packages/98/78/01c019cdb5d6498122777c1a43056ebb3ebfeef2076d9d026bfe15583b2b/click-8.3.1-py3-none-any.whl"
    sha256 "981153a64e25f12d547d3426c367a4857371575ee7ad18df2a6183ab0545b2a6"
  end

  resource "click-default-group" do
    url "https://files.pythonhosted.org/packages/2c/1a/aff8bb287a4b1400f69e09a53bd65de96aa5cee5691925b38731c67fc695/click_default_group-1.2.4-py2.py3-none-any.whl"
    sha256 "9b60486923720e7fc61731bdb32b617039aba820e22e1c88766b1125592eaa5f"
  end

  resource "datasette" do
    url "https://files.pythonhosted.org/packages/a1/3a/ffa1259fc018f3bb0e6e8444982909a449478ede805def5593319ff3f732/datasette-0.65.2-py3-none-any.whl"
    sha256 "d4f342a5c86d073bbb1880a9df792354cae4f951e427b57586713eff1896507f"
  end

  resource "distro" do
    url "https://files.pythonhosted.org/packages/12/b3/231ffd4ab1fc9d679809f356cebee130ac7daa00d6d6f3206dd4fd137e9e/distro-1.9.0-py3-none-any.whl"
    sha256 "7bffd925d65168f85027d8da9af6bddab658135b840670a223589bc0c8ef02b2"
  end

  resource "flexcache" do
    url "https://files.pythonhosted.org/packages/27/cd/c883e1a7c447479d6e13985565080e3fea88ab5a107c21684c813dba1875/flexcache-0.3-py3-none-any.whl"
    sha256 "d43c9fea82336af6e0115e308d9d33a185390b8346a017564611f1466dcd2e32"
  end

  resource "flexparser" do
    url "https://files.pythonhosted.org/packages/fe/5e/3be305568fe5f34448807976dc82fc151d76c3e0e03958f34770286278c1/flexparser-0.4-py3-none-any.whl"
    sha256 "3738b456192dcb3e15620f324c447721023c0293f6af9955b481e91d00179846"
  end

  resource "h11" do
    url "https://files.pythonhosted.org/packages/04/4b/29cac41a4d98d144bf5f6d33995617b185d14b22401f75ca86f384e87ff1/h11-0.16.0-py3-none-any.whl"
    sha256 "63cf8bbe7522de3bf65932fda1d9c2772064ffb3dae62d55932da54b31cb6c86"
  end

  resource "httpcore" do
    url "https://files.pythonhosted.org/packages/7e/f5/f66802a942d491edb555dd61e3a9961140fd64c90bce1eafd741609d334d/httpcore-1.0.9-py3-none-any.whl"
    sha256 "2d400746a40668fc9dec9810239072b40b4484b640a8c38fd654a024c7a1bf55"
  end

  resource "httpx" do
    url "https://files.pythonhosted.org/packages/2a/39/e50c7c3a983047577ee07d2a9e53faf5a69493943ec3f6a384bdc792deb2/httpx-0.28.1-py3-none-any.whl"
    sha256 "d909fcccc110f8c7faf814ca82a9a4d816bc5a6dbfea25d6591d6985b8ba59ad"
  end

  resource "hupper" do
    url "https://files.pythonhosted.org/packages/86/7d/3888833e4f5ea56af4a9935066ec09a83228e533d7b8877f65889d706ee4/hupper-1.12.1-py3-none-any.whl"
    sha256 "e872b959f09d90be5fb615bd2e62de89a0b57efc037bdf9637fb09cdf8552b19"
  end

  resource "idna" do
    url "https://files.pythonhosted.org/packages/0e/61/66938bbb5fc52dbdf84594873d5b51fb1f7c7794e9c0f5bd885f30bc507b/idna-3.11-py3-none-any.whl"
    sha256 "771a87f49d9defaf64091e6e6fe9c18d4833f140bd19464795bc32d966ca37ea"
  end

  resource "itsdangerous" do
    url "https://files.pythonhosted.org/packages/04/96/92447566d16df59b2a776c0fb82dbc4d9e07cd95062562af01e408583fc4/itsdangerous-2.2.0-py3-none-any.whl"
    sha256 "c6242fc49e35958c8b15141343aa660db5fc54d4f13a1db01a3f5891b98700ef"
  end

  resource "janus" do
    url "https://files.pythonhosted.org/packages/68/34/65604740edcb20e1bda6a890348ed7d282e7dd23aa00401cbe36fd0edbd9/janus-2.0.0-py3-none-any.whl"
    sha256 "7e6449d34eab04cd016befbd7d8c0d8acaaaab67cb59e076a69149f9031745f9"
  end

  resource "jedi" do
    url "https://files.pythonhosted.org/packages/c0/5a/9cac0c82afec3d09ccd97c8b6502d48f165f9124db81b4bcb90b4af974ee/jedi-0.19.2-py2.py3-none-any.whl"
    sha256 "a8ef22bde8490f57fe5c7681a3c83cb58874daf72b4784de3cce5b6ef6edb5b9"
  end

  resource "Jinja2" do
    url "https://files.pythonhosted.org/packages/62/a1/3d680cbfd5f4b8f15abc1d571870c5fc3e594bb582bc3b64ea099db13e56/jinja2-3.1.6-py3-none-any.whl"
    sha256 "85ece4451f492d0c13c5dd7c13a64681a86afae63a5f347908daf103ce6d2f67"
  end

  resource "jiter" do
    url "https://files.pythonhosted.org/packages/0d/5e/4ec91646aee381d01cdb9974e30882c9cd3b8c5d1079d6b5ff4af522439a/jiter-0.13.0.tar.gz"
    sha256 "f2839f9c2c7e2dffc1bc5929a510e14ce0a946be9365fd1219e7ef342dae14f4"
  end

  resource "mac_alias" do
    url "https://files.pythonhosted.org/packages/13/20/103f4e4a6e8a524ea92eee7d938c6133d0b129aa999a50f8648ad126c728/mac_alias-2.2.3-py3-none-any.whl"
    sha256 "7362b521d2132ef92f606a37abfed5fcd849ceb2f28b6f9743e014b02af92f0d"
  end

  resource "makelive" do
    url "https://files.pythonhosted.org/packages/44/1a/d51a6b426adad30c7a8668e11ad976d341c6ecd058a6942495a10a79487f/makelive-0.6.2-py3-none-any.whl"
    sha256 "1228e90282790f81cc7cdf0a795dc99299c02a545d2225e83210461ce30d1808"
  end

  resource "Mako" do
    url "https://files.pythonhosted.org/packages/87/fb/99f81ac72ae23375f22b7afdb7642aba97c00a713c217124420147681a2f/mako-1.3.10-py3-none-any.whl"
    sha256 "baef24a52fc4fc514a0887ac600f9f1cff3d82c61d4d700a1fa84d597b88db59"
  end

  resource "markdown-it-py" do
    url "https://files.pythonhosted.org/packages/94/54/e7d793b573f298e1c9013b8c4dade17d481164aa517d1d7148619c2cedbf/markdown_it_py-4.0.0-py3-none-any.whl"
    sha256 "87327c59b172c5011896038353a81343b6754500a08cd7a4973bb48c6d578147"
  end

  resource "markdown2" do
    url "https://files.pythonhosted.org/packages/43/af/4b3891eb0a49d6cfd5cbf3e9bf514c943afc2b0f13e2c57cc57cd88ecc21/markdown2-2.5.5-py3-none-any.whl"
    sha256 "be798587e09d1f52d2e4d96a649c4b82a778c75f9929aad52a2c95747fa26941"
  end

  resource "MarkupSafe" do
    url "https://files.pythonhosted.org/packages/e1/2e/5898933336b61975ce9dc04decbc0a7f2fee78c30353c5efba7f2d6ff27a/markupsafe-3.0.3-cp311-cp311-macosx_11_0_arm64.whl"
    sha256 "4bd4cd07944443f5a265608cc6aab442e4f74dff8088b0dfc8238647b8f6ae9a"
  end

  resource "mdurl" do
    url "https://files.pythonhosted.org/packages/b3/38/89ba8ad64ae25be8de66a6d463314cf1eb366222074cfda9ee839c56a4b4/mdurl-0.1.2-py3-none-any.whl"
    sha256 "84008a41e51615a49fc9966191ff91509e3c40b939176e643fd50a5c2196b8f8"
  end

  resource "mergedeep" do
    url "https://files.pythonhosted.org/packages/2c/19/04f9b178c2d8a15b076c8b5140708fa6ffc5601fb6f1e975537072df5b2a/mergedeep-1.3.4-py3-none-any.whl"
    sha256 "70775750742b25c0d8f36c55aed03d24c3384d17c951b3175d898bd778ef0307"
  end

  resource "more-itertools" do
    url "https://files.pythonhosted.org/packages/a4/8e/469e5a4a2f5855992e425f3cb33804cc07bf18d48f2db061aec61ce50270/more_itertools-10.8.0-py3-none-any.whl"
    sha256 "52d4362373dcf7c52546bc4af9a86ee7c4579df9a8dc268be0a2f949d376cc9b"
  end

  resource "objexplore" do
    url "https://files.pythonhosted.org/packages/62/79/f66a0d66ea0d814695127c163c690fc209f6cc062e729ce9af5eb1cf3e7f/objexplore-1.6.3-py3-none-any.whl"
    sha256 "e9427dddb7cf35c51d53d2191c146031e96efb98efdf47670044ba91ac1f9c69"
  end

  resource "openai" do
    url "https://files.pythonhosted.org/packages/d0/b1/35b6f9c8cf9318e3dbb7146cc82dab4cf61182a8d5406fc9b50864362895/openai-2.29.0-py3-none-any.whl"
    sha256 "b7c5de513c3286d17c5e29b92c4c98ceaf0d775244ac8159aeb1bddf840eb42a"
  end

  resource "osxmetadata" do
    url "https://files.pythonhosted.org/packages/45/14/f6670ddbb59cb21e1a501d644549ff6e8d6512336f15bd24173d5e5074d8/osxmetadata-1.4.1-py3-none-any.whl"
    sha256 "1011a3dbd95899ad53792a4c6d8d9283532f4c5c80fe8be892eed0f50f4bf096"
  end

  resource "osxphotos" do
    url "https://files.pythonhosted.org/packages/63/8f/438a412cc078cafa8f309d64383dccb907b7e52ad94bfea6b778f7808855/osxphotos-0.75.6-py3-none-any.whl"
    sha256 "f9ab0618edc063fb278f121d619fcb5e3575bf7a3cd814c4a6d3fe7c4676f0ba"
  end

  resource "packaging" do
    url "https://files.pythonhosted.org/packages/b7/b9/c538f279a4e237a006a2c98387d081e9eb060d203d8ed34467cc0f0b9b53/packaging-26.0-py3-none-any.whl"
    sha256 "b36f1fef9334a5588b4166f8bcd26a14e521f2b55e6b9de3aaa80d3ff7a37529"
  end

  resource "parso" do
    url "https://files.pythonhosted.org/packages/b6/61/fae042894f4296ec49e3f193aff5d7c18440da9e48102c3315e1bc4519a7/parso-0.8.6-py2.py3-none-any.whl"
    sha256 "2c549f800b70a5c4952197248825584cb00f033b29c692671d3bf08bf380baff"
  end

  resource "pathvalidate" do
    url "https://files.pythonhosted.org/packages/9a/70/875f4a23bfc4731703a5835487d0d2fb999031bd415e7d17c0ae615c18b7/pathvalidate-3.3.1-py3-none-any.whl"
    sha256 "5263baab691f8e1af96092fa5137ee17df5bdfbd6cff1fcac4d6ef4bc2e1735f"
  end

  resource "photoscript" do
    url "https://files.pythonhosted.org/packages/22/a7/a0559b8b1ec72bddba078b96b37f2ca71c61d1845d53babd1f58c09deb51/photoscript-0.5.3-py3-none-any.whl"
    sha256 "4e4dba3ece23e0fba4ea6aa30c29526f3e9097182006a38011c61c44afefc4bf"
  end

  resource "pillow" do
    url "https://files.pythonhosted.org/packages/78/93/a29e9bc02d1cf557a834da780ceccd54e02421627200696fcf805ebdc3fb/pillow-12.1.1-cp311-cp311-macosx_11_0_arm64.whl"
    sha256 "365b10bb9417dd4498c0e3b128018c4a624dc11c7b97d8cc54effe3b096f4c38"
  end

  resource "pillow_heif" do
    url "https://files.pythonhosted.org/packages/03/1b/d0b9101889142c6492a7158da09adea78df1baad124f5bc1dfa252e363fa/pillow_heif-1.3.0-cp311-cp311-macosx_11_0_arm64.whl"
    sha256 "1a59db0091556d11ab26c2b34532b7992965520027ba0a64084771bcc9a31156"
  end

  resource "platformdirs" do
    url "https://files.pythonhosted.org/packages/63/d7/97f7e3a6abb67d8080dd406fd4df842c2be0efaf712d1c899c32a075027c/platformdirs-4.9.4-py3-none-any.whl"
    sha256 "68a9a4619a666ea6439f2ff250c12a853cd1cbd5158d258bd824a7df6be2f868"
  end

  resource "pluggy" do
    url "https://files.pythonhosted.org/packages/54/20/4d324d65cc6d9205fabedc306948156824eb9f0ee1633355a8f7ec5c66bf/pluggy-1.6.0-py3-none-any.whl"
    sha256 "e920276dd6813095e9377c0bc5566d94c932c33b27a3e3945d8389c374dd4746"
  end

  resource "prompt_toolkit" do
    url "https://files.pythonhosted.org/packages/84/03/0d3ce49e2505ae70cf43bc5bb3033955d2fc9f932163e84dc0779cc47f48/prompt_toolkit-3.0.52-py3-none-any.whl"
    sha256 "9aac639a3bbd33284347de5ad8d68ecc044b91a762dc39b7c21095fcd6a19955"
  end

  resource "psutil" do
    url "https://files.pythonhosted.org/packages/80/c4/f5af4c1ca8c1eeb2e92ccca14ce8effdeec651d5ab6053c589b074eda6e1/psutil-7.2.2-cp36-abi3-macosx_11_0_arm64.whl"
    sha256 "1a7b04c10f32cc88ab39cbf606e117fd74721c831c98a27dc04578deb0c16979"
  end

  resource "ptpython" do
    url "https://files.pythonhosted.org/packages/4c/ac/0e35e5d7afd47ab0e2c71293ed2ad18df91a2a4a008c0ff59c2f22def377/ptpython-3.0.32-py3-none-any.whl"
    sha256 "16435d323e5fc0a685d5f4dc5bb4494fb68ac68736689cd1247e1eda9369b616"
  end

  resource "py-applescript" do
    url "https://files.pythonhosted.org/packages/9b/f6/fed1fb7eb1603ad50accbb5c4e1f0c5f8f7d164acd2619f062d20c2a7858/py_applescript-1.0.3-py3-none-any.whl"
    sha256 "eb21dfc6e845a40be602372a5c3d6317f7ad3c999c2c355a00d1a19bdb1d57c0"
  end

  resource "pycparser" do
    url "https://files.pythonhosted.org/packages/0c/c3/44f3fbbfa403ea2a7c779186dc20772604442dde72947e7d01069cbe98e3/pycparser-3.0-py3-none-any.whl"
    sha256 "b727414169a36b7d524c1c3e31839a521725078d7b2ff038656844266160a992"
  end

  resource "pydantic" do
    url "https://files.pythonhosted.org/packages/5a/87/b70ad306ebb6f9b585f114d0ac2137d792b48be34d732d60e597c2f8465a/pydantic-2.12.5-py3-none-any.whl"
    sha256 "e561593fccf61e8a20fc46dfc2dfe075b8be7d0188df33f221ad1f0139180f9d"
  end

  resource "pydantic_core" do
    url "https://files.pythonhosted.org/packages/71/70/23b021c950c2addd24ec408e9ab05d59b035b39d97cdc1130e1bce647bb6/pydantic_core-2.41.5.tar.gz"
    sha256 "08daa51ea16ad373ffd5e7606252cc32f07bc72b28284b6bc9c6df804816476e"
  end

  resource "Pygments" do
    url "https://files.pythonhosted.org/packages/c7/21/705964c7812476f378728bdf590ca4b771ec72385c533964653c68e86bdc/pygments-2.19.2-py3-none-any.whl"
    sha256 "86540386c03d588bb81d44bc3928634ff26449851e99741617ecb9037ee5ec0b"
  end

  resource "pyobjc-core" do
    url "https://files.pythonhosted.org/packages/95/df/d2b290708e9da86d6e7a9a2a2022b91915cf2e712a5a82e306cb6ee99792/pyobjc_core-12.1-cp311-cp311-macosx_10_9_universal2.whl"
    sha256 "c918ebca280925e7fcb14c5c43ce12dcb9574a33cccb889be7c8c17f3bcce8b6"
  end

  resource "pyobjc-framework-AppleScriptKit" do
    url "https://files.pythonhosted.org/packages/3b/70/6c399c6ebc37a4e48acf63967e0a916878aedfe420531f6d739215184c0c/pyobjc_framework_applescriptkit-12.1-py2.py3-none-any.whl"
    sha256 "b955fc017b524027f635d92a8a45a5fd9fbae898f3e03de16ecd94aa4c4db987"
  end

  resource "pyobjc-framework-AppleScriptObjC" do
    url "https://files.pythonhosted.org/packages/3e/5f/9ce6706399706930eb29c5308037109c30cfb36f943a6df66fdf38cc842a/pyobjc_framework_applescriptobjc-12.1-py2.py3-none-any.whl"
    sha256 "79068f982cc22471712ce808c0a8fd5deea11258fc8d8c61968a84b1962a3d10"
  end

  resource "pyobjc-framework-AVFoundation" do
    url "https://files.pythonhosted.org/packages/9a/5a/4ef36b309138840ff8cd85364f66c29e27023f291004c335a99f6e87e599/pyobjc_framework_avfoundation-12.1-cp311-cp311-macosx_10_9_universal2.whl"
    sha256 "82cc2c2d9ab6cc04feeb4700ff251d00f1fcafff573c63d4e87168ff80adb926"
  end

  resource "pyobjc-framework-Cocoa" do
    url "https://files.pythonhosted.org/packages/3f/07/5760735c0fffc65107e648eaf7e0991f46da442ac4493501be5380e6d9d4/pyobjc_framework_cocoa-12.1-cp311-cp311-macosx_10_9_universal2.whl"
    sha256 "f52228bcf38da64b77328787967d464e28b981492b33a7675585141e1b0a01e6"
  end

  resource "pyobjc-framework-Contacts" do
    url "https://files.pythonhosted.org/packages/94/f5/5d2c03cf5219f2e35f3f908afa11868e9096aff33b29b41d63f2de3595f2/pyobjc_framework_contacts-12.1-cp311-cp311-macosx_10_9_universal2.whl"
    sha256 "8ab86070895a005239256d207e18209b1a79d35335b6604db160e8375a7165e6"
  end

  resource "pyobjc-framework-CoreAudio" do
    url "https://files.pythonhosted.org/packages/9e/25/491ff549fd9a40be4416793d335bff1911d3d1d1e1635e3b0defbd2cf585/pyobjc_framework_coreaudio-12.1-cp311-cp311-macosx_10_9_universal2.whl"
    sha256 "a452de6b509fa4a20160c0410b72330ac871696cd80237883955a5b3a4de8f2a"
  end

  resource "pyobjc-framework-CoreLocation" do
    url "https://files.pythonhosted.org/packages/34/ac/44b6cb414ce647da8328d0ed39f0a8b6eb54e72189ce9049678ce2cb04c3/pyobjc_framework_corelocation-12.1-cp311-cp311-macosx_10_9_universal2.whl"
    sha256 "ffc96b9ba504b35fe3e0fcfb0153e68fdfca6fe71663d240829ceab2d7122588"
  end

  resource "pyobjc-framework-CoreMedia" do
    url "https://files.pythonhosted.org/packages/c8/bc/e66de468b3777d8fece69279cf6d2af51d2263e9a1ccad21b90c35c74b1b/pyobjc_framework_coremedia-12.1-cp311-cp311-macosx_10_9_universal2.whl"
    sha256 "ee7b822c9bb674b5b0a70bfb133410acae354e9241b6983f075395f3562f3c46"
  end

  resource "pyobjc-framework-CoreML" do
    url "https://files.pythonhosted.org/packages/34/0f/f55369da4a33cfe1db38a3512aac4487602783d3a1d572d2c8c4ccce6abc/pyobjc_framework_coreml-12.1-cp311-cp311-macosx_10_9_universal2.whl"
    sha256 "16dafcfb123f022e62f47a590a7eccf7d0cb5957a77fd5f062b5ee751cb5a423"
  end

  resource "pyobjc-framework-CoreServices" do
    url "https://files.pythonhosted.org/packages/55/56/c905deb5ab6f7f758faac3f2cbc6f62fde89f8364837b626801bba0975c3/pyobjc_framework_coreservices-12.1-cp311-cp311-macosx_10_9_universal2.whl"
    sha256 "b6ef07bcf99e941395491f1efcf46e99e5fb83eb6bfa12ae5371135d83f731e1"
  end

  resource "pyobjc-framework-FSEvents" do
    url "https://files.pythonhosted.org/packages/a4/3f/a7fe5656b205ee3a9fd828e342157b91e643ee3e5c0d50b12bd4c737f683/pyobjc_framework_fsevents-12.1-cp311-cp311-macosx_10_9_universal2.whl"
    sha256 "459cc0aac9850c489d238ba778379d09f073bbc3626248855e78c4bc4d97fe46"
  end

  resource "pyobjc-framework-Metal" do
    url "https://files.pythonhosted.org/packages/1d/cf/edbb8b6dd084df3d235b74dbeb1fc5daf4d063ee79d13fa3bc1cb1779177/pyobjc_framework_metal-12.1-cp311-cp311-macosx_10_9_universal2.whl"
    sha256 "59e10f9b36d2e409f80f42b6175457a07b18a21ca57ff268f4bc519cd30db202"
  end

  resource "pyobjc-framework-Photos" do
    url "https://files.pythonhosted.org/packages/e4/e0/8824f7cb167934a8aa1c088b7e6f1b5a9342b14694e76eda95fc736282b2/pyobjc_framework_photos-12.1-cp311-cp311-macosx_10_9_universal2.whl"
    sha256 "f28db92602daac9d760067449fc9bf940594536e65ad542aec47d52b56f51959"
  end

  resource "pyobjc-framework-Quartz" do
    url "https://files.pythonhosted.org/packages/b7/ef/dcd22b743e38b3c430fce4788176c2c5afa8bfb01085b8143b02d1e75201/pyobjc_framework_quartz-12.1-cp311-cp311-macosx_10_9_universal2.whl"
    sha256 "19f99ac49a0b15dd892e155644fe80242d741411a9ed9c119b18b7466048625a"
  end

  resource "pyobjc-framework-ScriptingBridge" do
    url "https://files.pythonhosted.org/packages/42/de/0943ee8d7f1a7d8467df6e2ea017a6d5041caff2fb0283f37fea4c4ce370/pyobjc_framework_scriptingbridge-12.1-cp311-cp311-macosx_10_9_universal2.whl"
    sha256 "e6e37e69760d6ac9d813decf135d107760d33e1cdf7335016522235607f6f31b"
  end

  resource "pyobjc-framework-UniformTypeIdentifiers" do
    url "https://files.pythonhosted.org/packages/4e/5f/1f10f5275b06d213c9897850f1fca9c881c741c1f9190cea6db982b71824/pyobjc_framework_uniformtypeidentifiers-12.1-py2.py3-none-any.whl"
    sha256 "ec5411e39152304d2a7e0e426c3058fa37a00860af64e164794e0bcffee813f2"
  end

  resource "pyobjc-framework-Vision" do
    url "https://files.pythonhosted.org/packages/bd/37/e30cf4eef2b4c7e20ccadc1249117c77305fbc38b2e5904eb42e3753f63c/pyobjc_framework_vision-12.1-cp311-cp311-macosx_10_9_universal2.whl"
    sha256 "1edbf2fc18ce3b31108f845901a88f2236783ae6bf0bc68438d7ece572dc2a29"
  end

  resource "python-multipart" do
    url "https://files.pythonhosted.org/packages/1b/d0/397f9626e711ff749a95d96b7af99b9c566a9bb5129b8e4c10fc4d100304/python_multipart-0.0.22-py3-none-any.whl"
    sha256 "2b2cd894c83d21bf49d702499531c7bafd057d730c201782048f7945d82de155"
  end

  resource "pytimeparse2" do
    url "https://files.pythonhosted.org/packages/17/9e/85abf91ef5df452f56498927affdb7128194d15644084f6c6722477c305b/pytimeparse2-1.7.1-py3-none-any.whl"
    sha256 "a162ea6a7707fd0bb82dd99556efb783935f51885c8bdced0fce3fffe85ab002"
  end

  resource "PyYAML" do
    url "https://files.pythonhosted.org/packages/16/19/13de8e4377ed53079ee996e1ab0a9c33ec2faf808a4647b7b4c0d46dd239/pyyaml-6.0.3-cp311-cp311-macosx_11_0_arm64.whl"
    sha256 "652cb6edd41e718550aad172851962662ff2681490a8a711af6a4d288dd96824"
  end

  resource "requests" do
    url "https://files.pythonhosted.org/packages/1e/db/4254e3eabe8020b458f1a747140d32277ec7a271daf1d235b70dc0b4e6e3/requests-2.32.5-py3-none-any.whl"
    sha256 "2462f94637a34fd532264295e186976db0f5d453d1cdd31473c85a6a161affb6"
  end

  resource "rich" do
    url "https://files.pythonhosted.org/packages/19/71/39c7c0d87f8d4e6c020a393182060eaefeeae6c01dab6a84ec346f2567df/rich-13.9.4-py3-none-any.whl"
    sha256 "6049d5e6ec054bf2779ab3358186963bac2ea89175919d699e378b99738c2a90"
  end

  resource "rich-theme-manager" do
    url "https://files.pythonhosted.org/packages/68/ed/bd13b916738781c860fe97fa7b0db73281d93f7989dd4f566c9f99846a93/rich_theme_manager-0.11.0-py3-none-any.whl"
    sha256 "b9155233076eb4f9fc888ef8cf7755a3cd8efa3bfa33cee5137fc00000117d8e"
  end

  resource "shortuuid" do
    url "https://files.pythonhosted.org/packages/c0/44/21d6bf170bf40b41396480d8d49ad640bca3f2b02139cd52aa1e272830a5/shortuuid-1.0.13-py3-none-any.whl"
    sha256 "a482a497300b49b4953e15108a7913244e1bb0d41f9d332f5e9925dba33a3c5a"
  end

  resource "six" do
    url "https://files.pythonhosted.org/packages/b7/ce/149a00dd41f10bc29e5921b496af8b574d8413afcd5e30dfa0ed46c2cc5e/six-1.17.0-py2.py3-none-any.whl"
    sha256 "4721f391ed90541fddacab5acf947aa0d3dc7d27b2e1e8eda2be8970586c3274"
  end

  resource "sniffio" do
    url "https://files.pythonhosted.org/packages/e9/44/75a9c9421471a6c4805dbf2356f7c181a29c1879239abab1ea2cc8f38b40/sniffio-1.3.1-py3-none-any.whl"
    sha256 "2f6da418d1f1e0fddd844478f41680e794e6051915791a034ff65e5f100525a2"
  end

  resource "soupsieve" do
    url "https://files.pythonhosted.org/packages/46/2c/1462b1d0a634697ae9e55b3cecdcb64788e8b7d63f54d923fcd0bb140aed/soupsieve-2.8.3-py3-none-any.whl"
    sha256 "ed64f2ba4eebeab06cc4962affce381647455978ffc1e36bb79a545b91f45a95"
  end

  resource "strpdatetime" do
    url "https://files.pythonhosted.org/packages/57/fa/1db733414923b6ca4807a7e07f71745f44d9d9c078e16eb6c369b535673e/strpdatetime-0.4.1-py3-none-any.whl"
    sha256 "29992659517aadff685a7989635434a9b2757447d4205580ae0d277570d76d15"
  end

  resource "tenacity" do
    url "https://files.pythonhosted.org/packages/d2/3f/8ba87d9e287b9d385a02a7114ddcef61b26f86411e121c9003eb509a1773/tenacity-8.5.0-py3-none-any.whl"
    sha256 "b594c2a5945830c267ce6b79a166228323ed52718f30302c1359836112346687"
  end

  resource "textX" do
    url "https://files.pythonhosted.org/packages/53/ae/27c651f06e0a9b425779cdc6d3463586e4f63f0c0365585120b4a539cba1/textx-4.3.0-py3-none-any.whl"
    sha256 "261535f7e2de1529604026d58bf7dae9e40788644def4d033ca781680fa5dae7"
  end

  resource "tibs" do
    url "https://files.pythonhosted.org/packages/74/71/4c21ccc5c2e1672f9cd91ed2c46604c250cffd9d386113772dded128b5cf/tibs-0.5.7-cp38-abi3-macosx_11_0_arm64.whl"
    sha256 "a883ca13a922a66b2c1326a9c188123a574741a72510a4bf52fd6f97db191e44"
  end

  resource "toml" do
    url "https://files.pythonhosted.org/packages/44/6f/7120676b6d73228c96e17f1f794d8ab046fc910d781c8d151120c3f1569e/toml-0.10.2-py2.py3-none-any.whl"
    sha256 "806143ae5bfb6a3c6e736a764057db0e6a0e05e338b5630894a5f779cabb4f9b"
  end

  resource "tqdm" do
    url "https://files.pythonhosted.org/packages/16/e1/3079a9ff9b8e11b846c6ac5c8b5bfb7ff225eee721825310c91b3b50304f/tqdm-4.67.3-py3-none-any.whl"
    sha256 "ee1e4c0e59148062281c49d80b25b67771a127c85fc9676d3be5f243206826bf"
  end

  resource "typing-inspection" do
    url "https://files.pythonhosted.org/packages/dc/9b/47798a6c91d8bdb567fe2698fe81e0c6b7cb7ef4d13da4114b41d239f65d/typing_inspection-0.4.2-py3-none-any.whl"
    sha256 "4ed1cacbdc298c220f1bd249ed5287caa16f34d44ef4e9c3d0cbad5b521545e7"
  end

  resource "typing_extensions" do
    url "https://files.pythonhosted.org/packages/18/67/36e9267722cc04a6b9f15c7f3441c2363321a3ea07da7ae0c0707beb2a9c/typing_extensions-4.15.0-py3-none-any.whl"
    sha256 "f0fa19c6845758ab08074a0cfa8b7aecb71c999ca73d62883bc25cc018c4e548"
  end

  resource "tzdata" do
    url "https://files.pythonhosted.org/packages/c7/b0/003792df09decd6849a5e39c28b513c06e84436a54440380862b5aeff25d/tzdata-2025.3-py2.py3-none-any.whl"
    sha256 "06a47e5700f3081aab02b2e513160914ff0694bce9947d6b76ebd6bf57cfc5d1"
  end

  resource "urllib3" do
    url "https://files.pythonhosted.org/packages/39/08/aaaad47bc4e9dc8c725e68f9d04865dbcb2052843ff09c97b08904852d84/urllib3-2.6.3-py3-none-any.whl"
    sha256 "bf272323e553dfb2e87d9bfd225ca7b0f467b919d7bbd355436d3fd37cb0acd4"
  end

  resource "utitools" do
    url "https://files.pythonhosted.org/packages/31/d7/df4363799c128c93b59590ff59953405db8165a029f483f434eab4a64573/utitools-0.4.0-py3-none-any.whl"
    sha256 "21d6892779f6866329572146ed8dc97c19631d4c5059e49c04a5593ac06b0fbc"
  end

  resource "uvicorn" do
    url "https://files.pythonhosted.org/packages/0a/89/f8827ccff89c1586027a105e5630ff6139a64da2515e24dafe860bd9ae4d/uvicorn-0.42.0-py3-none-any.whl"
    sha256 "96c30f5c7abe6f74ae8900a70e92b85ad6613b745d4879eb9b16ccad15645359"
  end

  resource "wcwidth" do
    url "https://files.pythonhosted.org/packages/68/5a/199c59e0a824a3db2b89c5d2dade7ab5f9624dbf6448dc291b46d5ec94d3/wcwidth-0.6.0-py3-none-any.whl"
    sha256 "1a3a1e510b553315f8e146c54764f4fb6264ffad731b3d78088cdb1478ffbdad"
  end

  resource "wheel" do
    url "https://files.pythonhosted.org/packages/87/22/b76d483683216dde3d67cba61fb2444be8d5be289bf628c13fc0fd90e5f9/wheel-0.46.3-py3-none-any.whl"
    sha256 "4b399d56c9d9338230118d705d9737a2a468ccca63d5e813e2a4fc7815d8bc4d"
  end

  resource "whenever" do
    url "https://files.pythonhosted.org/packages/4d/67/cfc23dfe54ced1e4388826b29db9b9ab2c70a342b33b7e92cf15866f35a6/whenever-0.8.10.tar.gz"
    sha256 "5e2a3da71527e299f98eec5bb38c4e79d9527a127107387456125005884fb235"
  end

  resource "wrapt" do
    url "https://files.pythonhosted.org/packages/31/25/3e8cc2c46b5329c5957cec959cb76a10718e1a513309c31399a4dad07eb3/wrapt-1.17.3-cp311-cp311-macosx_11_0_arm64.whl"
    sha256 "0610b46293c59a3adbae3dee552b648b984176f8562ee0dba099a56cfbe4df1f"
  end

  resource "wurlitzer" do
    url "https://files.pythonhosted.org/packages/9a/24/93ce54550a9dd3fd996ed477f00221f215bf6da3580397fbc138d6036e2e/wurlitzer-3.1.1-py3-none-any.whl"
    sha256 "0b2749c2cde3ef640bf314a9f94b24d929fe1ca476974719a6909dfc568c3aac"
  end

  resource "xattr" do
    url "https://files.pythonhosted.org/packages/cc/bb/c1c2e24a49f8d13ff878fb85aabc42ea1b2f98ce08d8205b9661d517a9cc/xattr-1.3.0-cp311-cp311-macosx_11_0_arm64.whl"
    sha256 "405d2e4911d37f2b9400fa501acd920fe0c97fe2b2ec252cb23df4b59c000811"
  end

  resource "xdg-base-dirs" do
    url "https://files.pythonhosted.org/packages/fc/03/030b47fd46b60fc87af548e57ff59c2ca84b2a1dadbe721bb0ce33896b2e/xdg_base_dirs-6.0.2-py3-none-any.whl"
    sha256 "3c01d1b758ed4ace150ac960ac0bd13ce4542b9e2cdf01312dcda5012cfebabe"
  end

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match "icloud-image-labeler 0.1.2", shell_output("#{bin}/icloud-image-labeler --version")
  end
end
