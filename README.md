# iOS Dynamic AppIcon

![](/demo.gif "")

# Setup

  - target - iOS 10.3
  - Add Alternate icon images in your project
  - Configure info.plist
      - set "supportsAlternateIcons" to true
      - set "CFBundleAlternateIcons" as below
    ```
    <key>supportsAlternateIcons</key>
    <true/>
	<key>CFBundleIcons</key>
	<dict>
		<key>CFBundleAlternateIcons</key>
		<dict>
            <key>AppIconGreen</key>
            <dict>
                <key>UIPrerenderedIcon</key>
                <false/>
                <key>CFBundleIconFiles</key>
                <array>
                    <string>green</string>
                </array>
            </dict>
            <key>AppIconBlue</key>
            <dict>
                <key>UIPrerenderedIcon</key>
                <false/>
                <key>CFBundleIconFiles</key>
                <array>
                    <string>blue</string>
                </array>
            </dict>
		</dict>
        <key>CFBundlePrimaryIcon</key>
        <dict>
            <key>CFBundleIconFiles</key>
            <array>
                <string>AppIcon</string>
            </array>
        </dict>
	</dict>
    ```
# Usage:

 - Update icon
    ```swift
    UIApplication.shared.setAlternateIconName("AlternateIconName") { (_ error: Error?) -> Void in
            print("error = \(String(describing: error?.localizedDescription))")
        }
    ```

Notes:
  - Images added to the assets seems to not working
 
