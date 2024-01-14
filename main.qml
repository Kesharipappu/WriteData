//import QtQuick 2.15
//import QtQuick.Controls 2.15

//ApplicationWindow {
//    visible: true
//    width: 400
//    height: 200
//    title: "Save Data to Text File"

//    Rectangle {
//        anchors.fill: parent

//        Column {
//            spacing: 10

//            TextField {
//                id: textBox1
//                placeholderText: "Enter data for Text Box 1"
//            }

//            TextField {
//                id: textBox2
//                placeholderText: "Enter data for Text Box 2"
//            }

//            Button {
//                text: "Save to File"
//                onClicked: {
//                    var dataToSave ="First Name is :"+ textBox1.text + "\n" +"Last Name is : "+ textBox2.text;
//                    if (fileHandler.saveToFile(dataToSave))
//                        console.log("Data saved to file successfully.");
//                    else
//                        console.error("Error saving data to file.");
//                }
//            }
//        }
//    }
//}

//import QtQuick 2.15
//import QtQuick.Controls 2.15
//import Qt.labs.folderlistmodel 2.15 // Import for accessing file system

//ApplicationWindow {
//    visible: true
//    width: 400
//    height: 200
//    title: "Save Data to Text File"

//    // Function to generate timestamp
//    function generateTimestamp() {
//        var date = new Date();
//        return date.getFullYear() + "-" + (date.getMonth() + 1) + "-" + date.getDate() +
//               "_" + date.getHours() + "-" + date.getMinutes() + "-" + date.getSeconds();
//    }

//    Rectangle {
//        anchors.fill: parent

//        Column {
//            spacing: 10

//            TextField {
//                id: textBox1
//                placeholderText: "Enter data for Text Box 1"
//            }

//            TextField {
//                id: textBox2
//                placeholderText: "Enter data for Text Box 2"
//            }

//            Button {
//                text: "Save to File"
//                onClicked: {
//                    var timestamp = generateTimestamp();
//                    var fileName = "data_" + timestamp + ".txt";

//                    var dataToSave = "First Name is: " + textBox1.text + "\n" + "Last Name is: " + textBox2.text;
//                    var folder = "file://" + Qt.resolvedUrl(".");
//                    var fileUrl = folder + fileName;

//                    var fileHandler = Qt.createQmlObject('import QtQuick 2.15; import Qt.labs.folderlistmodel 2.15; FileHandler { }',
//                                                          Qt.application);

//                    if (fileHandler.saveToFile(fileUrl, dataToSave))
//                        console.log("Data saved to file successfully.");
//                    else
//                        console.error("Error saving data to file.");
//                }
//            }
//        }
//    }
//}

//import QtQuick 2.15
//import QtQuick.Controls 2.15
//import Qt.labs.folderlistmodel 2.15
//import QtQuick.Dialogs 1.3 // Import for FileDialog

//ApplicationWindow {
//    visible: true
//    width: 400
//    height: 200
//    title: "Save Data to Text File"

//    function generateTimestamp() {
//        var date = new Date();
//        return date.getFullYear() + "-" + (date.getMonth() + 1) + "-" + date.getDate() +
//               "_" + date.getHours() + "-" + date.getMinutes() + "-" + date.getSeconds();
//    }

//    Rectangle {
//        anchors.fill: parent

//        Column {
//            spacing: 10

//            TextField {
//                id: textBox1
//                placeholderText: "Enter data for Text Box 1"
//            }

//            TextField {
//                id: textBox2
//                placeholderText: "Enter data for Text Box 2"
//            }

//            Button {
//                text: "Save to File"
//                onClicked: {
//                    var timestamp = generateTimestamp();
//                    var fileName = "data_" + timestamp + ".txt";
//                    var dataToSave = "First Name is: " + textBox1.text + "\n" + "Last Name is: " + textBox2.text;

//                    // Use FileDialog to prompt user for the save location
//                    var savePath = fileDialog.saveFileUrl(Qt.resolvedUrl("."), fileName, "Text files (*.txt)");

//                    if (savePath !== "") {
//                        var file = Qt.createQmlObject('import QtQuick 2.15; import Qt.labs.folderlistmodel 2.15; File { }', Qt.application);
//                        file.open(Qt.File.WriteOnly | Qt.File.Text);
//                        file.write(dataToSave);
//                        file.close();

//                        console.log("Data saved to file successfully.");
//                    } else {
//                        console.error("Error saving data to file.");
//                    }
//                }
//            }
//        }
//    }
//}

//import QtQuick 2.15
//import QtQuick.Controls 2.15
//import Qt.labs.folderlistmodel 2.15
//import QtQuick.Dialogs 1.3

//ApplicationWindow {
//    visible: true
//    width: 400
//    height: 200
//    title: "Save Data to Text File"

//    function generateTimestamp() {
//        var date = new Date();
//        return date.getFullYear() + "-" + (date.getMonth() + 1) + "-" + date.getDate() +
//               "_" + date.getHours() + "-" + date.getMinutes() + "-" + date.getSeconds();
//    }

//    Rectangle {
//        anchors.fill: parent

//        Column {
//            spacing: 10

//            TextField {
//                id: textBox1
//                placeholderText: "Enter data for Text Box 1"
//            }

//            TextField {
//                id: textBox2
//                placeholderText: "Enter data for Text Box 2"
//            }

//            Button {
//                text: "Save to File"
//                onClicked: {
//                    var timestamp = generateTimestamp();
//                    var fileName = "data_" + timestamp + ".txt";
//                    var dataToSave = "First Name is: " + textBox1.text + "\n" + "Last Name is: " + textBox2.text;

//                    // Use FileDialog to prompt user for the save location
//                    fileDialog.visible = true;
//                    fileDialog.accepted.connect(function() {
//                        var savePath = fileDialog.fileUrl;
//                        if (savePath !== "") {
//                            var file = Qt.createQmlObject('import QtQuick 2.15; import Qt.labs.folderlistmodel 2.15; File { }', Qt.application);
//                            file.open(Qt.File.WriteOnly | Qt.File.Text);
//                            file.write(dataToSave);
//                            file.close();

//                            console.log("Data saved to file successfully.");
//                        } else {
//                            console.error("Error saving data to file.");
//                        }
//                    });
//                }
//            }
//        }
//    }

//    // FileDialog component
//    FileDialog {
//        id: fileDialog
//        title: "Save File"
//        selectExisting: false
//        nameFilters: ["Text files (*.txt)"]
//    }
//}

import QtQuick 2.15
import QtQuick.Controls 2.15
import Qt.labs.folderlistmodel 2.15
import QtQuick.Dialogs 1.3
import Qt.labs.settings 1.0

ApplicationWindow {
    visible: true
    width: 400
    height: 200
    title: "Save Data to Text File"

    function generateTimestamp() {
        var date = new Date();
        return date.getFullYear() + "-" + (date.getMonth() + 1) + "-" + date.getDate() +
               "_" + date.getHours() + "-" + date.getMinutes() + "-" + date.getSeconds();
    }

    // Initialize QSettings instance to resolve the error
    Settings {
        id: settings
        property alias organizationName: "MyOrganization"
        property alias organizationDomain: "example.com"
    }

    Rectangle {
        anchors.fill: parent

        Column {
            spacing: 10

            TextField {
                id: textBox1
                placeholderText: "Enter data for Text Box 1"
            }

            TextField {
                id: textBox2
                placeholderText: "Enter data for Text Box 2"
            }

            Button {
                text: "Save to File"
                onClicked: {
                    var timestamp = generateTimestamp();
                    var fileName = "data_" + timestamp + ".txt";
                    var dataToSave = "First Name is: " + textBox1.text + "\n" + "Last Name is: " + textBox2.text;

                    // Use FileDialog to prompt user for the save location
                    fileDialog.visible = true;
                    fileDialog.accepted.connect(function() {
                        var savePath = fileDialog.fileUrl;
                        if (savePath !== "") {
                            var file = new QFile(savePath);
                            if (file.open(QIODevice.WriteOnly | QIODevice.Text)) {
                                var fileStream = new QTextStream(file);
                                fileStream.writeString(dataToSave);
                                file.close();
                                console.log("Data saved to file successfully.");
                            } else {
                                console.error("Error opening the file.");
                            }
                        } else {
                            console.error("No file selected.");
                        }
                    });
                }
            }
        }
    }

    // FileDialog component
    FileDialog {
        id: fileDialog
        title: "Save File"
        selectExisting: false
        nameFilters: ["Text files (*.txt)"]
    }
}




