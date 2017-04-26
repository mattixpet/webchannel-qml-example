/*
Copyright 2016 Matthias Petursson. All Rights Reserved.

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at
    http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.

File author/s:
    Matthias Petursson <oldschool01123@gmail.com>
*/

import QtQuick 2.6
import QtQuick.Window 2.2
import QtQuick.Controls 1.4
import QtWebChannel 1.0
import QtWebEngine 1.1

import WisdomClub 1.0

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("WebChannel QML Example")

    Sage {
        id: oldBeardedMan
        WebChannel.id: "wiseMan"
    }

    WebEngineView {
        id: webview
        anchors.fill: parent
        url: "qrc:/index.html"
        webChannel: channel
    }

    WebChannel {
        id: channel
        registeredObjects: [oldBeardedMan]
    }

    Button {
        text: "Enlighten"
        anchors.right: parent.right
        anchors.top: parent.top
        anchors.margins: 30
        onClicked: oldBeardedMan.changeAnswerToLife()
    }
}
