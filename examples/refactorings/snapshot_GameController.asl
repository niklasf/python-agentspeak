
# GameController/src/teamcomm/PluginLoader.java

class("PluginLoader").
method("PluginLoader", "PluginLoader", 3, 0, "fthielke@fb3.uni-bremen.de").
calls("PluginLoader", "PluginLoader", "PluginLoader", "scanJar").
method("PluginLoader", "getInstance", 3, 1, "fthielke@fb3.uni-bremen.de").
method("PluginLoader", "enablePlugins", 3, 1, "fthielke@fb3.uni-bremen.de").
method("PluginLoader", "disablePlugins", 3, 1, "fthielke@fb3.uni-bremen.de").
method("PluginLoader", "getMessageClass", 4, 1, "fthielke@fb3.uni-bremen.de").
method("PluginLoader", "createRobotDetailFrame", 11, 3, "fthielke@fb3.uni-bremen.de").
calls("PluginLoader", "createRobotDetailFrame", "Class", "getConstructor").
calls("PluginLoader", "createRobotDetailFrame", "NoSuchMethodException", "printStackTrace").
calls("PluginLoader", "createRobotDetailFrame", "NoSuchMethodException", "getClass").
calls("PluginLoader", "createRobotDetailFrame", "Class", "getName").
calls("PluginLoader", "createRobotDetailFrame", "NoSuchMethodException", "getMessage").
calls("PluginLoader", "createRobotDetailFrame", "Log", "error").
method("PluginLoader", "getCommonDrawings", 3, 1, "fthielke@fb3.uni-bremen.de").
calls("PluginLoader", "getCommonDrawings", "PluginLoader", "getDrawings").
method("PluginLoader", "getDrawings", 4, 1, "fthielke@fb3.uni-bremen.de").
method("PluginLoader", "update", 3, 1, "fthielke@fb3.uni-bremen.de").
calls("PluginLoader", "update", "PluginLoader", "update").
method("PluginLoader", "update", 34, 11, "fthielke@fb3.uni-bremen.de").
calls("PluginLoader", "update", "Iterator", "hasNext").
calls("PluginLoader", "update", "Map", "get").
calls("PluginLoader", "update", "Collection", "isEmpty").
calls("PluginLoader", "update", "Iterator", "remove").
calls("PluginLoader", "update", "Iterator", "remove").
calls("PluginLoader", "update", "File", "isDirectory").
calls("PluginLoader", "update", "LinkedList", "add").
calls("PluginLoader", "update", "LinkedList", "isEmpty").
calls("PluginLoader", "update", "File", "isDirectory").
calls("PluginLoader", "update", "LinkedList", "addLast").
calls("PluginLoader", "update", "File", "isFile").
calls("PluginLoader", "update", "File", "getName").
calls("PluginLoader", "update", "List", "add").
calls("PluginLoader", "update", "PluginLoader", "scanJar").
method("PluginLoader", "scanJar", 49, 15, "fthielke@fb3.uni-bremen.de").
calls("PluginLoader", "scanJar", "Enumeration", "hasMoreElements").
calls("PluginLoader", "scanJar", "JarEntry", "getName").
calls("PluginLoader", "scanJar", "JarEntry", "getName").
calls("PluginLoader", "scanJar", "Set", "add").
calls("PluginLoader", "scanJar", "Map", "containsKey").
calls("PluginLoader", "scanJar", "Map", "put").
calls("PluginLoader", "scanJar", "Throwable", "getClass").
calls("PluginLoader", "scanJar", "Class", "getName").
calls("PluginLoader", "scanJar", "Throwable", "getMessage").
calls("PluginLoader", "scanJar", "Log", "error").
calls("PluginLoader", "scanJar", "Map", "containsKey").
calls("PluginLoader", "scanJar", "Class", "asSubclass").
calls("PluginLoader", "scanJar", "Map", "put").
calls("PluginLoader", "scanJar", "Map", "put").
calls("PluginLoader", "scanJar", "Class", "isInstance").
calls("PluginLoader", "scanJar", "Drawing", "setTeamNumber").
calls("PluginLoader", "scanJar", "Collection", "add").
calls("PluginLoader", "scanJar", "Throwable", "getClass").
calls("PluginLoader", "scanJar", "Class", "getName").
calls("PluginLoader", "scanJar", "Throwable", "getMessage").
calls("PluginLoader", "scanJar", "Log", "error").
calls("PluginLoader", "scanJar", "Exception", "getClass").
calls("PluginLoader", "scanJar", "File", "getPath").
calls("PluginLoader", "scanJar", "Exception", "getMessage").
calls("PluginLoader", "scanJar", "Log", "error").

# GameController/src/teamcomm/Config.java

class("Config").
method("Config", "Config", 10, 0, "fthielke@fb3.uni-bremen.de").
calls("Config", "Config", "HashMap", "getClass").
method("Config", "getInstance", 6, 2, "fthielke@fb3.uni-bremen.de").
method("Config", "get", 3, 1, "fthielke@fb3.uni-bremen.de").
calls("Config", "get", "HashMap", "get").
method("Config", "set", 3, 1, "fthielke@fb3.uni-bremen.de").
calls("Config", "set", "HashMap", "put").
method("Config", "flush", 9, 3, "fthielke@fb3.uni-bremen.de").
calls("Config", "flush", "HashMap", "isEmpty").
calls("Config", "flush", "stream", "writeObject").
calls("Config", "flush", "stream", "flush").
calls("Config", "flush", "Log", "error").

# GameController/src/teamcomm/TeamCommunicationMonitor.java

class("TeamCommunicationMonitor").
method("TeamCommunicationMonitor", "main", 105, 25, "Thomas.Roefer@dfki.de").
calls("TeamCommunicationMonitor", "main", "System", "setProperty").
calls("TeamCommunicationMonitor", "main", "TeamCommunicationMonitor", "parseArgs").
calls("TeamCommunicationMonitor", "main", "ApplicationLock", "acquire").
calls("TeamCommunicationMonitor", "main", "System.out", "println").
calls("TeamCommunicationMonitor", "main", "JOptionPane", "showMessageDialog").
calls("TeamCommunicationMonitor", "main", "System", "exit").
calls("TeamCommunicationMonitor", "main", "System.out", "println").
calls("TeamCommunicationMonitor", "main", "IOException", "getClass").
calls("TeamCommunicationMonitor", "main", "JOptionPane", "showMessageDialog").
calls("TeamCommunicationMonitor", "main", "System", "exit").
calls("TeamCommunicationMonitor", "main", "System.out", "println").
calls("TeamCommunicationMonitor", "main", "GLProfile", "initSingleton").
calls("TeamCommunicationMonitor", "main", "ApplicationLock", "acquire").
calls("TeamCommunicationMonitor", "main", "Logger", "getInstance").
calls("TeamCommunicationMonitor", "main", "ApplicationLock", "release").
calls("TeamCommunicationMonitor", "main", "JOptionPane", "showMessageDialog").
calls("TeamCommunicationMonitor", "main", "System", "exit").
calls("TeamCommunicationMonitor", "main", "GameState", "getInstance").
calls("TeamCommunicationMonitor", "main", "GameControlDataReceiver", "addListener").
calls("TeamCommunicationMonitor", "main", "SPLStandardMessageReceiverTCM", "getInstance").
calls("TeamCommunicationMonitor", "main", "System", "setProperty").
calls("TeamCommunicationMonitor", "main", "PluginLoader", "getInstance").
calls("TeamCommunicationMonitor", "main", "PluginLoader", "getInstance").
calls("TeamCommunicationMonitor", "main", "GameControlDataReceiver", "start").
calls("TeamCommunicationMonitor", "main", "SPLStandardMessageReceiverTCM", "start").
calls("TeamCommunicationMonitor", "main", "MainWindow", "terminate").
calls("TeamCommunicationMonitor", "main", "PluginLoader", "getInstance").
calls("TeamCommunicationMonitor", "main", "View3DGSV", "terminate").
calls("TeamCommunicationMonitor", "main", "PluginLoader", "getInstance").
calls("TeamCommunicationMonitor", "main", "Object", "wait").
calls("TeamCommunicationMonitor", "main", "Config", "getInstance").
calls("TeamCommunicationMonitor", "main", "ApplicationLock", "release").
calls("TeamCommunicationMonitor", "main", "GameState", "getInstance").
calls("TeamCommunicationMonitor", "main", "SPLStandardMessageReceiverTCM", "interrupt").
calls("TeamCommunicationMonitor", "main", "GameControlDataReceiver", "interrupt").
calls("TeamCommunicationMonitor", "main", "MainWindow", "terminate").
calls("TeamCommunicationMonitor", "main", "View3DGSV", "terminate").
calls("TeamCommunicationMonitor", "main", "LogReplayer", "getInstance").
calls("TeamCommunicationMonitor", "main", "Logger", "getInstance").
calls("TeamCommunicationMonitor", "main", "GameControlDataReceiver", "join").
calls("TeamCommunicationMonitor", "main", "SPLStandardMessageReceiverTCM", "join").
calls("TeamCommunicationMonitor", "main", "System", "exit").
method("TeamCommunicationMonitor", "parseArgs", 27, 4, "fthielke@fb3.uni-bremen.de").
calls("TeamCommunicationMonitor", "parseArgs", "System.out", "println").
calls("TeamCommunicationMonitor", "parseArgs", "System", "exit").
calls("TeamCommunicationMonitor", "parseArgs", "league.leagueDirectory", "equalsIgnoreCase").
method("TeamCommunicationMonitor", "shutdown", 6, 1, "Thomas.Roefer@dfki.de").
calls("TeamCommunicationMonitor", "shutdown", "Object", "notifyAll").
method("TeamCommunicationMonitor", "switchToGSV", 6, 1, "fthielke@fb3.uni-bremen.de").
calls("TeamCommunicationMonitor", "switchToGSV", "Object", "notifyAll").
method("TeamCommunicationMonitor", "switchToTCM", 6, 1, "fthielke@fb3.uni-bremen.de").
calls("TeamCommunicationMonitor", "switchToTCM", "Object", "notifyAll").

# GameController/src/controller/EventHandler.java

class("EventHandler").
method("EventHandler", "EventHandler", 1, 0, "simont@tzi.de").
method("EventHandler", "getInstance", 6, 2, "simont@tzi.de").
method("EventHandler", "setGUI", 3, 1, "simont@tzi.de").
method("EventHandler", "register", 10, 3, "simont@tzi.de").
calls("EventHandler", "register", "EventQueue", "isDispatchThread").
calls("EventHandler", "register", "GCAction", "isLegal").
calls("EventHandler", "register", "GCAction", "perform").
calls("EventHandler", "register", "EventHandler", "update").
calls("EventHandler", "register", "EventQueue", "invokeLater").
method("EventHandler", "update", 18, 5, "simont@tzi.de").
calls("EventHandler", "update", "Sender", "send").
calls("EventHandler", "update", "GCGUI", "update").

# GameController/src/controller/Clock.java

class("Clock").
method("Clock", "getInstance", 6, 2, "Thomas.Roefer@dfki.de").
method("Clock", "start", 9, 3, "simont@tzi.de").
calls("Clock", "start", "Thread", "currentThread").
calls("Clock", "start", "Thread", "isInterrupted").
calls("Clock", "start", "ActionBoard.clock", "actionPerformed").
calls("Clock", "start", "Thread", "sleep").
calls("Clock", "start", "Thread", "interrupt").
method("Clock", "interrupt", 3, 1, "Thomas.Roefer@dfki.de").
calls("Clock", "interrupt", "Thread", "interrupt").

# GameController/src/controller/GameController.java

class("GameController").
method("GameController", "main", 194, 39, "Thomas.Roefer@dfki.de").
calls("GameController", "main", "System", "setProperty").
calls("GameController", "main", "String", "equals").
calls("GameController", "main", "String", "contains").
calls("GameController", "main", "String", "length").
calls("GameController", "main", "System.out", "printf").
calls("GameController", "main", "System", "exit").
calls("GameController", "main", "ApplicationLock", "acquire").
calls("GameController", "main", "JOptionPane", "showMessageDialog").
calls("GameController", "main", "System", "exit").
calls("GameController", "main", "JOptionPane", "showMessageDialog").
calls("GameController", "main", "System", "exit").
calls("GameController", "main", "NetworkInterface", "isUp").
calls("GameController", "main", "String", "isEmpty").
calls("GameController", "main", "Enumeration", "hasMoreElements").
calls("GameController", "main", "NetworkInterface", "isUp").
calls("GameController", "main", "NetworkInterface", "isLoopback").
calls("GameController", "main", "InterfaceAddress", "getAddress").
calls("GameController", "main", "InterfaceAddress", "getAddress").
calls("GameController", "main", "System.err", "printf").
calls("GameController", "main", "System.err", "print").
calls("GameController", "main", "Enumeration", "hasMoreElements").
calls("GameController", "main", "NetworkInterface", "isUp").
calls("GameController", "main", "NetworkInterface", "getName").
calls("GameController", "main", "NetworkInterface", "getDisplayName").
calls("GameController", "main", "System.err", "printf").
calls("GameController", "main", "Enumeration", "hasMoreElements").
calls("GameController", "main", "System.err", "print").
calls("GameController", "main", "System.err", "println").
calls("GameController", "main", "String", "format").
calls("GameController", "main", "Log", "error").
calls("GameController", "main", "System", "exit").
calls("GameController", "main", "InterfaceAddress", "getAddress").
calls("GameController", "main", "System.err", "printf").
calls("GameController", "main", "String", "format").
calls("GameController", "main", "Log", "error").
calls("GameController", "main", "System", "exit").
calls("GameController", "main", "JOptionPane", "showMessageDialog").
calls("GameController", "main", "Exception", "getMessage").
calls("GameController", "main", "Log", "error").
calls("GameController", "main", "System", "exit").
calls("GameController", "main", "teamcomm", "start").
calls("GameController", "main", "JOptionPane", "showMessageDialog").
calls("GameController", "main", "Exception", "getMessage").
calls("GameController", "main", "Log", "error").
calls("GameController", "main", "System", "exit").
calls("GameController", "main", "Thread", "sleep").
calls("GameController", "main", "System", "exit").
calls("GameController", "main", "InterfaceAddress", "getAddress").
calls("GameController", "main", "TrueDataSender", "initialize").
calls("GameController", "main", "TrueDataSender", "getInstance").
calls("GameController", "main", "InterfaceAddress", "getBroadcast").
calls("GameController", "main", "InterfaceAddress", "getAddress").
calls("GameController", "main", "InterfaceAddress", "getBroadcast").
calls("GameController", "main", "Sender", "initialize").
calls("GameController", "main", "Sender", "send").
calls("GameController", "main", "Sender", "start").
calls("GameController", "main", "EventHandler", "getInstance").
calls("GameController", "main", "InterfaceAddress", "getAddress").
calls("GameController", "main", "GameControlReturnDataReceiver", "initialize").
calls("GameController", "main", "GameControlReturnDataReceiver", "start").
calls("GameController", "main", "SPLCoachMessageReceiver", "start").
calls("GameController", "main", "JOptionPane", "showMessageDialog").
calls("GameController", "main", "Exception", "getMessage").
calls("GameController", "main", "Log", "error").
calls("GameController", "main", "System", "exit").
calls("GameController", "main", "File", "exists").
calls("GameController", "main", "File", "mkdirs").
calls("GameController", "main", "SimpleDateFormat", "format").
calls("GameController", "main", "Log", "init").
calls("GameController", "main", "File", "getPath").
calls("GameController", "main", "Log", "init").
calls("GameController", "main", "Log", "toFile").
calls("GameController", "main", "Log", "toFile").
calls("GameController", "main", "Log", "toFile").
calls("GameController", "main", "InterfaceAddress", "getBroadcast").
calls("GameController", "main", "InterfaceAddress", "getAddress").
calls("GameController", "main", "InterfaceAddress", "getBroadcast").
calls("GameController", "main", "Log", "toFile").
calls("GameController", "main", "InterfaceAddress", "getAddress").
calls("GameController", "main", "Log", "toFile").
calls("GameController", "main", "ActionBoard", "init").
calls("GameController", "main", "Teams", "getNames").
calls("GameController", "main", "Teams", "getNames").
calls("GameController", "main", "Log", "state").
calls("GameController", "main", "EventHandler", "getInstance").
calls("GameController", "main", "GUI", "update").
calls("GameController", "main", "StartInput", "dispose").
calls("GameController", "main", "Clock", "getInstance").
calls("GameController", "main", "Log", "toFile").
calls("GameController", "main", "ApplicationLock", "release").
calls("GameController", "main", "Log", "error").
calls("GameController", "main", "Sender", "getInstance").
calls("GameController", "main", "TrueDataSender", "getInstance").
calls("GameController", "main", "GameControlReturnDataReceiver", "getInstance").
calls("GameController", "main", "SPLCoachMessageReceiver", "getInstance").
calls("GameController", "main", "teamcomm", "interrupt").
calls("GameController", "main", "Thread", "interrupted").
calls("GameController", "main", "Sender", "getInstance").
calls("GameController", "main", "TrueDataSender", "getInstance").
calls("GameController", "main", "GameControlReturnDataReceiver", "getInstance").
calls("GameController", "main", "SPLCoachMessageReceiver", "getInstance").
calls("GameController", "main", "Log", "error").
calls("GameController", "main", "Log", "close").
calls("GameController", "main", "Log", "error").
calls("GameController", "main", "teamcomm.net.logging.Logger", "getInstance").
calls("GameController", "main", "GUI", "dispose").
calls("GameController", "main", "teamcomm", "join").
calls("GameController", "main", "System", "exit").

# GameController/src/common/TotalScaleLayout.java

class("TotalScaleLayout").
method("TotalScaleLayout", "TotalScaleLayout", 5, 0, "simont@tzi.de").
calls("TotalScaleLayout", "TotalScaleLayout", "Container", "getPreferredSize").
calls("TotalScaleLayout", "TotalScaleLayout", "Container", "getMinimumSize").
method("TotalScaleLayout", "add", 4, 1, "simont@tzi.de").
calls("TotalScaleLayout", "add", "Container", "add").
calls("TotalScaleLayout", "add", "LinkedList", "add").
method("TotalScaleLayout", "addLayoutComponent", 1, 1, "simont@tzi.de").
method("TotalScaleLayout", "removeLayoutComponent", 7, 3, "simont@tzi.de").
calls("TotalScaleLayout", "removeLayoutComponent", "LinkedList", "remove").
method("TotalScaleLayout", "preferredLayoutSize", 3, 1, "simont@tzi.de").
method("TotalScaleLayout", "minimumLayoutSize", 3, 1, "simont@tzi.de").
method("TotalScaleLayout", "layoutContainer", 5, 2, "simont@tzi.de").
calls("TotalScaleLayout", "layoutContainer", "comp.comp", "setBounds").

# GameController/src/common/ApplicationLock.java

class("ApplicationLock").
method("ApplicationLock", "ApplicationLock", 7, 0, "simont@tzi.de").
calls("ApplicationLock", "ApplicationLock", "System", "getProperty").
calls("ApplicationLock", "ApplicationLock", "String", "endsWith").
calls("ApplicationLock", "ApplicationLock", "System", "getProperty").
method("ApplicationLock", "acquire", 6, 1, "simont@tzi.de").
calls("ApplicationLock", "acquire", "FileOutputStream", "getChannel").
calls("ApplicationLock", "acquire", "FileChannel", "tryLock").
method("ApplicationLock", "release", 11, 4, "simont@tzi.de").
calls("ApplicationLock", "release", "FileLock", "isValid").
calls("ApplicationLock", "release", "FileLock", "release").
calls("ApplicationLock", "release", "FileOutputStream", "close").
calls("ApplicationLock", "release", "FileChannel", "isOpen").
calls("ApplicationLock", "release", "FileChannel", "close").

# GameController/src/common/Log.java

class("Log").
method("Log", "Log", 1, 0, "simont@tzi.de").
method("Log", "init", 16, 8, "simont@tzi.de").
calls("Log", "init", "Log", "error").
calls("Log", "init", "Class", "forName").
calls("Log", "init", "Log", "toFile").
method("Log", "toFile", 7, 2, "simont@tzi.de").
calls("Log", "toFile", "SimpleDateFormat", "format").
calls("Log", "toFile", "instance.file", "write").
calls("Log", "toFile", "instance.file", "flush").
calls("Log", "toFile", "Log", "error").
method("Log", "setNextMessage", 3, 1, "Thomas.Roefer@dfki.de").
method("Log", "state", 15, 3, "simont@tzi.de").
calls("Log", "state", "instance.states", "isEmpty").
calls("Log", "state", "AdvancedData", "getTime").
calls("Log", "state", "instance.states", "getLast").
calls("Log", "state", "Log", "toFile").
calls("Log", "state", "instance.states", "add").
calls("Log", "state", "Log", "toFile").
method("Log", "goBack", 29, 12, "simont@tzi.de").
calls("Log", "goBack", "instance.states", "size").
calls("Log", "goBack", "instance.states", "size").
calls("Log", "goBack", "instance.states", "getLast").
calls("Log", "goBack", "instance.states", "getLast").
calls("Log", "goBack", "instance.states", "removeLast").
calls("Log", "goBack", "instance.states", "getLast").
calls("Log", "goBack", "Class", "getField").
method("Log", "getLast", 10, 3, "simont@tzi.de").
calls("Log", "getLast", "instance.states", "size").
calls("Log", "getLast", "instance.states", "size").
calls("Log", "getLast", "instance.states", "get").
method("Log", "error", 11, 3, "yuzong@tzi.de").
calls("Log", "error", "System.err", "println").
calls("Log", "error", "SimpleDateFormat", "format").
calls("Log", "error", "instance.errorFile", "write").
calls("Log", "error", "instance.errorFile", "flush").
calls("Log", "error", "System.err", "println").
method("Log", "close", 6, 2, "simont@tzi.de").
calls("Log", "close", "instance.errorFile", "close").
calls("Log", "close", "instance.file", "close").

# GameController/src/data/SPLPenaltyShootout.java

class("SPLPenaltyShootout").
method("SPLPenaltyShootout", "SPLPenaltyShootout", 5, 0, "Thomas.Roefer@dfki.de").

# GameController/src/data/GameControlData.java

class("GameControlData").
method("GameControlData", "GameControlData", 6, 0, "simont@tzi.de").
method("GameControlData", "toByteArray", 25, 3, "simont@tzi.de").
calls("GameControlData", "toByteArray", "ByteBuffer", "order").
calls("GameControlData", "toByteArray", "GAMECONTROLLER_STRUCT_HEADER", "getBytes").
calls("GameControlData", "toByteArray", "ByteBuffer", "put").
calls("GameControlData", "toByteArray", "ByteBuffer", "putShort").
calls("GameControlData", "toByteArray", "ByteBuffer", "put").
calls("GameControlData", "toByteArray", "ByteBuffer", "put").
calls("GameControlData", "toByteArray", "ByteBuffer", "put").
calls("GameControlData", "toByteArray", "AdvancedData", "getSecondsSince").
calls("GameControlData", "toByteArray", "ByteBuffer", "put").
calls("GameControlData", "toByteArray", "ByteBuffer", "put").
calls("GameControlData", "toByteArray", "ByteBuffer", "put").
calls("GameControlData", "toByteArray", "ByteBuffer", "put").
calls("GameControlData", "toByteArray", "ByteBuffer", "put").
calls("GameControlData", "toByteArray", "ByteBuffer", "put").
calls("GameControlData", "toByteArray", "ByteBuffer", "putShort").
calls("GameControlData", "toByteArray", "ByteBuffer", "putShort").
calls("GameControlData", "toByteArray", "ByteBuffer", "putShort").
calls("GameControlData", "toByteArray", "TeamInfo", "toByteArray").
calls("GameControlData", "toByteArray", "ByteBuffer", "put").
method("GameControlData", "getTrueDataAsByteArray", 20, 2, "fthielke@fb3.uni-bremen.de").
calls("GameControlData", "getTrueDataAsByteArray", "ByteBuffer", "order").
calls("GameControlData", "getTrueDataAsByteArray", "GAMECONTROLLER_TRUEGAMEDATA_STRUCT_HEADER", "getBytes").
calls("GameControlData", "getTrueDataAsByteArray", "ByteBuffer", "put").
calls("GameControlData", "getTrueDataAsByteArray", "ByteBuffer", "putShort").
calls("GameControlData", "getTrueDataAsByteArray", "ByteBuffer", "put").
calls("GameControlData", "getTrueDataAsByteArray", "ByteBuffer", "put").
calls("GameControlData", "getTrueDataAsByteArray", "ByteBuffer", "put").
calls("GameControlData", "getTrueDataAsByteArray", "ByteBuffer", "put").
calls("GameControlData", "getTrueDataAsByteArray", "ByteBuffer", "put").
calls("GameControlData", "getTrueDataAsByteArray", "ByteBuffer", "put").
calls("GameControlData", "getTrueDataAsByteArray", "ByteBuffer", "put").
calls("GameControlData", "getTrueDataAsByteArray", "ByteBuffer", "put").
calls("GameControlData", "getTrueDataAsByteArray", "ByteBuffer", "putShort").
calls("GameControlData", "getTrueDataAsByteArray", "ByteBuffer", "putShort").
calls("GameControlData", "getTrueDataAsByteArray", "ByteBuffer", "putShort").
calls("GameControlData", "getTrueDataAsByteArray", "TeamInfo", "toByteArray").
calls("GameControlData", "getTrueDataAsByteArray", "ByteBuffer", "put").
method("GameControlData", "toByteArray7", 22, 2, "dseifert@fumanoids.de").
calls("GameControlData", "toByteArray7", "ByteBuffer", "order").
calls("GameControlData", "toByteArray7", "GAMECONTROLLER_STRUCT_HEADER", "getBytes").
calls("GameControlData", "toByteArray7", "ByteBuffer", "put").
calls("GameControlData", "toByteArray7", "ByteBuffer", "putInt").
calls("GameControlData", "toByteArray7", "ByteBuffer", "put").
calls("GameControlData", "toByteArray7", "ByteBuffer", "put").
calls("GameControlData", "toByteArray7", "ByteBuffer", "put").
calls("GameControlData", "toByteArray7", "ByteBuffer", "put").
calls("GameControlData", "toByteArray7", "ByteBuffer", "put").
calls("GameControlData", "toByteArray7", "ByteBuffer", "put").
calls("GameControlData", "toByteArray7", "ByteBuffer", "putShort").
calls("GameControlData", "toByteArray7", "ByteBuffer", "putInt").
calls("GameControlData", "toByteArray7", "ByteBuffer", "put").
calls("GameControlData", "toByteArray7", "ByteBuffer", "put").
calls("GameControlData", "toByteArray7", "ByteBuffer", "put").
calls("GameControlData", "toByteArray7", "ByteBuffer", "put").
method("GameControlData", "fromByteArray", 23, 3, "simont@tzi.de").
calls("GameControlData", "fromByteArray", "ByteBuffer", "order").
calls("GameControlData", "fromByteArray", "ByteBuffer", "get").
calls("GameControlData", "fromByteArray", "ByteBuffer", "getShort").
calls("GameControlData", "fromByteArray", "ByteBuffer", "get").
calls("GameControlData", "fromByteArray", "ByteBuffer", "get").
calls("GameControlData", "fromByteArray", "ByteBuffer", "get").
calls("GameControlData", "fromByteArray", "ByteBuffer", "get").
calls("GameControlData", "fromByteArray", "ByteBuffer", "get").
calls("GameControlData", "fromByteArray", "ByteBuffer", "get").
calls("GameControlData", "fromByteArray", "ByteBuffer", "get").
calls("GameControlData", "fromByteArray", "ByteBuffer", "get").
calls("GameControlData", "fromByteArray", "ByteBuffer", "getShort").
calls("GameControlData", "fromByteArray", "ByteBuffer", "getShort").
calls("GameControlData", "fromByteArray", "ByteBuffer", "getShort").
calls("GameControlData", "fromByteArray", "TeamInfo", "fromByteArray").
method("GameControlData", "toString", 79, 1, "yuzong@tzi.de").

# GameController/src/data/SPLMixedTeam.java

class("SPLMixedTeam").
method("SPLMixedTeam", "SPLMixedTeam", 7, 0, "Thomas.Roefer@dfki.de").

# GameController/src/data/HL.java

class("HL").
method("HL", "HL", 43, 0, "Thomas.Roefer@dfki.de").

# GameController/src/data/PlayerInfo.java

class("PlayerInfo").
method("PlayerInfo", "toByteArray", 7, 1, "simont@tzi.de").
calls("PlayerInfo", "toByteArray", "ByteBuffer", "order").
calls("PlayerInfo", "toByteArray", "ByteBuffer", "put").
calls("PlayerInfo", "toByteArray", "ByteBuffer", "put").
calls("PlayerInfo", "toByteArray", "ByteBuffer", "array").
method("PlayerInfo", "toByteArray7", 7, 1, "dseifert@fumanoids.de").
calls("PlayerInfo", "toByteArray7", "ByteBuffer", "order").
calls("PlayerInfo", "toByteArray7", "ByteBuffer", "putShort").
calls("PlayerInfo", "toByteArray7", "ByteBuffer", "putShort").
calls("PlayerInfo", "toByteArray7", "ByteBuffer", "array").
method("PlayerInfo", "fromByteArray", 5, 1, "simont@tzi.de").
calls("PlayerInfo", "fromByteArray", "ByteBuffer", "order").
calls("PlayerInfo", "fromByteArray", "ByteBuffer", "get").
calls("PlayerInfo", "fromByteArray", "ByteBuffer", "get").
method("PlayerInfo", "getPenaltyName", 53, 2, "muehlenb@tzi.de").
method("PlayerInfo", "toString", 7, 1, "yuzong@tzi.de").

# GameController/src/data/HLAdult.java

class("HLAdult").
method("HLAdult", "HLAdult", 8, 0, "Thomas.Roefer@dfki.de").

# GameController/src/data/AdvancedData.java

class("AdvancedData").
method("AdvancedData", "AdvancedData", 11, 0, "simont@tzi.de").
calls("AdvancedData", "AdvancedData", "ArrayList", "add").
method("AdvancedData", "clone", 12, 3, "Thomas.Roefer@dfki.de").
calls("AdvancedData", "clone", "ClassNotFoundException", "getClass").
calls("AdvancedData", "clone", "ClassNotFoundException", "getMessage").
calls("AdvancedData", "clone", "System.out", "println").
calls("AdvancedData", "clone", "IOException", "getClass").
calls("AdvancedData", "clone", "IOException", "getMessage").
calls("AdvancedData", "clone", "System.out", "println").
method("AdvancedData", "getSide", 3, 1, "simont@tzi.de").
method("AdvancedData", "getTime", 3, 1, "Thomas.Roefer@dfki.de").
calls("AdvancedData", "getTime", "System", "currentTimeMillis").
method("AdvancedData", "getSecondsSince", 3, 1, "Thomas.Roefer@dfki.de").
calls("AdvancedData", "getSecondsSince", "AdvancedData", "getTime").
method("AdvancedData", "getRemainingSeconds", 3, 1, "Thomas.Roefer@dfki.de").
calls("AdvancedData", "getRemainingSeconds", "AdvancedData", "getSecondsSince").
method("AdvancedData", "updateTimes", 14, 4, "Thomas.Roefer@dfki.de").
calls("AdvancedData", "updateTimes", "AdvancedData", "getRemainingGameTime").
calls("AdvancedData", "updateTimes", "AdvancedData", "getSecondsSince").
calls("AdvancedData", "updateTimes", "AdvancedData", "getRemainingPenaltyTime").
method("AdvancedData", "addTimeInCurrentState", 3, 1, "Thomas.Roefer@dfki.de").
calls("AdvancedData", "addTimeInCurrentState", "AdvancedData", "getTime").
method("AdvancedData", "getRemainingGameTime", 6, 1, "Thomas.Roefer@dfki.de").
method("AdvancedData", "getRemainingPauseTime", 11, 3, "Thomas.Roefer@dfki.de").
calls("AdvancedData", "getRemainingPauseTime", "AdvancedData", "getRemainingSeconds").
calls("AdvancedData", "getRemainingPauseTime", "AdvancedData", "getRemainingSeconds").
method("AdvancedData", "resetPenaltyTimes", 5, 3, "Thomas.Roefer@dfki.de").
method("AdvancedData", "resetPenalties", 20, 8, "Thomas.Roefer@dfki.de").
calls("AdvancedData", "resetPenalties", "AdvancedData", "resetPenaltyTimes").
calls("AdvancedData", "resetPenalties", "ArrayList", "get").
method("AdvancedData", "getRemainingPenaltyTime", 8, 2, "Thomas.Roefer@dfki.de").
calls("AdvancedData", "getRemainingPenaltyTime", "AdvancedData", "getSecondsSince").
calls("AdvancedData", "getRemainingPenaltyTime", "AdvancedData", "getRemainingSeconds").
calls("AdvancedData", "getRemainingPenaltyTime", "Math", "max").
method("AdvancedData", "getNumberOfRobotsInPlay", 8, 3, "yuzong@tzi.de").
method("AdvancedData", "getSecondaryTime", 30, 8, "Thomas.Roefer@dfki.de").
calls("AdvancedData", "getSecondaryTime", "AdvancedData", "getSecondsSince").
calls("AdvancedData", "getSecondaryTime", "AdvancedData", "getRemainingSeconds").
calls("AdvancedData", "getSecondaryTime", "AdvancedData", "getRemainingSeconds").
calls("AdvancedData", "getSecondaryTime", "AdvancedData", "getRemainingSeconds").
calls("AdvancedData", "getSecondaryTime", "AdvancedData", "getRemainingPauseTime").
method("AdvancedData", "updateCoachMessages", 17, 5, "seba@informatik.uni-bremen.de").
calls("AdvancedData", "updateCoachMessages", "ArrayList", "size").
calls("AdvancedData", "updateCoachMessages", "ArrayList", "get").
calls("AdvancedData", "updateCoachMessages", "ArrayList", "get").
calls("AdvancedData", "updateCoachMessages", "ArrayList", "get").
calls("AdvancedData", "updateCoachMessages", "Log", "toFile").
calls("AdvancedData", "updateCoachMessages", "ArrayList", "remove").
method("AdvancedData", "updatePenalties", 9, 5, "Thomas.Roefer@dfki.de").
calls("AdvancedData", "updatePenalties", "AdvancedData", "getSecondsSince").
method("AdvancedData", "addToPenaltyQueue", 3, 1, "dseifert@fumanoids.de").
calls("AdvancedData", "addToPenaltyQueue", "ArrayList", "get").

# GameController/src/data/Teams.java

class("Teams").
method("Teams", "Teams", 27, 0, "simont@tzi.de").
calls("Teams", "Teams", "BufferedReader", "readLine").
calls("Teams", "Teams", "Log", "error").
calls("Teams", "Teams", "BufferedReader", "close").
method("Teams", "getLeagueIndex", 8, 3, "yuzong@tzi.de").
calls("Teams", "getLeagueIndex", "Log", "error").
method("Teams", "readTeams", 33, 9, "Thomas.Roefer@dfki.de").
calls("Teams", "readTeams", "BufferedReader", "readLine").
calls("Teams", "readTeams", "Integer", "valueOf").
calls("Teams", "readTeams", "Log", "error").
calls("Teams", "readTeams", "String", "trim").
calls("Teams", "readTeams", "Log", "error").
calls("Teams", "readTeams", "Log", "error").
calls("Teams", "readTeams", "BufferedReader", "close").
method("Teams", "getNames", 12, 4, "simont@tzi.de").
calls("Teams", "getNames", "Teams", "readTeams").
method("Teams", "readIcon", 17, 4, "simont@tzi.de").
calls("Teams", "readIcon", "ImageIO", "read").
calls("Teams", "readIcon", "Log", "error").
calls("Teams", "readIcon", "Graphics", "setColor").
calls("Teams", "readIcon", "BufferedImage", "getWidth").
calls("Teams", "readIcon", "BufferedImage", "getHeight").
calls("Teams", "readIcon", "Graphics", "fillRect").
method("Teams", "getIconPath", 8, 3, "fthielke@fb3.uni-bremen.de").
calls("Teams", "getIconPath", "File", "exists").
method("Teams", "getIcon", 10, 3, "simont@tzi.de").
calls("Teams", "getIcon", "Teams", "readTeams").
calls("Teams", "getIcon", "Teams", "readIcon").
method("Teams", "getColors", 7, 2, "Thomas.Roefer@dfki.de").
calls("Teams", "getColors", "Teams", "readTeams").

# GameController/src/data/HLTeen.java

class("HLTeen").
method("HLTeen", "HLTeen", 6, 0, "yuzong@tzi.de").

# GameController/src/data/GameControlReturnData.java

class("GameControlReturnData").
method("GameControlReturnData", "toByteArray", 10, 1, "simont@tzi.de").
calls("GameControlReturnData", "toByteArray", "ByteBuffer", "order").
calls("GameControlReturnData", "toByteArray", "String", "getBytes").
calls("GameControlReturnData", "toByteArray", "ByteBuffer", "put").
calls("GameControlReturnData", "toByteArray", "ByteBuffer", "put").
calls("GameControlReturnData", "toByteArray", "ByteBuffer", "put").
calls("GameControlReturnData", "toByteArray", "ByteBuffer", "put").
calls("GameControlReturnData", "toByteArray", "ByteBuffer", "put").
calls("GameControlReturnData", "toByteArray", "ByteBuffer", "array").
method("GameControlReturnData", "fromByteArray", 32, 4, "simont@tzi.de").
calls("GameControlReturnData", "fromByteArray", "ByteBuffer", "order").
calls("GameControlReturnData", "fromByteArray", "ByteBuffer", "get").
calls("GameControlReturnData", "fromByteArray", "ByteBuffer", "get").
calls("GameControlReturnData", "fromByteArray", "ByteBuffer", "get").
calls("GameControlReturnData", "fromByteArray", "ByteBuffer", "get").
calls("GameControlReturnData", "fromByteArray", "ByteBuffer", "get").
calls("GameControlReturnData", "fromByteArray", "ByteBuffer", "get").
calls("GameControlReturnData", "fromByteArray", "ByteBuffer", "getShort").
calls("GameControlReturnData", "fromByteArray", "ByteBuffer", "getShort").
calls("GameControlReturnData", "fromByteArray", "ByteBuffer", "getShort").
calls("GameControlReturnData", "fromByteArray", "ByteBuffer", "getInt").

# GameController/src/data/TrueDataRequest.java

class("TrueDataRequest").
method("TrueDataRequest", "createRequest", 6, 1, "fthielke@fb3.uni-bremen.de").
method("TrueDataRequest", "fromByteArray", 8, 1, "fthielke@fb3.uni-bremen.de").
calls("TrueDataRequest", "fromByteArray", "ByteBuffer", "order").
calls("TrueDataRequest", "fromByteArray", "ByteBuffer", "get").
calls("TrueDataRequest", "fromByteArray", "ByteBuffer", "get").
calls("TrueDataRequest", "fromByteArray", "ByteBuffer", "hasRemaining").
calls("TrueDataRequest", "fromByteArray", "String", "equals").
method("TrueDataRequest", "toByteArray", 7, 1, "fthielke@fb3.uni-bremen.de").
calls("TrueDataRequest", "toByteArray", "ByteBuffer", "order").
calls("TrueDataRequest", "toByteArray", "String", "getBytes").
calls("TrueDataRequest", "toByteArray", "ByteBuffer", "put").
calls("TrueDataRequest", "toByteArray", "ByteBuffer", "put").
calls("TrueDataRequest", "toByteArray", "ByteBuffer", "array").

# GameController/src/data/Rules.java

class("Rules").
method("Rules", "getLeagueRules", 7, 3, "fthielke@fb3.uni-bremen.de").
calls("Rules", "getLeagueRules", "Class", "isInstance").
calls("Rules", "getLeagueRules", "Rules", "getClass").

# GameController/src/data/SPL.java

class("SPL").
method("SPL", "SPL", 44, 0, "yuzong@tzi.de").

# GameController/src/data/TeamInfo.java

class("TeamInfo").
method("TeamInfo", "TeamInfo", 4, 0, "simont@tzi.de").
method("TeamInfo", "toByteArray", 15, 2, "simont@tzi.de").
calls("TeamInfo", "toByteArray", "ByteBuffer", "order").
calls("TeamInfo", "toByteArray", "ByteBuffer", "put").
calls("TeamInfo", "toByteArray", "ByteBuffer", "put").
calls("TeamInfo", "toByteArray", "ByteBuffer", "put").
calls("TeamInfo", "toByteArray", "ByteBuffer", "put").
calls("TeamInfo", "toByteArray", "ByteBuffer", "putShort").
calls("TeamInfo", "toByteArray", "ByteBuffer", "put").
calls("TeamInfo", "toByteArray", "ByteBuffer", "put").
calls("TeamInfo", "toByteArray", "PlayerInfo", "toByteArray").
calls("TeamInfo", "toByteArray", "ByteBuffer", "put").
calls("TeamInfo", "toByteArray", "ByteBuffer", "put").
calls("TeamInfo", "toByteArray", "ByteBuffer", "array").
method("TeamInfo", "toByteArray7", 11, 2, "dseifert@fumanoids.de").
calls("TeamInfo", "toByteArray7", "ByteBuffer", "order").
calls("TeamInfo", "toByteArray7", "ByteBuffer", "put").
calls("TeamInfo", "toByteArray7", "ByteBuffer", "put").
calls("TeamInfo", "toByteArray7", "ByteBuffer", "put").
calls("TeamInfo", "toByteArray7", "ByteBuffer", "put").
calls("TeamInfo", "toByteArray7", "ByteBuffer", "put").
calls("TeamInfo", "toByteArray7", "ByteBuffer", "array").
method("TeamInfo", "fromByteArray", 13, 2, "simont@tzi.de").
calls("TeamInfo", "fromByteArray", "ByteBuffer", "order").
calls("TeamInfo", "fromByteArray", "ByteBuffer", "get").
calls("TeamInfo", "fromByteArray", "ByteBuffer", "get").
calls("TeamInfo", "fromByteArray", "ByteBuffer", "get").
calls("TeamInfo", "fromByteArray", "ByteBuffer", "get").
calls("TeamInfo", "fromByteArray", "ByteBuffer", "getShort").
calls("TeamInfo", "fromByteArray", "ByteBuffer", "get").
calls("TeamInfo", "fromByteArray", "ByteBuffer", "get").
calls("TeamInfo", "fromByteArray", "PlayerInfo", "fromByteArray").
method("TeamInfo", "getTeamColorName", 26, 1, "muehlenb@tzi.de").
method("TeamInfo", "toString", 15, 2, "yuzong@tzi.de").
calls("TeamInfo", "toString", "Integer", "toBinaryString").
calls("TeamInfo", "toString", "PlayerInfo", "toString").

# GameController/src/data/SPLStandardMessage.java

class("SPLStandardMessage").
method("SPLStandardMessage", "createFrom", 40, 1, "fthielke@fb3.uni-bremen.de").
method("SPLStandardMessage", "toByteArray", 31, 2, "fthielke@fb3.uni-bremen.de").
calls("SPLStandardMessage", "toByteArray", "ByteBuffer", "order").
calls("SPLStandardMessage", "toByteArray", "String", "getBytes").
calls("SPLStandardMessage", "toByteArray", "ByteBuffer", "put").
calls("SPLStandardMessage", "toByteArray", "ByteBuffer", "put").
calls("SPLStandardMessage", "toByteArray", "ByteBuffer", "put").
calls("SPLStandardMessage", "toByteArray", "ByteBuffer", "put").
calls("SPLStandardMessage", "toByteArray", "ByteBuffer", "put").
calls("SPLStandardMessage", "toByteArray", "ByteBuffer", "putFloat").
calls("SPLStandardMessage", "toByteArray", "ByteBuffer", "putFloat").
calls("SPLStandardMessage", "toByteArray", "ByteBuffer", "putFloat").
calls("SPLStandardMessage", "toByteArray", "ByteBuffer", "putFloat").
calls("SPLStandardMessage", "toByteArray", "ByteBuffer", "putFloat").
calls("SPLStandardMessage", "toByteArray", "ByteBuffer", "putFloat").
calls("SPLStandardMessage", "toByteArray", "ByteBuffer", "putFloat").
calls("SPLStandardMessage", "toByteArray", "ByteBuffer", "putFloat").
calls("SPLStandardMessage", "toByteArray", "ByteBuffer", "putFloat").
calls("SPLStandardMessage", "toByteArray", "ByteBuffer", "putFloat").
calls("SPLStandardMessage", "toByteArray", "ByteBuffer", "putFloat").
calls("SPLStandardMessage", "toByteArray", "ByteBuffer", "putFloat").
calls("SPLStandardMessage", "toByteArray", "Suggestion", "ordinal").
calls("SPLStandardMessage", "toByteArray", "ByteBuffer", "put").
calls("SPLStandardMessage", "toByteArray", "Intention", "ordinal").
calls("SPLStandardMessage", "toByteArray", "ByteBuffer", "put").
calls("SPLStandardMessage", "toByteArray", "ByteBuffer", "putShort").
calls("SPLStandardMessage", "toByteArray", "ByteBuffer", "putShort").
calls("SPLStandardMessage", "toByteArray", "ByteBuffer", "put").
calls("SPLStandardMessage", "toByteArray", "ByteBuffer", "put").
calls("SPLStandardMessage", "toByteArray", "ByteBuffer", "putShort").
calls("SPLStandardMessage", "toByteArray", "ByteBuffer", "put").
calls("SPLStandardMessage", "toByteArray", "ByteBuffer", "array").
method("SPLStandardMessage", "fromByteArray", 134, 23, "fthielke@fb3.uni-bremen.de").
calls("SPLStandardMessage", "fromByteArray", "ByteBuffer", "order").
calls("SPLStandardMessage", "fromByteArray", "ByteBuffer", "get").
calls("SPLStandardMessage", "fromByteArray", "List", "add").
calls("SPLStandardMessage", "fromByteArray", "ByteBuffer", "get").
calls("SPLStandardMessage", "fromByteArray", "List", "add").
calls("SPLStandardMessage", "fromByteArray", "ByteBuffer", "get").
calls("SPLStandardMessage", "fromByteArray", "List", "add").
calls("SPLStandardMessage", "fromByteArray", "ByteBuffer", "get").
calls("SPLStandardMessage", "fromByteArray", "List", "add").
calls("SPLStandardMessage", "fromByteArray", "List", "add").
calls("SPLStandardMessage", "fromByteArray", "ByteBuffer", "getFloat").
calls("SPLStandardMessage", "fromByteArray", "ByteBuffer", "getFloat").
calls("SPLStandardMessage", "fromByteArray", "ByteBuffer", "getFloat").
calls("SPLStandardMessage", "fromByteArray", "Float", "isNaN").
calls("SPLStandardMessage", "fromByteArray", "Float", "isNaN").
calls("SPLStandardMessage", "fromByteArray", "Float", "isNaN").
calls("SPLStandardMessage", "fromByteArray", "ByteBuffer", "getFloat").
calls("SPLStandardMessage", "fromByteArray", "ByteBuffer", "getFloat").
calls("SPLStandardMessage", "fromByteArray", "Float", "isNaN").
calls("SPLStandardMessage", "fromByteArray", "Float", "isNaN").
calls("SPLStandardMessage", "fromByteArray", "ByteBuffer", "getFloat").
calls("SPLStandardMessage", "fromByteArray", "ByteBuffer", "getFloat").
calls("SPLStandardMessage", "fromByteArray", "Float", "isNaN").
calls("SPLStandardMessage", "fromByteArray", "Float", "isNaN").
calls("SPLStandardMessage", "fromByteArray", "ByteBuffer", "getFloat").
calls("SPLStandardMessage", "fromByteArray", "ByteBuffer", "getFloat").
calls("SPLStandardMessage", "fromByteArray", "ByteBuffer", "getFloat").
calls("SPLStandardMessage", "fromByteArray", "ByteBuffer", "getFloat").
calls("SPLStandardMessage", "fromByteArray", "ByteBuffer", "getFloat").
calls("SPLStandardMessage", "fromByteArray", "Float", "isNaN").
calls("SPLStandardMessage", "fromByteArray", "Float", "isNaN").
calls("SPLStandardMessage", "fromByteArray", "Float", "isNaN").
calls("SPLStandardMessage", "fromByteArray", "Float", "isNaN").
calls("SPLStandardMessage", "fromByteArray", "Float", "isNaN").
calls("SPLStandardMessage", "fromByteArray", "Suggestion", "values").
calls("SPLStandardMessage", "fromByteArray", "Suggestion", "values").
calls("SPLStandardMessage", "fromByteArray", "List", "add").
calls("SPLStandardMessage", "fromByteArray", "Suggestion", "values").
calls("SPLStandardMessage", "fromByteArray", "Intention", "values").
calls("SPLStandardMessage", "fromByteArray", "Intention", "values").
calls("SPLStandardMessage", "fromByteArray", "List", "add").
calls("SPLStandardMessage", "fromByteArray", "Intention", "values").
calls("SPLStandardMessage", "fromByteArray", "ByteBuffer", "getShort").
calls("SPLStandardMessage", "fromByteArray", "List", "add").
calls("SPLStandardMessage", "fromByteArray", "ByteBuffer", "getShort").
calls("SPLStandardMessage", "fromByteArray", "List", "add").
calls("SPLStandardMessage", "fromByteArray", "ByteBuffer", "get").
calls("SPLStandardMessage", "fromByteArray", "List", "add").
calls("SPLStandardMessage", "fromByteArray", "ByteBuffer", "get").
calls("SPLStandardMessage", "fromByteArray", "List", "add").
calls("SPLStandardMessage", "fromByteArray", "ByteBuffer", "getShort").
calls("SPLStandardMessage", "fromByteArray", "List", "add").
calls("SPLStandardMessage", "fromByteArray", "ByteBuffer", "remaining").
calls("SPLStandardMessage", "fromByteArray", "ByteBuffer", "remaining").
calls("SPLStandardMessage", "fromByteArray", "List", "add").
calls("SPLStandardMessage", "fromByteArray", "ByteBuffer", "get").
calls("SPLStandardMessage", "fromByteArray", "RuntimeException", "getClass").
calls("SPLStandardMessage", "fromByteArray", "RuntimeException", "getMessage").
calls("SPLStandardMessage", "fromByteArray", "List", "add").

# GameController/src/data/SPLCoachMessage.java

class("SPLCoachMessage").
method("SPLCoachMessage", "SPLCoachMessage", 3, 0, "seba@informatik.uni-bremen.de").
calls("SPLCoachMessage", "SPLCoachMessage", "SPLCoachMessage", "generateSendIntervallForSPLCoachMessage").
calls("SPLCoachMessage", "SPLCoachMessage", "System", "currentTimeMillis").
method("SPLCoachMessage", "toByteArray", 10, 1, "seba@informatik.uni-bremen.de").
calls("SPLCoachMessage", "toByteArray", "ByteBuffer", "order").
calls("SPLCoachMessage", "toByteArray", "String", "getBytes").
calls("SPLCoachMessage", "toByteArray", "ByteBuffer", "put").
calls("SPLCoachMessage", "toByteArray", "ByteBuffer", "put").
calls("SPLCoachMessage", "toByteArray", "ByteBuffer", "put").
calls("SPLCoachMessage", "toByteArray", "ByteBuffer", "put").
calls("SPLCoachMessage", "toByteArray", "ByteBuffer", "put").
calls("SPLCoachMessage", "toByteArray", "ByteBuffer", "array").
method("SPLCoachMessage", "fromByteArray", 26, 5, "seba@informatik.uni-bremen.de").
calls("SPLCoachMessage", "fromByteArray", "ByteBuffer", "order").
calls("SPLCoachMessage", "fromByteArray", "ByteBuffer", "get").
calls("SPLCoachMessage", "fromByteArray", "ByteBuffer", "get").
calls("SPLCoachMessage", "fromByteArray", "ByteBuffer", "get").
calls("SPLCoachMessage", "fromByteArray", "EventHandler", "getInstance").
calls("SPLCoachMessage", "fromByteArray", "EventHandler", "getInstance").
calls("SPLCoachMessage", "fromByteArray", "ByteBuffer", "get").
calls("SPLCoachMessage", "fromByteArray", "ByteBuffer", "get").
method("SPLCoachMessage", "getRemainingTimeToSend", 4, 1, "seba@informatik.uni-bremen.de").
method("SPLCoachMessage", "generateSendIntervallForSPLCoachMessage", 3, 1, "seba@informatik.uni-bremen.de").
calls("SPLCoachMessage", "generateSendIntervallForSPLCoachMessage", "Math", "random").

# GameController/src/eventrecorder/EventRecorder.java

class("EventRecorder").
method("EventRecorder", "getLastTeamData", 3, 1, "muehlenb@tzi.de").
method("EventRecorder", "main", 13, 2, "andre@phire.de").
calls("EventRecorder", "main", "System", "setProperty").
calls("EventRecorder", "main", "JOptionPane", "showMessageDialog").
calls("EventRecorder", "main", "System", "exit").
calls("EventRecorder", "main", "GameControlDataReceiver", "addListener").
calls("EventRecorder", "main", "GameControlDataReceiver", "start").
method("EventRecorder", "updateGameData", 32, 10, "andre@phire.de").
calls("EventRecorder", "updateGameData", "ActionHistory", "execute").
calls("EventRecorder", "updateGameData", "ActionHistory", "execute").
calls("EventRecorder", "updateGameData", "System", "currentTimeMillis").
method("EventRecorder", "capitalize", 10, 2, "muehlenb@tzi.de").
calls("EventRecorder", "capitalize", "Character", "toUpperCase").
calls("EventRecorder", "capitalize", "StringBuffer", "append").
calls("EventRecorder", "capitalize", "StringBuffer", "toString").
method("EventRecorder", "cleanExit", 7, 2, "andre@phire.de").
calls("EventRecorder", "cleanExit", "GameControlDataReceiver", "interrupt").
calls("EventRecorder", "cleanExit", "GameControlDataReceiver", "join").
calls("EventRecorder", "cleanExit", "System", "exit").
method("EventRecorder", "setLogPenalty", 3, 1, "muehlenb@tzi.de").

# GameController/src/analyzer/LogAnalyzer.java

class("LogAnalyzer").
method("LogAnalyzer", "main", 4, 1, "Thomas.Roefer@dfki.de").
calls("LogAnalyzer", "main", "LogAnalyzer", "load").
method("LogAnalyzer", "load", 9, 3, "Thomas.Roefer@dfki.de").
calls("LogAnalyzer", "load", "File", "isFile").
calls("LogAnalyzer", "load", "File", "getName").
calls("LogAnalyzer", "load", "LinkedList", "add").

# GameController/src/analyzer/GUI.java

class("GUI").
method("GUI", "GUI", 35, 0, "simont@tzi.de").
calls("GUI", "GUI", "JFrame", "JFrame").
calls("GUI", "GUI", "GUI", "getRootPane").
calls("GUI", "GUI", "Point", "getX").
calls("GUI", "GUI", "Point", "getY").
calls("GUI", "GUI", "GUI", "setLocation").
calls("GUI", "GUI", "GUI", "setDefaultCloseOperation").
calls("GUI", "GUI", "GUI", "setSize").
calls("GUI", "GUI", "GUI", "setLayout").
calls("GUI", "GUI", "JList", "setSelectionMode").
calls("GUI", "GUI", "JList", "setCellRenderer").
calls("GUI", "GUI", "JList", "addMouseListener").
calls("GUI", "GUI", "JList", "getSelectionModel").
calls("GUI", "GUI", "BorderFactory", "createCompoundBorder").
calls("GUI", "GUI", "JLabel", "setBorder").
calls("GUI", "GUI", "JLabel", "setBackground").
calls("GUI", "GUI", "JLabel", "setOpaque").
calls("GUI", "GUI", "JLabel", "setVerticalAlignment").
calls("GUI", "GUI", "JButton", "addActionListener").
calls("GUI", "GUI", "JButton", "addActionListener").
calls("GUI", "GUI", "TotalScaleLayout", "add").
calls("GUI", "GUI", "TotalScaleLayout", "add").
calls("GUI", "GUI", "TotalScaleLayout", "add").
calls("GUI", "GUI", "TotalScaleLayout", "add").
calls("GUI", "GUI", "GUI", "updateList").
calls("GUI", "GUI", "ListSelectionModel", "addListSelectionListener").
calls("GUI", "GUI", "GUI", "setVisible").
method("GUI", "updateList", 6, 2, "yuzong@tzi.de").
calls("GUI", "updateList", "ListSelectionModel", "clearSelection").
calls("GUI", "updateList", "DefaultListModel", "removeAllElements").
calls("GUI", "updateList", "DefaultListModel", "addElement").
method("GUI", "clean", 13, 4, "yuzong@tzi.de").
calls("GUI", "clean", "File", "isDirectory").
calls("GUI", "clean", "File", "mkdir").
calls("GUI", "clean", "DefaultListModel", "getElementAt").
calls("GUI", "clean", "log.file", "renameTo").
calls("GUI", "clean", "LogAnalyzer", "load").
calls("GUI", "clean", "GUI", "updateList").
method("GUI", "analyze", 25, 6, "yuzong@tzi.de").
calls("GUI", "analyze", "JFileChooser", "showSaveDialog").
calls("GUI", "analyze", "JFileChooser", "getSelectedFile").
calls("GUI", "analyze", "LogAnalyzer.stats", "createNewFile").
calls("GUI", "analyze", "LogAnalyzer.writer", "write").
calls("GUI", "analyze", "Log", "error").
calls("GUI", "analyze", "DefaultListModel", "getElementAt").
calls("GUI", "analyze", "Parser", "statistic").
calls("GUI", "analyze", "LogAnalyzer.writer", "flush").
calls("GUI", "analyze", "LogAnalyzer.writer", "close").
calls("GUI", "analyze", "Log", "error").
calls("GUI", "analyze", "JOptionPane", "showMessageDialog").
method("GUI", "valueChanged", 8, 2, "yuzong@tzi.de").
calls("GUI", "valueChanged", "LogAnalyzer.logs", "get").
calls("GUI", "valueChanged", "JLabel", "setText").
calls("GUI", "valueChanged", "JLabel", "setText").

# GameController/src/analyzer/LogInfo.java

class("LogInfo").
method("LogInfo", "LogInfo", 19, 0, "yuzong@tzi.de").
calls("LogInfo", "LogInfo", "BufferedReader", "readLine").
calls("LogInfo", "LogInfo", "LinkedList", "add").
calls("LogInfo", "LogInfo", "Log", "error").
calls("LogInfo", "LogInfo", "BufferedReader", "close").
calls("LogInfo", "LogInfo", "Parser", "info").
method("LogInfo", "isRealLog", 3, 1, "yuzong@tzi.de").
calls("LogInfo", "isRealLog", "LogInfo", "isRealVersion").
calls("LogInfo", "isRealLog", "LogInfo", "isRealLeague").
calls("LogInfo", "isRealLog", "LogInfo", "isRealTeam").
calls("LogInfo", "isRealLog", "LogInfo", "isRealTeam").
calls("LogInfo", "isRealLog", "LogInfo", "isRealDuration").
method("LogInfo", "isRealVersion", 3, 1, "yuzong@tzi.de").
calls("LogInfo", "isRealVersion", "String", "equals").
method("LogInfo", "isRealLeague", 3, 1, "yuzong@tzi.de").
method("LogInfo", "isRealTeam", 3, 1, "yuzong@tzi.de").
method("LogInfo", "isRealDuration", 3, 1, "yuzong@tzi.de").
method("LogInfo", "getInfo", 3, 1, "yuzong@tzi.de").
calls("LogInfo", "getInfo", "LogInfo", "isRealVersion").
calls("LogInfo", "getInfo", "LogInfo", "isRealLeague").
calls("LogInfo", "getInfo", "LogInfo", "isRealTeam").
calls("LogInfo", "getInfo", "LogInfo", "isRealTeam").
calls("LogInfo", "getInfo", "LogInfo", "isRealDuration").
calls("LogInfo", "getInfo", "LinkedList", "size").
method("LogInfo", "toString", 3, 1, "yuzong@tzi.de").
calls("LogInfo", "toString", "LogInfo", "isRealLog").

# GameController/src/analyzer/Parser.java

class("Parser").
method("Parser", "info", 72, 19, "yuzong@tzi.de").
calls("Parser", "info", "String", "substring").
calls("Parser", "info", "Log.timestampFormat", "parse").
calls("Parser", "info", "String", "startsWith").
calls("Parser", "info", "String", "startsWith").
calls("Parser", "info", "String", "startsWith").
calls("Parser", "info", "log.lines", "get").
calls("Parser", "info", "log.lines", "get").
calls("Parser", "info", "log.lines", "get").
calls("Parser", "info", "log.lines", "get").
calls("Parser", "info", "log.lines", "set").
calls("Parser", "info", "String", "contains").
calls("Parser", "info", "String", "startsWith").
calls("Parser", "info", "String", "startsWith").
calls("Parser", "info", "Date", "getTime").
calls("Parser", "info", "Date", "getTime").
method("Parser", "statistic", 69, 16, "yuzong@tzi.de").
calls("Parser", "statistic", "String", "startsWith").
calls("Parser", "statistic", "String", "substring").
calls("Parser", "statistic", "Log.timestampFormat", "parse").
calls("Parser", "statistic", "Log", "error").
calls("Parser", "statistic", "String", "substring").
calls("Parser", "statistic", "SimpleDateFormat", "format").
calls("Parser", "statistic", "String", "startsWith").
calls("Parser", "statistic", "String", "startsWith").
calls("Parser", "statistic", "String", "contains").
calls("Parser", "statistic", "String", "contains").
calls("Parser", "statistic", "Matcher", "find").
calls("Parser", "statistic", "Matcher", "groupCount").
calls("Parser", "statistic", "Matcher", "group").
calls("Parser", "statistic", "LogAnalyzer.writer", "write").
calls("Parser", "statistic", "Log", "error").

# GameController/src/teamcomm/net/SPLStandardMessagePackage.java

class("SPLStandardMessagePackage").
method("SPLStandardMessagePackage", "SPLStandardMessagePackage", 5, 0, "fthielke@fb3.uni-bremen.de").

# GameController/src/teamcomm/net/SPLStandardMessageReceiver.java

class("SPLStandardMessageReceiver").
method("SPLStandardMessageReceiver", "SPLStandardMessageReceiver", 3, 0, "fthielke@fb3.uni-bremen.de").
method("SPLStandardMessageReceiver", "processPackets", 3, 1, "fthielke@fb3.uni-bremen.de").
method("SPLStandardMessageReceiver", "handleMessage", 1, 1, "fthielke@fb3.uni-bremen.de").
method("SPLStandardMessageReceiver", "run", 15, 4, "fthielke@fb3.uni-bremen.de").
calls("SPLStandardMessageReceiver", "run", "ReceiverThread", "start").
calls("SPLStandardMessageReceiver", "run", "SPLStandardMessageReceiver", "isInterrupted").
calls("SPLStandardMessageReceiver", "run", "Logger", "getInstance").
calls("SPLStandardMessageReceiver", "run", "SPLStandardMessageReceiver", "handleMessage").
calls("SPLStandardMessageReceiver", "run", "Thread", "yield").
calls("SPLStandardMessageReceiver", "run", "ReceiverThread", "interrupt").
calls("SPLStandardMessageReceiver", "run", "ReceiverThread", "join").
method("SPLStandardMessageReceiver", "addToPackageQueue", 3, 1, "fthielke@fb3.uni-bremen.de").
calls("SPLStandardMessageReceiver", "addToPackageQueue", "LinkedBlockingQueue", "add").
method("SPLStandardMessageReceiver", "clearPackageQueue", 6, 2, "fthielke@fb3.uni-bremen.de").
calls("SPLStandardMessageReceiver", "clearPackageQueue", "LinkedBlockingQueue", "clear").
calls("SPLStandardMessageReceiver", "clearPackageQueue", "Thread", "sleep").
method("SPLStandardMessageReceiver", "getTeamport", 3, 1, "fthielke@fb3.uni-bremen.de").

# GameController/src/teamcomm/net/GameControlDataReceiver.java

class("GameControlDataReceiver").
method("GameControlDataReceiver", "GameControlDataReceiver", 3, 0, "fthielke@fb3.uni-bremen.de").
calls("GameControlDataReceiver", "GameControlDataReceiver", "GameControlDataReceiver", "GameControlDataReceiver").
method("GameControlDataReceiver", "GameControlDataReceiver", 8, 0, "fthielke@fb3.uni-bremen.de").
calls("GameControlDataReceiver", "GameControlDataReceiver", "GameControlDataReceiver", "setName").
calls("GameControlDataReceiver", "GameControlDataReceiver", "DatagramSocket", "setReuseAddress").
calls("GameControlDataReceiver", "GameControlDataReceiver", "DatagramSocket", "setSoTimeout").
calls("GameControlDataReceiver", "GameControlDataReceiver", "DatagramSocket", "bind").
method("GameControlDataReceiver", "addListener", 3, 1, "fthielke@fb3.uni-bremen.de").
calls("GameControlDataReceiver", "addListener", "EventListenerList", "add").
method("GameControlDataReceiver", "removeListener", 3, 1, "fthielke@fb3.uni-bremen.de").
calls("GameControlDataReceiver", "removeListener", "EventListenerList", "remove").
method("GameControlDataReceiver", "fireEvent", 10, 4, "fthielke@fb3.uni-bremen.de").
calls("GameControlDataReceiver", "fireEvent", "GameControlDataEventListener", "gameControlDataChanged").
calls("GameControlDataReceiver", "fireEvent", "GameControlDataEventListener", "gameControlDataTimeout").
method("GameControlDataReceiver", "requestTrueData", 4, 1, "fthielke@fb3.uni-bremen.de").
method("GameControlDataReceiver", "run", 31, 10, "fthielke@fb3.uni-bremen.de").
calls("GameControlDataReceiver", "run", "GameControlDataReceiver", "isInterrupted").
calls("GameControlDataReceiver", "run", "DatagramSocket", "receive").
calls("GameControlDataReceiver", "run", "ByteBuffer", "rewind").
calls("GameControlDataReceiver", "run", "GameControlData", "fromByteArray").
calls("GameControlDataReceiver", "run", "System", "currentTimeMillis").
calls("GameControlDataReceiver", "run", "GameControlDataReceiver", "fireEvent").
calls("GameControlDataReceiver", "run", "System", "currentTimeMillis").
calls("GameControlDataReceiver", "run", "System", "currentTimeMillis").
calls("GameControlDataReceiver", "run", "DatagramPacket", "getAddress").
calls("GameControlDataReceiver", "run", "GameControlDataReceiver", "requestTrueData").
calls("GameControlDataReceiver", "run", "IOException", "getMessage").
calls("GameControlDataReceiver", "run", "Log", "error").
calls("GameControlDataReceiver", "run", "GameControlDataReceiver", "fireEvent").
calls("GameControlDataReceiver", "run", "IOException", "getMessage").
calls("GameControlDataReceiver", "run", "Log", "error").
calls("GameControlDataReceiver", "run", "DatagramSocket", "close").

# GameController/src/teamcomm/net/SPLStandardMessageReceiverTCM.java

class("SPLStandardMessageReceiverTCM").
method("SPLStandardMessageReceiverTCM", "SPLStandardMessageReceiverTCM", 3, 0, "fthielke@fb3.uni-bremen.de").
calls("SPLStandardMessageReceiverTCM", "SPLStandardMessageReceiverTCM", "SPLStandardMessageReceiver", "SPLStandardMessageReceiver").
method("SPLStandardMessageReceiverTCM", "getInstance", 10, 3, "fthielke@fb3.uni-bremen.de").
calls("SPLStandardMessageReceiverTCM", "getInstance", "IOException", "getMessage").
calls("SPLStandardMessageReceiverTCM", "getInstance", "JOptionPane", "showMessageDialog").
calls("SPLStandardMessageReceiverTCM", "getInstance", "System", "exit").
method("SPLStandardMessageReceiverTCM", "processPackets", 3, 1, "fthielke@fb3.uni-bremen.de").
calls("SPLStandardMessageReceiverTCM", "processPackets", "LogReplayer", "getInstance").
method("SPLStandardMessageReceiverTCM", "handleMessage", 26, 6, "fthielke@fb3.uni-bremen.de").
calls("SPLStandardMessageReceiverTCM", "handleMessage", "Class", "newInstance").
calls("SPLStandardMessageReceiverTCM", "handleMessage", "ByteBuffer", "wrap").
calls("SPLStandardMessageReceiverTCM", "handleMessage", "SPLStandardMessage", "fromByteArray").
calls("SPLStandardMessageReceiverTCM", "handleMessage", "SPLStandardMessage", "createFrom").
calls("SPLStandardMessageReceiverTCM", "handleMessage", "Throwable", "getClass").
calls("SPLStandardMessageReceiverTCM", "handleMessage", "Class", "getSimpleName").
calls("SPLStandardMessageReceiverTCM", "handleMessage", "Throwable", "getMessage").
calls("SPLStandardMessageReceiverTCM", "handleMessage", "Log", "error").
calls("SPLStandardMessageReceiverTCM", "handleMessage", "SPLStandardMessage", "createFrom").
calls("SPLStandardMessageReceiverTCM", "handleMessage", "GameState", "getInstance").
calls("SPLStandardMessageReceiverTCM", "handleMessage", "Class", "getSimpleName").
calls("SPLStandardMessageReceiverTCM", "handleMessage", "InstantiationException", "getMessage").
calls("SPLStandardMessageReceiverTCM", "handleMessage", "Log", "error").

# GameController/src/teamcomm/data/AdvancedMessage.java

class("AdvancedMessage").
method("AdvancedMessage", "display", 1, 1, "fthielke@fb3.uni-bremen.de").
method("AdvancedMessage", "init", 1, 1, "fthielke@fb3.uni-bremen.de").

# GameController/src/teamcomm/data/GameState.java

class("GameState").
method("GameState", "GameState", 3, 0, "fthielke@fb3.uni-bremen.de").
calls("GameState", "GameState", "ScheduledExecutorService", "scheduleAtFixedRate").
method("GameState", "getInstance", 3, 1, "fthielke@fb3.uni-bremen.de").
method("GameState", "shutdown", 3, 1, "fthielke@fb3.uni-bremen.de").
calls("GameState", "shutdown", "ScheduledFuture", "cancel").
method("GameState", "reset", 12, 1, "fthielke@fb3.uni-bremen.de").
calls("GameState", "reset", "Map", "clear").
calls("GameState", "reset", "HashMap", "clear").
calls("GameState", "reset", "GameState", "sendEvents").
method("GameState", "gameControlDataChanged", 71, 17, "fthielke@fb3.uni-bremen.de").
calls("GameState", "gameControlDataChanged", "Map", "put").
calls("GameState", "gameControlDataChanged", "Map", "put").
calls("GameState", "gameControlDataChanged", "RobotState", "getPlayerNumber").
calls("GameState", "gameControlDataChanged", "RobotState", "getPlayerNumber").
calls("GameState", "gameControlDataChanged", "RobotState", "setPenalty").
calls("GameState", "gameControlDataChanged", "PluginLoader", "getInstance").
calls("GameState", "gameControlDataChanged", "LogReplayer", "getInstance").
calls("GameState", "gameControlDataChanged", "Rules", "getLeagueRules").
calls("GameState", "gameControlDataChanged", "StringBuilder", "append").
calls("GameState", "gameControlDataChanged", "StringBuilder", "append").
calls("GameState", "gameControlDataChanged", "StringBuilder", "append").
calls("GameState", "gameControlDataChanged", "StringBuilder", "append").
calls("GameState", "gameControlDataChanged", "Logger", "getInstance").
calls("GameState", "gameControlDataChanged", "Logger", "getInstance").
calls("GameState", "gameControlDataChanged", "Logger", "getInstance").
calls("GameState", "gameControlDataChanged", "Logger", "getInstance").
calls("GameState", "gameControlDataChanged", "GameState", "sendEvents").
method("GameState", "gameControlDataTimeout", 24, 6, "fthielke@fb3.uni-bremen.de").
calls("GameState", "gameControlDataTimeout", "LogReplayer", "getInstance").
calls("GameState", "gameControlDataTimeout", "Entry", "getValue").
calls("GameState", "gameControlDataTimeout", "Entry", "getKey").
calls("GameState", "gameControlDataTimeout", "Logger", "getInstance").
calls("GameState", "gameControlDataTimeout", "GameState", "sendEvents").
method("GameState", "receiveMessage", 46, 12, "fthielke@fb3.uni-bremen.de").
calls("GameState", "receiveMessage", "PluginLoader", "getInstance").
calls("GameState", "receiveMessage", "HashMap", "get").
calls("GameState", "receiveMessage", "HashMap", "put").
calls("GameState", "receiveMessage", "Map", "put").
calls("GameState", "receiveMessage", "Collection", "add").
calls("GameState", "receiveMessage", "RobotState", "registerMessage").
calls("GameState", "receiveMessage", "GameState", "sendEvents").
method("GameState", "sendEvents", 57, 16, "fthielke@fb3.uni-bremen.de").
calls("GameState", "sendEvents", "Entry", "getKey").
calls("GameState", "sendEvents", "Collection", "add").
calls("GameState", "sendEvents", "GameState", "fireEvent").
calls("GameState", "sendEvents", "Entry", "getKey").
calls("GameState", "sendEvents", "Collection", "add").
calls("GameState", "sendEvents", "GameState", "fireEvent").
calls("GameState", "sendEvents", "Collection", "add").
calls("GameState", "sendEvents", "GameState", "fireEvent").
calls("GameState", "sendEvents", "Map", "get").
calls("GameState", "sendEvents", "Collection", "add").
calls("GameState", "sendEvents", "GameState", "fireEvent").
calls("GameState", "sendEvents", "Map", "get").
calls("GameState", "sendEvents", "Collection", "add").
calls("GameState", "sendEvents", "GameState", "fireEvent").
method("GameState", "fireEvent", 4, 2, "fthielke@fb3.uni-bremen.de").
calls("GameState", "fireEvent", "TeamEventListener", "teamChanged").
method("GameState", "getTeamColor", 64, 16, "fthielke@fb3.uni-bremen.de").
calls("GameState", "getTeamColor", "Rules", "getLeagueRules").
calls("GameState", "getTeamColor", "Rules", "getLeagueRules").
calls("GameState", "getTeamColor", "Teams", "getColors").
calls("GameState", "getTeamColor", "Rules", "getLeagueRules").
calls("GameState", "getTeamColor", "Teams", "getColors").
method("GameState", "getLastGameControlData", 3, 1, "fthielke@fb3.uni-bremen.de").
method("GameState", "getTeamName", 26, 6, "fthielke@fb3.uni-bremen.de").
calls("GameState", "getTeamName", "Rules", "getLeagueRules").
calls("GameState", "getTeamName", "Rules", "getLeagueRules").
calls("GameState", "getTeamName", "Teams", "getNames").
calls("GameState", "getTeamName", "Rules", "getLeagueRules").
calls("GameState", "getTeamName", "Teams", "getNames").
method("GameState", "isMirrored", 3, 1, "fthielke@fb3.uni-bremen.de").
method("GameState", "setMirrored", 6, 2, "fthielke@fb3.uni-bremen.de").
calls("GameState", "setMirrored", "GameState", "sendEvents").
method("GameState", "outputSide", 3, 1, "fthielke@fb3.uni-bremen.de").
method("GameState", "addListener", 4, 1, "fthielke@fb3.uni-bremen.de").
calls("GameState", "addListener", "EventListenerList", "add").
calls("GameState", "addListener", "GameState", "sendEvents").
method("GameState", "removeListener", 3, 1, "fthielke@fb3.uni-bremen.de").
calls("GameState", "removeListener", "EventListenerList", "remove").

# GameController/src/teamcomm/data/RobotState.java

class("RobotState").
method("RobotState", "RobotState", 4, 0, "fthielke@fb3.uni-bremen.de").
method("RobotState", "registerMessage", 17, 4, "fthielke@fb3.uni-bremen.de").
calls("RobotState", "registerMessage", "System", "currentTimeMillis").
calls("RobotState", "registerMessage", "LinkedList", "addFirst").
calls("RobotState", "registerMessage", "RobotStateEventListener", "robotStateChanged").
calls("RobotState", "registerMessage", "RobotStateEventListener", "connectionStatusChanged").
method("RobotState", "getAddress", 3, 1, "fthielke@fb3.uni-bremen.de").
method("RobotState", "getLastMessage", 3, 1, "fthielke@fb3.uni-bremen.de").
method("RobotState", "getMessagesPerSecond", 9, 2, "fthielke@fb3.uni-bremen.de").
calls("RobotState", "getMessagesPerSecond", "ListIterator", "hasPrevious").
calls("RobotState", "getMessagesPerSecond", "ListIterator", "previous").
calls("RobotState", "getMessagesPerSecond", "ListIterator", "remove").
calls("RobotState", "getMessagesPerSecond", "LinkedList", "size").
calls("RobotState", "getMessagesPerSecond", "LinkedList", "size").
calls("RobotState", "getMessagesPerSecond", "LinkedList", "getLast").
calls("RobotState", "getMessagesPerSecond", "Math", "max").
method("RobotState", "updateConnectionStatus", 9, 3, "fthielke@fb3.uni-bremen.de").
calls("RobotState", "updateConnectionStatus", "RobotStateEventListener", "connectionStatusChanged").
method("RobotState", "getConnectionStatus", 8, 3, "fthielke@fb3.uni-bremen.de").
method("RobotState", "getMessageCount", 3, 1, "fthielke@fb3.uni-bremen.de").
method("RobotState", "getIllegalMessageCount", 3, 1, "fthielke@fb3.uni-bremen.de").
method("RobotState", "getIllegalMessageRatio", 3, 1, "fthielke@fb3.uni-bremen.de").
method("RobotState", "getTeamNumber", 3, 1, "fthielke@fb3.uni-bremen.de").
method("RobotState", "getPlayerNumber", 3, 1, "fthielke@fb3.uni-bremen.de").
method("RobotState", "getPenalty", 3, 1, "fthielke@fb3.uni-bremen.de").
method("RobotState", "setPenalty", 3, 1, "fthielke@fb3.uni-bremen.de").
method("RobotState", "addListener", 3, 1, "fthielke@fb3.uni-bremen.de").
calls("RobotState", "addListener", "EventListenerList", "add").
method("RobotState", "removeListener", 3, 1, "fthielke@fb3.uni-bremen.de").
calls("RobotState", "removeListener", "EventListenerList", "remove").

# GameController/src/teamcomm/gui/View3DCanvas.java

class("View3DCanvas").
method("View3DCanvas", "View3DCanvas", 15, 0, "fthielke@fb3.uni-bremen.de").
calls("View3DCanvas", "View3DCanvas", "GLCapabilities", "setSampleBuffers").
calls("View3DCanvas", "View3DCanvas", "GLCapabilities", "setNumSamples").
calls("View3DCanvas", "View3DCanvas", "autoDrawable", "addGLEventListener").
calls("View3DCanvas", "View3DCanvas", "GLJPanel", "addMouseListener").
calls("View3DCanvas", "View3DCanvas", "GLJPanel", "addMouseMotionListener").
calls("View3DCanvas", "View3DCanvas", "GLJPanel", "addMouseWheelListener").
calls("View3DCanvas", "View3DCanvas", "animator", "start").
method("View3DCanvas", "init", 4, 1, "fthielke@fb3.uni-bremen.de").
calls("View3DCanvas", "init", "View3D", "init").
calls("View3DCanvas", "init", "View3DCanvas", "updateDrawingsMenu").
method("View3DCanvas", "getCanvas", 3, 1, "fthielke@fb3.uni-bremen.de").
method("View3DCanvas", "updateDrawingsMenu", 26, 8, "fthielke@fb3.uni-bremen.de").
calls("View3DCanvas", "updateDrawingsMenu", "JMenu", "removeAll").
calls("View3DCanvas", "updateDrawingsMenu", "String", "equals").
calls("View3DCanvas", "updateDrawingsMenu", "HashMap", "put").
calls("View3DCanvas", "updateDrawingsMenu", "JMenu", "add").
calls("View3DCanvas", "updateDrawingsMenu", "JCheckBoxMenuItem", "addItemListener").
calls("View3DCanvas", "updateDrawingsMenu", "JMenu", "add").
calls("View3DCanvas", "updateDrawingsMenu", "JMenu", "add").
calls("View3DCanvas", "updateDrawingsMenu", "JMenu", "getMenuComponentCount").
calls("View3DCanvas", "updateDrawingsMenu", "JMenu", "remove").
method("View3DCanvas", "getDrawingsMenu", 3, 1, "fthielke@fb3.uni-bremen.de").
method("View3DCanvas", "teamChanged", 20, 5, "fthielke@fb3.uni-bremen.de").
calls("View3DCanvas", "teamChanged", "drawings", "clear").
calls("View3DCanvas", "teamChanged", "PluginLoader", "getInstance").
calls("View3DCanvas", "teamChanged", "drawings", "addAll").
calls("View3DCanvas", "teamChanged", "PluginLoader", "getInstance").
calls("View3DCanvas", "teamChanged", "drawings", "addAll").
calls("View3DCanvas", "teamChanged", "PluginLoader", "getInstance").
calls("View3DCanvas", "teamChanged", "drawings", "addAll").
calls("View3DCanvas", "teamChanged", "Collections", "sort").
calls("View3DCanvas", "teamChanged", "View3DCanvas", "updateDrawingsMenu").
calls("View3DCanvas", "teamChanged", "View3D", "teamChanged").

# GameController/src/teamcomm/gui/RobotDetailFrameDefault.java

class("RobotDetailFrameDefault").
method("RobotDetailFrameDefault", "RobotDetailFrameDefault", 3, 0, "fthielke@fb3.uni-bremen.de").
calls("RobotDetailFrameDefault", "RobotDetailFrameDefault", "RobotDetailFrame", "RobotDetailFrame").
method("RobotDetailFrameDefault", "init", 19, 1, "fthielke@fb3.uni-bremen.de").
calls("RobotDetailFrameDefault", "init", "RobotDetailFrameDefault", "setContentPane").
calls("RobotDetailFrameDefault", "init", "BorderFactory", "createLineBorder").
calls("RobotDetailFrameDefault", "init", "RobotState", "getAddress").
calls("RobotDetailFrameDefault", "init", "BorderFactory", "createTitledBorder").
calls("RobotDetailFrameDefault", "init", "JPanel", "setBorder").
calls("RobotDetailFrameDefault", "init", "JPanel", "setLayout").
calls("RobotDetailFrameDefault", "init", "JPanel", "setLayout").
calls("RobotDetailFrameDefault", "init", "JPanel", "add").
calls("RobotDetailFrameDefault", "init", "JPanel", "setBorder").
calls("RobotDetailFrameDefault", "init", "JPanel", "add").
calls("RobotDetailFrameDefault", "init", "JPanel", "setLayout").
calls("RobotDetailFrameDefault", "init", "JLabel", "setBorder").
calls("RobotDetailFrameDefault", "init", "JLabel", "setAlignmentY").
calls("RobotDetailFrameDefault", "init", "JPanel", "add").
calls("RobotDetailFrameDefault", "init", "JPanel", "add").
calls("RobotDetailFrameDefault", "init", "RobotDetailFrameDefault", "update").
calls("RobotDetailFrameDefault", "init", "RobotDetailFrameDefault", "setResizable").
method("RobotDetailFrameDefault", "robotStateChanged", 5, 2, "fthielke@fb3.uni-bremen.de").
calls("RobotDetailFrameDefault", "robotStateChanged", "RobotDetailFrameDefault", "isVisible").
calls("RobotDetailFrameDefault", "robotStateChanged", "SwingUtilities", "invokeLater").
method("RobotDetailFrameDefault", "update", 176, 38, "fthielke@fb3.uni-bremen.de").
calls("RobotDetailFrameDefault", "update", "RobotState", "getTeamNumber").
calls("RobotDetailFrameDefault", "update", "StringBuilder", "append").
calls("RobotDetailFrameDefault", "update", "GameState", "getInstance").
calls("RobotDetailFrameDefault", "update", "StringBuilder", "append").
calls("RobotDetailFrameDefault", "update", "StringBuilder", "append").
calls("RobotDetailFrameDefault", "update", "RobotState", "getPlayerNumber").
calls("RobotDetailFrameDefault", "update", "StringBuilder", "append").
calls("RobotDetailFrameDefault", "update", "StringBuilder", "append").
calls("RobotDetailFrameDefault", "update", "StringBuilder", "append").
calls("RobotDetailFrameDefault", "update", "StringBuilder", "append").
calls("RobotDetailFrameDefault", "update", "StringBuilder", "append").
calls("RobotDetailFrameDefault", "update", "StringBuilder", "append").
calls("RobotDetailFrameDefault", "update", "StringBuilder", "append").
calls("RobotDetailFrameDefault", "update", "StringBuilder", "append").
calls("RobotDetailFrameDefault", "update", "StringBuilder", "append").
calls("RobotDetailFrameDefault", "update", "StringBuilder", "append").
calls("RobotDetailFrameDefault", "update", "StringBuilder", "append").
calls("RobotDetailFrameDefault", "update", "StringBuilder", "toString").
calls("RobotDetailFrameDefault", "update", "JLabel", "setText").
calls("RobotDetailFrameDefault", "update", "StringBuilder", "setLength").
calls("RobotDetailFrameDefault", "update", "StringBuilder", "append").
calls("RobotDetailFrameDefault", "update", "StringBuilder", "append").
calls("RobotDetailFrameDefault", "update", "StringBuilder", "append").
calls("RobotDetailFrameDefault", "update", "StringBuilder", "append").
calls("RobotDetailFrameDefault", "update", "StringBuilder", "append").
calls("RobotDetailFrameDefault", "update", "StringBuilder", "append").
calls("RobotDetailFrameDefault", "update", "StringBuilder", "append").
calls("RobotDetailFrameDefault", "update", "StringBuilder", "append").
calls("RobotDetailFrameDefault", "update", "StringBuilder", "append").
calls("RobotDetailFrameDefault", "update", "StringBuilder", "append").
calls("RobotDetailFrameDefault", "update", "StringBuilder", "append").
calls("RobotDetailFrameDefault", "update", "StringBuilder", "append").
calls("RobotDetailFrameDefault", "update", "StringBuilder", "append").
calls("RobotDetailFrameDefault", "update", "StringBuilder", "append").
calls("RobotDetailFrameDefault", "update", "StringBuilder", "append").
calls("RobotDetailFrameDefault", "update", "StringBuilder", "append").
calls("RobotDetailFrameDefault", "update", "StringBuilder", "append").
calls("RobotDetailFrameDefault", "update", "StringBuilder", "append").
calls("RobotDetailFrameDefault", "update", "StringBuilder", "append").
calls("RobotDetailFrameDefault", "update", "StringBuilder", "append").
calls("RobotDetailFrameDefault", "update", "StringBuilder", "append").
calls("RobotDetailFrameDefault", "update", "StringBuilder", "append").
calls("RobotDetailFrameDefault", "update", "StringBuilder", "append").
calls("RobotDetailFrameDefault", "update", "StringBuilder", "append").
calls("RobotDetailFrameDefault", "update", "StringBuilder", "append").
calls("RobotDetailFrameDefault", "update", "StringBuilder", "append").
calls("RobotDetailFrameDefault", "update", "StringBuilder", "append").
calls("RobotDetailFrameDefault", "update", "StringBuilder", "append").
calls("RobotDetailFrameDefault", "update", "StringBuilder", "append").
calls("RobotDetailFrameDefault", "update", "StringBuilder", "append").
calls("RobotDetailFrameDefault", "update", "StringBuilder", "append").
calls("RobotDetailFrameDefault", "update", "StringBuilder", "append").
calls("RobotDetailFrameDefault", "update", "StringBuilder", "append").
calls("RobotDetailFrameDefault", "update", "JPanel", "getComponent").
calls("RobotDetailFrameDefault", "update", "Throwable", "getClass").
calls("RobotDetailFrameDefault", "update", "SPLStandardMessage", "getClass").
calls("RobotDetailFrameDefault", "update", "Throwable", "getMessage").
calls("RobotDetailFrameDefault", "update", "Log", "error").
calls("RobotDetailFrameDefault", "update", "StringBuilder", "setLength").
calls("RobotDetailFrameDefault", "update", "StringBuilder", "append").
calls("RobotDetailFrameDefault", "update", "String", "equals").
calls("RobotDetailFrameDefault", "update", "JPanel", "getComponentCount").
calls("RobotDetailFrameDefault", "update", "JLabel", "setAlignmentY").
calls("RobotDetailFrameDefault", "update", "JLabel", "setBorder").
calls("RobotDetailFrameDefault", "update", "JPanel", "add").
calls("RobotDetailFrameDefault", "update", "JPanel", "getComponent").
calls("RobotDetailFrameDefault", "update", "StringBuilder", "setLength").
calls("RobotDetailFrameDefault", "update", "String", "length").
calls("RobotDetailFrameDefault", "update", "StringBuilder", "append").
calls("RobotDetailFrameDefault", "update", "JPanel", "getComponentCount").
calls("RobotDetailFrameDefault", "update", "JLabel", "setAlignmentY").
calls("RobotDetailFrameDefault", "update", "JLabel", "setBorder").
calls("RobotDetailFrameDefault", "update", "JPanel", "add").
calls("RobotDetailFrameDefault", "update", "JPanel", "getComponent").
calls("RobotDetailFrameDefault", "update", "JPanel", "getComponentCount").
calls("RobotDetailFrameDefault", "update", "JPanel", "remove").
calls("RobotDetailFrameDefault", "update", "JPanel", "getComponentCount").
calls("RobotDetailFrameDefault", "update", "JPanel", "remove").
calls("RobotDetailFrameDefault", "update", "RobotDetailFrameDefault", "pack").
method("RobotDetailFrameDefault", "connectionStatusChanged", 1, 1, "fthielke@fb3.uni-bremen.de").

# GameController/src/teamcomm/gui/TeamLogoLoader.java

class("TeamLogoLoader").
method("TeamLogoLoader", "TeamLogoLoader", 1, 0, "fthielke@fb3.uni-bremen.de").
method("TeamLogoLoader", "getInstance", 3, 1, "fthielke@fb3.uni-bremen.de").
method("TeamLogoLoader", "getTeamLogo", 30, 7, "fthielke@fb3.uni-bremen.de").
calls("TeamLogoLoader", "getTeamLogo", "Rules", "getLeagueRules").
calls("TeamLogoLoader", "getTeamLogo", "Rules", "getLeagueRules").
calls("TeamLogoLoader", "getTeamLogo", "Teams", "getIcon").
calls("TeamLogoLoader", "getTeamLogo", "Rules", "getLeagueRules").
calls("TeamLogoLoader", "getTeamLogo", "Teams", "getIcon").
calls("TeamLogoLoader", "getTeamLogo", "BufferedImage", "getType").
calls("TeamLogoLoader", "getTeamLogo", "Graphics", "drawImage").
calls("TeamLogoLoader", "getTeamLogo", "Graphics", "dispose").
calls("TeamLogoLoader", "getTeamLogo", "Map", "put").
method("TeamLogoLoader", "getTeamLogoTexture", 18, 4, "fthielke@fb3.uni-bremen.de").
calls("TeamLogoLoader", "getTeamLogoTexture", "Rules", "getLeagueRules").
calls("TeamLogoLoader", "getTeamLogoTexture", "Rules", "getLeagueRules").
calls("TeamLogoLoader", "getTeamLogoTexture", "Teams", "getIconPath").
calls("TeamLogoLoader", "getTeamLogoTexture", "Rules", "getLeagueRules").
calls("TeamLogoLoader", "getTeamLogoTexture", "Teams", "getIconPath").
calls("TeamLogoLoader", "getTeamLogoTexture", "TextureLoader", "getInstance").
method("TeamLogoLoader", "getTeamLogoIcon", 4, 1, "fthielke@fb3.uni-bremen.de").
method("TeamLogoLoader", "getScaledTeamLogoIcon", 9, 2, "fthielke@fb3.uni-bremen.de").
method("TeamLogoLoader", "getScaledSemiTransparentTeamLogoIcon", 17, 4, "fthielke@fb3.uni-bremen.de").
calls("TeamLogoLoader", "getScaledSemiTransparentTeamLogoIcon", "TeamLogoLoader", "getTeamLogo").
calls("TeamLogoLoader", "getScaledSemiTransparentTeamLogoIcon", "Math", "max").
calls("TeamLogoLoader", "getScaledSemiTransparentTeamLogoIcon", "BufferedImage", "getWidth").
calls("TeamLogoLoader", "getScaledSemiTransparentTeamLogoIcon", "BufferedImage", "getHeight").
calls("TeamLogoLoader", "getScaledSemiTransparentTeamLogoIcon", "BufferedImage", "getWidth").
calls("TeamLogoLoader", "getScaledSemiTransparentTeamLogoIcon", "BufferedImage", "setRGB").
calls("TeamLogoLoader", "getScaledSemiTransparentTeamLogoIcon", "Map", "put").
method("TeamLogoLoader", "getTeamLogoPanelIcon", 10, 3, "fthielke@fb3.uni-bremen.de").
calls("TeamLogoLoader", "getTeamLogoPanelIcon", "TeamLogoLoader", "getScaledTeamLogoIcon").
calls("TeamLogoLoader", "getTeamLogoPanelIcon", "Map", "put").

# GameController/src/teamcomm/gui/MainWindow.java

class("MainWindow").
method("MainWindow", "MainWindow", 4, 0, "fthielke@fb3.uni-bremen.de").
calls("MainWindow", "MainWindow", "JFrame", "JFrame").
calls("MainWindow", "MainWindow", "SwingUtilities", "invokeLater").
method("MainWindow", "initialize", 33, 1, "fthielke@fb3.uni-bremen.de").
calls("MainWindow", "initialize", "MainWindow", "getRootPane").
calls("MainWindow", "initialize", "MainWindow", "setLocationByPlatform").
calls("MainWindow", "initialize", "MainWindow", "setDefaultCloseOperation").
calls("MainWindow", "initialize", "MainWindow", "addWindowListener").
calls("MainWindow", "initialize", "Box", "add").
calls("MainWindow", "initialize", "Box", "add").
calls("MainWindow", "initialize", "Box", "add").
calls("MainWindow", "initialize", "Box", "add").
calls("MainWindow", "initialize", "Box", "add").
calls("MainWindow", "initialize", "MainWindow", "add").
calls("MainWindow", "initialize", "MainWindow", "add").
calls("MainWindow", "initialize", "JPanel", "add").
calls("MainWindow", "initialize", "View3DCanvas", "getCanvas").
calls("MainWindow", "initialize", "JPanel", "add").
calls("MainWindow", "initialize", "MainWindow", "add").
calls("MainWindow", "initialize", "MainWindow", "createFileMenu").
calls("MainWindow", "initialize", "JMenuBar", "add").
calls("MainWindow", "initialize", "MainWindow", "createViewMenu").
calls("MainWindow", "initialize", "JMenuBar", "add").
calls("MainWindow", "initialize", "MainWindow", "setJMenuBar").
calls("MainWindow", "initialize", "MainWindow", "setPreferredSize").
calls("MainWindow", "initialize", "MainWindow", "pack").
calls("MainWindow", "initialize", "MainWindow", "setVisible").
calls("MainWindow", "initialize", "GameState", "getInstance").
method("MainWindow", "createFileMenu", 18, 1, "fthielke@fb3.uni-bremen.de").
calls("MainWindow", "createFileMenu", "JMenuItem", "addActionListener").
calls("MainWindow", "createFileMenu", "KeyStroke", "getKeyStroke").
calls("MainWindow", "createFileMenu", "JMenuItem", "setAccelerator").
calls("MainWindow", "createFileMenu", "JMenu", "add").
calls("MainWindow", "createFileMenu", "JMenu", "add").
calls("MainWindow", "createFileMenu", "JMenuItem", "addActionListener").
calls("MainWindow", "createFileMenu", "KeyStroke", "getKeyStroke").
calls("MainWindow", "createFileMenu", "JMenuItem", "setAccelerator").
calls("MainWindow", "createFileMenu", "JMenuItem", "addActionListener").
calls("MainWindow", "createFileMenu", "JMenu", "add").
calls("MainWindow", "createFileMenu", "JMenuItem", "addActionListener").
calls("MainWindow", "createFileMenu", "JMenu", "add").
method("MainWindow", "createViewMenu", 8, 1, "fthielke@fb3.uni-bremen.de").
calls("MainWindow", "createViewMenu", "JCheckBoxMenuItem", "addItemListener").
calls("MainWindow", "createViewMenu", "JMenu", "add").
calls("MainWindow", "createViewMenu", "View3DCanvas", "getDrawingsMenu").
calls("MainWindow", "createViewMenu", "JMenu", "add").
method("MainWindow", "terminate", 4, 1, "felix@felix-VirtualBox").
calls("MainWindow", "terminate", "GameState", "getInstance").
calls("MainWindow", "terminate", "View3DCanvas", "terminate").
method("MainWindow", "teamChanged", 3, 1, "fthielke@fb3.uni-bremen.de").
calls("MainWindow", "teamChanged", "SwingUtilities", "invokeLater").

# GameController/src/teamcomm/gui/View3DGSV.java

class("View3DGSV").
method("View3DGSV", "View3DGSV", 38, 0, "fthielke@fb3.uni-bremen.de").
calls("View3DGSV", "View3DGSV", "GLCapabilities", "setSampleBuffers").
calls("View3DGSV", "View3DGSV", "GLCapabilities", "setNumSamples").
calls("View3DGSV", "View3DGSV", "GLWindow", "create").
calls("View3DGSV", "View3DGSV", "autoDrawable", "addGLEventListener").
calls("View3DGSV", "View3DGSV", "GLWindow", "setSurfaceScale").
calls("View3DGSV", "View3DGSV", "GLWindow", "setTitle").
calls("View3DGSV", "View3DGSV", "GraphicsConfiguration", "getBounds").
calls("View3DGSV", "View3DGSV", "GraphicsConfiguration", "getBounds").
calls("View3DGSV", "View3DGSV", "GLWindow", "setPosition").
calls("View3DGSV", "View3DGSV", "GLWindow", "setUndecorated").
calls("View3DGSV", "View3DGSV", "GLWindow", "setResizable").
calls("View3DGSV", "View3DGSV", "GLWindow", "setFullscreen").
calls("View3DGSV", "View3DGSV", "GLWindow", "setPointerVisible").
calls("View3DGSV", "View3DGSV", "GLWindow", "confinePointer").
calls("View3DGSV", "View3DGSV", "GLWindow", "setSize").
calls("View3DGSV", "View3DGSV", "GLWindow", "setUndecorated").
calls("View3DGSV", "View3DGSV", "GLWindow", "setFullscreen").
calls("View3DGSV", "View3DGSV", "GLWindow", "setPointerVisible").
calls("View3DGSV", "View3DGSV", "GLWindow", "confinePointer").
calls("View3DGSV", "View3DGSV", "GLWindow", "addMouseListener").
calls("View3DGSV", "View3DGSV", "GLWindow", "addKeyListener").
calls("View3DGSV", "View3DGSV", "GLWindow", "addWindowListener").
calls("View3DGSV", "View3DGSV", "animator", "setModeBits").
calls("View3DGSV", "View3DGSV", "animator", "setExclusiveContext").
calls("View3DGSV", "View3DGSV", "animator", "setUpdateFPSFrames").
calls("View3DGSV", "View3DGSV", "animator", "add").
calls("View3DGSV", "View3DGSV", "GLWindow", "setVisible").
calls("View3DGSV", "View3DGSV", "animator", "start").
method("View3DGSV", "init", 28, 7, "fthielke@fb3.uni-bremen.de").
calls("View3DGSV", "init", "View3D", "init").
calls("View3DGSV", "init", "GLAutoDrawable", "getGL").
calls("View3DGSV", "init", "Drawing", "getClass").
calls("View3DGSV", "init", "Drawing", "getClass").
calls("View3DGSV", "init", "Drawing", "setActive").
calls("View3DGSV", "init", "Drawing", "setActive").
calls("View3DGSV", "init", "Drawing", "setActive").
calls("View3DGSV", "init", "camera", "addRadius").
calls("View3DGSV", "init", "camera", "shiftToBottom").
calls("View3DGSV", "init", "GameState", "getInstance").
calls("View3DGSV", "init", "TextureLoader", "getInstance").
calls("View3DGSV", "init", "System.err", "println").
method("View3DGSV", "reshape", 9, 2, "fthielke@fb3.uni-bremen.de").
calls("View3DGSV", "reshape", "View3D", "reshape").
calls("View3DGSV", "reshape", "GLWindow", "getWidth").
calls("View3DGSV", "reshape", "GLWindow", "getWidth").
calls("View3DGSV", "reshape", "GLWindow", "getWidth").
calls("View3DGSV", "reshape", "GLWindow", "getWidth").
method("View3DGSV", "terminate", 4, 1, "fthielke@fb3.uni-bremen.de").
calls("View3DGSV", "terminate", "View3D", "terminate").
calls("View3DGSV", "terminate", "SwingUtilities", "invokeLater").
method("View3DGSV", "draw", 143, 19, "fthielke@fb3.uni-bremen.de").
calls("View3DGSV", "draw", "View3DGSV", "switchTo2D").
calls("View3DGSV", "draw", "GLWindow", "getWidth").
calls("View3DGSV", "draw", "GLWindow", "getHeight").
calls("View3DGSV", "draw", "Image", "drawImage2DCover").
calls("View3DGSV", "draw", "GLWindow", "getHeight").
calls("View3DGSV", "draw", "GLWindow", "getHeight").
calls("View3DGSV", "draw", "Image", "drawImage2DContain").
calls("View3DGSV", "draw", "GLWindow", "getWidth").
calls("View3DGSV", "draw", "GLWindow", "getHeight").
calls("View3DGSV", "draw", "GLWindow", "getHeight").
calls("View3DGSV", "draw", "GLWindow", "getHeight").
calls("View3DGSV", "draw", "Image", "drawImage2DContain").
calls("View3DGSV", "draw", "GLWindow", "getWidth").
calls("View3DGSV", "draw", "GLWindow", "getWidth").
calls("View3DGSV", "draw", "Image", "drawImage2DContain").
calls("View3DGSV", "draw", "GLWindow", "getHeight").
calls("View3DGSV", "draw", "GLWindow", "getWidth").
calls("View3DGSV", "draw", "GLWindow", "getWidth").
calls("View3DGSV", "draw", "GLWindow", "getWidth").
calls("View3DGSV", "draw", "Image", "drawImage2DContain").
calls("View3DGSV", "draw", "View3DGSV", "switchTo3D").
calls("View3DGSV", "draw", "View3D", "draw").
calls("View3DGSV", "draw", "GameState", "getLastGameControlData").
calls("View3DGSV", "draw", "View3DGSV", "switchTo2D").
calls("View3DGSV", "draw", "TeamLogoLoader", "getInstance").
calls("View3DGSV", "draw", "GLWindow", "getWidth").
calls("View3DGSV", "draw", "GLWindow", "getWidth").
calls("View3DGSV", "draw", "GLWindow", "getWidth").
calls("View3DGSV", "draw", "GLWindow", "getWidth").
calls("View3DGSV", "draw", "Image", "drawImage2DContain").
calls("View3DGSV", "draw", "TeamLogoLoader", "getInstance").
calls("View3DGSV", "draw", "GLWindow", "getWidth").
calls("View3DGSV", "draw", "GLWindow", "getWidth").
calls("View3DGSV", "draw", "GLWindow", "getWidth").
calls("View3DGSV", "draw", "GLWindow", "getWidth").
calls("View3DGSV", "draw", "GLWindow", "getWidth").
calls("View3DGSV", "draw", "GLWindow", "getWidth").
calls("View3DGSV", "draw", "Image", "drawImage2DContain").
calls("View3DGSV", "draw", "View3DGSV", "switchTo3D").
calls("View3DGSV", "draw", "GLWindow", "getHeight").
calls("View3DGSV", "draw", "View3DGSV", "drawTextCenter").
calls("View3DGSV", "draw", "View3DGSV", "formatTime").
calls("View3DGSV", "draw", "GLWindow", "getWidth").
calls("View3DGSV", "draw", "Math", "round").
calls("View3DGSV", "draw", "GLWindow", "getHeight").
calls("View3DGSV", "draw", "View3DGSV", "drawText").
calls("View3DGSV", "draw", "GLWindow", "getHeight").
calls("View3DGSV", "draw", "GLWindow", "getHeight").
calls("View3DGSV", "draw", "View3DGSV", "drawTextCenter").
calls("View3DGSV", "draw", "View3DGSV", "formatTime").
calls("View3DGSV", "draw", "GLWindow", "getHeight").
calls("View3DGSV", "draw", "GLWindow", "getHeight").
calls("View3DGSV", "draw", "View3DGSV", "drawTextCenter").
calls("View3DGSV", "draw", "View3DGSV", "switchTo2D").
calls("View3DGSV", "draw", "GLWindow", "getWidth").
calls("View3DGSV", "draw", "GLWindow", "getWidth").
calls("View3DGSV", "draw", "GLWindow", "getWidth").
calls("View3DGSV", "draw", "GLWindow", "getWidth").
calls("View3DGSV", "draw", "TextureLoader", "getInstance").
calls("View3DGSV", "draw", "GLWindow", "getHeight").
calls("View3DGSV", "draw", "Image", "drawImage2D").
calls("View3DGSV", "draw", "View3DGSV", "switchTo3D").
calls("View3DGSV", "draw", "GLWindow", "getWidth").
calls("View3DGSV", "draw", "GLWindow", "getWidth").
calls("View3DGSV", "draw", "GLWindow", "getHeight").
calls("View3DGSV", "draw", "GLWindow", "getWidth").
calls("View3DGSV", "draw", "View3DGSV", "drawText").
calls("View3DGSV", "draw", "GLWindow", "getWidth").
calls("View3DGSV", "draw", "GLWindow", "getWidth").
calls("View3DGSV", "draw", "GLWindow", "getWidth").
calls("View3DGSV", "draw", "Math", "max").
calls("View3DGSV", "draw", "GLWindow", "getHeight").
calls("View3DGSV", "draw", "GLWindow", "getWidth").
calls("View3DGSV", "draw", "View3DGSV", "drawText").
calls("View3DGSV", "draw", "View3DGSV", "switchTo2D").
calls("View3DGSV", "draw", "GL2", "glColor4fv").
calls("View3DGSV", "draw", "GL2", "glPushMatrix").
calls("View3DGSV", "draw", "GLWindow", "getWidth").
calls("View3DGSV", "draw", "GLWindow", "getWidth").
calls("View3DGSV", "draw", "GLWindow", "getHeight").
calls("View3DGSV", "draw", "GL2", "glTranslatef").
calls("View3DGSV", "draw", "GLWindow", "getWidth").
calls("View3DGSV", "draw", "GLWindow", "getWidth").
calls("View3DGSV", "draw", "GLWindow", "getHeight").
calls("View3DGSV", "draw", "GL2", "glTranslatef").
calls("View3DGSV", "draw", "GLWindow", "getWidth").
calls("View3DGSV", "draw", "GL2", "glTranslatef").
calls("View3DGSV", "draw", "GLWindow", "getWidth").
calls("View3DGSV", "draw", "GLU", "gluDisk").
calls("View3DGSV", "draw", "GLWindow", "getWidth").
calls("View3DGSV", "draw", "GLWindow", "getWidth").
calls("View3DGSV", "draw", "GLU", "gluDisk").
calls("View3DGSV", "draw", "GL2", "glPopMatrix").
calls("View3DGSV", "draw", "GLU", "gluDeleteQuadric").
calls("View3DGSV", "draw", "View3DGSV", "switchTo3D").
method("View3DGSV", "drawTextCenter", 3, 1, "fthielke@fb3.uni-bremen.de").
calls("View3DGSV", "drawTextCenter", "GLWindow", "getWidth").
calls("View3DGSV", "drawTextCenter", "TextRenderer", "getBounds").
calls("View3DGSV", "drawTextCenter", "Math", "round").
calls("View3DGSV", "drawTextCenter", "View3DGSV", "drawText").
method("View3DGSV", "drawText", 4, 1, "fthielke@fb3.uni-bremen.de").
calls("View3DGSV", "drawText", "TextRenderer", "setColor").
calls("View3DGSV", "drawText", "TextRenderer", "draw").
method("View3DGSV", "switchTo2D", 12, 1, "fthielke@fb3.uni-bremen.de").
calls("View3DGSV", "switchTo2D", "GL2", "glMatrixMode").
calls("View3DGSV", "switchTo2D", "GL2", "glPushMatrix").
calls("View3DGSV", "switchTo2D", "GL2", "glLoadIdentity").
calls("View3DGSV", "switchTo2D", "GLWindow", "getWidth").
calls("View3DGSV", "switchTo2D", "GLWindow", "getHeight").
calls("View3DGSV", "switchTo2D", "GLU", "gluOrtho2D").
calls("View3DGSV", "switchTo2D", "GL2", "glMatrixMode").
calls("View3DGSV", "switchTo2D", "GL2", "glLoadIdentity").
calls("View3DGSV", "switchTo2D", "GL2", "glDisable").
calls("View3DGSV", "switchTo2D", "GL2", "glDisable").
calls("View3DGSV", "switchTo2D", "GL2", "glDisable").
method("View3DGSV", "switchTo3D", 8, 1, "fthielke@fb3.uni-bremen.de").
calls("View3DGSV", "switchTo3D", "GL2", "glEnable").
calls("View3DGSV", "switchTo3D", "GL2", "glEnable").
calls("View3DGSV", "switchTo3D", "GL2", "glEnable").
calls("View3DGSV", "switchTo3D", "GL2", "glMatrixMode").
calls("View3DGSV", "switchTo3D", "GL2", "glPopMatrix").
calls("View3DGSV", "switchTo3D", "GL2", "glMatrixMode").
method("View3DGSV", "formatTime", 3, 1, "fthielke@fb3.uni-bremen.de").
calls("View3DGSV", "formatTime", "Math", "abs").
calls("View3DGSV", "formatTime", "Math", "abs").
calls("View3DGSV", "formatTime", "String", "format").

# GameController/src/teamcomm/gui/View3D.java

class("View3D").
method("View3D", "terminate", 4, 1, "fthielke@fb3.uni-bremen.de").
calls("View3D", "terminate", "GameState", "getInstance").
calls("View3D", "terminate", "AnimatorBase", "stop").
method("View3D", "init", 47, 4, "fthielke@fb3.uni-bremen.de").
calls("View3D", "init", "GL2", "glClearDepth").
calls("View3D", "init", "GL2", "glDepthFunc").
calls("View3D", "init", "GL2", "glEnable").
calls("View3D", "init", "GL2", "glEnable").
calls("View3D", "init", "GL2", "glCullFace").
calls("View3D", "init", "GL2", "glFrontFace").
calls("View3D", "init", "GL2", "glEnable").
calls("View3D", "init", "GL2", "glEnable").
calls("View3D", "init", "GL2", "glEnable").
calls("View3D", "init", "GL2", "glPolygonMode").
calls("View3D", "init", "GL2", "glShadeModel").
calls("View3D", "init", "GL2", "glColorMaterial").
calls("View3D", "init", "GL2", "glHint").
calls("View3D", "init", "GLCanvas", "getBounds").
calls("View3D", "init", "GLCanvas", "getBounds").
calls("View3D", "init", "GLCanvas", "getBounds").
calls("View3D", "init", "GLCanvas", "getBounds").
calls("View3D", "init", "View3D", "reshape").
calls("View3D", "init", "GLWindow", "getX").
calls("View3D", "init", "GLWindow", "getY").
calls("View3D", "init", "GLWindow", "getWidth").
calls("View3D", "init", "GLWindow", "getHeight").
calls("View3D", "init", "View3D", "reshape").
calls("View3D", "init", "View3D", "reshape").
calls("View3D", "init", "GL2", "glEnable").
calls("View3D", "init", "FloatBuffer", "wrap").
calls("View3D", "init", "GL2", "glLightModelfv").
calls("View3D", "init", "GL2", "glLightModelf").
calls("View3D", "init", "FloatBuffer", "wrap").
calls("View3D", "init", "GL2", "glLightfv").
calls("View3D", "init", "FloatBuffer", "wrap").
calls("View3D", "init", "GL2", "glLightfv").
calls("View3D", "init", "FloatBuffer", "wrap").
calls("View3D", "init", "GL2", "glLightfv").
calls("View3D", "init", "FloatBuffer", "wrap").
calls("View3D", "init", "GL2", "glLightfv").
calls("View3D", "init", "GL2", "glLightf").
calls("View3D", "init", "GL2", "glLightf").
calls("View3D", "init", "GL2", "glLightf").
calls("View3D", "init", "GL2", "glLightf").
calls("View3D", "init", "FloatBuffer", "wrap").
calls("View3D", "init", "GL2", "glLightfv").
calls("View3D", "init", "GL2", "glLightf").
calls("View3D", "init", "GL2", "glEnable").
calls("View3D", "init", "GL2", "glClearColor").
calls("View3D", "init", "PluginLoader", "getInstance").
calls("View3D", "init", "List", "addAll").
calls("View3D", "init", "Collections", "sort").
calls("View3D", "init", "Drawing", "initialize").
calls("View3D", "init", "GameState", "getInstance").
method("View3D", "dispose", 1, 1, "fthielke@fb3.uni-bremen.de").
method("View3D", "display", 5, 1, "fthielke@fb3.uni-bremen.de").
calls("View3D", "display", "GL2", "glClear").
calls("View3D", "display", "View3D", "draw").
method("View3D", "draw", 46, 13, "fthielke@fb3.uni-bremen.de").
calls("View3D", "draw", "GL2", "glLoadIdentity").
calls("View3D", "draw", "Camera", "positionCamera").
calls("View3D", "draw", "Iterator", "hasNext").
calls("View3D", "draw", "Drawing", "initialize").
calls("View3D", "draw", "Iterator", "remove").
calls("View3D", "draw", "Throwable", "getClass").
calls("View3D", "draw", "Drawing", "getClass").
calls("View3D", "draw", "Throwable", "getMessage").
calls("View3D", "draw", "Log", "error").
calls("View3D", "draw", "Drawing", "isActive").
calls("View3D", "draw", "Throwable", "getClass").
calls("View3D", "draw", "Drawing", "getClass").
calls("View3D", "draw", "Throwable", "getMessage").
calls("View3D", "draw", "Log", "error").
calls("View3D", "draw", "Drawing", "getTeamNumber").
calls("View3D", "draw", "Drawing", "getTeamNumber").
calls("View3D", "draw", "Throwable", "getClass").
calls("View3D", "draw", "Drawing", "getClass").
calls("View3D", "draw", "Throwable", "getMessage").
calls("View3D", "draw", "Log", "error").
calls("View3D", "draw", "Drawing", "getTeamNumber").
calls("View3D", "draw", "Drawing", "getTeamNumber").
calls("View3D", "draw", "Camera", "flip").
calls("View3D", "draw", "Throwable", "getClass").
calls("View3D", "draw", "Drawing", "getClass").
calls("View3D", "draw", "Throwable", "getMessage").
calls("View3D", "draw", "Log", "error").
calls("View3D", "draw", "Camera", "flip").
method("View3D", "reshape", 8, 2, "fthielke@fb3.uni-bremen.de").
calls("View3D", "reshape", "GLAutoDrawable", "getGL").
calls("View3D", "reshape", "GLAutoDrawable", "getGL").
calls("View3D", "reshape", "Camera", "setupFrustum").
method("View3D", "teamChanged", 15, 3, "fthielke@fb3.uni-bremen.de").
calls("View3D", "teamChanged", "Set", "clear").
calls("View3D", "teamChanged", "Set", "addAll").
calls("View3D", "teamChanged", "Set", "clear").
calls("View3D", "teamChanged", "Set", "addAll").

# GameController/src/teamcomm/gui/RobotPanel.java

class("RobotPanel").
method("RobotPanel", "RobotPanel", 8, 0, "fthielke@fb3.uni-bremen.de").
calls("RobotPanel", "RobotPanel", "JPanel", "JPanel").
calls("RobotPanel", "RobotPanel", "RobotPanel", "loadIcons").
calls("RobotPanel", "RobotPanel", "SwingUtilities", "invokeLater").
calls("RobotPanel", "RobotPanel", "PluginLoader", "getInstance").
method("RobotPanel", "robotStateChanged", 5, 2, "fthielke@fb3.uni-bremen.de").
calls("RobotPanel", "robotStateChanged", "RobotPanel", "isVisible").
calls("RobotPanel", "robotStateChanged", "RobotPanel", "update").
method("RobotPanel", "connectionStatusChanged", 14, 2, "fthielke@fb3.uni-bremen.de").
calls("RobotPanel", "connectionStatusChanged", "RobotPanel", "isVisible").
calls("RobotPanel", "connectionStatusChanged", "RobotState", "getConnectionStatus").
calls("RobotPanel", "connectionStatusChanged", "JLabel", "setIcon").
calls("RobotPanel", "connectionStatusChanged", "JLabel", "setIcon").
calls("RobotPanel", "connectionStatusChanged", "JLabel", "setIcon").
method("RobotPanel", "update", 4, 1, "fthielke@fb3.uni-bremen.de").
calls("RobotPanel", "update", "SwingUtilities", "invokeLater").
method("RobotPanel", "setTeamLogoVisible", 7, 2, "fthielke@fb3.uni-bremen.de").
calls("RobotPanel", "setTeamLogoVisible", "SwingUtilities", "invokeLater").
calls("RobotPanel", "setTeamLogoVisible", "SwingUtilities", "invokeLater").
method("RobotPanel", "dispose", 4, 1, "fthielke@fb3.uni-bremen.de").
calls("RobotPanel", "dispose", "RobotState", "removeListener").
calls("RobotPanel", "dispose", "RobotDetailFrame", "destroy").
method("RobotPanel", "getRobotAddress", 3, 1, "fthielke@fb3.uni-bremen.de").
calls("RobotPanel", "getRobotAddress", "RobotState", "getAddress").
method("RobotPanel", "loadIcons", 11, 4, "fthielke@fb3.uni-bremen.de").

# GameController/src/teamcomm/gui/RobotDetailFrame.java

class("RobotDetailFrame").
method("RobotDetailFrame", "RobotDetailFrame", 6, 0, "fthielke@fb3.uni-bremen.de").
calls("RobotDetailFrame", "RobotDetailFrame", "RobotState", "getAddress").
calls("RobotDetailFrame", "RobotDetailFrame", "JFrame", "JFrame").
calls("RobotDetailFrame", "RobotDetailFrame", "SwingUtilities", "invokeLater").
method("RobotDetailFrame", "init", 1, 1, "fthielke@fb3.uni-bremen.de").
method("RobotDetailFrame", "destroy", 4, 1, "fthielke@fb3.uni-bremen.de").
calls("RobotDetailFrame", "destroy", "RobotDetailFrame", "setVisible").
calls("RobotDetailFrame", "destroy", "RobotState", "removeListener").
method("RobotDetailFrame", "dispose", 4, 1, "fthielke@fb3.uni-bremen.de").
calls("RobotDetailFrame", "dispose", "JFrame", "dispose").
calls("RobotDetailFrame", "dispose", "RobotState", "removeListener").

# GameController/src/teamcomm/gui/Camera.java

class("Camera").
method("Camera", "flip", 4, 1, "fthielke@fb3.uni-bremen.de").
calls("Camera", "flip", "GL2", "glRotatef").
method("Camera", "addTheta", 10, 3, "fthielke@fb3.uni-bremen.de").
method("Camera", "addPhi", 10, 3, "fthielke@fb3.uni-bremen.de").
method("Camera", "addRadius", 10, 3, "fthielke@fb3.uni-bremen.de").
method("Camera", "setupFrustum", 7, 1, "fthielke@fb3.uni-bremen.de").
calls("Camera", "setupFrustum", "GL2", "glMatrixMode").
calls("Camera", "setupFrustum", "GL2", "glLoadIdentity").
calls("Camera", "setupFrustum", "GLU", "gluPerspective").
calls("Camera", "setupFrustum", "GL2", "glMatrixMode").
method("Camera", "positionCamera", 6, 1, "fthielke@fb3.uni-bremen.de").
calls("Camera", "positionCamera", "GL2", "glTranslatef").
calls("Camera", "positionCamera", "GL2", "glRotatef").
calls("Camera", "positionCamera", "GL2", "glRotatef").
calls("Camera", "positionCamera", "GL2", "glTranslatef").
method("Camera", "turnTowardsCamera", 4, 1, "fthielke@fb3.uni-bremen.de").
calls("Camera", "turnTowardsCamera", "GL2", "glRotatef").
calls("Camera", "turnTowardsCamera", "GL2", "glRotatef").
method("Camera", "shiftToBottom", 3, 1, "fthielke@fb3.uni-bremen.de").
calls("Camera", "shiftToBottom", "Math", "toRadians").
calls("Camera", "shiftToBottom", "Math", "sin").
calls("Camera", "shiftToBottom", "Math", "toRadians").
calls("Camera", "shiftToBottom", "Math", "toRadians").
calls("Camera", "shiftToBottom", "Math", "sin").
calls("Camera", "shiftToBottom", "Math", "toRadians").
calls("Camera", "shiftToBottom", "Math", "cos").
calls("Camera", "shiftToBottom", "Math", "toRadians").
calls("Camera", "shiftToBottom", "Math", "toRadians").
calls("Camera", "shiftToBottom", "Math", "cos").

# GameController/src/teamcomm/gui/LogReplayFrame.java

class("LogReplayFrame").
method("LogReplayFrame", "LogReplayFrame", 6, 0, "fthielke@fb3.uni-bremen.de").
calls("LogReplayFrame", "LogReplayFrame", "JFrame", "JFrame").
calls("LogReplayFrame", "LogReplayFrame", "SwingUtilities", "invokeLater").
method("LogReplayFrame", "logReplayStatus", 64, 13, "fthielke@fb3.uni-bremen.de").
calls("LogReplayFrame", "logReplayStatus", "JButton", "setEnabled").
calls("LogReplayFrame", "logReplayStatus", "JButton", "setEnabled").
calls("LogReplayFrame", "logReplayStatus", "JButton", "setEnabled").
calls("LogReplayFrame", "logReplayStatus", "JButton", "setEnabled").
calls("LogReplayFrame", "logReplayStatus", "JButton", "setEnabled").
calls("LogReplayFrame", "logReplayStatus", "JLabel", "setText").
calls("LogReplayFrame", "logReplayStatus", "JButton", "setEnabled").
calls("LogReplayFrame", "logReplayStatus", "JLabel", "setText").
calls("LogReplayFrame", "logReplayStatus", "JButton", "setEnabled").
calls("LogReplayFrame", "logReplayStatus", "JButton", "setEnabled").
calls("LogReplayFrame", "logReplayStatus", "JButton", "setEnabled").
calls("LogReplayFrame", "logReplayStatus", "JButton", "setEnabled").
calls("LogReplayFrame", "logReplayStatus", "JButton", "setEnabled").
calls("LogReplayFrame", "logReplayStatus", "JButton", "setEnabled").
calls("LogReplayFrame", "logReplayStatus", "JLabel", "setText").
calls("LogReplayFrame", "logReplayStatus", "JButton", "setEnabled").
calls("LogReplayFrame", "logReplayStatus", "JLabel", "setText").
calls("LogReplayFrame", "logReplayStatus", "JButton", "setEnabled").
calls("LogReplayFrame", "logReplayStatus", "JButton", "setEnabled").
calls("LogReplayFrame", "logReplayStatus", "StringBuilder", "append").
calls("LogReplayFrame", "logReplayStatus", "StringBuilder", "append").
calls("LogReplayFrame", "logReplayStatus", "StringBuilder", "append").
calls("LogReplayFrame", "logReplayStatus", "StringBuilder", "toString").
calls("LogReplayFrame", "logReplayStatus", "JLabel", "setText").
calls("LogReplayFrame", "logReplayStatus", "JButton", "setEnabled").
calls("LogReplayFrame", "logReplayStatus", "JLabel", "setText").
method("LogReplayFrame", "logReplayStarted", 11, 1, "fthielke@fb3.uni-bremen.de").
calls("LogReplayFrame", "logReplayStarted", "JButton", "setEnabled").
calls("LogReplayFrame", "logReplayStarted", "JButton", "setEnabled").
calls("LogReplayFrame", "logReplayStarted", "JButton", "setEnabled").
calls("LogReplayFrame", "logReplayStarted", "JButton", "setEnabled").
calls("LogReplayFrame", "logReplayStarted", "JButton", "setEnabled").
calls("LogReplayFrame", "logReplayStarted", "JLabel", "setText").
calls("LogReplayFrame", "logReplayStarted", "JLabel", "setText").
calls("LogReplayFrame", "logReplayStarted", "LogReplayFrame", "setLocationRelativeTo").
calls("LogReplayFrame", "logReplayStarted", "LogReplayFrame", "setVisible").
method("LogReplayFrame", "logReplayEnded", 3, 1, "fthielke@fb3.uni-bremen.de").
calls("LogReplayFrame", "logReplayEnded", "LogReplayFrame", "setVisible").

# GameController/src/teamcomm/net/logging/Logger.java

class("Logger").
method("Logger", "Logger", 3, 0, "fthielke@fb3.uni-bremen.de").
calls("Logger", "Logger", "Logger", "createLogfile").
method("Logger", "getInstance", 3, 1, "fthielke@fb3.uni-bremen.de").
method("Logger", "enableLogging", 7, 2, "fthielke@fb3.uni-bremen.de").
calls("Logger", "enableLogging", "Logger", "createLogfile").
calls("Logger", "enableLogging", "System.out", "println").
method("Logger", "disableLogging", 7, 2, "fthielke@fb3.uni-bremen.de").
calls("Logger", "disableLogging", "Logger", "closeLogfile").
calls("Logger", "disableLogging", "System.out", "println").
method("Logger", "createLogfile", 3, 1, "fthielke@fb3.uni-bremen.de").
calls("Logger", "createLogfile", "Logger", "createLogfile").
method("Logger", "createLogfile", 15, 3, "fthielke@fb3.uni-bremen.de").
calls("Logger", "createLogfile", "LogReplayer", "getInstance").
calls("Logger", "createLogfile", "Logger", "closeLogfile").
calls("Logger", "createLogfile", "File", "exists").
calls("Logger", "createLogfile", "File", "mkdirs").
method("Logger", "closeLogfile", 19, 6, "fthielke@fb3.uni-bremen.de").
calls("Logger", "closeLogfile", "LogReplayer", "getInstance").
calls("Logger", "closeLogfile", "ObjectOutputStream", "close").
calls("Logger", "closeLogfile", "IOException", "getMessage").
calls("Logger", "closeLogfile", "Log", "error").
calls("Logger", "closeLogfile", "File", "exists").
calls("Logger", "closeLogfile", "File", "length").
calls("Logger", "closeLogfile", "File", "delete").
method("Logger", "log", 3, 1, "fthielke@fb3.uni-bremen.de").
calls("Logger", "log", "Logger", "log").
method("Logger", "log", 3, 1, "fthielke@fb3.uni-bremen.de").
calls("Logger", "log", "Logger", "log").
method("Logger", "log", 31, 8, "fthielke@fb3.uni-bremen.de").
calls("Logger", "log", "LogReplayer", "getInstance").
calls("Logger", "log", "IOException", "getMessage").
calls("Logger", "log", "Log", "error").
calls("Logger", "log", "System", "currentTimeMillis").
calls("Logger", "log", "System", "currentTimeMillis").
calls("Logger", "log", "ObjectOutputStream", "writeLong").
calls("Logger", "log", "ObjectOutputStream", "writeBoolean").
calls("Logger", "log", "Logger", "getIDForClass").
calls("Logger", "log", "ObjectOutputStream", "writeInt").
calls("Logger", "log", "ObjectOutputStream", "writeObject").
calls("Logger", "log", "IOException", "getMessage").
calls("Logger", "log", "Log", "error").
calls("Logger", "log", "Logger", "closeLogfile").
method("Logger", "getIDForClass", 6, 2, "fthielke@fb3.uni-bremen.de").
calls("Logger", "getIDForClass", "Class", "equals").

# GameController/src/teamcomm/net/logging/LogReplayEventListener.java


# GameController/src/teamcomm/net/logging/LogReplayTask.java

class("LogReplayTask").
method("LogReplayTask", "LogReplayTask", 5, 0, "fthielke@fb3.uni-bremen.de").
calls("LogReplayTask", "LogReplayTask", "LogReplayTask", "next").
method("LogReplayTask", "close", 8, 3, "fthielke@fb3.uni-bremen.de").
calls("LogReplayTask", "close", "ObjectInputStream", "close").
method("LogReplayTask", "isPaused", 5, 1, "fthielke@fb3.uni-bremen.de").
method("LogReplayTask", "setPlaybackSpeed", 5, 1, "fthielke@fb3.uni-bremen.de").
method("LogReplayTask", "run", 38, 9, "fthielke@fb3.uni-bremen.de").
calls("LogReplayTask", "run", "LogReplayTask", "isPaused").
calls("LogReplayTask", "run", "LogReplayTask", "handleObject").
calls("LogReplayTask", "run", "LogReplayTask", "next").
calls("LogReplayTask", "run", "LogReplayTask", "handleObject").
calls("LogReplayTask", "run", "LogReplayTask", "prev").
calls("LogReplayTask", "run", "LogReplayEventListener", "logReplayStatus").
method("LogReplayTask", "prev", 10, 3, "fthielke@fb3.uni-bremen.de").
calls("LogReplayTask", "prev", "Deque", "isEmpty").
calls("LogReplayTask", "prev", "Deque", "push").
calls("LogReplayTask", "prev", "Deque", "pollFirst").
method("LogReplayTask", "next", 31, 9, "fthielke@fb3.uni-bremen.de").
calls("LogReplayTask", "next", "ObjectInputStream", "readBoolean").
calls("LogReplayTask", "next", "ObjectInputStream", "close").
calls("LogReplayTask", "next", "IOException", "getClass").
calls("LogReplayTask", "next", "IOException", "getMessage").
calls("LogReplayTask", "next", "Log", "error").
calls("LogReplayTask", "next", "ObjectInputStream", "close").
calls("LogReplayTask", "next", "Deque", "push").
method("LogReplayTask", "handleObject", 17, 4, "fthielke@fb3.uni-bremen.de").
calls("LogReplayTask", "handleObject", "SPLStandardMessageReceiverTCM", "getInstance").
calls("LogReplayTask", "handleObject", "GameState", "getInstance").
calls("LogReplayTask", "handleObject", "GameState", "getInstance").

# GameController/src/teamcomm/net/logging/LogReplayEvent.java

class("LogReplayEvent").
method("LogReplayEvent", "LogReplayEvent", 7, 0, "fthielke@fb3.uni-bremen.de").
calls("LogReplayEvent", "LogReplayEvent", "EventObject", "EventObject").

# GameController/src/teamcomm/net/logging/LogReplayer.java

class("LogReplayer").
method("LogReplayer", "getInstance", 3, 1, "fthielke@fb3.uni-bremen.de").
method("LogReplayer", "open", 14, 4, "fthielke@fb3.uni-bremen.de").
calls("LogReplayer", "open", "ScheduledFuture", "cancel").
calls("LogReplayer", "open", "LogReplayTask", "close").
calls("LogReplayer", "open", "LogReplayEventListener", "logReplayEnded").
calls("LogReplayer", "open", "SPLStandardMessageReceiverTCM", "getInstance").
calls("LogReplayer", "open", "GameState", "getInstance").
calls("LogReplayer", "open", "ScheduledExecutorService", "scheduleAtFixedRate").
calls("LogReplayer", "open", "LogReplayEventListener", "logReplayStarted").
method("LogReplayer", "isReplaying", 3, 1, "fthielke@fb3.uni-bremen.de").
method("LogReplayer", "isPaused", 3, 1, "fthielke@fb3.uni-bremen.de").
calls("LogReplayer", "isPaused", "LogReplayTask", "isPaused").
method("LogReplayer", "setPlaybackSpeed", 5, 2, "fthielke@fb3.uni-bremen.de").
calls("LogReplayer", "setPlaybackSpeed", "LogReplayTask", "setPlaybackSpeed").
method("LogReplayer", "close", 12, 3, "fthielke@fb3.uni-bremen.de").
calls("LogReplayer", "close", "ScheduledFuture", "cancel").
calls("LogReplayer", "close", "LogReplayTask", "close").
calls("LogReplayer", "close", "LogReplayEventListener", "logReplayEnded").
calls("LogReplayer", "close", "SPLStandardMessageReceiverTCM", "getInstance").
calls("LogReplayer", "close", "GameState", "getInstance").
method("LogReplayer", "addListener", 3, 1, "fthielke@fb3.uni-bremen.de").
calls("LogReplayer", "addListener", "EventListenerList", "add").
method("LogReplayer", "removeListener", 3, 1, "fthielke@fb3.uni-bremen.de").
calls("LogReplayer", "removeListener", "EventListenerList", "remove").

# GameController/src/teamcomm/data/event/GameControlDataEventListener.java


# GameController/src/teamcomm/data/event/RobotStateEvent.java

class("RobotStateEvent").
method("RobotStateEvent", "RobotStateEvent", 3, 0, "fthielke@fb3.uni-bremen.de").
calls("RobotStateEvent", "RobotStateEvent", "EventObject", "EventObject").

# GameController/src/teamcomm/data/event/TeamEvent.java

class("TeamEvent").
method("TeamEvent", "TeamEvent", 6, 0, "fthielke@fb3.uni-bremen.de").
calls("TeamEvent", "TeamEvent", "EventObject", "EventObject").

# GameController/src/teamcomm/data/event/TeamEventListener.java


# GameController/src/teamcomm/data/event/GameControlDataTimeoutEvent.java

class("GameControlDataTimeoutEvent").
method("GameControlDataTimeoutEvent", "GameControlDataTimeoutEvent", 3, 0, "fthielke@fb3.uni-bremen.de").
calls("GameControlDataTimeoutEvent", "GameControlDataTimeoutEvent", "EventObject", "EventObject").

# GameController/src/teamcomm/data/event/RobotStateEventListener.java


# GameController/src/teamcomm/data/event/GameControlDataEvent.java

class("GameControlDataEvent").
method("GameControlDataEvent", "GameControlDataEvent", 4, 0, "fthielke@fb3.uni-bremen.de").
calls("GameControlDataEvent", "GameControlDataEvent", "EventObject", "EventObject").

# GameController/src/teamcomm/gui/drawings/TextureLoader.java

class("TextureLoader").
method("TextureLoader", "TextureLoader", 1, 0, "fthielke@fb3.uni-bremen.de").
method("TextureLoader", "getInstance", 3, 1, "fthielke@fb3.uni-bremen.de").
method("TextureLoader", "loadTexture", 36, 5, "fthielke@fb3.uni-bremen.de").
calls("TextureLoader", "loadTexture", "Map", "put").
calls("TextureLoader", "loadTexture", "ByteBuffer", "order").
calls("TextureLoader", "loadTexture", "ByteBuffer", "putInt").
calls("TextureLoader", "loadTexture", "ByteBuffer", "put").
calls("TextureLoader", "loadTexture", "ByteBuffer", "put").
calls("TextureLoader", "loadTexture", "ByteBuffer", "put").
calls("TextureLoader", "loadTexture", "ByteBuffer", "rewind").
calls("TextureLoader", "loadTexture", "GL", "glGenTextures").
calls("TextureLoader", "loadTexture", "GL", "glBindTexture").
calls("TextureLoader", "loadTexture", "GL", "glTexParameteri").
calls("TextureLoader", "loadTexture", "GL", "glTexParameteri").
calls("TextureLoader", "loadTexture", "BufferedImage", "getWidth").
calls("TextureLoader", "loadTexture", "BufferedImage", "getHeight").
calls("TextureLoader", "loadTexture", "GL", "glTexImage2D").
calls("TextureLoader", "loadTexture", "GL", "glBindTexture").
calls("TextureLoader", "loadTexture", "File", "getAbsolutePath").
calls("TextureLoader", "loadTexture", "Map", "put").

# GameController/src/teamcomm/gui/drawings/Static.java

class("Static").
method("Static", "draw", 1, 1, "fthielke@fb3.uni-bremen.de").

# GameController/src/teamcomm/gui/drawings/Drawing.java

class("Drawing").
method("Drawing", "setActive", 4, 1, "fthielke@fb3.uni-bremen.de").
calls("Drawing", "setActive", "Config", "getInstance").
method("Drawing", "isActive", 3, 1, "fthielke@fb3.uni-bremen.de").
method("Drawing", "getTeamNumber", 3, 1, "fthielke@fb3.uni-bremen.de").
method("Drawing", "setTeamNumber", 3, 1, "fthielke@fb3.uni-bremen.de").
method("Drawing", "initialize", 12, 3, "fthielke@fb3.uni-bremen.de").
calls("Drawing", "initialize", "Drawing", "init").
calls("Drawing", "initialize", "Drawing", "isActive").
calls("Drawing", "initialize", "Drawing", "setActive").
calls("Drawing", "initialize", "Drawing", "setActive").
method("Drawing", "init", 1, 1, "fthielke@fb3.uni-bremen.de").
method("Drawing", "hasAlpha", 1, 1, "fthielke@fb3.uni-bremen.de").
method("Drawing", "getPriority", 1, 1, "fthielke@fb3.uni-bremen.de").

# GameController/src/teamcomm/gui/drawings/RoSi2Loader.java

class("RoSi2Loader").
method("RoSi2Loader", "RoSi2Loader", 1, 0, "fthielke@fb3.uni-bremen.de").
method("RoSi2Loader", "getInstance", 3, 1, "fthielke@fb3.uni-bremen.de").
method("RoSi2Loader", "cacheModels", 3, 1, "fthielke@fb3.uni-bremen.de").
calls("RoSi2Loader", "cacheModels", "RoSi2Loader", "cacheModels").
method("RoSi2Loader", "cacheModels", 27, 8, "fthielke@fb3.uni-bremen.de").
calls("RoSi2Loader", "cacheModels", "Iterator", "hasNext").
calls("RoSi2Loader", "cacheModels", "Iterator", "next").
calls("RoSi2Loader", "cacheModels", "Map", "containsKey").
calls("RoSi2Loader", "cacheModels", "Iterator", "remove").
calls("RoSi2Loader", "cacheModels", "Set", "isEmpty").
calls("RoSi2Loader", "cacheModels", "Map", "put").
calls("RoSi2Loader", "cacheModels", "Map", "put").
calls("RoSi2Loader", "cacheModels", "Set", "addAll").
method("RoSi2Loader", "loadModel", 3, 1, "fthielke@fb3.uni-bremen.de").
calls("RoSi2Loader", "loadModel", "RoSi2Loader", "loadModel").
method("RoSi2Loader", "loadModel", 36, 8, "fthielke@fb3.uni-bremen.de").
calls("RoSi2Loader", "loadModel", "Map", "put").
calls("RoSi2Loader", "loadModel", "Map", "put").
calls("RoSi2Loader", "loadModel", "Map", "put").
calls("RoSi2Loader", "loadModel", "Map", "put").
calls("RoSi2Loader", "loadModel", "Set", "add").
calls("RoSi2Loader", "loadModel", "RoSi2Element", "getName").
calls("RoSi2Loader", "loadModel", "RoSi2Element", "instantiate").
calls("RoSi2Loader", "loadModel", "Map", "put").
calls("RoSi2Loader", "loadModel", "RoSi2Element.RoSi2ParseException", "getMessage").
calls("RoSi2Loader", "loadModel", "JOptionPane", "showMessageDialog").
calls("RoSi2Loader", "loadModel", "System", "exit").
calls("RoSi2Loader", "loadModel", "Set", "clear").
calls("RoSi2Loader", "loadModel", "Map", "get").

# GameController/src/teamcomm/gui/drawings/PerPlayer.java

class("PerPlayer").
method("PerPlayer", "draw", 1, 1, "fthielke@fb3.uni-bremen.de").

# GameController/src/teamcomm/gui/drawings/RoSi2Element.java

class("RoSi2Element").
method("RoSi2Element", "RoSi2Element", 3, 0, "fthielke@fb3.uni-bremen.de").
calls("RoSi2Element", "RoSi2Element", "RoSi2Element", "RoSi2Element").
method("RoSi2Element", "RoSi2Element", 11, 0, "fthielke@fb3.uni-bremen.de").
calls("RoSi2Element", "RoSi2Element", "Iterator", "hasNext").
calls("RoSi2Element", "RoSi2Element", "Attribute", "getName").
calls("RoSi2Element", "RoSi2Element", "Attribute", "getValue").
calls("RoSi2Element", "RoSi2Element", "Map", "put").
method("RoSi2Element", "getName", 3, 1, "fthielke@fb3.uni-bremen.de").
method("RoSi2Element", "findElement", 14, 4, "fthielke@fb3.uni-bremen.de").
calls("RoSi2Element", "findElement", "LinkedList", "isEmpty").
calls("RoSi2Element", "findElement", "String", "equals").
calls("RoSi2Element", "findElement", "LinkedList", "addAll").
method("RoSi2Element", "findElements", 19, 5, "fthielke@fb3.uni-bremen.de").
calls("RoSi2Element", "findElements", "Collection", "isEmpty").
calls("RoSi2Element", "findElements", "LinkedList", "isEmpty").
calls("RoSi2Element", "findElements", "Set", "contains").
calls("RoSi2Element", "findElements", "List", "add").
calls("RoSi2Element", "findElements", "Set", "remove").
calls("RoSi2Element", "findElements", "Set", "isEmpty").
calls("RoSi2Element", "findElements", "LinkedList", "addAll").
method("RoSi2Element", "instantiate", 3, 1, "fthielke@fb3.uni-bremen.de").
calls("RoSi2Element", "instantiate", "RoSi2Element", "instantiate").
method("RoSi2Element", "instantiate", 3, 1, "fthielke@fb3.uni-bremen.de").
calls("RoSi2Element", "instantiate", "RoSi2Element", "instantiate").
method("RoSi2Element", "instantiate", 257, 55, "fthielke@fb3.uni-bremen.de").
calls("RoSi2Element", "instantiate", "Map", "getKey").
calls("RoSi2Element", "instantiate", "Map", "containsKey").
calls("RoSi2Element", "instantiate", "Map", "getKey").
calls("RoSi2Element", "instantiate", "Map", "getValue").
calls("RoSi2Element", "instantiate", "Map", "put").
calls("RoSi2Element", "instantiate", "List", "add").
calls("RoSi2Element", "instantiate", "RoSi2Element", "instantiate").
calls("RoSi2Element", "instantiate", "DecimalFormat", "setGroupingUsed").
calls("RoSi2Element", "instantiate", "DecimalFormatSymbols", "setDecimalSeparator").
calls("RoSi2Element", "instantiate", "DecimalFormat", "setDecimalFormatSymbols").
calls("RoSi2Element", "instantiate", "String", "length").
calls("RoSi2Element", "instantiate", "String", "charAt").
calls("RoSi2Element", "instantiate", "Character", "isWhitespace").
calls("RoSi2Element", "instantiate", "String", "length").
calls("RoSi2Element", "instantiate", "String", "charAt").
calls("RoSi2Element", "instantiate", "String", "charAt").
calls("RoSi2Element", "instantiate", "String", "charAt").
calls("RoSi2Element", "instantiate", "String", "length").
calls("RoSi2Element", "instantiate", "String", "charAt").
calls("RoSi2Element", "instantiate", "Character", "isWhitespace").
calls("RoSi2Element", "instantiate", "String", "length").
calls("RoSi2Element", "instantiate", "ParsePosition", "getIndex").
calls("RoSi2Element", "instantiate", "Number", "doubleValue").
calls("RoSi2Element", "instantiate", "ArrayList", "add").
calls("RoSi2Element", "instantiate", "ArrayList", "trimToSize").
calls("RoSi2Element", "instantiate", "DecimalFormat", "setGroupingUsed").
calls("RoSi2Element", "instantiate", "DecimalFormatSymbols", "setDecimalSeparator").
calls("RoSi2Element", "instantiate", "DecimalFormat", "setDecimalFormatSymbols").
calls("RoSi2Element", "instantiate", "String", "length").
calls("RoSi2Element", "instantiate", "String", "charAt").
calls("RoSi2Element", "instantiate", "Character", "isWhitespace").
calls("RoSi2Element", "instantiate", "String", "length").
calls("RoSi2Element", "instantiate", "String", "charAt").
calls("RoSi2Element", "instantiate", "String", "charAt").
calls("RoSi2Element", "instantiate", "String", "charAt").
calls("RoSi2Element", "instantiate", "String", "length").
calls("RoSi2Element", "instantiate", "String", "charAt").
calls("RoSi2Element", "instantiate", "Character", "isWhitespace").
calls("RoSi2Element", "instantiate", "String", "length").
calls("RoSi2Element", "instantiate", "Number", "floatValue").
calls("RoSi2Element", "instantiate", "ParsePosition", "getIndex").
calls("RoSi2Element", "instantiate", "ArrayList", "add").
calls("RoSi2Element", "instantiate", "ArrayList", "trimToSize").
calls("RoSi2Element", "instantiate", "DecimalFormat", "setGroupingUsed").
calls("RoSi2Element", "instantiate", "DecimalFormatSymbols", "setDecimalSeparator").
calls("RoSi2Element", "instantiate", "DecimalFormat", "setDecimalFormatSymbols").
calls("RoSi2Element", "instantiate", "String", "length").
calls("RoSi2Element", "instantiate", "String", "charAt").
calls("RoSi2Element", "instantiate", "Character", "isWhitespace").
calls("RoSi2Element", "instantiate", "String", "length").
calls("RoSi2Element", "instantiate", "String", "charAt").
calls("RoSi2Element", "instantiate", "String", "charAt").
calls("RoSi2Element", "instantiate", "String", "charAt").
calls("RoSi2Element", "instantiate", "String", "length").
calls("RoSi2Element", "instantiate", "String", "charAt").
calls("RoSi2Element", "instantiate", "Character", "isWhitespace").
calls("RoSi2Element", "instantiate", "String", "length").
calls("RoSi2Element", "instantiate", "Number", "floatValue").
calls("RoSi2Element", "instantiate", "ParsePosition", "getIndex").
calls("RoSi2Element", "instantiate", "ArrayList", "add").
calls("RoSi2Element", "instantiate", "ArrayList", "trimToSize").
calls("RoSi2Element", "instantiate", "DecimalFormat", "setParseIntegerOnly").
calls("RoSi2Element", "instantiate", "String", "length").
calls("RoSi2Element", "instantiate", "String", "charAt").
calls("RoSi2Element", "instantiate", "Character", "isWhitespace").
calls("RoSi2Element", "instantiate", "String", "length").
calls("RoSi2Element", "instantiate", "String", "charAt").
calls("RoSi2Element", "instantiate", "String", "charAt").
calls("RoSi2Element", "instantiate", "String", "charAt").
calls("RoSi2Element", "instantiate", "String", "length").
calls("RoSi2Element", "instantiate", "String", "charAt").
calls("RoSi2Element", "instantiate", "Character", "isWhitespace").
calls("RoSi2Element", "instantiate", "String", "length").
calls("RoSi2Element", "instantiate", "Number", "intValue").
calls("RoSi2Element", "instantiate", "LinkedList", "add").
calls("RoSi2Element", "instantiate", "ParsePosition", "getIndex").
calls("RoSi2Element", "instantiate", "TextureLoader", "getInstance").
calls("RoSi2Element", "instantiate", "Float", "valueOf").
method("RoSi2Element", "getColor", 53, 12, "fthielke@fb3.uni-bremen.de").
calls("RoSi2Element", "getColor", "String", "charAt").
calls("RoSi2Element", "getColor", "String", "length").
calls("RoSi2Element", "getColor", "String", "length").
calls("RoSi2Element", "getColor", "String", "charAt").
calls("RoSi2Element", "getColor", "String", "startsWith").
calls("RoSi2Element", "getColor", "Double", "valueOf").
calls("RoSi2Element", "getColor", "Double", "valueOf").
calls("RoSi2Element", "getColor", "String", "startsWith").
calls("RoSi2Element", "getColor", "Double", "valueOf").
calls("RoSi2Element", "getColor", "Double", "valueOf").
calls("RoSi2Element", "getColor", "Double", "valueOf").
method("RoSi2Element", "hexDigit", 10, 3, "fthielke@fb3.uni-bremen.de").
method("RoSi2Element", "getLength", 27, 7, "fthielke@fb3.uni-bremen.de").
calls("RoSi2Element", "getLength", "RoSi2Element", "getFloatAndUnit").
method("RoSi2Element", "getUnit", 19, 2, "fthielke@fb3.uni-bremen.de").
calls("RoSi2Element", "getUnit", "String", "isEmpty").
method("RoSi2Element", "getAngle", 15, 4, "fthielke@fb3.uni-bremen.de").
calls("RoSi2Element", "getAngle", "RoSi2Element", "getFloatAndUnit").
method("RoSi2Element", "getFloatAndUnit", 19, 3, "fthielke@fb3.uni-bremen.de").
calls("RoSi2Element", "getFloatAndUnit", "DecimalFormat", "setGroupingUsed").
calls("RoSi2Element", "getFloatAndUnit", "DecimalFormatSymbols", "setDecimalSeparator").
calls("RoSi2Element", "getFloatAndUnit", "DecimalFormat", "setDecimalFormatSymbols").
calls("RoSi2Element", "getFloatAndUnit", "Number", "floatValue").
calls("RoSi2Element", "getFloatAndUnit", "ParsePosition", "getIndex").
calls("RoSi2Element", "getFloatAndUnit", "String", "substring").
method("RoSi2Element", "getAttributeValue", 52, 12, "fthielke@fb3.uni-bremen.de").
calls("RoSi2Element", "getAttributeValue", "String", "substring").
calls("RoSi2Element", "getAttributeValue", "StringBuilder", "append").
calls("RoSi2Element", "getAttributeValue", "String", "length").
calls("RoSi2Element", "getAttributeValue", "String", "indexOf").
calls("RoSi2Element", "getAttributeValue", "String", "substring").
calls("RoSi2Element", "getAttributeValue", "String", "length").
calls("RoSi2Element", "getAttributeValue", "String", "charAt").
calls("RoSi2Element", "getAttributeValue", "Character", "isLetterOrDigit").
calls("RoSi2Element", "getAttributeValue", "String", "substring").
calls("RoSi2Element", "getAttributeValue", "String", "substring").
calls("RoSi2Element", "getAttributeValue", "StringBuilder", "append").
calls("RoSi2Element", "getAttributeValue", "StringBuilder", "append").
calls("RoSi2Element", "getAttributeValue", "String", "length").
calls("RoSi2Element", "getAttributeValue", "String", "indexOf").
calls("RoSi2Element", "getAttributeValue", "String", "length").
calls("RoSi2Element", "getAttributeValue", "String", "substring").
calls("RoSi2Element", "getAttributeValue", "StringBuilder", "append").
calls("RoSi2Element", "getAttributeValue", "StringBuilder", "toString").
method("RoSi2Element", "parseFile", 75, 20, "fthielke@fb3.uni-bremen.de").
calls("RoSi2Element", "parseFile", "XMLInputFactory", "setProperty").
calls("RoSi2Element", "parseFile", "XMLInputFactory", "setProperty").
calls("RoSi2Element", "parseFile", "Deque", "addFirst").
calls("RoSi2Element", "parseFile", "Deque", "addFirst").
calls("RoSi2Element", "parseFile", "Deque", "isEmpty").
calls("RoSi2Element", "parseFile", "Deque", "getFirst").
calls("RoSi2Element", "parseFile", "XMLEvent", "isStartElement").
calls("RoSi2Element", "parseFile", "String", "equals").
calls("RoSi2Element", "parseFile", "Deque", "getFirst").
calls("RoSi2Element", "parseFile", "String", "equals").
calls("RoSi2Element", "parseFile", "Deque", "addFirst").
calls("RoSi2Element", "parseFile", "Deque", "getFirst").
calls("RoSi2Element", "parseFile", "String", "equals").
calls("RoSi2Element", "parseFile", "Deque", "getFirst").
calls("RoSi2Element", "parseFile", "Deque", "getFirst").
calls("RoSi2Element", "parseFile", "Map", "put").
calls("RoSi2Element", "parseFile", "String", "equals").
calls("RoSi2Element", "parseFile", "Deque", "getFirst").
calls("RoSi2Element", "parseFile", "Deque", "addFirst").
calls("RoSi2Element", "parseFile", "XMLEvent", "isAttribute").
calls("RoSi2Element", "parseFile", "Deque", "getFirst").
calls("RoSi2Element", "parseFile", "XMLEvent", "isCharacters").
calls("RoSi2Element", "parseFile", "Characters", "isWhiteSpace").
calls("RoSi2Element", "parseFile", "Deque", "getFirst").
calls("RoSi2Element", "parseFile", "XMLEvent", "isEndElement").
calls("RoSi2Element", "parseFile", "Deque", "getFirst").
calls("RoSi2Element", "parseFile", "String", "equals").
calls("RoSi2Element", "parseFile", "String", "equals").
calls("RoSi2Element", "parseFile", "String", "equals").
calls("RoSi2Element", "parseFile", "Deque", "removeFirst").
calls("RoSi2Element", "parseFile", "Deque", "pollFirst").
calls("RoSi2Element", "parseFile", "Deque", "size").
calls("RoSi2Element", "parseFile", "Deque", "getFirst").
calls("RoSi2Element", "parseFile", "cur.tag", "equals").
calls("RoSi2Element", "parseFile", "Deque", "getFirst").
method("RoSi2Element", "getXmlAttribute", 10, 3, "fthielke@fb3.uni-bremen.de").
calls("RoSi2Element", "getXmlAttribute", "Attribute", "getValue").

# GameController/src/teamcomm/gui/drawings/Image.java

class("Image").
method("Image", "drawImage", 4, 1, "fthielke@fb3.uni-bremen.de").
calls("Image", "drawImage", "Image", "drawImage").
method("Image", "drawImage", 3, 1, "fthielke@fb3.uni-bremen.de").
calls("Image", "drawImage", "Image", "drawImage").
method("Image", "drawImage2D", 3, 1, "fthielke@fb3.uni-bremen.de").
calls("Image", "drawImage2D", "Image", "drawImage").
method("Image", "drawImage2DCover", 3, 1, "fthielke@fb3.uni-bremen.de").
calls("Image", "drawImage2DCover", "Image", "drawImage2D").
method("Image", "drawImage2DContain", 5, 1, "fthielke@fb3.uni-bremen.de").
calls("Image", "drawImage2DContain", "Image", "drawImage2D").
method("Image", "drawImage", 27, 3, "fthielke@fb3.uni-bremen.de").
calls("Image", "drawImage", "GL2", "glColorMaterial").
calls("Image", "drawImage", "FloatBuffer", "wrap").
calls("Image", "drawImage", "GL2", "glMaterialfv").
calls("Image", "drawImage", "GL2", "glMaterialf").
calls("Image", "drawImage", "FloatBuffer", "wrap").
calls("Image", "drawImage", "GL2", "glMaterialfv").
calls("Image", "drawImage", "GL2", "glBindTexture").
calls("Image", "drawImage", "GL2", "glEnable").
calls("Image", "drawImage", "GL2", "glBlendFunc").
calls("Image", "drawImage", "GL2", "glNormal3f").
calls("Image", "drawImage", "GL2", "glColor3f").
calls("Image", "drawImage", "GL2", "glBegin").
calls("Image", "drawImage", "GL2", "glTexCoord2f").
calls("Image", "drawImage", "GL2", "glVertex2f").
calls("Image", "drawImage", "GL2", "glTexCoord2f").
calls("Image", "drawImage", "GL2", "glVertex2f").
calls("Image", "drawImage", "GL2", "glTexCoord2f").
calls("Image", "drawImage", "GL2", "glVertex2f").
calls("Image", "drawImage", "GL2", "glTexCoord2f").
calls("Image", "drawImage", "GL2", "glVertex2f").
calls("Image", "drawImage", "GL2", "glEnd").
calls("Image", "drawImage", "GL2", "glBindTexture").
calls("Image", "drawImage", "GL2", "glDisable").

# GameController/src/teamcomm/gui/drawings/Text.java

class("Text").
method("Text", "drawText", 3, 1, "fthielke@fb3.uni-bremen.de").
calls("Text", "drawText", "Text", "drawText").
method("Text", "drawText", 10, 2, "fthielke@fb3.uni-bremen.de").
calls("Text", "drawText", "TextRenderer", "begin3DRendering").
calls("Text", "drawText", "TextRenderer", "setColor").
calls("Text", "drawText", "Rectangle2D", "getWidth").
calls("Text", "drawText", "Rectangle2D", "getHeight").
calls("Text", "drawText", "TextRenderer", "draw3D").
calls("Text", "drawText", "TextRenderer", "end3DRendering").

# GameController/src/teamcomm/gui/drawings/common/Field.java

class("Field").
method("Field", "init", 3, 1, "fthielke@fb3.uni-bremen.de").
calls("Field", "init", "RoSi2Loader", "getInstance").
method("Field", "draw", 5, 1, "fthielke@fb3.uni-bremen.de").
calls("Field", "draw", "GL2", "glDepthFunc").
calls("Field", "draw", "RoSi2Loader", "getInstance").
calls("Field", "draw", "GL2", "glCallList").
calls("Field", "draw", "GL2", "glDepthFunc").
method("Field", "hasAlpha", 3, 1, "fthielke@fb3.uni-bremen.de").
method("Field", "getPriority", 3, 1, "fthielke@fb3.uni-bremen.de").

# GameController/src/teamcomm/gui/drawings/common/PlayerNumber.java

class("PlayerNumber").
method("PlayerNumber", "draw", 14, 3, "fthielke@fb3.uni-bremen.de").
calls("PlayerNumber", "draw", "GL2", "glPushMatrix").
calls("PlayerNumber", "draw", "RobotState", "getPenalty").
calls("PlayerNumber", "draw", "GL2", "glTranslatef").
calls("PlayerNumber", "draw", "GL2", "glTranslatef").
calls("PlayerNumber", "draw", "Camera", "turnTowardsCamera").
calls("PlayerNumber", "draw", "Text", "drawText").
calls("PlayerNumber", "draw", "GL2", "glPopMatrix").
method("PlayerNumber", "hasAlpha", 3, 1, "fthielke@fb3.uni-bremen.de").
method("PlayerNumber", "getPriority", 3, 1, "fthielke@fb3.uni-bremen.de").

# GameController/src/teamcomm/gui/drawings/common/GameControllerInfo.java

class("GameControllerInfo").
method("GameControllerInfo", "draw", 69, 5, "fthielke@fb3.uni-bremen.de").
calls("GameControllerInfo", "draw", "GL2", "glPushMatrix").
calls("GameControllerInfo", "draw", "GL2", "glTranslatef").
calls("GameControllerInfo", "draw", "Camera", "turnTowardsCamera").
calls("GameControllerInfo", "draw", "Text", "drawText").
calls("GameControllerInfo", "draw", "Text", "drawText").
calls("GameControllerInfo", "draw", "Text", "drawText").
calls("GameControllerInfo", "draw", "GameControllerInfo", "getColor").
calls("GameControllerInfo", "draw", "Text", "drawText").
calls("GameControllerInfo", "draw", "Text", "drawText").
calls("GameControllerInfo", "draw", "GameControllerInfo", "getColor").
calls("GameControllerInfo", "draw", "Text", "drawText").
calls("GameControllerInfo", "draw", "GL2", "glPopMatrix").
method("GameControllerInfo", "getColor", 6, 2, "fthielke@fb3.uni-bremen.de").
method("GameControllerInfo", "hasAlpha", 3, 1, "fthielke@fb3.uni-bremen.de").
method("GameControllerInfo", "getPriority", 3, 1, "fthielke@fb3.uni-bremen.de").

# GameController/src/teamcomm/gui/drawings/common/Player.java

class("Player").
method("Player", "getModelName", 25, 1, "fthielke@fb3.uni-bremen.de").
method("Player", "init", 3, 1, "fthielke@fb3.uni-bremen.de").
calls("Player", "init", "RoSi2Loader", "getInstance").
method("Player", "draw", 19, 4, "fthielke@fb3.uni-bremen.de").
calls("Player", "draw", "GL2", "glPushMatrix").
calls("Player", "draw", "RobotState", "getPenalty").
calls("Player", "draw", "GL2", "glTranslatef").
calls("Player", "draw", "GL2", "glRotatef").
calls("Player", "draw", "GL2", "glTranslatef").
calls("Player", "draw", "Math", "toDegrees").
calls("Player", "draw", "GL2", "glRotatef").
calls("Player", "draw", "GL2", "glTranslatef").
calls("Player", "draw", "GL2", "glRotatef").
calls("Player", "draw", "RoSi2Loader", "getInstance").
calls("Player", "draw", "GL2", "glCallList").
calls("Player", "draw", "GL2", "glPopMatrix").
method("Player", "hasAlpha", 3, 1, "fthielke@fb3.uni-bremen.de").
method("Player", "getPriority", 3, 1, "fthielke@fb3.uni-bremen.de").

# GameController/src/teamcomm/gui/drawings/common/FieldSmall.java

class("FieldSmall").
method("FieldSmall", "init", 4, 1, "fthielke@fb3.uni-bremen.de").
calls("FieldSmall", "init", "RoSi2Loader", "getInstance").
calls("FieldSmall", "init", "FieldSmall", "setActive").
method("FieldSmall", "draw", 5, 1, "fthielke@fb3.uni-bremen.de").
calls("FieldSmall", "draw", "GL2", "glDepthFunc").
calls("FieldSmall", "draw", "RoSi2Loader", "getInstance").
calls("FieldSmall", "draw", "GL2", "glCallList").
calls("FieldSmall", "draw", "GL2", "glDepthFunc").
method("FieldSmall", "hasAlpha", 3, 1, "fthielke@fb3.uni-bremen.de").
method("FieldSmall", "getPriority", 3, 1, "fthielke@fb3.uni-bremen.de").

# GameController/src/teamcomm/gui/drawings/common/PlayerTarget.java

class("PlayerTarget").
method("PlayerTarget", "draw", 42, 3, "fthielke@fb3.uni-bremen.de").
calls("PlayerTarget", "draw", "RobotState", "getPenalty").
calls("PlayerTarget", "draw", "GL2", "glColor3f").
calls("PlayerTarget", "draw", "GL2", "glNormal3f").
calls("PlayerTarget", "draw", "GL2", "glBegin").
calls("PlayerTarget", "draw", "GL2", "glVertex2f").
calls("PlayerTarget", "draw", "GL2", "glVertex2f").
calls("PlayerTarget", "draw", "GL2", "glEnd").
calls("PlayerTarget", "draw", "GL2", "glPushMatrix").
calls("PlayerTarget", "draw", "GL2", "glTranslatef").
calls("PlayerTarget", "draw", "GL2", "glBegin").
calls("PlayerTarget", "draw", "GL2", "glVertex2f").
calls("PlayerTarget", "draw", "GL2", "glVertex2f").
calls("PlayerTarget", "draw", "GL2", "glVertex2f").
calls("PlayerTarget", "draw", "GL2", "glVertex2f").
calls("PlayerTarget", "draw", "GL2", "glEnd").
calls("PlayerTarget", "draw", "GL2", "glPopMatrix").
calls("PlayerTarget", "draw", "GL2", "glColor3f").
calls("PlayerTarget", "draw", "GL2", "glBegin").
calls("PlayerTarget", "draw", "GL2", "glVertex2f").
calls("PlayerTarget", "draw", "GL2", "glVertex2f").
calls("PlayerTarget", "draw", "GL2", "glEnd").
calls("PlayerTarget", "draw", "GL2", "glPushMatrix").
calls("PlayerTarget", "draw", "GL2", "glTranslatef").
calls("PlayerTarget", "draw", "GL2", "glBegin").
calls("PlayerTarget", "draw", "GL2", "glVertex2f").
calls("PlayerTarget", "draw", "GL2", "glVertex2f").
calls("PlayerTarget", "draw", "GL2", "glVertex2f").
calls("PlayerTarget", "draw", "GL2", "glVertex2f").
calls("PlayerTarget", "draw", "GL2", "glEnd").
calls("PlayerTarget", "draw", "GL2", "glPopMatrix").
method("PlayerTarget", "hasAlpha", 3, 1, "fthielke@fb3.uni-bremen.de").
method("PlayerTarget", "getPriority", 3, 1, "fthielke@fb3.uni-bremen.de").

# GameController/src/teamcomm/gui/drawings/common/Ball.java

class("Ball").
method("Ball", "init", 3, 1, "fthielke@fb3.uni-bremen.de").
calls("Ball", "init", "RoSi2Loader", "getInstance").
method("Ball", "draw", 42, 3, "fthielke@fb3.uni-bremen.de").
calls("Ball", "draw", "RobotState", "getPenalty").
calls("Ball", "draw", "GL2", "glPushMatrix").
calls("Ball", "draw", "GL2", "glTranslatef").
calls("Ball", "draw", "Math", "toDegrees").
calls("Ball", "draw", "GL2", "glRotatef").
calls("Ball", "draw", "GL2", "glTranslatef").
calls("Ball", "draw", "RoSi2Loader", "getInstance").
calls("Ball", "draw", "GL2", "glCallList").
calls("Ball", "draw", "GL2", "glBegin").
calls("Ball", "draw", "GL2", "glColor3f").
calls("Ball", "draw", "GL2", "glNormal3f").
calls("Ball", "draw", "GL2", "glVertex3f").
calls("Ball", "draw", "GL2", "glVertex3f").
calls("Ball", "draw", "GL2", "glEnd").
calls("Ball", "draw", "GL2", "glTranslatef").
calls("Ball", "draw", "GL2", "glTranslatef").
calls("Ball", "draw", "Math", "atan2").
calls("Ball", "draw", "Math", "toDegrees").
calls("Ball", "draw", "GL2", "glRotatef").
calls("Ball", "draw", "Math", "sqrt").
calls("Ball", "draw", "Math", "atan2").
calls("Ball", "draw", "Math", "toDegrees").
calls("Ball", "draw", "GL2", "glRotatef").
calls("Ball", "draw", "GL2", "glColorMaterial").
calls("Ball", "draw", "GL2", "glColor4f").
calls("Ball", "draw", "GL2", "glEnable").
calls("Ball", "draw", "GL2", "glBlendFunc").
calls("Ball", "draw", "GLU", "gluCylinder").
calls("Ball", "draw", "GLU", "gluCylinder").
calls("Ball", "draw", "GL2", "glTranslated").
calls("Ball", "draw", "GLU", "gluCylinder").
calls("Ball", "draw", "GLU", "gluCylinder").
calls("Ball", "draw", "GLU", "gluDeleteQuadric").
calls("Ball", "draw", "GL2", "glDisable").
calls("Ball", "draw", "GL2", "glPopMatrix").
method("Ball", "hasAlpha", 3, 1, "fthielke@fb3.uni-bremen.de").
method("Ball", "getPriority", 3, 1, "fthielke@fb3.uni-bremen.de").

# GameController/src/controller/ui/StartInput.java

class("StartInput").
method("StartInput", "StartInput", 82, 0, "simont@tzi.de").
calls("StartInput", "StartInput", "JFrame", "JFrame").
calls("StartInput", "StartInput", "Point", "getX").
calls("StartInput", "StartInput", "Point", "getY").
calls("StartInput", "StartInput", "StartInput", "setLocation").
calls("StartInput", "StartInput", "StartInput", "setDefaultCloseOperation").
calls("StartInput", "StartInput", "StartInput", "setResizable").
calls("StartInput", "StartInput", "StartInput", "setLayout").
calls("StartInput", "StartInput", "StartInput", "add").
calls("StartInput", "StartInput", "StartInput", "setTeamIcon").
calls("StartInput", "StartInput", "JPanel", "setPreferredSize").
calls("StartInput", "StartInput", "JPanel", "setLayout").
calls("StartInput", "StartInput", "StartInput", "add").
calls("StartInput", "StartInput", "JPanel", "setLayout").
calls("StartInput", "StartInput", "JPanel", "add").
calls("StartInput", "StartInput", "JPanel", "setLayout").
calls("StartInput", "StartInput", "JPanel", "add").
calls("StartInput", "StartInput", "Checkbox", "setPreferredSize").
calls("StartInput", "StartInput", "Checkbox", "setState").
calls("StartInput", "StartInput", "JPanel", "add").
calls("StartInput", "StartInput", "Checkbox", "setPreferredSize").
calls("StartInput", "StartInput", "Checkbox", "setState").
calls("StartInput", "StartInput", "JPanel", "add").
calls("StartInput", "StartInput", "Checkbox", "setState").
calls("StartInput", "StartInput", "JPanel", "setPreferredSize").
calls("StartInput", "StartInput", "StartInput", "add").
calls("StartInput", "StartInput", "JComboBox", "addItem").
calls("StartInput", "StartInput", "JComboBox", "setSelectedIndex").
calls("StartInput", "StartInput", "JComboBox", "setPreferredSize").
calls("StartInput", "StartInput", "JComboBox", "addActionListener").
calls("StartInput", "StartInput", "JPanel", "add").
calls("StartInput", "StartInput", "JRadioButton", "setPreferredSize").
calls("StartInput", "StartInput", "JRadioButton", "setPreferredSize").
calls("StartInput", "StartInput", "ButtonGroup", "add").
calls("StartInput", "StartInput", "ButtonGroup", "add").
calls("StartInput", "StartInput", "JPanel", "add").
calls("StartInput", "StartInput", "JPanel", "add").
calls("StartInput", "StartInput", "JRadioButton", "addActionListener").
calls("StartInput", "StartInput", "JRadioButton", "addActionListener").
calls("StartInput", "StartInput", "JButton", "setPreferredSize").
calls("StartInput", "StartInput", "JButton", "setEnabled").
calls("StartInput", "StartInput", "StartInput", "add").
calls("StartInput", "StartInput", "JButton", "addActionListener").
calls("StartInput", "StartInput", "JComboBox", "getActionListeners").
calls("StartInput", "StartInput", "StartInput", "getContentPane").
calls("StartInput", "StartInput", "StartInput", "pack").
calls("StartInput", "StartInput", "StartInput", "setVisible").
method("StartInput", "showAvailableTeams", 12, 3, "seba@informatik.uni-bremen.de").
calls("StartInput", "showAvailableTeams", "StartInput", "setTeamIcon").
method("StartInput", "getShortTeams", 17, 5, "yuzong@tzi.de").
calls("StartInput", "getShortTeams", "Arrays", "sort").
method("StartInput", "setTeamIcon", 18, 3, "simont@tzi.de").
calls("StartInput", "setTeamIcon", "BufferedImage", "getType").
calls("StartInput", "setTeamIcon", "Graphics", "drawImage").
calls("StartInput", "setTeamIcon", "Graphics", "dispose").
method("StartInput", "startEnabling", 3, 1, "Thomas.Roefer@dfki.de").
calls("StartInput", "startEnabling", "JRadioButton", "isSelected").
calls("StartInput", "startEnabling", "JRadioButton", "isSelected").
calls("StartInput", "startEnabling", "JRadioButton", "isVisible").
calls("StartInput", "startEnabling", "JButton", "setEnabled").
method("StartInput", "getImage", 14, 4, "Thomas.Roefer@dfki.de").
calls("StartInput", "getImage", "HashMap", "get").
calls("StartInput", "getImage", "HashMap", "put").
calls("StartInput", "getImage", "HashMap", "get").
method("StartInput", "switchTeamColor", 6, 1, "bhuman@dennisschuerholz.de").
calls("StartInput", "switchTeamColor", "StartInput", "updateTeamColorIndicator").
method("StartInput", "updateTeamColorIndicator", 4, 1, "bhuman@dennisschuerholz.de").
method("StartInput", "reloadTeamColor", 23, 6, "bhuman@dennisschuerholz.de").
calls("StartInput", "reloadTeamColor", "Teams", "getColors").
calls("StartInput", "reloadTeamColor", "StartInput", "switchTeamColor").
calls("StartInput", "reloadTeamColor", "StartInput", "updateTeamColorIndicator").
calls("StartInput", "reloadTeamColor", "StartInput", "updateTeamColorIndicator").
method("StartInput", "updateBackgrounds", 5, 2, "Thomas.Roefer@dfki.de").
calls("StartInput", "updateBackgrounds", "StartInput", "fromColorName").
method("StartInput", "fromColorName", 24, 1, "bhuman@dennisschuerholz.de").

# GameController/src/controller/ui/GCGUI.java


# GameController/src/controller/ui/BackgroundImage.java

class("BackgroundImage").
method("BackgroundImage", "BackgroundImage", 19, 0, "andre@phire.de").
calls("BackgroundImage", "BackgroundImage", "ImageIO", "read").
calls("BackgroundImage", "BackgroundImage", "BackgroundImage", "horizontalflip").
calls("BackgroundImage", "BackgroundImage", "Graphics2D", "setComposite").
calls("BackgroundImage", "BackgroundImage", "Graphics2D", "setColor").
calls("BackgroundImage", "BackgroundImage", "BufferedImage", "getWidth").
calls("BackgroundImage", "BackgroundImage", "BufferedImage", "getHeight").
calls("BackgroundImage", "BackgroundImage", "Graphics2D", "fillRect").
calls("BackgroundImage", "BackgroundImage", "BackgroundImage", "setImage").
method("BackgroundImage", "horizontalflip", 9, 1, "andre@phire.de").
calls("BackgroundImage", "horizontalflip", "Graphics2D", "drawImage").
calls("BackgroundImage", "horizontalflip", "Graphics2D", "dispose").

# GameController/src/controller/ui/GUI.java

class("GUI").
method("GUI", "GUI", 356, 0, "simont@tzi.de").
calls("GUI", "GUI", "JFrame", "JFrame").
calls("GUI", "GUI", "GUI", "setSize").
calls("GUI", "GUI", "GUI", "setResizable").
calls("GUI", "GUI", "Point", "getX").
calls("GUI", "GUI", "Point", "getY").
calls("GUI", "GUI", "GUI", "setLocation").
calls("GUI", "GUI", "GUI", "addWindowListener").
calls("GUI", "GUI", "ButtonGroup", "add").
calls("GUI", "GUI", "ButtonGroup", "add").
calls("GUI", "GUI", "TotalScaleLayout", "add").
calls("GUI", "GUI", "TotalScaleLayout", "add").
calls("GUI", "GUI", "ImageButton", "setOpaque").
calls("GUI", "GUI", "ImageButton", "setBorder").
calls("GUI", "GUI", "ImagePanel", "setOpaque").
calls("GUI", "GUI", "JLabel", "setForeground").
calls("GUI", "GUI", "JLabel", "setHorizontalAlignment").
calls("GUI", "GUI", "ImageButton", "setOpaque").
calls("GUI", "GUI", "ImageButton", "setBorder").
calls("GUI", "GUI", "JLabel", "setHorizontalAlignment").
calls("GUI", "GUI", "ImageButton", "setOpaque").
calls("GUI", "GUI", "ImageButton", "setBorder").
calls("GUI", "GUI", "JToggleButton", "setSelected").
calls("GUI", "GUI", "ButtonGroup", "add").
calls("GUI", "GUI", "ButtonGroup", "add").
calls("GUI", "GUI", "ButtonGroup", "add").
calls("GUI", "GUI", "ButtonGroup", "add").
calls("GUI", "GUI", "JToggleButton", "setSelected").
calls("GUI", "GUI", "ButtonGroup", "add").
calls("GUI", "GUI", "ButtonGroup", "add").
calls("GUI", "GUI", "ButtonGroup", "add").
calls("GUI", "GUI", "ButtonGroup", "add").
calls("GUI", "GUI", "ButtonGroup", "add").
calls("GUI", "GUI", "ButtonGroup", "add").
calls("GUI", "GUI", "JToggleButton", "setSelected").
calls("GUI", "GUI", "ButtonGroup", "add").
calls("GUI", "GUI", "ButtonGroup", "add").
calls("GUI", "GUI", "ButtonGroup", "add").
calls("GUI", "GUI", "ButtonGroup", "add").
calls("GUI", "GUI", "ButtonGroup", "add").
calls("GUI", "GUI", "JPanel", "setOpaque").
calls("GUI", "GUI", "JPanel", "setLayout").
calls("GUI", "GUI", "JPanel", "add").
calls("GUI", "GUI", "JButton", "setVisible").
calls("GUI", "GUI", "GUI", "setLayout").
calls("GUI", "GUI", "TotalScaleLayout", "add").
calls("GUI", "GUI", "TotalScaleLayout", "add").
calls("GUI", "GUI", "TotalScaleLayout", "add").
calls("GUI", "GUI", "TotalScaleLayout", "add").
calls("GUI", "GUI", "TotalScaleLayout", "add").
calls("GUI", "GUI", "TotalScaleLayout", "add").
calls("GUI", "GUI", "TotalScaleLayout", "add").
calls("GUI", "GUI", "TotalScaleLayout", "add").
calls("GUI", "GUI", "TotalScaleLayout", "add").
calls("GUI", "GUI", "TotalScaleLayout", "add").
calls("GUI", "GUI", "TotalScaleLayout", "add").
calls("GUI", "GUI", "TotalScaleLayout", "add").
calls("GUI", "GUI", "TotalScaleLayout", "add").
calls("GUI", "GUI", "TotalScaleLayout", "add").
calls("GUI", "GUI", "TotalScaleLayout", "add").
calls("GUI", "GUI", "TotalScaleLayout", "add").
calls("GUI", "GUI", "TotalScaleLayout", "add").
calls("GUI", "GUI", "TotalScaleLayout", "add").
calls("GUI", "GUI", "TotalScaleLayout", "add").
calls("GUI", "GUI", "TotalScaleLayout", "add").
calls("GUI", "GUI", "TotalScaleLayout", "add").
calls("GUI", "GUI", "TotalScaleLayout", "add").
calls("GUI", "GUI", "TotalScaleLayout", "add").
calls("GUI", "GUI", "TotalScaleLayout", "add").
calls("GUI", "GUI", "TotalScaleLayout", "add").
calls("GUI", "GUI", "TotalScaleLayout", "add").
calls("GUI", "GUI", "TotalScaleLayout", "add").
calls("GUI", "GUI", "TotalScaleLayout", "add").
calls("GUI", "GUI", "TotalScaleLayout", "add").
calls("GUI", "GUI", "TotalScaleLayout", "add").
calls("GUI", "GUI", "TotalScaleLayout", "add").
calls("GUI", "GUI", "TotalScaleLayout", "add").
calls("GUI", "GUI", "TotalScaleLayout", "add").
calls("GUI", "GUI", "TotalScaleLayout", "add").
calls("GUI", "GUI", "TotalScaleLayout", "add").
calls("GUI", "GUI", "TotalScaleLayout", "add").
calls("GUI", "GUI", "TotalScaleLayout", "add").
calls("GUI", "GUI", "TotalScaleLayout", "add").
calls("GUI", "GUI", "TotalScaleLayout", "add").
calls("GUI", "GUI", "TotalScaleLayout", "add").
calls("GUI", "GUI", "TotalScaleLayout", "add").
calls("GUI", "GUI", "TotalScaleLayout", "add").
calls("GUI", "GUI", "TotalScaleLayout", "add").
calls("GUI", "GUI", "TotalScaleLayout", "add").
calls("GUI", "GUI", "TotalScaleLayout", "add").
calls("GUI", "GUI", "TotalScaleLayout", "add").
calls("GUI", "GUI", "TotalScaleLayout", "add").
calls("GUI", "GUI", "TotalScaleLayout", "add").
calls("GUI", "GUI", "TotalScaleLayout", "add").
calls("GUI", "GUI", "TotalScaleLayout", "add").
calls("GUI", "GUI", "TotalScaleLayout", "add").
calls("GUI", "GUI", "TotalScaleLayout", "add").
calls("GUI", "GUI", "TotalScaleLayout", "add").
calls("GUI", "GUI", "TotalScaleLayout", "add").
calls("GUI", "GUI", "TotalScaleLayout", "add").
calls("GUI", "GUI", "TotalScaleLayout", "add").
calls("GUI", "GUI", "TotalScaleLayout", "add").
calls("GUI", "GUI", "TotalScaleLayout", "add").
calls("GUI", "GUI", "TotalScaleLayout", "add").
calls("GUI", "GUI", "TotalScaleLayout", "add").
calls("GUI", "GUI", "TotalScaleLayout", "add").
calls("GUI", "GUI", "TotalScaleLayout", "add").
calls("GUI", "GUI", "TotalScaleLayout", "add").
calls("GUI", "GUI", "TotalScaleLayout", "add").
calls("GUI", "GUI", "TotalScaleLayout", "add").
calls("GUI", "GUI", "TotalScaleLayout", "add").
calls("GUI", "GUI", "TotalScaleLayout", "add").
calls("GUI", "GUI", "TotalScaleLayout", "add").
calls("GUI", "GUI", "TotalScaleLayout", "add").
calls("GUI", "GUI", "TotalScaleLayout", "add").
calls("GUI", "GUI", "TotalScaleLayout", "add").
calls("GUI", "GUI", "TotalScaleLayout", "add").
calls("GUI", "GUI", "TotalScaleLayout", "add").
calls("GUI", "GUI", "TotalScaleLayout", "add").
calls("GUI", "GUI", "TotalScaleLayout", "add").
calls("GUI", "GUI", "TotalScaleLayout", "add").
calls("GUI", "GUI", "TotalScaleLayout", "add").
calls("GUI", "GUI", "TotalScaleLayout", "add").
calls("GUI", "GUI", "JToggleButton", "addActionListener").
calls("GUI", "GUI", "JToggleButton", "addActionListener").
calls("GUI", "GUI", "JToggleButton", "addActionListener").
calls("GUI", "GUI", "JToggleButton", "addActionListener").
calls("GUI", "GUI", "JToggleButton", "addActionListener").
calls("GUI", "GUI", "JToggleButton", "addActionListener").
calls("GUI", "GUI", "ImageButton", "addActionListener").
calls("GUI", "GUI", "ImageButton", "addActionListener").
calls("GUI", "GUI", "ImageButton", "addActionListener").
calls("GUI", "GUI", "JToggleButton", "addActionListener").
calls("GUI", "GUI", "JToggleButton", "addActionListener").
calls("GUI", "GUI", "JToggleButton", "addActionListener").
calls("GUI", "GUI", "JToggleButton", "addActionListener").
calls("GUI", "GUI", "JToggleButton", "addActionListener").
calls("GUI", "GUI", "JButton", "addActionListener").
calls("GUI", "GUI", "JButton", "addActionListener").
calls("GUI", "GUI", "GUI", "setUndecorated").
calls("GUI", "GUI", "GraphicsEnvironment", "getLocalGraphicsEnvironment").
calls("GUI", "GUI", "GUI", "setVisible").
calls("GUI", "GUI", "GUI", "setVisible").
method("GUI", "update", 24, 3, "simont@tzi.de").
calls("GUI", "update", "GUI", "updateClock").
calls("GUI", "update", "GUI", "updateHalf").
calls("GUI", "update", "GUI", "updateColor").
calls("GUI", "update", "GUI", "updateState").
calls("GUI", "update", "GUI", "updateGoal").
calls("GUI", "update", "GUI", "updateKickoff").
calls("GUI", "update", "GUI", "updatePushes").
calls("GUI", "update", "GUI", "updateTimeOut").
calls("GUI", "update", "GUI", "updateRefereeTimeout").
calls("GUI", "update", "GUI", "updateOut").
calls("GUI", "update", "GUI", "updateGlobalStuck").
calls("GUI", "update", "GUI", "updatePenaltiesSPL").
calls("GUI", "update", "GUI", "updatePenaltiesHL").
calls("GUI", "update", "GUI", "updateDropBall").
calls("GUI", "update", "GUI", "updateRobots").
calls("GUI", "update", "GUI", "updateUndo").
calls("GUI", "update", "GUI", "repaint").
method("GUI", "paint", 4, 1, "Thomas.Roefer@dfki.de").
calls("GUI", "paint", "GUI", "updateFonts").
calls("GUI", "paint", "JFrame", "paint").
method("GUI", "updateClock", 28, 5, "simont@tzi.de").
calls("GUI", "updateClock", "AdvancedData", "getRemainingGameTime").
calls("GUI", "updateClock", "GUI", "formatTime").
calls("GUI", "updateClock", "JLabel", "setText").
calls("GUI", "updateClock", "Math", "max").
calls("GUI", "updateClock", "GUI", "formatTime").
calls("GUI", "updateClock", "JLabel", "setText").
calls("GUI", "updateClock", "JLabel", "getForeground").
calls("GUI", "updateClock", "JLabel", "setForeground").
calls("GUI", "updateClock", "GUI", "formatTime").
calls("GUI", "updateClock", "JLabel", "setText").
calls("GUI", "updateClock", "JLabel", "setForeground").
calls("GUI", "updateClock", "JLabel", "setText").
calls("GUI", "updateClock", "JLabel", "setForeground").
calls("GUI", "updateClock", "ActionBoard.clock", "isClockRunning").
calls("GUI", "updateClock", "ImageIcon", "getImage").
calls("GUI", "updateClock", "ImageButton", "setImage").
calls("GUI", "updateClock", "ActionBoard.clockReset", "isLegal").
calls("GUI", "updateClock", "ImageButton", "setVisible").
calls("GUI", "updateClock", "ActionBoard.clockPause", "isLegal").
calls("GUI", "updateClock", "ImageButton", "setVisible").
calls("GUI", "updateClock", "ActionBoard.incGameClock", "isLegal").
calls("GUI", "updateClock", "ImageButton", "setVisible").
method("GUI", "updateHalf", 18, 4, "simont@tzi.de").
calls("GUI", "updateHalf", "ActionBoard.firstHalf", "isLegal").
calls("GUI", "updateHalf", "JToggleButton", "setEnabled").
calls("GUI", "updateHalf", "ActionBoard.secondHalf", "isLegal").
calls("GUI", "updateHalf", "JToggleButton", "setEnabled").
calls("GUI", "updateHalf", "ActionBoard.firstHalfOvertime", "isLegal").
calls("GUI", "updateHalf", "JToggleButton", "setEnabled").
calls("GUI", "updateHalf", "ActionBoard.secondHalfOvertime", "isLegal").
calls("GUI", "updateHalf", "JToggleButton", "setEnabled").
calls("GUI", "updateHalf", "ActionBoard.penaltyShoot", "isLegal").
calls("GUI", "updateHalf", "JToggleButton", "setEnabled").
calls("GUI", "updateHalf", "JToggleButton", "setSelected").
calls("GUI", "updateHalf", "JToggleButton", "setSelected").
calls("GUI", "updateHalf", "JToggleButton", "setSelected").
calls("GUI", "updateHalf", "JToggleButton", "setSelected").
calls("GUI", "updateHalf", "JToggleButton", "setSelected").
method("GUI", "updateColor", 9, 3, "simont@tzi.de").
method("GUI", "updateState", 25, 1, "simont@tzi.de").
calls("GUI", "updateState", "ActionBoard.initial", "isLegal").
calls("GUI", "updateState", "JToggleButton", "setEnabled").
calls("GUI", "updateState", "ActionBoard.ready", "isLegal").
calls("GUI", "updateState", "JToggleButton", "setEnabled").
calls("GUI", "updateState", "ActionBoard.set", "isLegal").
calls("GUI", "updateState", "JToggleButton", "setEnabled").
calls("GUI", "updateState", "ActionBoard.play", "isLegal").
calls("GUI", "updateState", "JToggleButton", "setEnabled").
calls("GUI", "updateState", "ActionBoard.finish", "isLegal").
calls("GUI", "updateState", "JToggleButton", "setEnabled").
calls("GUI", "updateState", "JToggleButton", "setSelected").
calls("GUI", "updateState", "JToggleButton", "setSelected").
calls("GUI", "updateState", "JToggleButton", "setSelected").
calls("GUI", "updateState", "JToggleButton", "setSelected").
calls("GUI", "updateState", "JToggleButton", "setSelected").
calls("GUI", "updateState", "AdvancedData", "getRemainingGameTime").
calls("GUI", "updateState", "JToggleButton", "getBackground").
calls("GUI", "updateState", "GUI", "highlight").
method("GUI", "updateGoal", 6, 2, "simont@tzi.de").
method("GUI", "updateKickoff", 14, 4, "simont@tzi.de").
method("GUI", "updatePushes", 12, 4, "simont@tzi.de").
method("GUI", "updateRobots", 97, 22, "simont@tzi.de").
calls("GUI", "updateRobots", "GUI", "highlight").
calls("GUI", "updateRobots", "GUI", "highlight").
calls("GUI", "updateRobots", "GUI", "highlight").
calls("GUI", "updateRobots", "GUI", "highlight").
calls("GUI", "updateRobots", "GUI", "highlight").
calls("GUI", "updateRobots", "GUI", "highlight").
calls("GUI", "updateRobots", "GUI", "highlight").
method("GUI", "updateTimeOut", 12, 3, "simont@tzi.de").
calls("GUI", "updateTimeOut", "GUI", "highlight").
calls("GUI", "updateTimeOut", "GUI", "highlight").
method("GUI", "updateRefereeTimeout", 4, 1, "seba@informatik.uni-bremen.de").
calls("GUI", "updateRefereeTimeout", "JToggleButton", "setSelected").
calls("GUI", "updateRefereeTimeout", "ActionBoard.refereeTimeout", "isLegal").
calls("GUI", "updateRefereeTimeout", "JToggleButton", "setEnabled").
method("GUI", "updateGlobalStuck", 10, 3, "simont@tzi.de").
calls("GUI", "updateGlobalStuck", "AdvancedData", "getRemainingSeconds").
method("GUI", "updateDropBall", 3, 1, "yuzong@tzi.de").
calls("GUI", "updateDropBall", "ActionBoard.dropBall", "isLegal").
calls("GUI", "updateDropBall", "JButton", "setEnabled").
method("GUI", "updateOut", 4, 2, "simont@tzi.de").
method("GUI", "updatePenaltiesSPL", 36, 5, "yuzong@tzi.de").
calls("GUI", "updatePenaltiesSPL", "JToggleButton", "isSelected").
calls("GUI", "updatePenaltiesSPL", "JToggleButton", "isSelected").
calls("GUI", "updatePenaltiesSPL", "EventHandler", "getInstance").
method("GUI", "updatePenaltiesHL", 17, 1, "yuzong@tzi.de").
method("GUI", "updateUndo", 19, 4, "simont@tzi.de").
calls("GUI", "updateUndo", "JButton", "setVisible").
method("GUI", "updateFonts", 53, 10, "simont@tzi.de").
calls("GUI", "updateFonts", "JLabel", "setFont").
calls("GUI", "updateFonts", "JLabel", "setFont").
calls("GUI", "updateFonts", "JToggleButton", "setFont").
calls("GUI", "updateFonts", "JToggleButton", "setFont").
calls("GUI", "updateFonts", "JToggleButton", "setFont").
calls("GUI", "updateFonts", "JToggleButton", "setFont").
calls("GUI", "updateFonts", "JToggleButton", "setFont").
calls("GUI", "updateFonts", "JToggleButton", "setFont").
calls("GUI", "updateFonts", "JToggleButton", "setFont").
calls("GUI", "updateFonts", "JToggleButton", "setFont").
calls("GUI", "updateFonts", "JToggleButton", "setFont").
calls("GUI", "updateFonts", "JToggleButton", "setFont").
calls("GUI", "updateFonts", "JToggleButton", "setFont").
calls("GUI", "updateFonts", "JButton", "setFont").
calls("GUI", "updateFonts", "JButton", "setFont").
method("GUI", "highlight", 7, 2, "simont@tzi.de").
calls("GUI", "highlight", "AbstractButton", "setBackground").
calls("GUI", "highlight", "AbstractButton", "setOpaque").
calls("GUI", "highlight", "AbstractButton", "setBorderPainted").
method("GUI", "formatTime", 5, 1, "Thomas.Roefer@dfki.de").
calls("GUI", "formatTime", "String", "format").

# GameController/src/controller/ui/KeyboardListener.java

class("KeyboardListener").
method("KeyboardListener", "KeyboardListener", 3, 0, "simont@tzi.de").
calls("KeyboardListener", "KeyboardListener", "KeyboardFocusManager", "getCurrentKeyboardFocusManager").
method("KeyboardListener", "dispatchKeyEvent", 15, 4, "simont@tzi.de").
calls("KeyboardListener", "dispatchKeyEvent", "KeyEvent", "getID").
calls("KeyboardListener", "dispatchKeyEvent", "KeyEvent", "getID").
calls("KeyboardListener", "dispatchKeyEvent", "KeyboardListener", "pressed").
method("KeyboardListener", "pressed", 104, 12, "simont@tzi.de").
calls("KeyboardListener", "pressed", "EventHandler", "getInstance").
calls("KeyboardListener", "pressed", "EventHandler", "getInstance").
calls("KeyboardListener", "pressed", "EventHandler", "getInstance").
calls("KeyboardListener", "pressed", "EventHandler", "getInstance").
calls("KeyboardListener", "pressed", "GCAction", "actionPerformed").

# GameController/src/controller/net/SPLCoachMessageReceiver.java

class("SPLCoachMessageReceiver").
method("SPLCoachMessageReceiver", "SPLCoachMessageReceiver", 6, 0, "seba@informatik.uni-bremen.de").
calls("SPLCoachMessageReceiver", "SPLCoachMessageReceiver", "DatagramSocket", "setReuseAddress").
calls("SPLCoachMessageReceiver", "SPLCoachMessageReceiver", "DatagramSocket", "setSoTimeout").
calls("SPLCoachMessageReceiver", "SPLCoachMessageReceiver", "DatagramSocket", "bind").
method("SPLCoachMessageReceiver", "getInstance", 9, 3, "seba@informatik.uni-bremen.de").
method("SPLCoachMessageReceiver", "run", 16, 5, "seba@informatik.uni-bremen.de").
calls("SPLCoachMessageReceiver", "run", "SPLCoachMessageReceiver", "isInterrupted").
calls("SPLCoachMessageReceiver", "run", "DatagramSocket", "receive").
calls("SPLCoachMessageReceiver", "run", "ByteBuffer", "rewind").
calls("SPLCoachMessageReceiver", "run", "SPLCoachMessage", "fromByteArray").
calls("SPLCoachMessageReceiver", "run", "IOException", "getMessage").
calls("SPLCoachMessageReceiver", "run", "Log", "error").
calls("SPLCoachMessageReceiver", "run", "DatagramSocket", "close").

# GameController/src/controller/net/RobotOnlineStatus.java


# GameController/src/controller/net/RobotWatcher.java

class("RobotWatcher").
method("RobotWatcher", "RobotWatcher", 9, 0, "simont@tzi.de").
method("RobotWatcher", "update", 27, 7, "simont@tzi.de").
calls("RobotWatcher", "update", "EventHandler", "getInstance").
calls("RobotWatcher", "update", "EventHandler", "getInstance").
calls("RobotWatcher", "update", "System", "currentTimeMillis").
calls("RobotWatcher", "update", "EventHandler", "getInstance").
calls("RobotWatcher", "update", "EventHandler", "getInstance").
method("RobotWatcher", "updateRobotOnlineStatus", 24, 8, "simont@tzi.de").
method("RobotWatcher", "updateCoach", 3, 1, "seba@informatik.uni-bremen.de").
calls("RobotWatcher", "updateCoach", "System", "currentTimeMillis").

# GameController/src/controller/net/TrueDataSender.java

class("TrueDataSender").
method("TrueDataSender", "TrueDataSender", 4, 0, "fthielke@fb3.uni-bremen.de").
method("TrueDataSender", "initialize", 7, 2, "fthielke@fb3.uni-bremen.de").
method("TrueDataSender", "getInstance", 7, 2, "fthielke@fb3.uni-bremen.de").
method("TrueDataSender", "putOnBlacklist", 9, 2, "fthielke@fb3.uni-bremen.de").
calls("TrueDataSender", "putOnBlacklist", "Set", "add").
calls("TrueDataSender", "putOnBlacklist", "Set", "contains").
calls("TrueDataSender", "putOnBlacklist", "Set", "remove").
calls("TrueDataSender", "putOnBlacklist", "InetAddress", "getHostAddress").
calls("TrueDataSender", "putOnBlacklist", "Log", "error").
method("TrueDataSender", "send", 5, 1, "fthielke@fb3.uni-bremen.de").
calls("TrueDataSender", "send", "AdvancedData", "clone").
method("TrueDataSender", "run", 30, 7, "fthielke@fb3.uni-bremen.de").
calls("TrueDataSender", "run", "TrueDataRequestReceiver", "start").
calls("TrueDataSender", "run", "TrueDataSender", "isInterrupted").
calls("TrueDataSender", "run", "Set", "isEmpty").
calls("TrueDataSender", "run", "AdvancedData", "updateTimes").
calls("TrueDataSender", "run", "AdvancedData", "getRemainingGameTime").
calls("TrueDataSender", "run", "teamcomm.net.logging.Logger", "getInstance").
calls("TrueDataSender", "run", "AdvancedData", "getTrueDataAsByteArray").
calls("TrueDataSender", "run", "DatagramSocket", "send").
calls("TrueDataSender", "run", "Log", "error").
calls("TrueDataSender", "run", "Thread", "sleep").
calls("TrueDataSender", "run", "TrueDataSender", "interrupt").
calls("TrueDataSender", "run", "TrueDataRequestReceiver", "interrupt").
calls("TrueDataSender", "run", "DatagramSocket", "close").
calls("TrueDataSender", "run", "TrueDataRequestReceiver", "join").

# GameController/src/controller/net/GameControlReturnDataReceiver.java

class("GameControlReturnDataReceiver").
method("GameControlReturnDataReceiver", "GameControlReturnDataReceiver", 10, 0, "seba@informatik.uni-bremen.de").
calls("GameControlReturnDataReceiver", "GameControlReturnDataReceiver", "DatagramSocket", "setReuseAddress").
calls("GameControlReturnDataReceiver", "GameControlReturnDataReceiver", "DatagramSocket", "setSoTimeout").
calls("GameControlReturnDataReceiver", "GameControlReturnDataReceiver", "DatagramSocket", "bind").
calls("GameControlReturnDataReceiver", "GameControlReturnDataReceiver", "DatagramSocket", "bind").
method("GameControlReturnDataReceiver", "initialize", 7, 2, "bhuman@dennisschuerholz.de").
method("GameControlReturnDataReceiver", "getInstance", 7, 2, "seba@informatik.uni-bremen.de").
method("GameControlReturnDataReceiver", "run", 17, 5, "seba@informatik.uni-bremen.de").
calls("GameControlReturnDataReceiver", "run", "GameControlReturnDataReceiver", "isInterrupted").
calls("GameControlReturnDataReceiver", "run", "DatagramSocket", "receive").
calls("GameControlReturnDataReceiver", "run", "TrueDataSender", "getInstance").
calls("GameControlReturnDataReceiver", "run", "ByteBuffer", "rewind").
calls("GameControlReturnDataReceiver", "run", "GameControlReturnData", "fromByteArray").
calls("GameControlReturnDataReceiver", "run", "RobotWatcher", "update").
calls("GameControlReturnDataReceiver", "run", "IOException", "getMessage").
calls("GameControlReturnDataReceiver", "run", "Log", "error").
calls("GameControlReturnDataReceiver", "run", "DatagramSocket", "close").

# GameController/src/controller/net/Sender.java

class("Sender").
method("Sender", "Sender", 5, 0, "simont@tzi.de").
method("Sender", "initialize", 7, 2, "simont@tzi.de").
method("Sender", "getInstance", 7, 2, "simont@tzi.de").
method("Sender", "send", 35, 8, "simont@tzi.de").
calls("Sender", "send", "StringBuilder", "append").
calls("Sender", "send", "StringBuilder", "append").
calls("Sender", "send", "StringBuilder", "append").
calls("Sender", "send", "StringBuilder", "append").
calls("Sender", "send", "teamcomm.net.logging.Logger", "getInstance").
calls("Sender", "send", "teamcomm.net.logging.Logger", "getInstance").
calls("Sender", "send", "teamcomm.net.logging.Logger", "getInstance").
calls("Sender", "send", "AdvancedData", "clone").
calls("Sender", "send", "TrueDataSender", "getInstance").
method("Sender", "run", 33, 8, "simont@tzi.de").
calls("Sender", "run", "Sender", "isInterrupted").
calls("Sender", "run", "AdvancedData", "updateTimes").
calls("Sender", "run", "teamcomm.net.logging.Logger", "getInstance").
calls("Sender", "run", "DatagramSocket", "send").
calls("Sender", "run", "Log", "error").
calls("Sender", "run", "IOException", "printStackTrace").
calls("Sender", "run", "DatagramSocket", "send").
calls("Sender", "run", "Log", "error").
calls("Sender", "run", "IOException", "printStackTrace").
calls("Sender", "run", "Thread", "sleep").
calls("Sender", "run", "Sender", "interrupt").
calls("Sender", "run", "DatagramSocket", "close").

# GameController/src/controller/action/GCAction.java

class("GCAction").
method("GCAction", "GCAction", 3, 0, "simont@tzi.de").
method("GCAction", "actionPerformed", 3, 1, "simont@tzi.de").
calls("GCAction", "actionPerformed", "EventHandler", "getInstance").
method("GCAction", "perform", 1, 1, "simont@tzi.de").
method("GCAction", "performOn", 1, 1, "simont@tzi.de").
method("GCAction", "isLegal", 1, 1, "simont@tzi.de").

# GameController/src/controller/action/ActionBoard.java

class("ActionBoard").
method("ActionBoard", "init", 57, 7, "simont@tzi.de").

# GameController/src/controller/action/ActionType.java


# GameController/src/controller/action/ui/DropBall.java

class("DropBall").
method("DropBall", "DropBall", 3, 0, "yuzong@tzi.de").
calls("DropBall", "DropBall", "GCAction", "GCAction").
method("DropBall", "perform", 5, 1, "yuzong@tzi.de").
calls("DropBall", "perform", "Log", "setNextMessage").
calls("DropBall", "perform", "ActionBoard.ready", "perform").
method("DropBall", "isLegal", 3, 1, "yuzong@tzi.de").

# GameController/src/controller/action/ui/Testmode.java

class("Testmode").
method("Testmode", "Testmode", 3, 0, "simont@tzi.de").
calls("Testmode", "Testmode", "GCAction", "GCAction").
method("Testmode", "perform", 4, 1, "simont@tzi.de").
calls("Testmode", "perform", "Log", "toFile").
method("Testmode", "isLegal", 3, 1, "simont@tzi.de").

# GameController/src/controller/action/ui/RefereeTimeout.java

class("RefereeTimeout").
method("RefereeTimeout", "RefereeTimeout", 3, 0, "seba@informatik.uni-bremen.de").
calls("RefereeTimeout", "RefereeTimeout", "GCAction", "GCAction").
method("RefereeTimeout", "perform", 25, 5, "seba@informatik.uni-bremen.de").
calls("RefereeTimeout", "perform", "Log", "setNextMessage").
calls("RefereeTimeout", "perform", "AdvancedData", "addTimeInCurrentState").
calls("RefereeTimeout", "perform", "ActionBoard.initial", "perform").
calls("RefereeTimeout", "perform", "Log", "setNextMessage").
calls("RefereeTimeout", "perform", "ActionBoard.ready", "perform").
method("RefereeTimeout", "isLegal", 3, 1, "seba@informatik.uni-bremen.de").

# GameController/src/controller/action/ui/ClockPause.java

class("ClockPause").
method("ClockPause", "ClockPause", 3, 0, "simont@tzi.de").
calls("ClockPause", "ClockPause", "GCAction", "GCAction").
method("ClockPause", "perform", 21, 4, "simont@tzi.de").
calls("ClockPause", "perform", "ActionBoard.clock", "isClockRunning").
calls("ClockPause", "perform", "AdvancedData", "getTime").
calls("ClockPause", "perform", "AdvancedData", "getTime").
calls("ClockPause", "perform", "Log", "state").
calls("ClockPause", "perform", "AdvancedData", "getTime").
calls("ClockPause", "perform", "AdvancedData", "getTime").
calls("ClockPause", "perform", "Log", "state").
method("ClockPause", "isLegal", 3, 1, "simont@tzi.de").

# GameController/src/controller/action/ui/IncGameClock.java

class("IncGameClock").
method("IncGameClock", "IncGameClock", 3, 0, "seba@informatik.uni-bremen.de").
calls("IncGameClock", "IncGameClock", "GCAction", "GCAction").
method("IncGameClock", "perform", 4, 1, "seba@informatik.uni-bremen.de").
calls("IncGameClock", "perform", "Log", "state").
method("IncGameClock", "isLegal", 3, 1, "seba@informatik.uni-bremen.de").

# GameController/src/controller/action/ui/Undo.java

class("Undo").
method("Undo", "Undo", 4, 0, "simont@tzi.de").
calls("Undo", "Undo", "GCAction", "GCAction").
method("Undo", "perform", 8, 2, "simont@tzi.de").
calls("Undo", "perform", "EventHandler", "getInstance").
calls("Undo", "perform", "Log", "goBack").
calls("Undo", "perform", "Log", "toFile").
method("Undo", "isLegal", 3, 1, "simont@tzi.de").

# GameController/src/controller/action/ui/Goal.java

class("Goal").
method("Goal", "Goal", 5, 0, "simont@tzi.de").
calls("Goal", "Goal", "GCAction", "GCAction").
method("Goal", "perform", 23, 4, "simont@tzi.de").
calls("Goal", "perform", "Log", "setNextMessage").
calls("Goal", "perform", "ActionBoard.secondHalf", "perform").
calls("Goal", "perform", "ActionBoard.finish", "perform").
calls("Goal", "perform", "ActionBoard.ready", "perform").
calls("Goal", "perform", "Log", "setNextMessage").
calls("Goal", "perform", "ActionBoard.finish", "perform").
calls("Goal", "perform", "Log", "state").
method("Goal", "isLegal", 3, 1, "simont@tzi.de").

# GameController/src/controller/action/ui/KickOff.java

class("KickOff").
method("KickOff", "KickOff", 4, 0, "simont@tzi.de").
calls("KickOff", "KickOff", "GCAction", "GCAction").
method("KickOff", "perform", 10, 3, "simont@tzi.de").
calls("KickOff", "perform", "Log", "state").
method("KickOff", "isLegal", 3, 1, "simont@tzi.de").

# GameController/src/controller/action/ui/Quit.java

class("Quit").
method("Quit", "Quit", 3, 0, "simont@tzi.de").
calls("Quit", "Quit", "GCAction", "GCAction").
method("Quit", "perform", 5, 2, "simont@tzi.de").
calls("Quit", "perform", "EventHandler", "getInstance").
calls("Quit", "perform", "Clock", "getInstance").
method("Quit", "isLegal", 3, 1, "simont@tzi.de").

# GameController/src/controller/action/ui/TimeOut.java

class("TimeOut").
method("TimeOut", "TimeOut", 4, 0, "simont@tzi.de").
calls("TimeOut", "TimeOut", "GCAction", "GCAction").
method("TimeOut", "perform", 27, 5, "simont@tzi.de").
calls("TimeOut", "perform", "Log", "setNextMessage").
calls("TimeOut", "perform", "ActionBoard.initial", "perform").
calls("TimeOut", "perform", "Log", "setNextMessage").
calls("TimeOut", "perform", "ActionBoard.ready", "perform").
method("TimeOut", "isLegal", 3, 1, "simont@tzi.de").

# GameController/src/controller/action/ui/Out.java

class("Out").
method("Out", "Out", 4, 0, "simont@tzi.de").
calls("Out", "Out", "GCAction", "GCAction").
method("Out", "perform", 5, 1, "simont@tzi.de").
calls("Out", "perform", "AdvancedData", "getTime").
calls("Out", "perform", "Log", "state").
method("Out", "isLegal", 3, 1, "simont@tzi.de").

# GameController/src/controller/action/ui/CancelUndo.java

class("CancelUndo").
method("CancelUndo", "CancelUndo", 3, 0, "simont@tzi.de").
calls("CancelUndo", "CancelUndo", "GCAction", "GCAction").
method("CancelUndo", "perform", 1, 1, "simont@tzi.de").
method("CancelUndo", "isLegal", 3, 1, "simont@tzi.de").

# GameController/src/controller/action/ui/ClockReset.java

class("ClockReset").
method("ClockReset", "ClockReset", 3, 0, "simont@tzi.de").
calls("ClockReset", "ClockReset", "GCAction", "GCAction").
method("ClockReset", "perform", 7, 1, "simont@tzi.de").
calls("ClockReset", "perform", "AdvancedData", "getTime").
calls("ClockReset", "perform", "Log", "state").
method("ClockReset", "isLegal", 3, 1, "simont@tzi.de").

# GameController/src/controller/action/ui/GlobalStuck.java

class("GlobalStuck").
method("GlobalStuck", "GlobalStuck", 4, 0, "simont@tzi.de").
calls("GlobalStuck", "GlobalStuck", "GCAction", "GCAction").
method("GlobalStuck", "perform", 6, 1, "simont@tzi.de").
calls("GlobalStuck", "perform", "Log", "setNextMessage").
calls("GlobalStuck", "perform", "ActionBoard.ready", "perform").
method("GlobalStuck", "isLegal", 3, 1, "simont@tzi.de").

# GameController/src/controller/action/ui/Robot.java

class("Robot").
method("Robot", "Robot", 5, 0, "simont@tzi.de").
calls("Robot", "Robot", "GCAction", "GCAction").
method("Robot", "perform", 42, 9, "simont@tzi.de").
calls("Robot", "perform", "Robot", "isCoach").
calls("Robot", "perform", "ArrayList", "isEmpty").
calls("Robot", "perform", "AdvancedData", "getTime").
calls("Robot", "perform", "ArrayList", "remove").
calls("Robot", "perform", "Log", "state").
calls("Robot", "perform", "EventHandler", "getInstance").
calls("Robot", "perform", "EventHandler", "getInstance").
calls("Robot", "perform", "EventHandler", "getInstance").
calls("Robot", "perform", "EventHandler", "getInstance").
calls("Robot", "perform", "Robot", "isCoach").
calls("Robot", "perform", "AdvancedData", "addToPenaltyQueue").
calls("Robot", "perform", "AdvancedData", "getTime").
calls("Robot", "perform", "Log", "state").
calls("Robot", "perform", "Log", "state").
method("Robot", "isLegal", 3, 1, "simont@tzi.de").
calls("Robot", "isLegal", "EventHandler", "getInstance").
calls("Robot", "isLegal", "EventHandler", "getInstance").
calls("Robot", "isLegal", "AdvancedData", "getRemainingPenaltyTime").
calls("Robot", "isLegal", "AdvancedData", "getNumberOfRobotsInPlay").
calls("Robot", "isLegal", "Robot", "isCoach").
calls("Robot", "isLegal", "EventHandler", "getInstance").
calls("Robot", "isLegal", "EventHandler", "getInstance").
calls("Robot", "isLegal", "EventHandler", "getInstance").
calls("Robot", "isLegal", "EventHandler", "getInstance").
calls("Robot", "isLegal", "Robot", "isCoach").
calls("Robot", "isLegal", "EventHandler", "getInstance").
calls("Robot", "isLegal", "Robot", "isCoach").
calls("Robot", "isLegal", "EventHandler", "getInstance").
calls("Robot", "isLegal", "EventHandler", "getInstance").
calls("Robot", "isLegal", "EventHandler", "getInstance").
calls("Robot", "isLegal", "Robot", "isCoach").
calls("Robot", "isLegal", "Robot", "isCoach").
calls("Robot", "isLegal", "EventHandler", "getInstance").
method("Robot", "isCoach", 3, 1, "seba@informatik.uni-bremen.de").

# GameController/src/controller/action/net/SPLCoachMessageReceived.java

class("SPLCoachMessageReceived").
method("SPLCoachMessageReceived", "SPLCoachMessageReceived", 4, 0, "seba@informatik.uni-bremen.de").
calls("SPLCoachMessageReceived", "SPLCoachMessageReceived", "GCAction", "GCAction").
method("SPLCoachMessageReceived", "perform", 8, 2, "seba@informatik.uni-bremen.de").
calls("SPLCoachMessageReceived", "perform", "RobotWatcher", "updateCoach").
calls("SPLCoachMessageReceived", "perform", "System", "currentTimeMillis").
calls("SPLCoachMessageReceived", "perform", "System", "currentTimeMillis").
calls("SPLCoachMessageReceived", "perform", "data.splCoachMessageQueue", "add").
method("SPLCoachMessageReceived", "isLegal", 3, 1, "seba@informatik.uni-bremen.de").

# GameController/src/controller/action/net/Manual.java

class("Manual").
method("Manual", "Manual", 6, 0, "simont@tzi.de").
calls("Manual", "Manual", "GCAction", "GCAction").
method("Manual", "perform", 14, 4, "simont@tzi.de").
calls("Manual", "perform", "AdvancedData", "getTime").
calls("Manual", "perform", "Log", "state").
calls("Manual", "perform", "Log", "state").
method("Manual", "isLegal", 3, 1, "simont@tzi.de").

# GameController/src/controller/action/clock/ClockTick.java

class("ClockTick").
method("ClockTick", "ClockTick", 3, 0, "simont@tzi.de").
calls("ClockTick", "ClockTick", "GCAction", "GCAction").
method("ClockTick", "perform", 20, 6, "simont@tzi.de").
calls("ClockTick", "perform", "AdvancedData", "getSecondsSince").
calls("ClockTick", "perform", "ActionBoard.set", "perform").
calls("ClockTick", "perform", "ActionBoard.secondHalf", "perform").
calls("ClockTick", "perform", "ActionBoard.penaltyShoot", "perform").
calls("ClockTick", "perform", "AdvancedData", "updateCoachMessages").
calls("ClockTick", "perform", "AdvancedData", "updatePenalties").
method("ClockTick", "isLegal", 3, 1, "simont@tzi.de").
method("ClockTick", "isClockRunning", 4, 1, "simont@tzi.de").

# GameController/src/controller/action/ui/half/PenaltyShoot.java

class("PenaltyShoot").
method("PenaltyShoot", "PenaltyShoot", 3, 0, "simont@tzi.de").
calls("PenaltyShoot", "PenaltyShoot", "GCAction", "GCAction").
method("PenaltyShoot", "perform", 13, 3, "simont@tzi.de").
calls("PenaltyShoot", "perform", "AdvancedData", "resetPenalties").
calls("PenaltyShoot", "perform", "Log", "state").
method("PenaltyShoot", "isLegal", 3, 1, "simont@tzi.de").

# GameController/src/controller/action/ui/half/SecondHalf.java

class("SecondHalf").
method("SecondHalf", "SecondHalf", 3, 0, "simont@tzi.de").
calls("SecondHalf", "SecondHalf", "GCAction", "GCAction").
method("SecondHalf", "perform", 11, 2, "simont@tzi.de").
calls("SecondHalf", "perform", "FirstHalf", "changeSide").
calls("SecondHalf", "perform", "Log", "state").
method("SecondHalf", "isLegal", 3, 1, "simont@tzi.de").

# GameController/src/controller/action/ui/half/SecondHalfOvertime.java

class("SecondHalfOvertime").
method("SecondHalfOvertime", "SecondHalfOvertime", 3, 0, "yuzong@tzi.de").
calls("SecondHalfOvertime", "SecondHalfOvertime", "GCAction", "GCAction").
method("SecondHalfOvertime", "perform", 10, 2, "yuzong@tzi.de").
calls("SecondHalfOvertime", "perform", "FirstHalf", "changeSide").
calls("SecondHalfOvertime", "perform", "Log", "state").
method("SecondHalfOvertime", "isLegal", 3, 1, "yuzong@tzi.de").

# GameController/src/controller/action/ui/half/FirstHalfOvertime.java

class("FirstHalfOvertime").
method("FirstHalfOvertime", "FirstHalfOvertime", 3, 0, "yuzong@tzi.de").
calls("FirstHalfOvertime", "FirstHalfOvertime", "GCAction", "GCAction").
method("FirstHalfOvertime", "perform", 10, 2, "yuzong@tzi.de").
calls("FirstHalfOvertime", "perform", "FirstHalf", "changeSide").
calls("FirstHalfOvertime", "perform", "Log", "state").
method("FirstHalfOvertime", "isLegal", 3, 1, "yuzong@tzi.de").

# GameController/src/controller/action/ui/half/FirstHalf.java

class("FirstHalf").
method("FirstHalf", "FirstHalf", 3, 0, "simont@tzi.de").
calls("FirstHalf", "FirstHalf", "GCAction", "GCAction").
method("FirstHalf", "perform", 11, 2, "simont@tzi.de").
calls("FirstHalf", "perform", "FirstHalf", "changeSide").
calls("FirstHalf", "perform", "Log", "state").
method("FirstHalf", "isLegal", 3, 1, "simont@tzi.de").
method("FirstHalf", "changeSide", 28, 4, "simont@tzi.de").
calls("FirstHalf", "changeSide", "AdvancedData", "resetPenalties").

# GameController/src/controller/action/ui/penalty/BallContact.java

class("BallContact").
method("BallContact", "performOn", 6, 1, "Thomas.Roefer@dfki.de").
calls("BallContact", "performOn", "BallContact", "handleRepeatedPenalty").
calls("BallContact", "performOn", "AdvancedData", "getTime").
calls("BallContact", "performOn", "Log", "state").
method("BallContact", "isLegal", 3, 1, "Thomas.Roefer@dfki.de").

# GameController/src/controller/action/ui/penalty/MotionInSet.java

class("MotionInSet").
method("MotionInSet", "performOn", 6, 1, "Thomas.Roefer@dfki.de").
calls("MotionInSet", "performOn", "MotionInSet", "handleRepeatedPenalty").
calls("MotionInSet", "performOn", "AdvancedData", "getTime").
calls("MotionInSet", "performOn", "Log", "state").
method("MotionInSet", "isLegal", 3, 1, "Thomas.Roefer@dfki.de").

# GameController/src/controller/action/ui/penalty/CoachMotion.java

class("CoachMotion").
method("CoachMotion", "performOn", 6, 1, "seba@informatik.uni-bremen.de").
calls("CoachMotion", "performOn", "AdvancedData", "getTime").
calls("CoachMotion", "performOn", "Log", "state").
method("CoachMotion", "isLegal", 3, 1, "seba@informatik.uni-bremen.de").

# GameController/src/controller/action/ui/penalty/Substitute.java

class("Substitute").
method("Substitute", "performOn", 9, 2, "yuzong@tzi.de").
calls("Substitute", "performOn", "AdvancedData", "addToPenaltyQueue").
calls("Substitute", "performOn", "AdvancedData", "getTime").
calls("Substitute", "performOn", "Log", "state").
method("Substitute", "isLegal", 3, 1, "yuzong@tzi.de").

# GameController/src/controller/action/ui/penalty/BallManipulation.java

class("BallManipulation").
method("BallManipulation", "performOn", 6, 1, "yuzong@tzi.de").
calls("BallManipulation", "performOn", "BallManipulation", "handleRepeatedPenalty").
calls("BallManipulation", "performOn", "AdvancedData", "getTime").
calls("BallManipulation", "performOn", "Log", "state").
method("BallManipulation", "isLegal", 3, 1, "yuzong@tzi.de").

# GameController/src/controller/action/ui/penalty/PickUpHL.java

class("PickUpHL").
method("PickUpHL", "performOn", 8, 2, "yuzong@tzi.de").
calls("PickUpHL", "performOn", "AdvancedData", "getTime").
calls("PickUpHL", "performOn", "PickUpHL", "handleRepeatedPenalty").
calls("PickUpHL", "performOn", "Log", "state").
method("PickUpHL", "isLegal", 3, 1, "yuzong@tzi.de").

# GameController/src/controller/action/ui/penalty/Inactive.java

class("Inactive").
method("Inactive", "performOn", 6, 1, "simont@tzi.de").
calls("Inactive", "performOn", "Inactive", "handleRepeatedPenalty").
calls("Inactive", "performOn", "AdvancedData", "getTime").
calls("Inactive", "performOn", "Log", "state").
method("Inactive", "isLegal", 3, 1, "simont@tzi.de").

# GameController/src/controller/action/ui/penalty/Pushing.java

class("Pushing").
method("Pushing", "performOn", 7, 1, "simont@tzi.de").
calls("Pushing", "performOn", "Pushing", "handleRepeatedPenalty").
calls("Pushing", "performOn", "AdvancedData", "getTime").
calls("Pushing", "performOn", "Log", "state").
method("Pushing", "isLegal", 3, 1, "simont@tzi.de").

# GameController/src/controller/action/ui/penalty/ServiceHL.java

class("ServiceHL").
method("ServiceHL", "performOn", 12, 2, "dseifert@fumanoids.de").
calls("ServiceHL", "performOn", "AdvancedData", "getTime").
calls("ServiceHL", "performOn", "ServiceHL", "handleRepeatedPenalty").
calls("ServiceHL", "performOn", "Log", "state").
calls("ServiceHL", "performOn", "ServiceHL", "handleRepeatedPenalty").
calls("ServiceHL", "performOn", "Log", "state").

# GameController/src/controller/action/ui/penalty/Defender.java

class("Defender").
method("Defender", "performOn", 6, 1, "simont@tzi.de").
calls("Defender", "performOn", "Defender", "handleRepeatedPenalty").
calls("Defender", "performOn", "AdvancedData", "getTime").
calls("Defender", "performOn", "Log", "state").
method("Defender", "isLegal", 3, 1, "simont@tzi.de").

# GameController/src/controller/action/ui/penalty/Defense.java

class("Defense").
method("Defense", "performOn", 6, 1, "yuzong@tzi.de").
calls("Defense", "performOn", "Defense", "handleRepeatedPenalty").
calls("Defense", "performOn", "AdvancedData", "getTime").
calls("Defense", "performOn", "Log", "state").
method("Defense", "isLegal", 3, 1, "yuzong@tzi.de").

# GameController/src/controller/action/ui/penalty/Penalty.java

class("Penalty").
method("Penalty", "Penalty", 3, 0, "Thomas.Roefer@dfki.de").
calls("Penalty", "Penalty", "GCAction", "GCAction").
method("Penalty", "perform", 5, 2, "Thomas.Roefer@dfki.de").
calls("Penalty", "perform", "EventHandler", "getInstance").
calls("Penalty", "perform", "EventHandler", "getInstance").
method("Penalty", "handleRepeatedPenalty", 7, 2, "bhuman@dennisschuerholz.de").
calls("Penalty", "handleRepeatedPenalty", "Penalty", "containsState").
method("Penalty", "containsState", 10, 4, "bhuman@dennisschuerholz.de").

# GameController/src/controller/action/ui/penalty/Leaving.java

class("Leaving").
method("Leaving", "performOn", 6, 1, "simont@tzi.de").
calls("Leaving", "performOn", "Leaving", "handleRepeatedPenalty").
calls("Leaving", "performOn", "AdvancedData", "getTime").
calls("Leaving", "performOn", "Log", "state").
method("Leaving", "isLegal", 3, 1, "simont@tzi.de").

# GameController/src/controller/action/ui/penalty/KickOffGoal.java

class("KickOffGoal").
method("KickOffGoal", "performOn", 6, 1, "Thomas.Roefer@dfki.de").
calls("KickOffGoal", "performOn", "KickOffGoal", "handleRepeatedPenalty").
calls("KickOffGoal", "performOn", "AdvancedData", "getTime").
calls("KickOffGoal", "performOn", "Log", "state").
method("KickOffGoal", "isLegal", 3, 1, "Thomas.Roefer@dfki.de").

# GameController/src/controller/action/ui/penalty/PickUp.java

class("PickUp").
method("PickUp", "performOn", 8, 2, "simont@tzi.de").
calls("PickUp", "performOn", "AdvancedData", "getTime").
calls("PickUp", "performOn", "Log", "state").
method("PickUp", "isLegal", 3, 1, "simont@tzi.de").

# GameController/src/controller/action/ui/penalty/Attack.java

class("Attack").
method("Attack", "performOn", 6, 1, "yuzong@tzi.de").
calls("Attack", "performOn", "Attack", "handleRepeatedPenalty").
calls("Attack", "performOn", "AdvancedData", "getTime").
calls("Attack", "performOn", "Log", "state").
method("Attack", "isLegal", 3, 1, "yuzong@tzi.de").

# GameController/src/controller/action/ui/state/Set.java

class("Set").
method("Set", "Set", 3, 0, "simont@tzi.de").
calls("Set", "Set", "GCAction", "GCAction").
method("Set", "perform", 39, 12, "simont@tzi.de").
calls("Set", "perform", "AdvancedData", "resetPenaltyTimes").
calls("Set", "perform", "AdvancedData", "addTimeInCurrentState").
calls("Set", "perform", "AdvancedData", "getTime").
calls("Set", "perform", "FirstHalf", "changeSide").
calls("Set", "perform", "AdvancedData", "addToPenaltyQueue").
calls("Set", "perform", "AdvancedData", "getTime").
calls("Set", "perform", "Log", "state").
method("Set", "isLegal", 3, 1, "simont@tzi.de").

# GameController/src/controller/action/ui/state/Play.java

class("Play").
method("Play", "Play", 3, 0, "simont@tzi.de").
calls("Play", "Play", "GCAction", "GCAction").
method("Play", "perform", 11, 3, "simont@tzi.de").
calls("Play", "perform", "AdvancedData", "addTimeInCurrentState").
calls("Play", "perform", "AdvancedData", "getTime").
calls("Play", "perform", "Log", "state").
method("Play", "isLegal", 3, 1, "simont@tzi.de").
calls("Play", "isLegal", "Play", "bothTeamsHavePlayers").
method("Play", "bothTeamsHavePlayers", 9, 3, "Thomas.Roefer@dfki.de").

# GameController/src/controller/action/ui/state/Initial.java

class("Initial").
method("Initial", "Initial", 3, 0, "simont@tzi.de").
calls("Initial", "Initial", "GCAction", "GCAction").
method("Initial", "perform", 11, 3, "simont@tzi.de").
calls("Initial", "perform", "AdvancedData", "resetPenaltyTimes").
calls("Initial", "perform", "AdvancedData", "getTime").
calls("Initial", "perform", "Log", "state").
method("Initial", "isLegal", 3, 1, "simont@tzi.de").

# GameController/src/controller/action/ui/state/Finish.java

class("Finish").
method("Finish", "Finish", 3, 0, "simont@tzi.de").
calls("Finish", "Finish", "GCAction", "GCAction").
method("Finish", "perform", 12, 3, "simont@tzi.de").
calls("Finish", "perform", "AdvancedData", "resetPenaltyTimes").
calls("Finish", "perform", "AdvancedData", "addTimeInCurrentState").
calls("Finish", "perform", "AdvancedData", "getTime").
calls("Finish", "perform", "Log", "state").
method("Finish", "isLegal", 3, 1, "simont@tzi.de").

# GameController/src/controller/action/ui/state/Ready.java

class("Ready").
method("Ready", "Ready", 3, 0, "simont@tzi.de").
calls("Ready", "Ready", "GCAction", "GCAction").
method("Ready", "perform", 14, 4, "simont@tzi.de").
calls("Ready", "perform", "AdvancedData", "resetPenaltyTimes").
calls("Ready", "perform", "AdvancedData", "addTimeInCurrentState").
calls("Ready", "perform", "AdvancedData", "getTime").
calls("Ready", "perform", "Log", "state").
method("Ready", "isLegal", 3, 1, "simont@tzi.de").

# GameController/src/eventrecorder/data/DataModel.java

class("DataModel").

# GameController/src/eventrecorder/data/LogType.java


# GameController/src/eventrecorder/data/LogEntry.java

class("LogEntry").
method("LogEntry", "LogEntry", 6, 0, "andre@phire.de").
method("LogEntry", "LogEntry", 3, 0, "andre@phire.de").
calls("LogEntry", "LogEntry", "LogEntry", "set").
method("LogEntry", "set", 5, 1, "andre@phire.de").

# GameController/src/eventrecorder/action/EntryChangeTextAction.java

class("EntryChangeTextAction").
method("EntryChangeTextAction", "EntryChangeTextAction", 5, 0, "andre@phire.de").
calls("EntryChangeTextAction", "EntryChangeTextAction", "Action", "Action").
method("EntryChangeTextAction", "executeAction", 4, 1, "andre@phire.de").
method("EntryChangeTextAction", "undoAction", 4, 1, "andre@phire.de").

# GameController/src/eventrecorder/action/ActionHistory.java

class("ActionHistory").
method("ActionHistory", "execute", 11, 3, "andre@phire.de").
calls("ActionHistory", "execute", "Action", "executeAction").
calls("ActionHistory", "execute", "Action", "shouldBeAddedToHistory").
calls("ActionHistory", "execute", "CircularLiFoBuffer", "push").
calls("ActionHistory", "execute", "ActionHistory", "notifyGUI").
calls("ActionHistory", "execute", "Action", "getClass").
calls("ActionHistory", "execute", "System.out", "println").
method("ActionHistory", "undo", 12, 3, "andre@phire.de").
calls("ActionHistory", "undo", "CircularLiFoBuffer", "isEmpty").
calls("ActionHistory", "undo", "Action", "getClass").
calls("ActionHistory", "undo", "System.out", "println").
calls("ActionHistory", "undo", "Action", "undoAction").
calls("ActionHistory", "undo", "ActionHistory", "notifyGUI").
method("ActionHistory", "redo", 12, 3, "andre@phire.de").
calls("ActionHistory", "redo", "CircularLiFoBuffer", "hasNext").
calls("ActionHistory", "redo", "Action", "getClass").
calls("ActionHistory", "redo", "System.out", "println").
calls("ActionHistory", "redo", "Action", "executeAction").
calls("ActionHistory", "redo", "ActionHistory", "notifyGUI").
method("ActionHistory", "notifyGUI", 3, 1, "andre@phire.de").
calls("ActionHistory", "notifyGUI", "EventRecorder.gui", "actionWasExecuted").
method("ActionHistory", "undoPossible", 3, 1, "andre@phire.de").
calls("ActionHistory", "undoPossible", "CircularLiFoBuffer", "isEmpty").
method("ActionHistory", "redoPossible", 3, 1, "andre@phire.de").
calls("ActionHistory", "redoPossible", "CircularLiFoBuffer", "hasNext").

# GameController/src/eventrecorder/action/EntryChangeTimeAction.java

class("EntryChangeTimeAction").
method("EntryChangeTimeAction", "EntryChangeTimeAction", 6, 0, "andre@phire.de").
calls("EntryChangeTimeAction", "EntryChangeTimeAction", "Action", "Action").
method("EntryChangeTimeAction", "executeAction", 5, 1, "andre@phire.de").
method("EntryChangeTimeAction", "undoAction", 5, 1, "andre@phire.de").

# GameController/src/eventrecorder/action/Action.java

class("Action").
method("Action", "Action", 4, 0, "andre@phire.de").
method("Action", "executeAction", 1, 1, "andre@phire.de").
method("Action", "undoAction", 1, 1, "andre@phire.de").
method("Action", "getAffectedLogEntry", 3, 1, "andre@phire.de").
method("Action", "shouldBeAddedToHistory", 3, 1, "andre@phire.de").

# GameController/src/eventrecorder/action/EntryDeleteAction.java

class("EntryDeleteAction").
method("EntryDeleteAction", "EntryDeleteAction", 3, 0, "andre@phire.de").
calls("EntryDeleteAction", "EntryDeleteAction", "Action", "Action").
method("EntryDeleteAction", "executeAction", 4, 1, "andre@phire.de").
calls("EntryDeleteAction", "executeAction", "EventRecorder.model.logEntries", "indexOf").
calls("EntryDeleteAction", "executeAction", "EventRecorder.model.logEntries", "remove").
method("EntryDeleteAction", "undoAction", 4, 1, "andre@phire.de").
calls("EntryDeleteAction", "undoAction", "EventRecorder.model.logEntries", "add").

# GameController/src/eventrecorder/action/CircularLiFoBuffer.java

class("CircularLiFoBuffer").
method("CircularLiFoBuffer", "CircularLiFoBuffer", 3, 0, "andre@phire.de").
method("CircularLiFoBuffer", "get", 3, 1, "andre@phire.de").
method("CircularLiFoBuffer", "push", 11, 3, "andre@phire.de").
method("CircularLiFoBuffer", "peek", 6, 2, "andre@phire.de").
method("CircularLiFoBuffer", "pop", 13, 3, "andre@phire.de").
method("CircularLiFoBuffer", "popForward", 12, 3, "andre@phire.de").
method("CircularLiFoBuffer", "isEmpty", 3, 1, "andre@phire.de").
method("CircularLiFoBuffer", "hasNext", 3, 1, "andre@phire.de").

# GameController/src/eventrecorder/action/EntryTypeChangeAction.java

class("EntryTypeChangeAction").
method("EntryTypeChangeAction", "EntryTypeChangeAction", 3, 0, "andre@phire.de").
calls("EntryTypeChangeAction", "EntryTypeChangeAction", "EntryTypeChangeAction", "EntryTypeChangeAction").
method("EntryTypeChangeAction", "EntryTypeChangeAction", 5, 0, "andre@phire.de").
calls("EntryTypeChangeAction", "EntryTypeChangeAction", "Action", "Action").
method("EntryTypeChangeAction", "executeAction", 4, 1, "andre@phire.de").
method("EntryTypeChangeAction", "undoAction", 4, 1, "andre@phire.de").

# GameController/src/eventrecorder/action/EntryCreateAction.java

class("EntryCreateAction").
method("EntryCreateAction", "EntryCreateAction", 3, 0, "andre@phire.de").
calls("EntryCreateAction", "EntryCreateAction", "EventRecorder.model.logEntries", "size").
calls("EntryCreateAction", "EntryCreateAction", "EntryCreateAction", "EntryCreateAction").
method("EntryCreateAction", "EntryCreateAction", 3, 0, "andre@phire.de").
calls("EntryCreateAction", "EntryCreateAction", "EventRecorder.model.logEntries", "size").
calls("EntryCreateAction", "EntryCreateAction", "EntryCreateAction", "EntryCreateAction").
method("EntryCreateAction", "EntryCreateAction", 4, 0, "andre@phire.de").
calls("EntryCreateAction", "EntryCreateAction", "Action", "Action").
method("EntryCreateAction", "EntryCreateAction", 4, 0, "andre@phire.de").
calls("EntryCreateAction", "EntryCreateAction", "Action", "Action").
method("EntryCreateAction", "executeAction", 4, 1, "andre@phire.de").
calls("EntryCreateAction", "executeAction", "EventRecorder.model.logEntries", "add").
method("EntryCreateAction", "undoAction", 7, 2, "andre@phire.de").
calls("EntryCreateAction", "undoAction", "EventRecorder.model.logEntries", "indexOf").
calls("EntryCreateAction", "undoAction", "EventRecorder.model.logEntries", "remove").

# GameController/src/eventrecorder/action/TitleChangeAction.java

class("TitleChangeAction").
method("TitleChangeAction", "TitleChangeAction", 7, 0, "andre@phire.de").
calls("TitleChangeAction", "TitleChangeAction", "Action", "Action").
method("TitleChangeAction", "executeAction", 5, 1, "andre@phire.de").
method("TitleChangeAction", "undoAction", 5, 1, "andre@phire.de").

# GameController/src/eventrecorder/gui/MainFrame.java

class("MainFrame").
method("MainFrame", "MainFrame", 127, 0, "andre@phire.de").
calls("MainFrame", "MainFrame", "JComponent", "setDefaultLocale").
calls("MainFrame", "MainFrame", "MainFrame", "getRootPane").
calls("MainFrame", "MainFrame", "Preferences", "userRoot").
calls("MainFrame", "MainFrame", "Preferences", "get").
calls("MainFrame", "MainFrame", "EventRecorder.DATE_TIME_FORMAT", "format").
calls("MainFrame", "MainFrame", "Preferences", "get").
calls("MainFrame", "MainFrame", "UIManager", "getSystemLookAndFeelClassName").
calls("MainFrame", "MainFrame", "UIManager", "setLookAndFeel").
calls("MainFrame", "MainFrame", "System.out", "println").
calls("MainFrame", "MainFrame", "MainFrame", "setUIFont").
calls("MainFrame", "MainFrame", "MainFrame", "setJMenuBar").
calls("MainFrame", "MainFrame", "MainFrame", "setTitle").
calls("MainFrame", "MainFrame", "MainFrame", "setBounds").
calls("MainFrame", "MainFrame", "MainFrame", "setDefaultCloseOperation").
calls("MainFrame", "MainFrame", "MainFrame", "addWindowListener").
calls("MainFrame", "MainFrame", "JPanel", "setLayout").
calls("MainFrame", "MainFrame", "JPanel", "setLayout").
calls("MainFrame", "MainFrame", "System.out", "println").
calls("MainFrame", "MainFrame", "IOException", "printStackTrace").
calls("MainFrame", "MainFrame", "JPanel", "setLayout").
calls("MainFrame", "MainFrame", "ImageButton", "addActionListener").
calls("MainFrame", "MainFrame", "ImageButton", "addActionListener").
calls("MainFrame", "MainFrame", "JLabel", "setFont").
calls("MainFrame", "MainFrame", "BorderFactory", "createEmptyBorder").
calls("MainFrame", "MainFrame", "JLabel", "setBorder").
calls("MainFrame", "MainFrame", "ImageButton", "addActionListener").
calls("MainFrame", "MainFrame", "ImageToggleButton", "addActionListener").
calls("MainFrame", "MainFrame", "ImageButton", "addActionListener").
calls("MainFrame", "MainFrame", "JPanel", "add").
calls("MainFrame", "MainFrame", "JPanel", "add").
calls("MainFrame", "MainFrame", "Box", "createRigidArea").
calls("MainFrame", "MainFrame", "JPanel", "add").
calls("MainFrame", "MainFrame", "JPanel", "setLayout").
calls("MainFrame", "MainFrame", "JLabel", "setAlignmentX").
calls("MainFrame", "MainFrame", "JPanel", "add").
calls("MainFrame", "MainFrame", "BorderFactory", "createEmptyBorder").
calls("MainFrame", "MainFrame", "JPanel", "setBorder").
calls("MainFrame", "MainFrame", "JButton", "setToolTipText").
calls("MainFrame", "MainFrame", "JButton", "addActionListener").
calls("MainFrame", "MainFrame", "JButton", "setToolTipText").
calls("MainFrame", "MainFrame", "JButton", "addActionListener").
calls("MainFrame", "MainFrame", "JButton", "setToolTipText").
calls("MainFrame", "MainFrame", "JButton", "addActionListener").
calls("MainFrame", "MainFrame", "JButton", "setToolTipText").
calls("MainFrame", "MainFrame", "JButton", "addActionListener").
calls("MainFrame", "MainFrame", "JPanel", "setLayout").
calls("MainFrame", "MainFrame", "JPanel", "add").
calls("MainFrame", "MainFrame", "JPanel", "add").
calls("MainFrame", "MainFrame", "JPanel", "add").
calls("MainFrame", "MainFrame", "JPanel", "add").
calls("MainFrame", "MainFrame", "JPanel", "add").
calls("MainFrame", "MainFrame", "JPanel", "add").
calls("MainFrame", "MainFrame", "JPanel", "add").
calls("MainFrame", "MainFrame", "JPanel", "add").
calls("MainFrame", "MainFrame", "JPanel", "add").
calls("MainFrame", "MainFrame", "JPanel", "add").
calls("MainFrame", "MainFrame", "JPanel", "add").
calls("MainFrame", "MainFrame", "JPanel", "add").
calls("MainFrame", "MainFrame", "JPanel", "add").
calls("MainFrame", "MainFrame", "JPanel", "setLayout").
calls("MainFrame", "MainFrame", "JLabel", "setPreferredSize").
calls("MainFrame", "MainFrame", "JPanel", "add").
calls("MainFrame", "MainFrame", "BorderFactory", "createEmptyBorder").
calls("MainFrame", "MainFrame", "JPanel", "setBorder").
calls("MainFrame", "MainFrame", "JTextField", "addFocusListener").
calls("MainFrame", "MainFrame", "BorderFactory", "createEmptyBorder").
calls("MainFrame", "MainFrame", "JTextField", "setBorder").
calls("MainFrame", "MainFrame", "JPanel", "add").
calls("MainFrame", "MainFrame", "JPanel", "add").
calls("MainFrame", "MainFrame", "JPanel", "setLayout").
calls("MainFrame", "MainFrame", "JLabel", "setPreferredSize").
calls("MainFrame", "MainFrame", "JPanel", "add").
calls("MainFrame", "MainFrame", "BorderFactory", "createEmptyBorder").
calls("MainFrame", "MainFrame", "JPanel", "setBorder").
calls("MainFrame", "MainFrame", "JTextArea", "addFocusListener").
calls("MainFrame", "MainFrame", "BorderFactory", "createEmptyBorder").
calls("MainFrame", "MainFrame", "JTextArea", "setBorder").
calls("MainFrame", "MainFrame", "JPanel", "add").
calls("MainFrame", "MainFrame", "JPanel", "add").
calls("MainFrame", "MainFrame", "JPanel", "setLayout").
calls("MainFrame", "MainFrame", "JPanel", "add").
calls("MainFrame", "MainFrame", "JScrollPane", "setHorizontalScrollBarPolicy").
calls("MainFrame", "MainFrame", "JScrollPane", "setVerticalScrollBarPolicy").
calls("MainFrame", "MainFrame", "JScrollPane", "getVerticalScrollBar").
calls("MainFrame", "MainFrame", "JPanel", "add").
calls("MainFrame", "MainFrame", "JPanel", "add").
calls("MainFrame", "MainFrame", "JPanel", "setLayout").
calls("MainFrame", "MainFrame", "JPanel", "add").
calls("MainFrame", "MainFrame", "JPanel", "setBackground").
calls("MainFrame", "MainFrame", "BorderFactory", "createMatteBorder").
calls("MainFrame", "MainFrame", "JPanel", "setBorder").
calls("MainFrame", "MainFrame", "JPanel", "add").
calls("MainFrame", "MainFrame", "JPanel", "add").
calls("MainFrame", "MainFrame", "MainFrame", "add").
calls("MainFrame", "MainFrame", "MainFrame", "setVisible").
calls("MainFrame", "MainFrame", "Timer", "scheduleAtFixedRate").
calls("MainFrame", "MainFrame", "MainFrame", "setupShortCuts").
method("MainFrame", "setupShortCuts", 5, 1, "andre@phire.de").
calls("MainFrame", "setupShortCuts", "KeyboardFocusManager", "getCurrentKeyboardFocusManager").
calls("MainFrame", "setupShortCuts", "KeyboardFocusManager", "addKeyEventDispatcher").
method("MainFrame", "updateTimeAndButtons", 25, 4, "andre@phire.de").
calls("MainFrame", "updateTimeAndButtons", "Math", "abs").
calls("MainFrame", "updateTimeAndButtons", "TIME_FORMAT", "format").
calls("MainFrame", "updateTimeAndButtons", "JLabel", "setText").
calls("MainFrame", "updateTimeAndButtons", "JLabel", "revalidate").
calls("MainFrame", "updateTimeAndButtons", "JLabel", "repaint").
calls("MainFrame", "updateTimeAndButtons", "ImageToggleButton", "isActivated").
calls("MainFrame", "updateTimeAndButtons", "ImageToggleButton", "setActivated").
calls("MainFrame", "updateTimeAndButtons", "System", "currentTimeMillis").
calls("MainFrame", "updateTimeAndButtons", "ImageToggleButton", "isEnabled").
calls("MainFrame", "updateTimeAndButtons", "ImageToggleButton", "setEnabled").
calls("MainFrame", "updateTimeAndButtons", "ImageButton", "setEnabled").
calls("MainFrame", "updateTimeAndButtons", "JButton", "setEnabled").
calls("MainFrame", "updateTimeAndButtons", "JButton", "setEnabled").
calls("MainFrame", "updateTimeAndButtons", "JButton", "setEnabled").
calls("MainFrame", "updateTimeAndButtons", "JButton", "setEnabled").
calls("MainFrame", "updateTimeAndButtons", "JPanel", "removeAll").
calls("MainFrame", "updateTimeAndButtons", "JPanel", "add").
calls("MainFrame", "updateTimeAndButtons", "JPanel", "setBackground").
calls("MainFrame", "updateTimeAndButtons", "JPanel", "revalidate").
calls("MainFrame", "updateTimeAndButtons", "JPanel", "repaint").
method("MainFrame", "saveBeforeExit", 11, 3, "andre@phire.de").
calls("MainFrame", "saveBeforeExit", "MainFrame", "saveAs").
method("MainFrame", "saveAs", 20, 4, "andre@phire.de").
calls("MainFrame", "saveAs", "JFileChooser", "setSelectedFile").
calls("MainFrame", "saveAs", "JFileChooser", "showSaveDialog").
calls("MainFrame", "saveAs", "JFileChooser", "getSelectedFile").
calls("MainFrame", "saveAs", "MarkDownExporter", "toMarkDown").
calls("MainFrame", "saveAs", "BufferedWriter", "write").
calls("MainFrame", "saveAs", "BufferedWriter", "close").
calls("MainFrame", "saveAs", "JFileChooser", "getSelectedFile").
calls("MainFrame", "saveAs", "Preferences", "put").
calls("MainFrame", "saveAs", "IOException", "getMessage").
calls("MainFrame", "saveAs", "JOptionPane", "showMessageDialog").
method("MainFrame", "setUIFont", 9, 3, "andre@phire.de").
calls("MainFrame", "setUIFont", "java", "hasMoreElements").
calls("MainFrame", "setUIFont", "UIManager", "put").
method("MainFrame", "actionWasExecuted", 19, 5, "andre@phire.de").
calls("MainFrame", "actionWasExecuted", "EventRecorder.history", "undoPossible").
calls("MainFrame", "actionWasExecuted", "ImageButton", "setEnabled").
calls("MainFrame", "actionWasExecuted", "EventRecorder.history", "redoPossible").
calls("MainFrame", "actionWasExecuted", "ImageButton", "setEnabled").
calls("MainFrame", "actionWasExecuted", "Action", "getClass").
calls("MainFrame", "actionWasExecuted", "LogEntryTable", "entryActionWasExecuted").
calls("MainFrame", "actionWasExecuted", "JTextField", "getText").
calls("MainFrame", "actionWasExecuted", "JTextField", "setText").
calls("MainFrame", "actionWasExecuted", "JTextField", "requestFocus").
calls("MainFrame", "actionWasExecuted", "JTextArea", "getText").
calls("MainFrame", "actionWasExecuted", "JTextArea", "setText").
calls("MainFrame", "actionWasExecuted", "JTextArea", "requestFocus").

# GameController/src/eventrecorder/gui/MenuBar.java

class("MenuBar").
method("MenuBar", "MenuBar", 31, 0, "andre@phire.de").
calls("MenuBar", "MenuBar", "JMenuItem", "addActionListener").
calls("MenuBar", "MenuBar", "JMenuItem", "addActionListener").
calls("MenuBar", "MenuBar", "JMenu", "add").
calls("MenuBar", "MenuBar", "JMenu", "add").
calls("MenuBar", "MenuBar", "JMenu", "addSeparator").
calls("MenuBar", "MenuBar", "JMenu", "add").
calls("MenuBar", "MenuBar", "MenuBar", "add").
calls("MenuBar", "MenuBar", "JPanel", "setLayout").
calls("MenuBar", "MenuBar", "JPanel", "add").
calls("MenuBar", "MenuBar", "JPanel", "add").
calls("MenuBar", "MenuBar", "EventRecorder", "setLogPenalty").
calls("MenuBar", "MenuBar", "JCheckBox", "setSelected").
calls("MenuBar", "MenuBar", "JCheckBox", "addActionListener").
calls("MenuBar", "MenuBar", "JPanel", "add").
calls("MenuBar", "MenuBar", "JPanel", "add").
calls("MenuBar", "MenuBar", "JMenu", "add").
calls("MenuBar", "MenuBar", "MenuBar", "add").

# GameController/src/eventrecorder/gui/EntryPanel.java

class("EntryPanel").
method("EntryPanel", "EntryPanel", 19, 0, "andre@phire.de").
calls("EntryPanel", "EntryPanel", "EntryPanel", "setLayout").
calls("EntryPanel", "EntryPanel", "BorderFactory", "createEmptyBorder").
calls("EntryPanel", "EntryPanel", "EntryPanel", "setBorder").
calls("EntryPanel", "EntryPanel", "EntryPanel", "add").
calls("EntryPanel", "EntryPanel", "EntryPanel", "add").
calls("EntryPanel", "EntryPanel", "JPanel", "setLayout").
calls("EntryPanel", "EntryPanel", "BorderFactory", "createEmptyBorder").
calls("EntryPanel", "EntryPanel", "JPanel", "setBorder").
calls("EntryPanel", "EntryPanel", "JComboBox", "setSelectedItem").
calls("EntryPanel", "EntryPanel", "JComboBox", "addActionListener").
calls("EntryPanel", "EntryPanel", "JButton", "addActionListener").
calls("EntryPanel", "EntryPanel", "JPanel", "add").
calls("EntryPanel", "EntryPanel", "JPanel", "add").
calls("EntryPanel", "EntryPanel", "EntryPanel", "add").
method("EntryPanel", "getTimeField", 3, 1, "andre@phire.de").
method("EntryPanel", "getTextField", 3, 1, "andre@phire.de").

# GameController/src/eventrecorder/gui/TimeField.java

class("TimeField").
method("TimeField", "TimeField", 19, 0, "andre@phire.de").
calls("TimeField", "TimeField", "TimeField", "setText").
calls("TimeField", "TimeField", "BorderFactory", "createEmptyBorder").
calls("TimeField", "TimeField", "TimeField", "setBorder").
calls("TimeField", "TimeField", "TimeField", "setPreferredSize").
calls("TimeField", "TimeField", "TimeField", "setFont").
calls("TimeField", "TimeField", "TimeField", "addFocusListener").
calls("TimeField", "TimeField", "TimeField", "setBackground").
calls("TimeField", "TimeField", "TimeField", "setBackground").
calls("TimeField", "TimeField", "TimeField", "setBackground").
method("TimeField", "makeVisibleInScrollPane", 10, 1, "andre@phire.de").
calls("TimeField", "makeVisibleInScrollPane", "LogEntryTable", "getParent").
calls("TimeField", "makeVisibleInScrollPane", "LogEntryTable", "getParent").
calls("TimeField", "makeVisibleInScrollPane", "JComponent", "scrollRectToVisible").
method("TimeField", "executeChangeAction", 7, 2, "andre@phire.de").
calls("TimeField", "executeChangeAction", "String", "equals").
calls("TimeField", "executeChangeAction", "EventRecorder.history", "execute").
method("TimeField", "getLogEntry", 3, 1, "andre@phire.de").

# GameController/src/eventrecorder/gui/ImageToggleButton.java

class("ImageToggleButton").
method("ImageToggleButton", "ImageToggleButton", 7, 0, "andre@phire.de").
calls("ImageToggleButton", "ImageToggleButton", "ImageIcon", "getImage").
calls("ImageToggleButton", "ImageToggleButton", "ImageIcon", "setImage").
calls("ImageToggleButton", "ImageToggleButton", "ImageToggleButton", "setIcon").
calls("ImageToggleButton", "ImageToggleButton", "ImageToggleButton", "setToolTipText").
calls("ImageToggleButton", "ImageToggleButton", "ImageToggleButton", "setFocusPainted").
method("ImageToggleButton", "ImageToggleButton", 10, 0, "andre@phire.de").
calls("ImageToggleButton", "ImageToggleButton", "ImageIcon", "getImage").
calls("ImageToggleButton", "ImageToggleButton", "ImageIcon", "setImage").
calls("ImageToggleButton", "ImageToggleButton", "ImageIcon", "getImage").
calls("ImageToggleButton", "ImageToggleButton", "ImageIcon", "setImage").
calls("ImageToggleButton", "ImageToggleButton", "ImageToggleButton", "setFocusPainted").
calls("ImageToggleButton", "ImageToggleButton", "ImageToggleButton", "setActivated").
calls("ImageToggleButton", "ImageToggleButton", "ImageToggleButton", "setToolTipText").
calls("ImageToggleButton", "ImageToggleButton", "ImageToggleButton", "addActionListener").
method("ImageToggleButton", "setActivated", 5, 1, "andre@phire.de").
calls("ImageToggleButton", "setActivated", "ImageToggleButton", "setSelected").
calls("ImageToggleButton", "setActivated", "ImageToggleButton", "setIcon").
method("ImageToggleButton", "isActivated", 3, 1, "andre@phire.de").

# GameController/src/eventrecorder/gui/ImageButton.java

class("ImageButton").
method("ImageButton", "ImageButton", 7, 0, "andre@phire.de").
calls("ImageButton", "ImageButton", "ImageIcon", "getImage").
calls("ImageButton", "ImageButton", "ImageIcon", "setImage").
calls("ImageButton", "ImageButton", "ImageButton", "setIcon").
calls("ImageButton", "ImageButton", "ImageButton", "setToolTipText").
calls("ImageButton", "ImageButton", "ImageButton", "setFocusPainted").
method("ImageButton", "ImageButton", 9, 0, "andre@phire.de").
calls("ImageButton", "ImageButton", "ImageIcon", "getImage").
calls("ImageButton", "ImageButton", "ImageIcon", "setImage").
calls("ImageButton", "ImageButton", "ImageIcon", "getImage").
calls("ImageButton", "ImageButton", "ImageIcon", "setImage").
calls("ImageButton", "ImageButton", "ImageButton", "setFocusPainted").
calls("ImageButton", "ImageButton", "ImageButton", "setEnabled").
calls("ImageButton", "ImageButton", "ImageButton", "setToolTipText").
method("ImageButton", "setEnabled", 4, 1, "andre@phire.de").
calls("ImageButton", "setEnabled", "JButton", "setEnabled").
calls("ImageButton", "setEnabled", "ImageButton", "setIcon").

# GameController/src/eventrecorder/gui/LogEntryTable.java

class("LogEntryTable").
method("LogEntryTable", "LogEntryTable", 4, 0, "andre@phire.de").
calls("LogEntryTable", "LogEntryTable", "LogEntryTable", "setLayout").
calls("LogEntryTable", "LogEntryTable", "LogEntryTable", "createLogEntryTable").
method("LogEntryTable", "createLogEntryTable", 11, 2, "andre@phire.de").
calls("LogEntryTable", "createLogEntryTable", "LogEntryTable", "removeAll").
calls("LogEntryTable", "createLogEntryTable", "EntryPanel", "getTimeField").
calls("LogEntryTable", "createLogEntryTable", "EntryPanel", "getTextField").
calls("LogEntryTable", "createLogEntryTable", "LogEntryTable", "add").
calls("LogEntryTable", "createLogEntryTable", "LogEntryTable", "revalidate").
calls("LogEntryTable", "createLogEntryTable", "LogEntryTable", "repaint").
method("LogEntryTable", "getIdByLogEntry", 7, 3, "andre@phire.de").
calls("LogEntryTable", "getIdByLogEntry", "LogEntryTable", "getComponent").
method("LogEntryTable", "entryActionWasExecuted", 62, 13, "andre@phire.de").
calls("LogEntryTable", "entryActionWasExecuted", "EntryPanel", "getTimeField").
calls("LogEntryTable", "entryActionWasExecuted", "EntryPanel", "getTimeField").
calls("LogEntryTable", "entryActionWasExecuted", "EntryPanel", "getTimeField").
calls("LogEntryTable", "entryActionWasExecuted", "EntryPanel", "revalidate").
calls("LogEntryTable", "entryActionWasExecuted", "EntryPanel", "repaint").
calls("LogEntryTable", "entryActionWasExecuted", "EntryPanel", "getTextField").
calls("LogEntryTable", "entryActionWasExecuted", "EntryPanel", "getTextField").
calls("LogEntryTable", "entryActionWasExecuted", "EntryPanel", "getTextField").
calls("LogEntryTable", "entryActionWasExecuted", "EntryPanel", "revalidate").
calls("LogEntryTable", "entryActionWasExecuted", "EntryPanel", "repaint").
calls("LogEntryTable", "entryActionWasExecuted", "Action", "shouldBeAddedToHistory").
calls("LogEntryTable", "entryActionWasExecuted", "EntryPanel", "getTimeField").
calls("LogEntryTable", "entryActionWasExecuted", "EntryPanel", "getTextField").
calls("LogEntryTable", "entryActionWasExecuted", "LogEntryTable", "add").
calls("LogEntryTable", "entryActionWasExecuted", "LogEntryTable", "createLogEntryTable").
calls("LogEntryTable", "entryActionWasExecuted", "LogEntryTable", "getComponent").
calls("LogEntryTable", "entryActionWasExecuted", "EntryPanel", "getTextField").
calls("LogEntryTable", "entryActionWasExecuted", "EntryPanel", "getTextField").
calls("LogEntryTable", "entryActionWasExecuted", "LogEntryTable", "getComponents").
calls("LogEntryTable", "entryActionWasExecuted", "LogEntryTable", "getComponent").
calls("LogEntryTable", "entryActionWasExecuted", "EntryPanel", "getTextField").
calls("LogEntryTable", "entryActionWasExecuted", "EntryPanel", "getTextField").
calls("LogEntryTable", "entryActionWasExecuted", "LogEntryTable", "createLogEntryTable").

# GameController/src/eventrecorder/gui/TextField.java

class("TextField").
method("TextField", "TextField", 19, 0, "andre@phire.de").
calls("TextField", "TextField", "TextField", "setText").
calls("TextField", "TextField", "BorderFactory", "createEmptyBorder").
calls("TextField", "TextField", "TextField", "setBorder").
calls("TextField", "TextField", "TextField", "setPreferredSize").
calls("TextField", "TextField", "TextField", "setFont").
calls("TextField", "TextField", "TextField", "addFocusListener").
calls("TextField", "TextField", "TextField", "setBackground").
calls("TextField", "TextField", "TextField", "setBackground").
calls("TextField", "TextField", "TextField", "setBackground").
method("TextField", "executeChangeAction", 7, 2, "andre@phire.de").
calls("TextField", "executeChangeAction", "String", "equals").
calls("TextField", "executeChangeAction", "EventRecorder.history", "execute").
method("TextField", "makeVisibleInScrollPane", 10, 1, "andre@phire.de").
calls("TextField", "makeVisibleInScrollPane", "LogEntryTable", "getParent").
calls("TextField", "makeVisibleInScrollPane", "LogEntryTable", "getParent").
calls("TextField", "makeVisibleInScrollPane", "JComponent", "scrollRectToVisible").
method("TextField", "getLogEntry", 3, 1, "andre@phire.de").

# GameController/src/eventrecorder/export/MarkDownExporter.java

class("MarkDownExporter").
method("MarkDownExporter", "toMarkDown", 19, 6, "andre@phire.de").
