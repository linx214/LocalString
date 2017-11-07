# LocalString
使用场景：App提供语言切换功能，App适应不同手机语言场景，而提供不同语种的UI提示用语。
使用步骤：
1. 创建Localizable.strings文件，在Xcode右边栏中，打开Locale选项。
2. 在App的工程Info中，添加国际化语种。
3. 通过LocalString切换语种，使用时，调用LocalString.stringFor(key: String) -> String? 获取本地化用语。

