//
//  Model.swift
//  HomeScreen
//
//  Created by Ismailov Farrukh on 24/02/24.
//

import Foundation

struct Library: Hashable, Identifiable {
    var id = UUID()
    let name: String
    let imageName: String
    let urlString: String
    let description: String
}


struct MockData {

    static let library = [

        Library(name: "Notes",
                imageName: "notes",
                urlString: "https://developer.apple.com/xcode/swiftui",
                description: "SwiftUI is an innovative, exceptionally simple way to build user interfaces across all Apple platforms with the power of Swift. Build user interfaces for any Apple device using just one set of tools and APIs.\n\nWith a declarative Swift syntax that’s easy to read and natural to write, SwiftUI works seamlessly with new Xcode design tools to keep your code and design perfectly in sync. Automatic support for Dynamic Type, Dark Mode, localization, and accessibility means your first line of SwiftUI code is already the most powerful UI code you’ve ever written."),

        Library(name: "Clock",
                imageName: "clock",
                urlString: "https://developer.apple.com/xcode/swiftui",
                description: "SwiftUI is an innovative, exceptionally simple way to build user interfaces across all Apple platforms with the power of Swift. Build user interfaces for any Apple device using just one set of tools and APIs.\n\nWith a declarative Swift syntax that’s easy to read and natural to write, SwiftUI works seamlessly with new Xcode design tools to keep your code and design perfectly in sync. Automatic support for Dynamic Type, Dark Mode, localization, and accessibility means your first line of SwiftUI code is already the most powerful UI code you’ve ever written."),

        Library(name: "AppStore",
                imageName: "appstore",
                urlString: "https://developer.apple.com/xcode/swiftui",
                description: "SwiftUI is an innovative, exceptionally simple way to build user interfaces across all Apple platforms with the power of Swift. Build user interfaces for any Apple device using just one set of tools and APIs.\n\nWith a declarative Swift syntax that’s easy to read and natural to write, SwiftUI works seamlessly with new Xcode design tools to keep your code and design perfectly in sync. Automatic support for Dynamic Type, Dark Mode, localization, and accessibility means your first line of SwiftUI code is already the most powerful UI code you’ve ever written."),


        Library(name: "Books",
                imageName: "books",
                urlString: "https://developer.apple.com/augmented-reality/arkit",
                description: "ARKit 4 introduces a brand-new Depth API, creating a new way to access the detailed depth information gathered by the LiDAR Scanner on iPhone 12 Pro, iPhone 12 Pro Max, and iPad Pro.\n\nLocation Anchors leverages the higher-resolution data in Apple Maps to place AR experiences at a specific point in the world in your iPhone and iPad apps. And support for face tracking extends to all devices with the Apple Neural Engine and a front-facing camera, so even more users can experience the joy of AR in photos and videos."),

        Library(name: "Photo",
                imageName: "galary",
                urlString: "https://developer.apple.com/carplay",
                description: "A smarter, safer way to use your iPhone in the car, CarPlay takes the things you want to do with your iPhone while driving and puts them on your car’s built-in display.\n\nYou can get directions, make calls, send and receive messages, and listen to music, all while staying focused on the road."),

        Library(name: "Camera",
                imageName: "photo",
                urlString: "https://developer.apple.com/mac-catalyst",
                description: "Native Mac apps built with Mac Catalyst can share code with your iPad apps, and you can add more features just for Mac. In macOS Big Sur, you can create even more powerful versions of your apps and take advantage of every pixel on the screen by running them at native Mac resolution.\n\nApps built with Mac Catalyst can now be fully controlled using just the keyboard, access more iOS frameworks, and take advantage of the all-new look of macOS Big Sur. There’s never been a better time to turn your iPad app into a powerful Mac app."),

        Library(name: "Instagram",
                imageName: "instagram",
                urlString: "https://developer.apple.com/classkit",
                description: "The many great learning apps available in the App Store are an integral part of the teaching and learning experience in schools. By adopting ClassKit, your app will work with Schoolwork, a powerful iPad app for teachers and students to help keep track of assignments and student progress.\n\nYou can help teachers discover assignable activities in your app, take students directly to the right activity with a single tap, and securely and privately share progress data with teachers to help them personalize instruction."),

        Library(name: "Settings",
                imageName: "settings",
                urlString: "https://developer.apple.com/icloud/cloudkit",
                description: "Store your app’s data in iCloud and keep everything up to date across apps and on the web with CloudKit JS. With up to 1PB of free storage for each app, it’s never been easier to build and grow your apps using CloudKit."),

        Library(name: "Youtube",
                imageName: "youtube",
                urlString: "https://developer.apple.com/machine-learning",
                description: "Create intelligent features and enable new experiences for your apps by leveraging powerful on-device machine learning.\n\nLearn how to build, train, and deploy machine learning models into your iPhone, iPad, Apple Watch, and Mac apps."),

        Library(name: "WhatsUp",
                imageName: "whatsup",
                urlString: "https://developer.apple.com/health-fitness",
                description: "Integrate HealthKit into your health and fitness apps for iOS and watchOS to create a more seamless user experience.\n\nWhen a customer provides permission for your app to read and write health and activity data to their Health app, your app becomes a valuable data source and can deliver deeply informed health and fitness solutions."),

        Library(name: "Stocks",
                imageName: "stock",
                urlString: "https://developer.apple.com/health-fitness",
                description: "Integrate HealthKit into your health and fitness apps for iOS and watchOS to create a more seamless user experience.\n\nWhen a customer provides permission for your app to read and write health and activity data to their Health app, your app becomes a valuable data source and can deliver deeply informed health and fitness solutions."),

        Library(name: "Twitter",
                imageName: "twitter",
                urlString: "https://developer.apple.com/metal",
                description: "Metal provides near-direct access to the graphics processing unit (GPU), enabling you to maximize the graphics and compute potential of your apps on iOS, macOS, and tvOS.\n\nBuilding on an approachable, low-overhead architecture with precompiled GPU shaders, fine-grained resource control, and multithreading support, Metal further evolves support for GPU-driven command creation, simplifies working with the array of Metal-capable GPUs, and lets you tap into Pro power of Mac Pro and Pro Display XDR."),

        Library(name: "Health",
                imageName: "health",
                urlString: "https://developer.apple.com/sf-symbols",
                description: "With over 2,400 configurable symbols, SF Symbols is designed to integrate seamlessly with San Francisco, the system font for Apple platforms. Each symbol comes in a wide range of weights and scales that automatically align with text labels, and supports Dynamic Type and the Bold Text accessibility feature.\n\nYou can also export symbols and edit them in vector graphics editing tools to create custom symbols with shared design characteristics and accessibility features."),

        Library(name: "Alipay",
                imageName: "alipay",
                urlString: "https://developer.apple.com/sf-symbols",
                description: "With over 2,400 configurable symbols, SF Symbols is designed to integrate seamlessly with San Francisco, the system font for Apple platforms. Each symbol comes in a wide range of weights and scales that automatically align with text labels, and supports Dynamic Type and the Bold Text accessibility feature.\n\nYou can also export symbols and edit them in vector graphics editing tools to create custom symbols with shared design characteristics and accessibility features."),

        Library(name: "iTunes",
                imageName: "itunes",
                urlString: "https://developer.apple.com/sf-symbols",
                description: "With over 2,400 configurable symbols, SF Symbols is designed to integrate seamlessly with San Francisco, the system font for Apple platforms. Each symbol comes in a wide range of weights and scales that automatically align with text labels, and supports Dynamic Type and the Bold Text accessibility feature.\n\nYou can also export symbols and edit them in vector graphics editing tools to create custom symbols with shared design characteristics and accessibility features."),

        Library(name: "Mail",
                imageName: "mail",
                urlString: "https://developer.apple.com/sf-symbols",
                description: "With over 2,400 configurable symbols, SF Symbols is designed to integrate seamlessly with San Francisco, the system font for Apple platforms. Each symbol comes in a wide range of weights and scales that automatically align with text labels, and supports Dynamic Type and the Bold Text accessibility feature.\n\nYou can also export symbols and edit them in vector graphics editing tools to create custom symbols with shared design characteristics and accessibility features.")
    ]


    static let docs = [

        Library(name: "Phone",
                imageName: "phone",
                urlString: "https://developer.apple.com/widgets",
                description: "Easily build widgets and make them available across iOS, iPadOS, and macOS using the WidgetKit framework and the new widget API for SwiftUI. Widgets now come in multiple sizes, and users can visit the new widget gallery to search, preview sizes, and place them anywhere on the Home screen to access important details at a glance.\n\nThey can also add Smart Stacks — sets of widgets that use on-device intelligence to surface the right widget at the right moment, based on factors like time, location, and activity."),

        Library(name: "Messages",
                imageName: "messages",
                urlString: "https://developer.apple.com/widgets",
                description: "Easily build widgets and make them available across iOS, iPadOS, and macOS using the WidgetKit framework and the new widget API for SwiftUI. Widgets now come in multiple sizes, and users can visit the new widget gallery to search, preview sizes, and place them anywhere on the Home screen to access important details at a glance.\n\nThey can also add Smart Stacks — sets of widgets that use on-device intelligence to surface the right widget at the right moment, based on factors like time, location, and activity."),

        Library(name: "Mail",
                imageName: "mail",
                urlString: "https://developer.apple.com/widgets",
                description: "Easily build widgets and make them available across iOS, iPadOS, and macOS using the WidgetKit framework and the new widget API for SwiftUI. Widgets now come in multiple sizes, and users can visit the new widget gallery to search, preview sizes, and place them anywhere on the Home screen to access important details at a glance.\n\nThey can also add Smart Stacks — sets of widgets that use on-device intelligence to surface the right widget at the right moment, based on factors like time, location, and activity."),

        Library(name: "Safari",
                imageName: "safari",
                urlString: "https://developer.apple.com/xcode/swiftui",
                description: "SwiftUI is an innovative, exceptionally simple way to build user interfaces across all Apple platforms with the power of Swift. Build user interfaces for any Apple device using just one set of tools and APIs.\n\nWith a declarative Swift syntax that’s easy to read and natural to write, SwiftUI works seamlessly with new Xcode design tools to keep your code and design perfectly in sync. Automatic support for Dynamic Type, Dark Mode, localization, and accessibility means your first line of SwiftUI code is already the most powerful UI code you’ve ever written.")
    ]
}
