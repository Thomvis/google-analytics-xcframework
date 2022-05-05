frameworks/GoogleAnalytics.xcframework: build/ios-arm64.xcarchive build/ios-arm64_x86_64-simulator.xcarchive
	xcodebuild -create-xcframework \
		-framework ./build/ios-arm64.xcarchive/Products/Library/Frameworks/GoogleAnalytics.framework \
		-framework ./build/ios-arm64_x86_64-simulator.xcarchive/Products/Library/Frameworks/GoogleAnalytics.framework \
		-output ./frameworks/GoogleAnalytics.xcframework

build/ios-arm64.xcarchive:
	xcodebuild archive -project GoogleAnalytics-3.17.0/GoogleAnalytics.xcodeproj -scheme GoogleAnalytics -destination "generic/platform=iOS" -archivePath ./build/ios-arm64 SKIP_INSTALL=NO BUILD_LIBRARY_FOR_DISTRIBUTION=YES
	
build/ios-arm64_x86_64-simulator.xcarchive:
	xcodebuild archive -project GoogleAnalytics-3.17.0-dummy/GoogleAnalytics-dummy.xcodeproj -scheme GoogleAnalytics -destination "generic/platform=iOS Simulator" -archivePath ./build/ios-arm64_x86_64-simulator SKIP_INSTALL=NO BUILD_LIBRARY_FOR_DISTRIBUTION=YES

clean:
	rm -rf ./build
	rm -rf ./frameworks