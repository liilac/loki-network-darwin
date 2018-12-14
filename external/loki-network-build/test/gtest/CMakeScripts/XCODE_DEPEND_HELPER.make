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


PostBuild.gtest.Release:
/Users/lilac/Development/Loki/DarwinFresh/LokiNetwork/external/loki-network-build/test/gtest/Release/libgtest.a:
	/bin/rm -f /Users/lilac/Development/Loki/DarwinFresh/LokiNetwork/external/loki-network-build/test/gtest/Release/libgtest.a


PostBuild.gtest_main.Release:
/Users/lilac/Development/Loki/DarwinFresh/LokiNetwork/external/loki-network-build/test/gtest/Release/libgtest_main.a:
	/bin/rm -f /Users/lilac/Development/Loki/DarwinFresh/LokiNetwork/external/loki-network-build/test/gtest/Release/libgtest_main.a


PostBuild.gtest.MinSizeRel:
/Users/lilac/Development/Loki/DarwinFresh/LokiNetwork/external/loki-network-build/test/gtest/MinSizeRel/libgtest.a:
	/bin/rm -f /Users/lilac/Development/Loki/DarwinFresh/LokiNetwork/external/loki-network-build/test/gtest/MinSizeRel/libgtest.a


PostBuild.gtest_main.MinSizeRel:
/Users/lilac/Development/Loki/DarwinFresh/LokiNetwork/external/loki-network-build/test/gtest/MinSizeRel/libgtest_main.a:
	/bin/rm -f /Users/lilac/Development/Loki/DarwinFresh/LokiNetwork/external/loki-network-build/test/gtest/MinSizeRel/libgtest_main.a


PostBuild.gtest.RelWithDebInfo:
/Users/lilac/Development/Loki/DarwinFresh/LokiNetwork/external/loki-network-build/test/gtest/RelWithDebInfo/libgtest.a:
	/bin/rm -f /Users/lilac/Development/Loki/DarwinFresh/LokiNetwork/external/loki-network-build/test/gtest/RelWithDebInfo/libgtest.a


PostBuild.gtest_main.RelWithDebInfo:
/Users/lilac/Development/Loki/DarwinFresh/LokiNetwork/external/loki-network-build/test/gtest/RelWithDebInfo/libgtest_main.a:
	/bin/rm -f /Users/lilac/Development/Loki/DarwinFresh/LokiNetwork/external/loki-network-build/test/gtest/RelWithDebInfo/libgtest_main.a




# For each target create a dummy ruleso the target does not have to exist
