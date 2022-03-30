import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.12
import QtQuick.Layouts 1.3

Window {
    width: 240
    height: 680
    minimumWidth: 220
    minimumHeight: 500
    visible: true
    title: qsTr("37_3")

    Button {
        id: button_0
        text: "0"
        anchors.left: parent.left

        onClicked: { tv_status.text = "Текущий канал: 0"; }
    }

    Button {
        id: button_1
        text: "1"
        anchors.right: parent.right

        onClicked: { tv_status.text = "Текущий канал: 1"; }
    }

    Button {
        id: button_2
        text: "2"
        anchors.left: parent.left
        anchors.verticalCenter: parent.verticalCenter
        anchors.verticalCenterOffset: -180

        onClicked: { tv_status.text = "Текущий канал: 2"; }
    }

    Button {
        id: button_3
        text: "3"
        anchors.right: parent.right
        anchors.verticalCenter: parent.verticalCenter
        anchors.verticalCenterOffset: -180

        onClicked: { tv_status.text = "Текущий канал: 3"; }
    }

    Button {
        id: button_4
        text: "4"
        anchors.left: parent.left
        anchors.verticalCenter: parent.verticalCenter
        anchors.verticalCenterOffset: -120

        onClicked: { tv_status.text = "Текущий канал: 4"; }
    }

    Button {
        id: button_5
        text: "5"
        anchors.right: parent.right
        anchors.verticalCenter: parent.verticalCenter
        anchors.verticalCenterOffset: -120

        onClicked: { tv_status.text = "Текущий канал: 5"; }
    }

    Button {
        id: button_6
        text: "6"
        anchors.left: parent.left
        anchors.verticalCenter: parent.verticalCenter
        anchors.verticalCenterOffset: -60

        onClicked: { tv_status.text = "Текущий канал: 6"; }
    }

    Button {
        id: button_7
        text: "7"
        anchors.right: parent.right
        anchors.verticalCenter: parent.verticalCenter
        anchors.verticalCenterOffset: -60

        onClicked: { tv_status.text = "Текущий канал: 7"; }
    }

    Button {
        id: button_8
        text: "8"
        anchors.left: parent.left
        anchors.verticalCenter: parent.verticalCenter

        onClicked: { tv_status.text = "Текущий канал: 8"; }
    }

    Button {
        id: button_9
        text: "9"
        anchors.right: parent.right
        anchors.verticalCenter: parent.verticalCenter

        onClicked: { tv_status.text = "Текущий канал: 9"; }
    }

    Button {
        id: next_channel
        text: "⏩️"
        anchors.right: parent.right
        anchors.verticalCenter: parent.verticalCenter
        anchors.verticalCenterOffset: 60

        onClicked: {
            let channel_index = tv_status.text.length - 1;
            let channel_number = tv_status.text[channel_index];
            let result_number = Number(channel_number) + Number(1);

            if(result_number == 10) {
                tv_status.text = "Текущий канал: 0";
            } else {
                tv_status.text = "Текущий канал: " + result_number;
            }
        }
    }

    Button {
        id: prev_channel
        text: "⏪️"
        anchors.left: parent.left
        anchors.verticalCenter: parent.verticalCenter
        anchors.verticalCenterOffset: 60

        onClicked: {
            let channel_index = tv_status.text.length - 1;
            let channel_number = tv_status.text[channel_index];
            let result_number = Number(channel_number) - Number(1);

            if(result_number == -1) {
                tv_status.text = "Текущий канал: 9";
            } else {
                tv_status.text = "Текущий канал: " + result_number;
            }
        }
    }

    Button {
        id: vol_plus
        text: "+ volume"
        anchors.right: parent.right
        anchors.verticalCenter: parent.verticalCenter
        anchors.verticalCenterOffset: 120

        onClicked: {
            var number = volume_status.text.substring(18);
            let res = Number(number) + Number(10);

            if(res > 100) {
                res -= Number(10);
                volume_status.text = "Текущая громкость: " + res;
            } else {
                volume_status.text = "Текущая громкость: " + res;
            }
        }
    }

    Button {
        id: vol_minus
        text: "volume -"
        anchors.left: parent.left
        anchors.verticalCenter: parent.verticalCenter
        anchors.verticalCenterOffset: 120

        onClicked: {
            var number = volume_status.text.substring(18);
            let res = Number(number) - Number(10);

            if(res < 0) {
                res += Number(10);
                volume_status.text = "Текущая громкость: " + res;
            } else {
                volume_status.text = "Текущая громкость: " + res;
            }
        }
    }

    Text {
        id: tv_status
        anchors.verticalCenter: parent.verticalCenter
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.verticalCenterOffset: 160
        text: "Телевизор выключен"
    }

    Text {
        id: volume_status
        anchors.verticalCenter: parent.verticalCenter
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.verticalCenterOffset: 200
        text: "Громкость звука: 0"
    }
}
