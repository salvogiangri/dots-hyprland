import qs.modules.common
import qs.modules.common.widgets
import qs.services
import QtQuick
import QtQuick.Layouts

Item {
    id: root
    property bool borderless: Config.options.bar.borderless
    property bool showDate: Config.options.bar.verbose
    implicitWidth: rowLayout.implicitWidth
    implicitHeight: 32

    RowLayout {
        id: rowLayout
        anchors.centerIn: parent
        spacing: 4

        StyledText {
            visible: root.showDate
            font.pixelSize: Appearance.font.pixelSize.small
            color: Appearance.colors.colOnLayer1
            text: DateTime.date
            font.weight: 600
        }

        StyledText {
            font.pixelSize: Appearance.font.pixelSize.small
            color: Appearance.colors.colOnLayer1
            text: DateTime.time
            font.weight: 600
        }

    }

}
