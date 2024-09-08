# Every update requires an update of these hashes and the version within the control file of each of the 32 ports.
# So it is probably better to have a central location for these hashes and let the ports update via a script
set(QT_MAJOR_MINOR_VER 5.15)
set(QT_PATCH_VER 15)
set(QT_UPDATE_VERSION OFF) # Switch to update qt and not build qt. Creates a file cmake/qt_new_hashes.cmake in qt5-base with the new hashes.

set(QT_PORT_LIST base 3d activeqt charts connectivity datavis3d declarative gamepad graphicaleffects imageformats location macextras mqtt multimedia networkauth
                 purchasing quickcontrols quickcontrols2 remoteobjects script scxml sensors serialport speech svg tools virtualkeyboard webchannel websockets
                 webview winextras xmlpatterns doc x11extras androidextras translations serialbus webengine webglplugin wayland)

set(QT_HASH_qt5-3d 66332383f242c76abe4b01c1d6d036e990d99de2abdc5d66a58506c397633507296f6d6c5e33a5cc2608c0ae2d7936ceffb832564239ffcf2ebdf60cabd12fb6)
set(QT_HASH_qt5-activeqt c99ac3ce89c72576025d2824fc0f54b46c3c8ce10f66ea3386cc3f990609d88a514ffe11aa28c3e811b1995f1f315b3a3e9cd5399098ba93ae64790ba6e15953)
set(QT_HASH_qt5-androidextras d4497a5e1659e5111c2fbaf0f0574b3f4434b4be3427f2631e73c502c733f24174b0b5920b3c92660f804577e7a5e7e4d3d26f20255c1a8926b8abd85c12741a)
set(QT_HASH_qt5-base fb49a64ba57d75f721929643c042423277c5c7259d2071fdb73d97db723ab3134e3eb6d4828027f6342ce5cb66cbd658e5db149a4633540e403a3b91fcb6681e)
set(QT_HASH_qt5-charts 873a15a6617cd809892968bd499c1d302e9ca63644205364a15711d6db8a6b3c88b4f5553b1302972d8923175fde5dac3db4af9290b9226476c3b8cd1f978fbc)
set(QT_HASH_qt5-connectivity bcfcfb5305e59a2f0b26aa7c0dba65ae1444df2c3035556147acb63801080667a6b24020961189e476060f12b0568cee883957c30e1c65a894e2780f34081cf3)
set(QT_HASH_qt5-datavis3d f172ee7a509a44e01aa595ce5bbfb4a9bc8d99c5264e4d4161a085f4971a35ceea82b9c5404cbde82caef51d1d2537a2bcfab97f2a80c8f1f54074ab35b4a643)
set(QT_HASH_qt5-declarative 9c1672037c491729805bb8a08f56b8a7ab06b8958f593c32f16c56350a13afcab38a23d35d04b1a5f67c7c5bd8724918baa6fb71f6d1c31218310c8f04544d48)
set(QT_HASH_qt5-doc d91ee2058f5ae1f395793f9467187da7a6ff353193ff339a9201b6b3051457555acac71b3623fcbd63d3dd94ab5fc8206bc25781cebf87ff89f717f107ed230e)
set(QT_HASH_qt5-doc d91ee2058f5ae1f395793f9467187da7a6ff353193ff339a9201b6b3051457555acac71b3623fcbd63d3dd94ab5fc8206bc25781cebf87ff89f717f107ed230e)
set(QT_HASH_qt5-doc d91ee2058f5ae1f395793f9467187da7a6ff353193ff339a9201b6b3051457555acac71b3623fcbd63d3dd94ab5fc8206bc25781cebf87ff89f717f107ed230e)
set(QT_HASH_qt5-gamepad 6c41351a16126d69e59775f352247cb817bb15a5b40f8ec02715245375f74e1d56aadbf476f498a36a377f98d39268b3952f13a041c193d800252f067ddb3e5d)
set(QT_HASH_qt5-graphicaleffects 0d68e8e788139fecf1dbf6fea218255d6d940314104ee445c117eba668333fa0db794d9cc9cf9b4da358508852b4052921ad93a87328e0dfef61e7ded8f3a4ae)
set(QT_HASH_qt5-imageformats ec9a60d343c240e7e85cdac68949927393b958f5e0b196fb1b3063c09b90600a46e9188c00a9dc744b526e95291dbe5c3d4fbca2b775e9824f82c36d754816cc)
set(QT_HASH_qt5-location a12d2d3979abddbcdf2750215337f10cece11b7a82125ffb3f0b75c4c8a186c6aba09a33b397cb195407292e37bf242056a33c8d7b1cf1d6f26470ec26ed2407)
set(QT_HASH_qt5-macextras 810a5cf23b6f638303e5252360717127f46a5f04e0be96acfcf99b2192f4848329a945bb07be48d1fe9e9b3f2ce762c171930482f4d46384d70e62fbb5a304b7)
set(QT_HASH_qt5-mqtt 137fe48d8c5309ef0026157abbeaec818f0865319f1374c84cf5bdd2bcd238d8a2d9612deffc76f6ae2bdaa1f00d1039f32a3e7944acae7e6639e43eb262cc97)
set(QT_HASH_qt5-multimedia a2a0649001d6fcde1fdefba4c4ccc35a7e4d776acd5a41a169f002db5fa6785a8dc1cde5ec8166e11a2c18701a650e32ea94b1ca3a967d7ecf062a18b0c18c04)
set(QT_HASH_qt5-networkauth 1645175195ecdea8576c725935c4186e709ee98fdb1e563e11481d44c8bfba20a3d3d096a968df0e6451c2bbed4a6b6fe77feb2a8d2293c88341ba272c22e8f7)
set(QT_HASH_qt5-purchasing b2746aac0e950bb969f66b3f73b7ffb0d6a2aaa810eefd775f30fb25765fb5f50d37103da90564c1312ab6f21aa7485db183dba4900feea69ab084ece80c57b7)
set(QT_HASH_qt5-quickcontrols 2477b780fd60c4b160016ad1774d74156a16aedfebc062e71bb5e62f53fbfe16a8951b046415571017bfb0289acfe469e61f1095fe7b38a5c48c10876760a8f4)
set(QT_HASH_qt5-quickcontrols2 e19fa073e42d4dddc84f2b5c258068ac7a922948e88b0002c3e77a74509532e0107dcd05ee7509b17e640593bc645b16ea1ce31621b393143a98c56e2e0fc4a9)
set(QT_HASH_qt5-remoteobjects 08f5373fd94b8db627d16dfe21efea5df062ae6a18641443b881966070b7b3e1941c182766f309dae962c81e21a0578ffe5d11530950bb4122a9ea2112f2a8ea)
set(QT_HASH_qt5-script e4898af8fe66f8b3a2fbf813eca63520686e67dc893f4636bff7591c287ddfde2680bcf900394a154f81744ca5c20ab1e379dd235915e17c8c803aefa194bd69)
set(QT_HASH_qt5-scxml 9284bdfadc94bd514c9389c44265b489b213ec8455c506d00c7f824b290ce436e1c73888695a0cddee56382b01727c57ad8ae44e908e963d16adce89fdf7570e)
set(QT_HASH_qt5-sensors 693e7764c44aebf801dc6d979b78dbf3b2af1cabc9a2c9b66b0bb21d791c3719413494c7013df4ec2f9eb467f8d29c6decbf7a59635344ae11e7208c3ebf2223)
set(QT_HASH_qt5-serialbus 6ccb01d938159954c5ff3591a3e80b221f748edd1074c5721410599135b8e22f5e992b793c9a3406343d806fe4f37bf7904c88d927f292ea2c58f50c2e78fb5e)
set(QT_HASH_qt5-serialport 8d7eaf72a29c1e33ac6ee22578fc003a1d73cfd8af432a2c1368eab846a65caa0f435f254064dbe31095d42d2bf69bf119f5a4839ebede7a38607367d6df68df)
set(QT_HASH_qt5-speech f4770a7e9578da24c02e7fe03dbddec4a75640bfa71b389657e5cf20561e56b172d8f56900eebebf2f95c5b6842a4203ea2370e4828356c9c93793fdfebcaac2)
set(QT_HASH_qt5-svg 924f88a7aaed5a8e63120cc8a669eddc122682674a3f6ac52221a49057e8c95e5c248ddc8722bd596d39583de2bc5c65f48b4472d8de3cb81bd111d8a3740160)
set(QT_HASH_qt5-tools 5ebc569fdbb781374b9ce993131a072704eea50348aea98ff12e57a2606d2accea29724d2c54953c467430b8657bcbe98509ee8cc40b4b869e11a5db8e663a88)
set(QT_HASH_qt5-translations 82846016137bea7847d15bd8aacc85e2ae826b1f6a8a15517cd99479f038cbe4ca217a2cf8eb1befd9aa901c1272bf0e6f9100f86a015eec670776a79c6015f7)
set(QT_HASH_qt5-virtualkeyboard 4db72101949ad15a3e5964293f8abea4ad5c7f449e0263920520bc57a434d7ebef3506aa67075031ba098af227c675773998d7cff52d555d1590c44cad8711cd)
set(QT_HASH_qt5-wayland ef6f210431fa04d166e814bf7269ee9ed77f355871240f629839c5637ea598a3b71c85c7e53aafbfe2e9c1c8d4f24867da37144707d9b48749be4a883e1b679c)
set(QT_HASH_qt5-webchannel 4819f656a0ca8a38d4eb92e1ab16e7911d3162e646516a944c2e693ce2da5bebe730d4552cefb40b700e9136ae01df4a372cbdb061551c83547448eeec7339a7)
set(QT_HASH_qt5-webengine 21a261f56228ca254d2fc1f952c9e7ad83b2b42cd92c11d54c2b4b7204bdeedb31168fb64dbf74254687c7e1d83090dd5f21312676d695a2ccb36c756316b052)
set(QT_HASH_qt5-webglplugin 2caa17a1a06f3d6b2e71c47a317125759194a9b50b130bbacd83770aa3d493777b2481b36abbc737f78647cb8861a23eca2c64ca292283fe76c40bdc62e503da)
set(QT_HASH_qt5-websockets 625701fd196c82634fb311020fdd6d4a4ce4adaa57dab02b0ccae3f25ed4d6bfdf1aef1285ee255c212d3cc4f4125713e90f046803064ac1da484f5c6acc2b7d)
set(QT_HASH_qt5-webview ea0f2a095c4a860ccdf324e939af0cb56385ecfe2b263bdbcdedc375d16294528fe25b81fad8af3e00d83f715713e5be91e7c07637ce9f3f03d7cd630582bf89)
set(QT_HASH_qt5-winextras 8d190e95ea5d29d734a565a102ed82fec45aeee04bd2a9d41c91b364736fe7d956ca3b4acec557c52b38d5cbb8cfea3b9448365373999ac9b05174c455086445)
set(QT_HASH_qt5-x11extras 3ff1002ff75e33237229c4639a9e66f43368752b2085609bc644609b4ee50c56c9c175ac811f6fae670907242de9fe05bd99474f03339bb2a7442c4e7a14cac7)
set(QT_HASH_qt5-xmlpatterns 1575a76dd8d2aefcaa4b0d483d98451c75908cca517f38e8bbd54f03d64b77c8c876bf2960abb213f78cf04ee81179b9e6addbc8f497514e42370cf3d651b1db)

if(QT_UPDATE_VERSION)
    message(STATUS "Running Qt in automatic version port update mode!")
    set(_VCPKG_INTERNAL_NO_HASH_CHECK 1)
    if("${PORT}" MATCHES "qt5-base")
        function(update_qt_version_in_manifest _port_name)
            set(_current_control "${VCPKG_ROOT_DIR}/ports/${_port_name}/vcpkg.json")
            file(READ ${_current_control} _control_contents)
            #message(STATUS "Before: \n${_control_contents}")
            string(REGEX REPLACE "\"version.*\": \"[0-9]+\.[0-9]+\.[0-9]+\",\n" "\"version\": \"${QT_MAJOR_MINOR_VER}.${QT_PATCH_VER}\",\n" _control_contents "${_control_contents}")
            string(REGEX REPLACE "\n  \"port-version\": [0-9]+," "" _control_contents "${_control_contents}")
            #message(STATUS "After: \n${_control_contents}")
            file(WRITE ${_current_control} "${_control_contents}")
            configure_file("${_current_control}" "${_current_control}" @ONLY NEWLINE_STYLE LF)
        endfunction()

        update_qt_version_in_manifest("qt5")
        foreach(_current_qt_port_basename ${QT_PORT_LIST})
            update_qt_version_in_manifest("qt5-${_current_qt_port_basename}")
        endforeach()
    endif()
endif()
