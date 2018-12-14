# DO NOT EDIT
# This makefile makes sure all linkable targets are
# up-to-date with anything they link to
default:
	echo "Do not invoke directly"

# Rules to remove targets that are older than anything to which they
# link.  This forces Xcode to relink the targets from scratch.  It
# does not seem to check these dependencies itself.
PostBuild.gtest.Debug:
/Users/lilac/Development/Loki/DarwinFresh/LokiNetwork/external/loki-network-build/test/gtest/Debug/libgtest.a:
	/bin/rm -f /Users/lilac/Development/Loki/DarwinFresh/LokiNetwork/external/loki-network-build/test/gtest/Debug/libgtest.a


PostBuild.gtest_main.Debug:
/Users/lilac/Development/Loki/DarwinFresh/LokiNetwork/external/loki-network-build/test/gtest/Debug/libgtest_main.a:
	/bin/rm -f /Users/lilac/Development/Loki/DarwinFresh/LokiNetwork/external/loki-network-build/test/gtest/Debug/libgtest_main.a


PostBuild.lokinet.Debug:
PostBuild.lokinet-static.Debug: /Users/lilac/Development/Loki/DarwinFresh/LokiNetwork/external/loki-network-build/Debug/lokinet
PostBuild.lokinet-platform.Debug: /Users/lilac/Development/Loki/DarwinFresh/LokiNetwork/external/loki-network-build/Debug/lokinet
PostBuild.lokinet-cryptography.Debug: /Users/lilac/Development/Loki/DarwinFresh/LokiNetwork/external/loki-network-build/Debug/lokinet
/Users/lilac/Development/Loki/DarwinFresh/LokiNetwork/external/loki-network-build/Debug/lokinet:\
	/Users/lilac/Development/Loki/DarwinFresh/LokiNetwork/external/loki-network-build/Debug/liblokinet-static.a\
	/Users/lilac/Development/Loki/DarwinFresh/LokiNetwork/external/loki-network-build/Debug/liblokinet-platform.a\
	/Users/lilac/Development/Loki/DarwinFresh/LokiNetwork/external/loki-network-build/Debug/liblokinet-cryptography.a
	/bin/rm -f /Users/lilac/Development/Loki/DarwinFresh/LokiNetwork/external/loki-network-build/Debug/lokinet


PostBuild.lokinet-cryptography.Debug:
/Users/lilac/Development/Loki/DarwinFresh/LokiNetwork/external/loki-network-build/Debug/liblokinet-cryptography.a:
	/bin/rm -f /Users/lilac/Development/Loki/DarwinFresh/LokiNetwork/external/loki-network-build/Debug/liblokinet-cryptography.a


PostBuild.lokinet-platform.Debug:
/Users/lilac/Development/Loki/DarwinFresh/LokiNetwork/external/loki-network-build/Debug/liblokinet-platform.a:
	/bin/rm -f /Users/lilac/Development/Loki/DarwinFresh/LokiNetwork/external/loki-network-build/Debug/liblokinet-platform.a


PostBuild.lokinet-static.Debug:
/Users/lilac/Development/Loki/DarwinFresh/LokiNetwork/external/loki-network-build/Debug/liblokinet-static.a:
	/bin/rm -f /Users/lilac/Development/Loki/DarwinFresh/LokiNetwork/external/loki-network-build/Debug/liblokinet-static.a


PostBuild.testAll.Debug:
PostBuild.gtest_main.Debug: /Users/lilac/Development/Loki/DarwinFresh/LokiNetwork/external/loki-network-build/Debug/testAll
PostBuild.lokinet-static.Debug: /Users/lilac/Development/Loki/DarwinFresh/LokiNetwork/external/loki-network-build/Debug/testAll
PostBuild.lokinet-platform.Debug: /Users/lilac/Development/Loki/DarwinFresh/LokiNetwork/external/loki-network-build/Debug/testAll
PostBuild.gtest.Debug: /Users/lilac/Development/Loki/DarwinFresh/LokiNetwork/external/loki-network-build/Debug/testAll
PostBuild.lokinet-cryptography.Debug: /Users/lilac/Development/Loki/DarwinFresh/LokiNetwork/external/loki-network-build/Debug/testAll
/Users/lilac/Development/Loki/DarwinFresh/LokiNetwork/external/loki-network-build/Debug/testAll:\
	/Users/lilac/Development/Loki/DarwinFresh/LokiNetwork/external/loki-network-build/test/gtest/Debug/libgtest_main.a\
	/Users/lilac/Development/Loki/DarwinFresh/LokiNetwork/external/loki-network-build/Debug/liblokinet-static.a\
	/Users/lilac/Development/Loki/DarwinFresh/LokiNetwork/external/loki-network-build/Debug/liblokinet-platform.a\
	/Users/lilac/Development/Loki/DarwinFresh/LokiNetwork/external/loki-network-build/test/gtest/Debug/libgtest.a\
	/Users/lilac/Development/Loki/DarwinFresh/LokiNetwork/external/loki-network-build/Debug/liblokinet-cryptography.a
	/bin/rm -f /Users/lilac/Development/Loki/DarwinFresh/LokiNetwork/external/loki-network-build/Debug/testAll


PostBuild.gtest.Release:
/Users/lilac/Development/Loki/DarwinFresh/LokiNetwork/external/loki-network-build/test/gtest/Release/libgtest.a:
	/bin/rm -f /Users/lilac/Development/Loki/DarwinFresh/LokiNetwork/external/loki-network-build/test/gtest/Release/libgtest.a


PostBuild.gtest_main.Release:
/Users/lilac/Development/Loki/DarwinFresh/LokiNetwork/external/loki-network-build/test/gtest/Release/libgtest_main.a:
	/bin/rm -f /Users/lilac/Development/Loki/DarwinFresh/LokiNetwork/external/loki-network-build/test/gtest/Release/libgtest_main.a


PostBuild.lokinet.Release:
PostBuild.lokinet-static.Release: /Users/lilac/Development/Loki/DarwinFresh/LokiNetwork/external/loki-network-build/Release/lokinet
PostBuild.lokinet-platform.Release: /Users/lilac/Development/Loki/DarwinFresh/LokiNetwork/external/loki-network-build/Release/lokinet
PostBuild.lokinet-cryptography.Release: /Users/lilac/Development/Loki/DarwinFresh/LokiNetwork/external/loki-network-build/Release/lokinet
/Users/lilac/Development/Loki/DarwinFresh/LokiNetwork/external/loki-network-build/Release/lokinet:\
	/Users/lilac/Development/Loki/DarwinFresh/LokiNetwork/external/loki-network-build/Release/liblokinet-static.a\
	/Users/lilac/Development/Loki/DarwinFresh/LokiNetwork/external/loki-network-build/Release/liblokinet-platform.a\
	/Users/lilac/Development/Loki/DarwinFresh/LokiNetwork/external/loki-network-build/Release/liblokinet-cryptography.a
	/bin/rm -f /Users/lilac/Development/Loki/DarwinFresh/LokiNetwork/external/loki-network-build/Release/lokinet


PostBuild.lokinet-cryptography.Release:
/Users/lilac/Development/Loki/DarwinFresh/LokiNetwork/external/loki-network-build/Release/liblokinet-cryptography.a:
	/bin/rm -f /Users/lilac/Development/Loki/DarwinFresh/LokiNetwork/external/loki-network-build/Release/liblokinet-cryptography.a


PostBuild.lokinet-platform.Release:
/Users/lilac/Development/Loki/DarwinFresh/LokiNetwork/external/loki-network-build/Release/liblokinet-platform.a:
	/bin/rm -f /Users/lilac/Development/Loki/DarwinFresh/LokiNetwork/external/loki-network-build/Release/liblokinet-platform.a


PostBuild.lokinet-static.Release:
/Users/lilac/Development/Loki/DarwinFresh/LokiNetwork/external/loki-network-build/Release/liblokinet-static.a:
	/bin/rm -f /Users/lilac/Development/Loki/DarwinFresh/LokiNetwork/external/loki-network-build/Release/liblokinet-static.a


PostBuild.testAll.Release:
PostBuild.gtest_main.Release: /Users/lilac/Development/Loki/DarwinFresh/LokiNetwork/external/loki-network-build/Release/testAll
PostBuild.lokinet-static.Release: /Users/lilac/Development/Loki/DarwinFresh/LokiNetwork/external/loki-network-build/Release/testAll
PostBuild.lokinet-platform.Release: /Users/lilac/Development/Loki/DarwinFresh/LokiNetwork/external/loki-network-build/Release/testAll
PostBuild.gtest.Release: /Users/lilac/Development/Loki/DarwinFresh/LokiNetwork/external/loki-network-build/Release/testAll
PostBuild.lokinet-cryptography.Release: /Users/lilac/Development/Loki/DarwinFresh/LokiNetwork/external/loki-network-build/Release/testAll
/Users/lilac/Development/Loki/DarwinFresh/LokiNetwork/external/loki-network-build/Release/testAll:\
	/Users/lilac/Development/Loki/DarwinFresh/LokiNetwork/external/loki-network-build/test/gtest/Release/libgtest_main.a\
	/Users/lilac/Development/Loki/DarwinFresh/LokiNetwork/external/loki-network-build/Release/liblokinet-static.a\
	/Users/lilac/Development/Loki/DarwinFresh/LokiNetwork/external/loki-network-build/Release/liblokinet-platform.a\
	/Users/lilac/Development/Loki/DarwinFresh/LokiNetwork/external/loki-network-build/test/gtest/Release/libgtest.a\
	/Users/lilac/Development/Loki/DarwinFresh/LokiNetwork/external/loki-network-build/Release/liblokinet-cryptography.a
	/bin/rm -f /Users/lilac/Development/Loki/DarwinFresh/LokiNetwork/external/loki-network-build/Release/testAll


PostBuild.gtest.MinSizeRel:
/Users/lilac/Development/Loki/DarwinFresh/LokiNetwork/external/loki-network-build/test/gtest/MinSizeRel/libgtest.a:
	/bin/rm -f /Users/lilac/Development/Loki/DarwinFresh/LokiNetwork/external/loki-network-build/test/gtest/MinSizeRel/libgtest.a


PostBuild.gtest_main.MinSizeRel:
/Users/lilac/Development/Loki/DarwinFresh/LokiNetwork/external/loki-network-build/test/gtest/MinSizeRel/libgtest_main.a:
	/bin/rm -f /Users/lilac/Development/Loki/DarwinFresh/LokiNetwork/external/loki-network-build/test/gtest/MinSizeRel/libgtest_main.a


PostBuild.lokinet.MinSizeRel:
PostBuild.lokinet-static.MinSizeRel: /Users/lilac/Development/Loki/DarwinFresh/LokiNetwork/external/loki-network-build/MinSizeRel/lokinet
PostBuild.lokinet-platform.MinSizeRel: /Users/lilac/Development/Loki/DarwinFresh/LokiNetwork/external/loki-network-build/MinSizeRel/lokinet
PostBuild.lokinet-cryptography.MinSizeRel: /Users/lilac/Development/Loki/DarwinFresh/LokiNetwork/external/loki-network-build/MinSizeRel/lokinet
/Users/lilac/Development/Loki/DarwinFresh/LokiNetwork/external/loki-network-build/MinSizeRel/lokinet:\
	/Users/lilac/Development/Loki/DarwinFresh/LokiNetwork/external/loki-network-build/MinSizeRel/liblokinet-static.a\
	/Users/lilac/Development/Loki/DarwinFresh/LokiNetwork/external/loki-network-build/MinSizeRel/liblokinet-platform.a\
	/Users/lilac/Development/Loki/DarwinFresh/LokiNetwork/external/loki-network-build/MinSizeRel/liblokinet-cryptography.a
	/bin/rm -f /Users/lilac/Development/Loki/DarwinFresh/LokiNetwork/external/loki-network-build/MinSizeRel/lokinet


PostBuild.lokinet-cryptography.MinSizeRel:
/Users/lilac/Development/Loki/DarwinFresh/LokiNetwork/external/loki-network-build/MinSizeRel/liblokinet-cryptography.a:
	/bin/rm -f /Users/lilac/Development/Loki/DarwinFresh/LokiNetwork/external/loki-network-build/MinSizeRel/liblokinet-cryptography.a


PostBuild.lokinet-platform.MinSizeRel:
/Users/lilac/Development/Loki/DarwinFresh/LokiNetwork/external/loki-network-build/MinSizeRel/liblokinet-platform.a:
	/bin/rm -f /Users/lilac/Development/Loki/DarwinFresh/LokiNetwork/external/loki-network-build/MinSizeRel/liblokinet-platform.a


PostBuild.lokinet-static.MinSizeRel:
/Users/lilac/Development/Loki/DarwinFresh/LokiNetwork/external/loki-network-build/MinSizeRel/liblokinet-static.a:
	/bin/rm -f /Users/lilac/Development/Loki/DarwinFresh/LokiNetwork/external/loki-network-build/MinSizeRel/liblokinet-static.a


PostBuild.testAll.MinSizeRel:
PostBuild.gtest_main.MinSizeRel: /Users/lilac/Development/Loki/DarwinFresh/LokiNetwork/external/loki-network-build/MinSizeRel/testAll
PostBuild.lokinet-static.MinSizeRel: /Users/lilac/Development/Loki/DarwinFresh/LokiNetwork/external/loki-network-build/MinSizeRel/testAll
PostBuild.lokinet-platform.MinSizeRel: /Users/lilac/Development/Loki/DarwinFresh/LokiNetwork/external/loki-network-build/MinSizeRel/testAll
PostBuild.gtest.MinSizeRel: /Users/lilac/Development/Loki/DarwinFresh/LokiNetwork/external/loki-network-build/MinSizeRel/testAll
PostBuild.lokinet-cryptography.MinSizeRel: /Users/lilac/Development/Loki/DarwinFresh/LokiNetwork/external/loki-network-build/MinSizeRel/testAll
/Users/lilac/Development/Loki/DarwinFresh/LokiNetwork/external/loki-network-build/MinSizeRel/testAll:\
	/Users/lilac/Development/Loki/DarwinFresh/LokiNetwork/external/loki-network-build/test/gtest/MinSizeRel/libgtest_main.a\
	/Users/lilac/Development/Loki/DarwinFresh/LokiNetwork/external/loki-network-build/MinSizeRel/liblokinet-static.a\
	/Users/lilac/Development/Loki/DarwinFresh/LokiNetwork/external/loki-network-build/MinSizeRel/liblokinet-platform.a\
	/Users/lilac/Development/Loki/DarwinFresh/LokiNetwork/external/loki-network-build/test/gtest/MinSizeRel/libgtest.a\
	/Users/lilac/Development/Loki/DarwinFresh/LokiNetwork/external/loki-network-build/MinSizeRel/liblokinet-cryptography.a
	/bin/rm -f /Users/lilac/Development/Loki/DarwinFresh/LokiNetwork/external/loki-network-build/MinSizeRel/testAll


PostBuild.gtest.RelWithDebInfo:
/Users/lilac/Development/Loki/DarwinFresh/LokiNetwork/external/loki-network-build/test/gtest/RelWithDebInfo/libgtest.a:
	/bin/rm -f /Users/lilac/Development/Loki/DarwinFresh/LokiNetwork/external/loki-network-build/test/gtest/RelWithDebInfo/libgtest.a


PostBuild.gtest_main.RelWithDebInfo:
/Users/lilac/Development/Loki/DarwinFresh/LokiNetwork/external/loki-network-build/test/gtest/RelWithDebInfo/libgtest_main.a:
	/bin/rm -f /Users/lilac/Development/Loki/DarwinFresh/LokiNetwork/external/loki-network-build/test/gtest/RelWithDebInfo/libgtest_main.a


PostBuild.lokinet.RelWithDebInfo:
PostBuild.lokinet-static.RelWithDebInfo: /Users/lilac/Development/Loki/DarwinFresh/LokiNetwork/external/loki-network-build/RelWithDebInfo/lokinet
PostBuild.lokinet-platform.RelWithDebInfo: /Users/lilac/Development/Loki/DarwinFresh/LokiNetwork/external/loki-network-build/RelWithDebInfo/lokinet
PostBuild.lokinet-cryptography.RelWithDebInfo: /Users/lilac/Development/Loki/DarwinFresh/LokiNetwork/external/loki-network-build/RelWithDebInfo/lokinet
/Users/lilac/Development/Loki/DarwinFresh/LokiNetwork/external/loki-network-build/RelWithDebInfo/lokinet:\
	/Users/lilac/Development/Loki/DarwinFresh/LokiNetwork/external/loki-network-build/RelWithDebInfo/liblokinet-static.a\
	/Users/lilac/Development/Loki/DarwinFresh/LokiNetwork/external/loki-network-build/RelWithDebInfo/liblokinet-platform.a\
	/Users/lilac/Development/Loki/DarwinFresh/LokiNetwork/external/loki-network-build/RelWithDebInfo/liblokinet-cryptography.a
	/bin/rm -f /Users/lilac/Development/Loki/DarwinFresh/LokiNetwork/external/loki-network-build/RelWithDebInfo/lokinet


PostBuild.lokinet-cryptography.RelWithDebInfo:
/Users/lilac/Development/Loki/DarwinFresh/LokiNetwork/external/loki-network-build/RelWithDebInfo/liblokinet-cryptography.a:
	/bin/rm -f /Users/lilac/Development/Loki/DarwinFresh/LokiNetwork/external/loki-network-build/RelWithDebInfo/liblokinet-cryptography.a


PostBuild.lokinet-platform.RelWithDebInfo:
/Users/lilac/Development/Loki/DarwinFresh/LokiNetwork/external/loki-network-build/RelWithDebInfo/liblokinet-platform.a:
	/bin/rm -f /Users/lilac/Development/Loki/DarwinFresh/LokiNetwork/external/loki-network-build/RelWithDebInfo/liblokinet-platform.a


PostBuild.lokinet-static.RelWithDebInfo:
/Users/lilac/Development/Loki/DarwinFresh/LokiNetwork/external/loki-network-build/RelWithDebInfo/liblokinet-static.a:
	/bin/rm -f /Users/lilac/Development/Loki/DarwinFresh/LokiNetwork/external/loki-network-build/RelWithDebInfo/liblokinet-static.a


PostBuild.testAll.RelWithDebInfo:
PostBuild.gtest_main.RelWithDebInfo: /Users/lilac/Development/Loki/DarwinFresh/LokiNetwork/external/loki-network-build/RelWithDebInfo/testAll
PostBuild.lokinet-static.RelWithDebInfo: /Users/lilac/Development/Loki/DarwinFresh/LokiNetwork/external/loki-network-build/RelWithDebInfo/testAll
PostBuild.lokinet-platform.RelWithDebInfo: /Users/lilac/Development/Loki/DarwinFresh/LokiNetwork/external/loki-network-build/RelWithDebInfo/testAll
PostBuild.gtest.RelWithDebInfo: /Users/lilac/Development/Loki/DarwinFresh/LokiNetwork/external/loki-network-build/RelWithDebInfo/testAll
PostBuild.lokinet-cryptography.RelWithDebInfo: /Users/lilac/Development/Loki/DarwinFresh/LokiNetwork/external/loki-network-build/RelWithDebInfo/testAll
/Users/lilac/Development/Loki/DarwinFresh/LokiNetwork/external/loki-network-build/RelWithDebInfo/testAll:\
	/Users/lilac/Development/Loki/DarwinFresh/LokiNetwork/external/loki-network-build/test/gtest/RelWithDebInfo/libgtest_main.a\
	/Users/lilac/Development/Loki/DarwinFresh/LokiNetwork/external/loki-network-build/RelWithDebInfo/liblokinet-static.a\
	/Users/lilac/Development/Loki/DarwinFresh/LokiNetwork/external/loki-network-build/RelWithDebInfo/liblokinet-platform.a\
	/Users/lilac/Development/Loki/DarwinFresh/LokiNetwork/external/loki-network-build/test/gtest/RelWithDebInfo/libgtest.a\
	/Users/lilac/Development/Loki/DarwinFresh/LokiNetwork/external/loki-network-build/RelWithDebInfo/liblokinet-cryptography.a
	/bin/rm -f /Users/lilac/Development/Loki/DarwinFresh/LokiNetwork/external/loki-network-build/RelWithDebInfo/testAll




# For each target create a dummy ruleso the target does not have to exist
/Users/lilac/Development/Loki/DarwinFresh/LokiNetwork/external/loki-network-build/Debug/liblokinet-cryptography.a:
/Users/lilac/Development/Loki/DarwinFresh/LokiNetwork/external/loki-network-build/Debug/liblokinet-platform.a:
/Users/lilac/Development/Loki/DarwinFresh/LokiNetwork/external/loki-network-build/Debug/liblokinet-static.a:
/Users/lilac/Development/Loki/DarwinFresh/LokiNetwork/external/loki-network-build/MinSizeRel/liblokinet-cryptography.a:
/Users/lilac/Development/Loki/DarwinFresh/LokiNetwork/external/loki-network-build/MinSizeRel/liblokinet-platform.a:
/Users/lilac/Development/Loki/DarwinFresh/LokiNetwork/external/loki-network-build/MinSizeRel/liblokinet-static.a:
/Users/lilac/Development/Loki/DarwinFresh/LokiNetwork/external/loki-network-build/RelWithDebInfo/liblokinet-cryptography.a:
/Users/lilac/Development/Loki/DarwinFresh/LokiNetwork/external/loki-network-build/RelWithDebInfo/liblokinet-platform.a:
/Users/lilac/Development/Loki/DarwinFresh/LokiNetwork/external/loki-network-build/RelWithDebInfo/liblokinet-static.a:
/Users/lilac/Development/Loki/DarwinFresh/LokiNetwork/external/loki-network-build/Release/liblokinet-cryptography.a:
/Users/lilac/Development/Loki/DarwinFresh/LokiNetwork/external/loki-network-build/Release/liblokinet-platform.a:
/Users/lilac/Development/Loki/DarwinFresh/LokiNetwork/external/loki-network-build/Release/liblokinet-static.a:
/Users/lilac/Development/Loki/DarwinFresh/LokiNetwork/external/loki-network-build/test/gtest/Debug/libgtest.a:
/Users/lilac/Development/Loki/DarwinFresh/LokiNetwork/external/loki-network-build/test/gtest/Debug/libgtest_main.a:
/Users/lilac/Development/Loki/DarwinFresh/LokiNetwork/external/loki-network-build/test/gtest/MinSizeRel/libgtest.a:
/Users/lilac/Development/Loki/DarwinFresh/LokiNetwork/external/loki-network-build/test/gtest/MinSizeRel/libgtest_main.a:
/Users/lilac/Development/Loki/DarwinFresh/LokiNetwork/external/loki-network-build/test/gtest/RelWithDebInfo/libgtest.a:
/Users/lilac/Development/Loki/DarwinFresh/LokiNetwork/external/loki-network-build/test/gtest/RelWithDebInfo/libgtest_main.a:
/Users/lilac/Development/Loki/DarwinFresh/LokiNetwork/external/loki-network-build/test/gtest/Release/libgtest.a:
/Users/lilac/Development/Loki/DarwinFresh/LokiNetwork/external/loki-network-build/test/gtest/Release/libgtest_main.a:
