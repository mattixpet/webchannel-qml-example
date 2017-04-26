# WebChannel QML Example

The Qt documentation doesn't seem to have an example using QML and WebChannel together, only C++ and WebSockets or other. So after painstakingly figuring this out myself through intense googling and trial and error, I have come up with this fairly minimal example of what I needed to do (which hopefully will save someone else some time), which was embed a local html file into a QML application and expose it to a C++ created object passed to my QML (and have two-way communication between the object and the html).

Here's a bunch of useful/less useful links which I encountered on my googling journey

* [Qt Standalone WebChannel Example](http://doc.qt.io/qt-5/qtwebchannel-standalone-example.html) (uses C++ to create WebChannel)
* [WebChannel in QML](http://doc.qt.io/qt-5/qtwebchannel-chatclient-qml-example.html) (but with no .html or C++)
* [WebEngineView docs](http://doc.qt.io/qt-5/qml-qtwebengine-webengineview.html) (WebEngineView used to embed local html)
* [Old way of connecting to WebChannel](https://www.kdab.com/qt-webchannel-bridging-gap-cqml-web/) (includes the needed javascript code and other useful information)

## Usage

Open the `.pro` file in QtCreator and hit `Ctrl-R` to run it. When you click the "Enlighten" button, you are invoking a function in a C++ object introduced to QML, which then in turn emits a signal which the embedded html receives and reacts to.