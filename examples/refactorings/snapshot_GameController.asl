
# GameController/src/teamcomm/PluginLoader.java

class("PluginLoader").
method("PluginLoader", "getInstance", 3, 1).
method("PluginLoader", "enablePlugins", 3, 1).
method("PluginLoader", "disablePlugins", 3, 1).
method("PluginLoader", "getMessageClass", 4, 1).
method("PluginLoader", "createRobotDetailFrame", 11, 3).
calls("PluginLoader", "createRobotDetailFrame", "Class", "getConstructor").
calls("PluginLoader", "createRobotDetailFrame", "NoSuchMethodException", "printStackTrace").
calls("PluginLoader", "createRobotDetailFrame", "Log", "error").
method("PluginLoader", "getCommonDrawings", 3, 1).
calls("PluginLoader", "getCommonDrawings", "PluginLoader", "getDrawings").
method("PluginLoader", "getDrawings", 4, 1).
method("PluginLoader", "update", 3, 1).
calls("PluginLoader", "update", "PluginLoader", "update").
method("PluginLoader", "update", 34, 11).
calls("PluginLoader", "update", "Iterator", "hasNext").
calls("PluginLoader", "update", "Iterator", "remove").
calls("PluginLoader", "update", "Iterator", "remove").
calls("PluginLoader", "update", "File", "isDirectory").
calls("PluginLoader", "update", "LinkedList", "add").
calls("PluginLoader", "update", "LinkedList", "isEmpty").
calls("PluginLoader", "update", "File", "isDirectory").
calls("PluginLoader", "update", "LinkedList", "addLast").
calls("PluginLoader", "update", "List", "add").
calls("PluginLoader", "update", "PluginLoader", "scanJar").
method("PluginLoader", "scanJar", 49, 15).
calls("PluginLoader", "scanJar", "Enumeration", "hasMoreElements").
calls("PluginLoader", "scanJar", "JarEntry", "getName").
calls("PluginLoader", "scanJar", "Set", "add").
calls("PluginLoader", "scanJar", "Map", "containsKey").
calls("PluginLoader", "scanJar", "Map", "put").
calls("PluginLoader", "scanJar", "Log", "error").
calls("PluginLoader", "scanJar", "Map", "containsKey").
calls("PluginLoader", "scanJar", "Map", "put").
calls("PluginLoader", "scanJar", "Map", "put").
calls("PluginLoader", "scanJar", "Class", "isInstance").
calls("PluginLoader", "scanJar", "Drawing", "setTeamNumber").
calls("PluginLoader", "scanJar", "Collection", "add").
calls("PluginLoader", "scanJar", "Log", "error").
calls("PluginLoader", "scanJar", "Log", "error").

# GameController/src/teamcomm/Config.java

class("Config").
method("Config", "getInstance", 6, 2).
method("Config", "get", 3, 1).
calls("Config", "get", "HashMap", "get").
method("Config", "set", 3, 1).
calls("Config", "set", "HashMap", "put").
method("Config", "flush", 9, 3).
calls("Config", "flush", "HashMap", "isEmpty").
calls("Config", "flush", "stream", "writeObject").
calls("Config", "flush", "stream", "flush").
calls("Config", "flush", "Log", "error").

# GameController/src/teamcomm/TeamCommunicationMonitor.java

class("TeamCommunicationMonitor").
method("TeamCommunicationMonitor", "main", 105, 25).
calls("TeamCommunicationMonitor", "main", "System", "setProperty").
calls("TeamCommunicationMonitor", "main", "TeamCommunicationMonitor", "parseArgs").
calls("TeamCommunicationMonitor", "main", "ApplicationLock", "acquire").
calls("TeamCommunicationMonitor", "main", "System.out", "println").
calls("TeamCommunicationMonitor", "main", "JOptionPane", "showMessageDialog").
calls("TeamCommunicationMonitor", "main", "System", "exit").
calls("TeamCommunicationMonitor", "main", "System.out", "println").
calls("TeamCommunicationMonitor", "main", "JOptionPane", "showMessageDialog").
calls("TeamCommunicationMonitor", "main", "System", "exit").
calls("TeamCommunicationMonitor", "main", "System.out", "println").
calls("TeamCommunicationMonitor", "main", "GLProfile", "initSingleton").
calls("TeamCommunicationMonitor", "main", "ApplicationLock", "acquire").
calls("TeamCommunicationMonitor", "main", "Logger", "getInstance").
calls("TeamCommunicationMonitor", "main", "ApplicationLock", "release").
calls("TeamCommunicationMonitor", "main", "JOptionPane", "showMessageDialog").
calls("TeamCommunicationMonitor", "main", "System", "exit").
calls("TeamCommunicationMonitor", "main", "GameControlDataReceiver", "addListener").
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
method("TeamCommunicationMonitor", "parseArgs", 27, 4).
calls("TeamCommunicationMonitor", "parseArgs", "System.out", "println").
calls("TeamCommunicationMonitor", "parseArgs", "System", "exit").
calls("TeamCommunicationMonitor", "parseArgs", "league.leagueDirectory", "equalsIgnoreCase").
method("TeamCommunicationMonitor", "shutdown", 6, 1).
calls("TeamCommunicationMonitor", "shutdown", "Object", "notifyAll").
method("TeamCommunicationMonitor", "switchToGSV", 6, 1).
calls("TeamCommunicationMonitor", "switchToGSV", "Object", "notifyAll").
method("TeamCommunicationMonitor", "switchToTCM", 6, 1).
calls("TeamCommunicationMonitor", "switchToTCM", "Object", "notifyAll").

# GameController/src/controller/EventHandler.java

class("EventHandler").
method("EventHandler", "getInstance", 6, 2).
method("EventHandler", "setGUI", 3, 1).
method("EventHandler", "register", 10, 3).
calls("EventHandler", "register", "EventQueue", "isDispatchThread").
calls("EventHandler", "register", "GCAction", "isLegal").
calls("EventHandler", "register", "GCAction", "perform").
calls("EventHandler", "register", "EventHandler", "update").
calls("EventHandler", "register", "EventQueue", "invokeLater").
method("EventHandler", "update", 18, 5).
calls("EventHandler", "update", "Sender", "send").
calls("EventHandler", "update", "GCGUI", "update").

# GameController/src/controller/Clock.java

class("Clock").
method("Clock", "getInstance", 6, 2).
method("Clock", "start", 9, 3).
calls("Clock", "start", "Thread", "isInterrupted").
calls("Clock", "start", "ActionBoard.clock", "actionPerformed").
calls("Clock", "start", "Thread", "sleep").
calls("Clock", "start", "Thread", "interrupt").
method("Clock", "interrupt", 3, 1).
calls("Clock", "interrupt", "Thread", "interrupt").

# GameController/src/controller/GameController.java

class("GameController").
method("GameController", "main", 194, 39).
calls("GameController", "main", "System", "setProperty").
calls("GameController", "main", "String", "contains").
calls("GameController", "main", "System.out", "printf").
calls("GameController", "main", "System", "exit").
calls("GameController", "main", "ApplicationLock", "acquire").
calls("GameController", "main", "JOptionPane", "showMessageDialog").
calls("GameController", "main", "System", "exit").
calls("GameController", "main", "JOptionPane", "showMessageDialog").
calls("GameController", "main", "System", "exit").
calls("GameController", "main", "String", "isEmpty").
calls("GameController", "main", "Enumeration", "hasMoreElements").
calls("GameController", "main", "InterfaceAddress", "getAddress").
calls("GameController", "main", "System.err", "printf").
calls("GameController", "main", "System.err", "print").
calls("GameController", "main", "Enumeration", "hasMoreElements").
calls("GameController", "main", "NetworkInterface", "isUp").
calls("GameController", "main", "System.err", "printf").
calls("GameController", "main", "Enumeration", "hasMoreElements").
calls("GameController", "main", "System.err", "print").
calls("GameController", "main", "System.err", "println").
calls("GameController", "main", "Log", "error").
calls("GameController", "main", "System", "exit").
calls("GameController", "main", "System.err", "printf").
calls("GameController", "main", "Log", "error").
calls("GameController", "main", "System", "exit").
calls("GameController", "main", "JOptionPane", "showMessageDialog").
calls("GameController", "main", "Log", "error").
calls("GameController", "main", "System", "exit").
calls("GameController", "main", "teamcomm", "start").
calls("GameController", "main", "JOptionPane", "showMessageDialog").
calls("GameController", "main", "Log", "error").
calls("GameController", "main", "System", "exit").
calls("GameController", "main", "Thread", "sleep").
calls("GameController", "main", "System", "exit").
calls("GameController", "main", "TrueDataSender", "initialize").
calls("GameController", "main", "TrueDataSender", "getInstance").
calls("GameController", "main", "Sender", "initialize").
calls("GameController", "main", "Sender", "send").
calls("GameController", "main", "Sender", "start").
calls("GameController", "main", "GameControlReturnDataReceiver", "initialize").
calls("GameController", "main", "GameControlReturnDataReceiver", "start").
calls("GameController", "main", "SPLCoachMessageReceiver", "start").
calls("GameController", "main", "JOptionPane", "showMessageDialog").
calls("GameController", "main", "Log", "error").
calls("GameController", "main", "System", "exit").
calls("GameController", "main", "Log", "init").
calls("GameController", "main", "Log", "init").
calls("GameController", "main", "Log", "toFile").
calls("GameController", "main", "Log", "toFile").
calls("GameController", "main", "Log", "toFile").
calls("GameController", "main", "Log", "toFile").
calls("GameController", "main", "Log", "toFile").
calls("GameController", "main", "ActionBoard", "init").
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
method("TotalScaleLayout", "add", 4, 1).
calls("TotalScaleLayout", "add", "Container", "add").
calls("TotalScaleLayout", "add", "LinkedList", "add").
method("TotalScaleLayout", "addLayoutComponent", 1, 1).
method("TotalScaleLayout", "removeLayoutComponent", 7, 3).
calls("TotalScaleLayout", "removeLayoutComponent", "LinkedList", "remove").
method("TotalScaleLayout", "preferredLayoutSize", 3, 1).
method("TotalScaleLayout", "minimumLayoutSize", 3, 1).
method("TotalScaleLayout", "layoutContainer", 5, 2).
calls("TotalScaleLayout", "layoutContainer", "comp.comp", "setBounds").

# GameController/src/common/ApplicationLock.java

class("ApplicationLock").
method("ApplicationLock", "acquire", 6, 1).
method("ApplicationLock", "release", 11, 4).
calls("ApplicationLock", "release", "FileLock", "isValid").
calls("ApplicationLock", "release", "FileLock", "release").
calls("ApplicationLock", "release", "FileOutputStream", "close").
calls("ApplicationLock", "release", "FileChannel", "isOpen").
calls("ApplicationLock", "release", "FileChannel", "close").

# GameController/src/common/Log.java

class("Log").
method("Log", "init", 16, 8).
calls("Log", "init", "Log", "error").
calls("Log", "init", "Log", "toFile").
method("Log", "toFile", 7, 2).
calls("Log", "toFile", "instance.file", "write").
calls("Log", "toFile", "instance.file", "flush").
calls("Log", "toFile", "Log", "error").
method("Log", "setNextMessage", 3, 1).
method("Log", "state", 15, 3).
calls("Log", "state", "instance.states", "isEmpty").
calls("Log", "state", "Log", "toFile").
calls("Log", "state", "instance.states", "add").
calls("Log", "state", "Log", "toFile").
method("Log", "goBack", 29, 12).
calls("Log", "goBack", "instance.states", "removeLast").
calls("Log", "goBack", "Class", "getField").
method("Log", "getLast", 10, 3).
method("Log", "error", 11, 3).
calls("Log", "error", "System.err", "println").
calls("Log", "error", "instance.errorFile", "write").
calls("Log", "error", "instance.errorFile", "flush").
calls("Log", "error", "System.err", "println").
method("Log", "close", 6, 2).
calls("Log", "close", "instance.errorFile", "close").
calls("Log", "close", "instance.file", "close").

# GameController/src/data/SPLPenaltyShootout.java

class("SPLPenaltyShootout").

# GameController/src/data/GameControlData.java

class("GameControlData").
method("GameControlData", "toByteArray", 25, 3).
calls("GameControlData", "toByteArray", "ByteBuffer", "order").
calls("GameControlData", "toByteArray", "ByteBuffer", "put").
calls("GameControlData", "toByteArray", "ByteBuffer", "putShort").
calls("GameControlData", "toByteArray", "ByteBuffer", "put").
calls("GameControlData", "toByteArray", "ByteBuffer", "put").
calls("GameControlData", "toByteArray", "ByteBuffer", "put").
calls("GameControlData", "toByteArray", "ByteBuffer", "put").
calls("GameControlData", "toByteArray", "ByteBuffer", "put").
calls("GameControlData", "toByteArray", "ByteBuffer", "put").
calls("GameControlData", "toByteArray", "ByteBuffer", "put").
calls("GameControlData", "toByteArray", "ByteBuffer", "put").
calls("GameControlData", "toByteArray", "ByteBuffer", "put").
calls("GameControlData", "toByteArray", "ByteBuffer", "putShort").
calls("GameControlData", "toByteArray", "ByteBuffer", "putShort").
calls("GameControlData", "toByteArray", "ByteBuffer", "putShort").
calls("GameControlData", "toByteArray", "ByteBuffer", "put").
method("GameControlData", "getTrueDataAsByteArray", 20, 2).
calls("GameControlData", "getTrueDataAsByteArray", "ByteBuffer", "order").
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
calls("GameControlData", "getTrueDataAsByteArray", "ByteBuffer", "put").
method("GameControlData", "toByteArray7", 22, 2).
calls("GameControlData", "toByteArray7", "ByteBuffer", "order").
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
method("GameControlData", "fromByteArray", 23, 3).
calls("GameControlData", "fromByteArray", "ByteBuffer", "order").
calls("GameControlData", "fromByteArray", "ByteBuffer", "get").
calls("GameControlData", "fromByteArray", "TeamInfo", "fromByteArray").
method("GameControlData", "toString", 79, 1).

# GameController/src/data/SPLMixedTeam.java

class("SPLMixedTeam").

# GameController/src/data/HL.java

class("HL").

# GameController/src/data/PlayerInfo.java

class("PlayerInfo").
method("PlayerInfo", "toByteArray", 7, 1).
calls("PlayerInfo", "toByteArray", "ByteBuffer", "order").
calls("PlayerInfo", "toByteArray", "ByteBuffer", "put").
calls("PlayerInfo", "toByteArray", "ByteBuffer", "put").
calls("PlayerInfo", "toByteArray", "ByteBuffer", "array").
method("PlayerInfo", "toByteArray7", 7, 1).
calls("PlayerInfo", "toByteArray7", "ByteBuffer", "order").
calls("PlayerInfo", "toByteArray7", "ByteBuffer", "putShort").
calls("PlayerInfo", "toByteArray7", "ByteBuffer", "putShort").
calls("PlayerInfo", "toByteArray7", "ByteBuffer", "array").
method("PlayerInfo", "fromByteArray", 5, 1).
calls("PlayerInfo", "fromByteArray", "ByteBuffer", "order").
method("PlayerInfo", "getPenaltyName", 53, 2).
method("PlayerInfo", "toString", 7, 1).

# GameController/src/data/HLAdult.java

class("HLAdult").

# GameController/src/data/AdvancedData.java

class("AdvancedData").
method("AdvancedData", "clone", 12, 3).
calls("AdvancedData", "clone", "System.out", "println").
calls("AdvancedData", "clone", "System.out", "println").
method("AdvancedData", "getSide", 3, 1).
method("AdvancedData", "getTime", 3, 1).
method("AdvancedData", "getSecondsSince", 3, 1).
method("AdvancedData", "getRemainingSeconds", 3, 1).
method("AdvancedData", "updateTimes", 14, 4).
method("AdvancedData", "addTimeInCurrentState", 3, 1).
method("AdvancedData", "getRemainingGameTime", 6, 1).
method("AdvancedData", "getRemainingPauseTime", 11, 3).
calls("AdvancedData", "getRemainingPauseTime", "AdvancedData", "getRemainingSeconds").
calls("AdvancedData", "getRemainingPauseTime", "AdvancedData", "getRemainingSeconds").
method("AdvancedData", "resetPenaltyTimes", 5, 3).
method("AdvancedData", "resetPenalties", 20, 8).
calls("AdvancedData", "resetPenalties", "AdvancedData", "resetPenaltyTimes").
calls("AdvancedData", "resetPenalties", "ArrayList", "get").
method("AdvancedData", "getRemainingPenaltyTime", 8, 2).
method("AdvancedData", "getNumberOfRobotsInPlay", 8, 3).
method("AdvancedData", "getSecondaryTime", 30, 8).
calls("AdvancedData", "getSecondaryTime", "AdvancedData", "getRemainingSeconds").
calls("AdvancedData", "getSecondaryTime", "AdvancedData", "getRemainingSeconds").
calls("AdvancedData", "getSecondaryTime", "AdvancedData", "getRemainingSeconds").
calls("AdvancedData", "getSecondaryTime", "AdvancedData", "getRemainingPauseTime").
method("AdvancedData", "updateCoachMessages", 17, 5).
calls("AdvancedData", "updateCoachMessages", "Log", "toFile").
calls("AdvancedData", "updateCoachMessages", "ArrayList", "remove").
method("AdvancedData", "updatePenalties", 9, 5).
method("AdvancedData", "addToPenaltyQueue", 3, 1).
calls("AdvancedData", "addToPenaltyQueue", "ArrayList", "get").

# GameController/src/data/Teams.java

class("Teams").
method("Teams", "getLeagueIndex", 8, 3).
calls("Teams", "getLeagueIndex", "Log", "error").
method("Teams", "readTeams", 33, 9).
calls("Teams", "readTeams", "Log", "error").
calls("Teams", "readTeams", "String", "trim").
calls("Teams", "readTeams", "Log", "error").
calls("Teams", "readTeams", "Log", "error").
calls("Teams", "readTeams", "BufferedReader", "close").
method("Teams", "getNames", 12, 4).
calls("Teams", "getNames", "Teams", "readTeams").
method("Teams", "readIcon", 17, 4).
calls("Teams", "readIcon", "Log", "error").
calls("Teams", "readIcon", "Graphics", "setColor").
calls("Teams", "readIcon", "Graphics", "fillRect").
method("Teams", "getIconPath", 8, 3).
calls("Teams", "getIconPath", "File", "exists").
method("Teams", "getIcon", 10, 3).
calls("Teams", "getIcon", "Teams", "readTeams").
calls("Teams", "getIcon", "Teams", "readIcon").
method("Teams", "getColors", 7, 2).
calls("Teams", "getColors", "Teams", "readTeams").

# GameController/src/data/HLTeen.java

class("HLTeen").

# GameController/src/data/GameControlReturnData.java

class("GameControlReturnData").
method("GameControlReturnData", "toByteArray", 10, 1).
calls("GameControlReturnData", "toByteArray", "ByteBuffer", "order").
calls("GameControlReturnData", "toByteArray", "ByteBuffer", "put").
calls("GameControlReturnData", "toByteArray", "ByteBuffer", "put").
calls("GameControlReturnData", "toByteArray", "ByteBuffer", "put").
calls("GameControlReturnData", "toByteArray", "ByteBuffer", "put").
calls("GameControlReturnData", "toByteArray", "ByteBuffer", "put").
calls("GameControlReturnData", "toByteArray", "ByteBuffer", "array").
method("GameControlReturnData", "fromByteArray", 32, 4).
calls("GameControlReturnData", "fromByteArray", "ByteBuffer", "order").
calls("GameControlReturnData", "fromByteArray", "ByteBuffer", "get").

# GameController/src/data/TrueDataRequest.java

class("TrueDataRequest").
method("TrueDataRequest", "createRequest", 6, 1).
method("TrueDataRequest", "fromByteArray", 8, 1).
calls("TrueDataRequest", "fromByteArray", "ByteBuffer", "order").
calls("TrueDataRequest", "fromByteArray", "ByteBuffer", "get").
method("TrueDataRequest", "toByteArray", 7, 1).
calls("TrueDataRequest", "toByteArray", "ByteBuffer", "order").
calls("TrueDataRequest", "toByteArray", "ByteBuffer", "put").
calls("TrueDataRequest", "toByteArray", "ByteBuffer", "put").
calls("TrueDataRequest", "toByteArray", "ByteBuffer", "array").

# GameController/src/data/Rules.java

class("Rules").
method("Rules", "getLeagueRules", 7, 3).

# GameController/src/data/SPL.java

class("SPL").

# GameController/src/data/TeamInfo.java

class("TeamInfo").
method("TeamInfo", "toByteArray", 15, 2).
calls("TeamInfo", "toByteArray", "ByteBuffer", "order").
calls("TeamInfo", "toByteArray", "ByteBuffer", "put").
calls("TeamInfo", "toByteArray", "ByteBuffer", "put").
calls("TeamInfo", "toByteArray", "ByteBuffer", "put").
calls("TeamInfo", "toByteArray", "ByteBuffer", "put").
calls("TeamInfo", "toByteArray", "ByteBuffer", "putShort").
calls("TeamInfo", "toByteArray", "ByteBuffer", "put").
calls("TeamInfo", "toByteArray", "ByteBuffer", "put").
calls("TeamInfo", "toByteArray", "ByteBuffer", "put").
calls("TeamInfo", "toByteArray", "ByteBuffer", "put").
calls("TeamInfo", "toByteArray", "ByteBuffer", "array").
method("TeamInfo", "toByteArray7", 11, 2).
calls("TeamInfo", "toByteArray7", "ByteBuffer", "order").
calls("TeamInfo", "toByteArray7", "ByteBuffer", "put").
calls("TeamInfo", "toByteArray7", "ByteBuffer", "put").
calls("TeamInfo", "toByteArray7", "ByteBuffer", "put").
calls("TeamInfo", "toByteArray7", "ByteBuffer", "put").
calls("TeamInfo", "toByteArray7", "ByteBuffer", "put").
calls("TeamInfo", "toByteArray7", "ByteBuffer", "array").
method("TeamInfo", "fromByteArray", 13, 2).
calls("TeamInfo", "fromByteArray", "ByteBuffer", "order").
calls("TeamInfo", "fromByteArray", "ByteBuffer", "get").
calls("TeamInfo", "fromByteArray", "PlayerInfo", "fromByteArray").
method("TeamInfo", "getTeamColorName", 26, 1).
method("TeamInfo", "toString", 15, 2).

# GameController/src/data/SPLStandardMessage.java

class("SPLStandardMessage").
method("SPLStandardMessage", "createFrom", 40, 1).
method("SPLStandardMessage", "toByteArray", 31, 2).
calls("SPLStandardMessage", "toByteArray", "ByteBuffer", "order").
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
calls("SPLStandardMessage", "toByteArray", "ByteBuffer", "put").
calls("SPLStandardMessage", "toByteArray", "ByteBuffer", "put").
calls("SPLStandardMessage", "toByteArray", "ByteBuffer", "putShort").
calls("SPLStandardMessage", "toByteArray", "ByteBuffer", "putShort").
calls("SPLStandardMessage", "toByteArray", "ByteBuffer", "put").
calls("SPLStandardMessage", "toByteArray", "ByteBuffer", "put").
calls("SPLStandardMessage", "toByteArray", "ByteBuffer", "putShort").
calls("SPLStandardMessage", "toByteArray", "ByteBuffer", "put").
calls("SPLStandardMessage", "toByteArray", "ByteBuffer", "array").
method("SPLStandardMessage", "fromByteArray", 134, 23).
calls("SPLStandardMessage", "fromByteArray", "ByteBuffer", "order").
calls("SPLStandardMessage", "fromByteArray", "ByteBuffer", "get").
calls("SPLStandardMessage", "fromByteArray", "List", "add").
calls("SPLStandardMessage", "fromByteArray", "List", "add").
calls("SPLStandardMessage", "fromByteArray", "List", "add").
calls("SPLStandardMessage", "fromByteArray", "List", "add").
calls("SPLStandardMessage", "fromByteArray", "List", "add").
calls("SPLStandardMessage", "fromByteArray", "List", "add").
calls("SPLStandardMessage", "fromByteArray", "List", "add").
calls("SPLStandardMessage", "fromByteArray", "List", "add").
calls("SPLStandardMessage", "fromByteArray", "List", "add").
calls("SPLStandardMessage", "fromByteArray", "List", "add").
calls("SPLStandardMessage", "fromByteArray", "List", "add").
calls("SPLStandardMessage", "fromByteArray", "List", "add").
calls("SPLStandardMessage", "fromByteArray", "List", "add").
calls("SPLStandardMessage", "fromByteArray", "ByteBuffer", "get").
calls("SPLStandardMessage", "fromByteArray", "List", "add").

# GameController/src/data/SPLCoachMessage.java

class("SPLCoachMessage").
method("SPLCoachMessage", "toByteArray", 10, 1).
calls("SPLCoachMessage", "toByteArray", "ByteBuffer", "order").
calls("SPLCoachMessage", "toByteArray", "ByteBuffer", "put").
calls("SPLCoachMessage", "toByteArray", "ByteBuffer", "put").
calls("SPLCoachMessage", "toByteArray", "ByteBuffer", "put").
calls("SPLCoachMessage", "toByteArray", "ByteBuffer", "put").
calls("SPLCoachMessage", "toByteArray", "ByteBuffer", "put").
calls("SPLCoachMessage", "toByteArray", "ByteBuffer", "array").
method("SPLCoachMessage", "fromByteArray", 26, 5).
calls("SPLCoachMessage", "fromByteArray", "ByteBuffer", "order").
calls("SPLCoachMessage", "fromByteArray", "ByteBuffer", "get").
calls("SPLCoachMessage", "fromByteArray", "ByteBuffer", "get").
method("SPLCoachMessage", "getRemainingTimeToSend", 4, 1).
method("SPLCoachMessage", "generateSendIntervallForSPLCoachMessage", 3, 1).

# GameController/src/eventrecorder/EventRecorder.java

class("EventRecorder").
method("EventRecorder", "getLastTeamData", 3, 1).
method("EventRecorder", "main", 13, 2).
calls("EventRecorder", "main", "System", "setProperty").
calls("EventRecorder", "main", "JOptionPane", "showMessageDialog").
calls("EventRecorder", "main", "System", "exit").
calls("EventRecorder", "main", "GameControlDataReceiver", "addListener").
calls("EventRecorder", "main", "GameControlDataReceiver", "start").
method("EventRecorder", "updateGameData", 32, 10).
calls("EventRecorder", "updateGameData", "ActionHistory", "execute").
calls("EventRecorder", "updateGameData", "ActionHistory", "execute").
method("EventRecorder", "capitalize", 10, 2).
calls("EventRecorder", "capitalize", "StringBuffer", "append").
calls("EventRecorder", "capitalize", "StringBuffer", "toString").
method("EventRecorder", "cleanExit", 7, 2).
calls("EventRecorder", "cleanExit", "GameControlDataReceiver", "interrupt").
calls("EventRecorder", "cleanExit", "GameControlDataReceiver", "join").
calls("EventRecorder", "cleanExit", "System", "exit").
method("EventRecorder", "setLogPenalty", 3, 1).

# GameController/src/tester/MainWindow.java

class("MainWindow").
method("MainWindow", "gameControlDataChanged", 5, 1).
calls("MainWindow", "gameControlDataChanged", "JLabel", "setText").
calls("MainWindow", "gameControlDataChanged", "JLabel", "setText").
calls("MainWindow", "gameControlDataChanged", "JLabel", "setText").
method("MainWindow", "gameControlDataTimeout", 5, 1).
calls("MainWindow", "gameControlDataTimeout", "JLabel", "setText").
calls("MainWindow", "gameControlDataTimeout", "JLabel", "setText").
calls("MainWindow", "gameControlDataTimeout", "JLabel", "setText").

# GameController/src/tester/GameControllerTester.java

class("GameControllerTester").
method("GameControllerTester", "main", 22, 5).
calls("GameControllerTester", "main", "Log", "error").
calls("GameControllerTester", "main", "System", "exit").
calls("GameControllerTester", "main", "GameControlDataReceiver", "addListener").
calls("GameControllerTester", "main", "GameControlDataReceiver", "start").
calls("GameControllerTester", "main", "Object", "wait").
calls("GameControllerTester", "main", "GameControlDataReceiver", "interrupt").
calls("GameControllerTester", "main", "GameControlDataReceiver", "join").
calls("GameControllerTester", "main", "System", "exit").
method("GameControllerTester", "shutdown", 6, 1).
calls("GameControllerTester", "shutdown", "Object", "notifyAll").

# GameController/src/analyzer/LogAnalyzer.java

class("LogAnalyzer").
method("LogAnalyzer", "main", 4, 1).
calls("LogAnalyzer", "main", "LogAnalyzer", "load").
method("LogAnalyzer", "load", 9, 3).
calls("LogAnalyzer", "load", "LinkedList", "add").

# GameController/src/analyzer/GUI.java

class("GUI").
method("GUI", "updateList", 6, 2).
calls("GUI", "updateList", "ListSelectionModel", "clearSelection").
calls("GUI", "updateList", "DefaultListModel", "removeAllElements").
calls("GUI", "updateList", "DefaultListModel", "addElement").
method("GUI", "clean", 13, 4).
calls("GUI", "clean", "File", "isDirectory").
calls("GUI", "clean", "File", "mkdir").
calls("GUI", "clean", "log.file", "renameTo").
calls("GUI", "clean", "LogAnalyzer", "load").
calls("GUI", "clean", "GUI", "updateList").
method("GUI", "analyze", 25, 6).
calls("GUI", "analyze", "LogAnalyzer.stats", "createNewFile").
calls("GUI", "analyze", "LogAnalyzer.writer", "write").
calls("GUI", "analyze", "Log", "error").
calls("GUI", "analyze", "Parser", "statistic").
calls("GUI", "analyze", "LogAnalyzer.writer", "flush").
calls("GUI", "analyze", "LogAnalyzer.writer", "close").
calls("GUI", "analyze", "Log", "error").
calls("GUI", "analyze", "JOptionPane", "showMessageDialog").
method("GUI", "valueChanged", 8, 2).
calls("GUI", "valueChanged", "JLabel", "setText").
calls("GUI", "valueChanged", "JLabel", "setText").

# GameController/src/analyzer/LogInfo.java

class("LogInfo").
method("LogInfo", "isRealLog", 3, 1).
method("LogInfo", "isRealVersion", 3, 1).
method("LogInfo", "isRealLeague", 3, 1).
method("LogInfo", "isRealTeam", 3, 1).
method("LogInfo", "isRealDuration", 3, 1).
method("LogInfo", "getInfo", 3, 1).
method("LogInfo", "toString", 3, 1).

# GameController/src/analyzer/Parser.java

class("Parser").
method("Parser", "info", 72, 19).
calls("Parser", "info", "String", "startsWith").
calls("Parser", "info", "String", "startsWith").
calls("Parser", "info", "String", "startsWith").
calls("Parser", "info", "log.lines", "set").
calls("Parser", "info", "String", "contains").
calls("Parser", "info", "String", "startsWith").
method("Parser", "statistic", 69, 16).
calls("Parser", "statistic", "String", "startsWith").
calls("Parser", "statistic", "Log", "error").
calls("Parser", "statistic", "String", "startsWith").
calls("Parser", "statistic", "String", "startsWith").
calls("Parser", "statistic", "String", "contains").
calls("Parser", "statistic", "String", "contains").
calls("Parser", "statistic", "Matcher", "find").
calls("Parser", "statistic", "LogAnalyzer.writer", "write").
calls("Parser", "statistic", "Log", "error").

# GameController/src/teamcomm/net/SPLStandardMessagePackage.java

class("SPLStandardMessagePackage").

# GameController/src/teamcomm/net/SPLStandardMessageReceiver.java

class("SPLStandardMessageReceiver").
method("SPLStandardMessageReceiver", "processPackets", 3, 1).
method("SPLStandardMessageReceiver", "handleMessage", 1, 1).
method("SPLStandardMessageReceiver", "run", 15, 4).
calls("SPLStandardMessageReceiver", "run", "ReceiverThread", "start").
calls("SPLStandardMessageReceiver", "run", "SPLStandardMessageReceiver", "isInterrupted").
calls("SPLStandardMessageReceiver", "run", "Logger", "getInstance").
calls("SPLStandardMessageReceiver", "run", "SPLStandardMessageReceiver", "handleMessage").
calls("SPLStandardMessageReceiver", "run", "Thread", "yield").
calls("SPLStandardMessageReceiver", "run", "ReceiverThread", "interrupt").
calls("SPLStandardMessageReceiver", "run", "ReceiverThread", "join").
method("SPLStandardMessageReceiver", "addToPackageQueue", 3, 1).
calls("SPLStandardMessageReceiver", "addToPackageQueue", "LinkedBlockingQueue", "add").
method("SPLStandardMessageReceiver", "clearPackageQueue", 6, 2).
calls("SPLStandardMessageReceiver", "clearPackageQueue", "LinkedBlockingQueue", "clear").
calls("SPLStandardMessageReceiver", "clearPackageQueue", "Thread", "sleep").
method("SPLStandardMessageReceiver", "getTeamport", 3, 1).

# GameController/src/teamcomm/net/GameControlDataReceiver.java

class("GameControlDataReceiver").
method("GameControlDataReceiver", "addListener", 3, 1).
calls("GameControlDataReceiver", "addListener", "EventListenerList", "add").
method("GameControlDataReceiver", "removeListener", 3, 1).
calls("GameControlDataReceiver", "removeListener", "EventListenerList", "remove").
method("GameControlDataReceiver", "fireEvent", 10, 4).
calls("GameControlDataReceiver", "fireEvent", "GameControlDataEventListener", "gameControlDataChanged").
calls("GameControlDataReceiver", "fireEvent", "GameControlDataEventListener", "gameControlDataTimeout").
method("GameControlDataReceiver", "requestTrueData", 4, 1).
method("GameControlDataReceiver", "run", 31, 10).
calls("GameControlDataReceiver", "run", "GameControlDataReceiver", "isInterrupted").
calls("GameControlDataReceiver", "run", "DatagramSocket", "receive").
calls("GameControlDataReceiver", "run", "ByteBuffer", "rewind").
calls("GameControlDataReceiver", "run", "GameControlData", "fromByteArray").
calls("GameControlDataReceiver", "run", "GameControlDataReceiver", "fireEvent").
calls("GameControlDataReceiver", "run", "GameControlDataReceiver", "requestTrueData").
calls("GameControlDataReceiver", "run", "Log", "error").
calls("GameControlDataReceiver", "run", "GameControlDataReceiver", "fireEvent").
calls("GameControlDataReceiver", "run", "Log", "error").
calls("GameControlDataReceiver", "run", "DatagramSocket", "close").

# GameController/src/teamcomm/net/SPLStandardMessageReceiverTCM.java

class("SPLStandardMessageReceiverTCM").
method("SPLStandardMessageReceiverTCM", "getInstance", 10, 3).
calls("SPLStandardMessageReceiverTCM", "getInstance", "JOptionPane", "showMessageDialog").
calls("SPLStandardMessageReceiverTCM", "getInstance", "System", "exit").
method("SPLStandardMessageReceiverTCM", "processPackets", 3, 1).
calls("SPLStandardMessageReceiverTCM", "processPackets", "LogReplayer", "getInstance").
method("SPLStandardMessageReceiverTCM", "handleMessage", 26, 6).
calls("SPLStandardMessageReceiverTCM", "handleMessage", "SPLStandardMessage", "fromByteArray").
calls("SPLStandardMessageReceiverTCM", "handleMessage", "Log", "error").
calls("SPLStandardMessageReceiverTCM", "handleMessage", "GameState", "getInstance").
calls("SPLStandardMessageReceiverTCM", "handleMessage", "Log", "error").

# GameController/src/teamcomm/data/AdvancedMessage.java

class("AdvancedMessage").
method("AdvancedMessage", "display", 1, 1).
method("AdvancedMessage", "init", 1, 1).

# GameController/src/teamcomm/data/GameState.java

class("GameState").
method("GameState", "getInstance", 3, 1).
method("GameState", "shutdown", 3, 1).
calls("GameState", "shutdown", "ScheduledFuture", "cancel").
method("GameState", "reset", 12, 1).
calls("GameState", "reset", "Map", "clear").
calls("GameState", "reset", "HashMap", "clear").
calls("GameState", "reset", "GameState", "sendEvents").
method("GameState", "gameControlDataChanged", 71, 17).
calls("GameState", "gameControlDataChanged", "Map", "put").
calls("GameState", "gameControlDataChanged", "Map", "put").
calls("GameState", "gameControlDataChanged", "RobotState", "setPenalty").
calls("GameState", "gameControlDataChanged", "PluginLoader", "getInstance").
calls("GameState", "gameControlDataChanged", "LogReplayer", "getInstance").
calls("GameState", "gameControlDataChanged", "StringBuilder", "append").
calls("GameState", "gameControlDataChanged", "StringBuilder", "append").
calls("GameState", "gameControlDataChanged", "StringBuilder", "append").
calls("GameState", "gameControlDataChanged", "StringBuilder", "append").
calls("GameState", "gameControlDataChanged", "Logger", "getInstance").
calls("GameState", "gameControlDataChanged", "Logger", "getInstance").
calls("GameState", "gameControlDataChanged", "Logger", "getInstance").
calls("GameState", "gameControlDataChanged", "Logger", "getInstance").
calls("GameState", "gameControlDataChanged", "GameState", "sendEvents").
method("GameState", "gameControlDataTimeout", 24, 6).
calls("GameState", "gameControlDataTimeout", "LogReplayer", "getInstance").
calls("GameState", "gameControlDataTimeout", "Entry", "getValue").
calls("GameState", "gameControlDataTimeout", "Logger", "getInstance").
calls("GameState", "gameControlDataTimeout", "GameState", "sendEvents").
method("GameState", "receiveMessage", 46, 12).
calls("GameState", "receiveMessage", "PluginLoader", "getInstance").
calls("GameState", "receiveMessage", "HashMap", "put").
calls("GameState", "receiveMessage", "Map", "put").
calls("GameState", "receiveMessage", "Collection", "add").
calls("GameState", "receiveMessage", "RobotState", "registerMessage").
calls("GameState", "receiveMessage", "GameState", "sendEvents").
method("GameState", "sendEvents", 57, 16).
calls("GameState", "sendEvents", "Collection", "add").
calls("GameState", "sendEvents", "GameState", "fireEvent").
calls("GameState", "sendEvents", "Collection", "add").
calls("GameState", "sendEvents", "GameState", "fireEvent").
calls("GameState", "sendEvents", "Collection", "add").
calls("GameState", "sendEvents", "GameState", "fireEvent").
calls("GameState", "sendEvents", "Collection", "add").
calls("GameState", "sendEvents", "GameState", "fireEvent").
calls("GameState", "sendEvents", "Collection", "add").
calls("GameState", "sendEvents", "GameState", "fireEvent").
method("GameState", "fireEvent", 4, 2).
calls("GameState", "fireEvent", "TeamEventListener", "teamChanged").
method("GameState", "getTeamColor", 64, 16).
method("GameState", "getLastGameControlData", 3, 1).
method("GameState", "getTeamName", 26, 6).
method("GameState", "isMirrored", 3, 1).
method("GameState", "setMirrored", 6, 2).
calls("GameState", "setMirrored", "GameState", "sendEvents").
method("GameState", "outputSide", 3, 1).
method("GameState", "addListener", 4, 1).
calls("GameState", "addListener", "EventListenerList", "add").
calls("GameState", "addListener", "GameState", "sendEvents").
method("GameState", "removeListener", 3, 1).
calls("GameState", "removeListener", "EventListenerList", "remove").

# GameController/src/teamcomm/data/RobotState.java

class("RobotState").
method("RobotState", "registerMessage", 17, 4).
calls("RobotState", "registerMessage", "LinkedList", "addFirst").
calls("RobotState", "registerMessage", "RobotStateEventListener", "robotStateChanged").
calls("RobotState", "registerMessage", "RobotStateEventListener", "connectionStatusChanged").
method("RobotState", "getAddress", 3, 1).
method("RobotState", "getLastMessage", 3, 1).
method("RobotState", "getMessagesPerSecond", 9, 2).
calls("RobotState", "getMessagesPerSecond", "ListIterator", "remove").
method("RobotState", "updateConnectionStatus", 9, 3).
calls("RobotState", "updateConnectionStatus", "RobotStateEventListener", "connectionStatusChanged").
method("RobotState", "getConnectionStatus", 8, 3).
method("RobotState", "getMessageCount", 3, 1).
method("RobotState", "getIllegalMessageCount", 3, 1).
method("RobotState", "getIllegalMessageRatio", 3, 1).
method("RobotState", "getTeamNumber", 3, 1).
method("RobotState", "getPlayerNumber", 3, 1).
method("RobotState", "getPenalty", 3, 1).
method("RobotState", "setPenalty", 3, 1).
method("RobotState", "addListener", 3, 1).
calls("RobotState", "addListener", "EventListenerList", "add").
method("RobotState", "removeListener", 3, 1).
calls("RobotState", "removeListener", "EventListenerList", "remove").

# GameController/src/teamcomm/gui/View3DCanvas.java

class("View3DCanvas").
method("View3DCanvas", "init", 4, 1).
calls("View3DCanvas", "init", "View3DCanvas", "updateDrawingsMenu").
method("View3DCanvas", "getCanvas", 3, 1).
method("View3DCanvas", "updateDrawingsMenu", 26, 8).
calls("View3DCanvas", "updateDrawingsMenu", "JMenu", "removeAll").
calls("View3DCanvas", "updateDrawingsMenu", "String", "equals").
calls("View3DCanvas", "updateDrawingsMenu", "HashMap", "put").
calls("View3DCanvas", "updateDrawingsMenu", "JMenu", "add").
calls("View3DCanvas", "updateDrawingsMenu", "JCheckBoxMenuItem", "addItemListener").
calls("View3DCanvas", "updateDrawingsMenu", "JMenu", "add").
calls("View3DCanvas", "updateDrawingsMenu", "JMenu", "add").
calls("View3DCanvas", "updateDrawingsMenu", "JMenu", "remove").
method("View3DCanvas", "getDrawingsMenu", 3, 1).
method("View3DCanvas", "teamChanged", 20, 5).
calls("View3DCanvas", "teamChanged", "drawings", "clear").
calls("View3DCanvas", "teamChanged", "drawings", "addAll").
calls("View3DCanvas", "teamChanged", "drawings", "addAll").
calls("View3DCanvas", "teamChanged", "drawings", "addAll").
calls("View3DCanvas", "teamChanged", "Collections", "sort").
calls("View3DCanvas", "teamChanged", "View3DCanvas", "updateDrawingsMenu").

# GameController/src/teamcomm/gui/RobotDetailFrameDefault.java

class("RobotDetailFrameDefault").
method("RobotDetailFrameDefault", "init", 19, 1).
calls("RobotDetailFrameDefault", "init", "RobotDetailFrameDefault", "setContentPane").
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
method("RobotDetailFrameDefault", "robotStateChanged", 5, 2).
calls("RobotDetailFrameDefault", "robotStateChanged", "RobotDetailFrameDefault", "isVisible").
calls("RobotDetailFrameDefault", "robotStateChanged", "SwingUtilities", "invokeLater").
method("RobotDetailFrameDefault", "update", 176, 38).
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
calls("RobotDetailFrameDefault", "update", "Log", "error").
calls("RobotDetailFrameDefault", "update", "StringBuilder", "setLength").
calls("RobotDetailFrameDefault", "update", "StringBuilder", "append").
calls("RobotDetailFrameDefault", "update", "String", "equals").
calls("RobotDetailFrameDefault", "update", "JLabel", "setAlignmentY").
calls("RobotDetailFrameDefault", "update", "JLabel", "setBorder").
calls("RobotDetailFrameDefault", "update", "JPanel", "add").
calls("RobotDetailFrameDefault", "update", "StringBuilder", "setLength").
calls("RobotDetailFrameDefault", "update", "StringBuilder", "append").
calls("RobotDetailFrameDefault", "update", "JLabel", "setAlignmentY").
calls("RobotDetailFrameDefault", "update", "JLabel", "setBorder").
calls("RobotDetailFrameDefault", "update", "JPanel", "add").
calls("RobotDetailFrameDefault", "update", "JPanel", "remove").
calls("RobotDetailFrameDefault", "update", "JPanel", "remove").
calls("RobotDetailFrameDefault", "update", "RobotDetailFrameDefault", "pack").
method("RobotDetailFrameDefault", "connectionStatusChanged", 1, 1).

# GameController/src/teamcomm/gui/TeamLogoLoader.java

class("TeamLogoLoader").
method("TeamLogoLoader", "getInstance", 3, 1).
method("TeamLogoLoader", "getTeamLogo", 30, 7).
calls("TeamLogoLoader", "getTeamLogo", "Graphics", "drawImage").
calls("TeamLogoLoader", "getTeamLogo", "Graphics", "dispose").
calls("TeamLogoLoader", "getTeamLogo", "Map", "put").
method("TeamLogoLoader", "getTeamLogoTexture", 18, 4).
calls("TeamLogoLoader", "getTeamLogoTexture", "TextureLoader", "getInstance").
method("TeamLogoLoader", "getTeamLogoIcon", 4, 1).
method("TeamLogoLoader", "getScaledTeamLogoIcon", 9, 2).
method("TeamLogoLoader", "getScaledSemiTransparentTeamLogoIcon", 17, 4).
calls("TeamLogoLoader", "getScaledSemiTransparentTeamLogoIcon", "BufferedImage", "setRGB").
calls("TeamLogoLoader", "getScaledSemiTransparentTeamLogoIcon", "Map", "put").
method("TeamLogoLoader", "getTeamLogoPanelIcon", 10, 3).
calls("TeamLogoLoader", "getTeamLogoPanelIcon", "Map", "put").

# GameController/src/teamcomm/gui/MainWindow.java

class("MainWindow").
method("MainWindow", "initialize", 33, 1).
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
calls("MainWindow", "initialize", "JPanel", "add").
calls("MainWindow", "initialize", "MainWindow", "add").
calls("MainWindow", "initialize", "JMenuBar", "add").
calls("MainWindow", "initialize", "JMenuBar", "add").
calls("MainWindow", "initialize", "MainWindow", "setJMenuBar").
calls("MainWindow", "initialize", "MainWindow", "setPreferredSize").
calls("MainWindow", "initialize", "MainWindow", "pack").
calls("MainWindow", "initialize", "MainWindow", "setVisible").
calls("MainWindow", "initialize", "GameState", "getInstance").
method("MainWindow", "createFileMenu", 18, 1).
calls("MainWindow", "createFileMenu", "JMenuItem", "addActionListener").
calls("MainWindow", "createFileMenu", "JMenuItem", "setAccelerator").
calls("MainWindow", "createFileMenu", "JMenu", "add").
calls("MainWindow", "createFileMenu", "JMenu", "add").
calls("MainWindow", "createFileMenu", "JMenuItem", "addActionListener").
calls("MainWindow", "createFileMenu", "JMenuItem", "setAccelerator").
calls("MainWindow", "createFileMenu", "JMenuItem", "addActionListener").
calls("MainWindow", "createFileMenu", "JMenu", "add").
calls("MainWindow", "createFileMenu", "JMenuItem", "addActionListener").
calls("MainWindow", "createFileMenu", "JMenu", "add").
method("MainWindow", "createViewMenu", 8, 1).
calls("MainWindow", "createViewMenu", "JCheckBoxMenuItem", "addItemListener").
calls("MainWindow", "createViewMenu", "JMenu", "add").
calls("MainWindow", "createViewMenu", "JMenu", "add").
method("MainWindow", "terminate", 4, 1).
calls("MainWindow", "terminate", "GameState", "getInstance").
calls("MainWindow", "terminate", "View3DCanvas", "terminate").
method("MainWindow", "teamChanged", 3, 1).
calls("MainWindow", "teamChanged", "SwingUtilities", "invokeLater").

# GameController/src/teamcomm/gui/View3DGSV.java

class("View3DGSV").
method("View3DGSV", "init", 28, 7).
calls("View3DGSV", "init", "GLAutoDrawable", "getGL").
calls("View3DGSV", "init", "Drawing", "getClass").
calls("View3DGSV", "init", "Drawing", "getClass").
calls("View3DGSV", "init", "Drawing", "setActive").
calls("View3DGSV", "init", "Drawing", "setActive").
calls("View3DGSV", "init", "Drawing", "setActive").
calls("View3DGSV", "init", "camera", "addRadius").
calls("View3DGSV", "init", "camera", "shiftToBottom").
calls("View3DGSV", "init", "GameState", "getInstance").
calls("View3DGSV", "init", "System.err", "println").
method("View3DGSV", "reshape", 9, 2).
method("View3DGSV", "terminate", 4, 1).
calls("View3DGSV", "terminate", "SwingUtilities", "invokeLater").
method("View3DGSV", "draw", 143, 19).
calls("View3DGSV", "draw", "View3DGSV", "switchTo2D").
calls("View3DGSV", "draw", "Image", "drawImage2DCover").
calls("View3DGSV", "draw", "Image", "drawImage2DContain").
calls("View3DGSV", "draw", "Image", "drawImage2DContain").
calls("View3DGSV", "draw", "Image", "drawImage2DContain").
calls("View3DGSV", "draw", "Image", "drawImage2DContain").
calls("View3DGSV", "draw", "View3DGSV", "switchTo3D").
calls("View3DGSV", "draw", "View3DGSV", "switchTo2D").
calls("View3DGSV", "draw", "Image", "drawImage2DContain").
calls("View3DGSV", "draw", "Image", "drawImage2DContain").
calls("View3DGSV", "draw", "View3DGSV", "switchTo3D").
calls("View3DGSV", "draw", "View3DGSV", "drawTextCenter").
calls("View3DGSV", "draw", "View3DGSV", "drawText").
calls("View3DGSV", "draw", "View3DGSV", "drawTextCenter").
calls("View3DGSV", "draw", "View3DGSV", "drawTextCenter").
calls("View3DGSV", "draw", "View3DGSV", "switchTo2D").
calls("View3DGSV", "draw", "Image", "drawImage2D").
calls("View3DGSV", "draw", "View3DGSV", "switchTo3D").
calls("View3DGSV", "draw", "View3DGSV", "drawText").
calls("View3DGSV", "draw", "View3DGSV", "drawText").
calls("View3DGSV", "draw", "View3DGSV", "switchTo2D").
calls("View3DGSV", "draw", "GL2", "glColor4fv").
calls("View3DGSV", "draw", "GL2", "glPushMatrix").
calls("View3DGSV", "draw", "GL2", "glTranslatef").
calls("View3DGSV", "draw", "GL2", "glTranslatef").
calls("View3DGSV", "draw", "GL2", "glTranslatef").
calls("View3DGSV", "draw", "GLU", "gluDisk").
calls("View3DGSV", "draw", "GLU", "gluDisk").
calls("View3DGSV", "draw", "GL2", "glPopMatrix").
calls("View3DGSV", "draw", "GLU", "gluDeleteQuadric").
calls("View3DGSV", "draw", "View3DGSV", "switchTo3D").
method("View3DGSV", "drawTextCenter", 3, 1).
calls("View3DGSV", "drawTextCenter", "View3DGSV", "drawText").
method("View3DGSV", "drawText", 4, 1).
calls("View3DGSV", "drawText", "TextRenderer", "setColor").
calls("View3DGSV", "drawText", "TextRenderer", "draw").
method("View3DGSV", "switchTo2D", 12, 1).
calls("View3DGSV", "switchTo2D", "GL2", "glMatrixMode").
calls("View3DGSV", "switchTo2D", "GL2", "glPushMatrix").
calls("View3DGSV", "switchTo2D", "GL2", "glLoadIdentity").
calls("View3DGSV", "switchTo2D", "GLU", "gluOrtho2D").
calls("View3DGSV", "switchTo2D", "GL2", "glMatrixMode").
calls("View3DGSV", "switchTo2D", "GL2", "glLoadIdentity").
calls("View3DGSV", "switchTo2D", "GL2", "glDisable").
calls("View3DGSV", "switchTo2D", "GL2", "glDisable").
calls("View3DGSV", "switchTo2D", "GL2", "glDisable").
method("View3DGSV", "switchTo3D", 8, 1).
calls("View3DGSV", "switchTo3D", "GL2", "glEnable").
calls("View3DGSV", "switchTo3D", "GL2", "glEnable").
calls("View3DGSV", "switchTo3D", "GL2", "glEnable").
calls("View3DGSV", "switchTo3D", "GL2", "glMatrixMode").
calls("View3DGSV", "switchTo3D", "GL2", "glPopMatrix").
calls("View3DGSV", "switchTo3D", "GL2", "glMatrixMode").
method("View3DGSV", "formatTime", 3, 1).

# GameController/src/teamcomm/gui/View3D.java

class("View3D").
method("View3D", "terminate", 4, 1).
calls("View3D", "terminate", "GameState", "getInstance").
calls("View3D", "terminate", "AnimatorBase", "stop").
method("View3D", "init", 47, 4).
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
calls("View3D", "init", "View3D", "reshape").
calls("View3D", "init", "View3D", "reshape").
calls("View3D", "init", "View3D", "reshape").
calls("View3D", "init", "GL2", "glEnable").
calls("View3D", "init", "GL2", "glLightModelfv").
calls("View3D", "init", "GL2", "glLightModelf").
calls("View3D", "init", "GL2", "glLightfv").
calls("View3D", "init", "GL2", "glLightfv").
calls("View3D", "init", "GL2", "glLightfv").
calls("View3D", "init", "GL2", "glLightfv").
calls("View3D", "init", "GL2", "glLightf").
calls("View3D", "init", "GL2", "glLightf").
calls("View3D", "init", "GL2", "glLightf").
calls("View3D", "init", "GL2", "glLightf").
calls("View3D", "init", "GL2", "glLightfv").
calls("View3D", "init", "GL2", "glLightf").
calls("View3D", "init", "GL2", "glEnable").
calls("View3D", "init", "GL2", "glClearColor").
calls("View3D", "init", "List", "addAll").
calls("View3D", "init", "Collections", "sort").
calls("View3D", "init", "Drawing", "initialize").
calls("View3D", "init", "GameState", "getInstance").
method("View3D", "dispose", 1, 1).
method("View3D", "display", 5, 1).
calls("View3D", "display", "GL2", "glClear").
calls("View3D", "display", "View3D", "draw").
method("View3D", "draw", 46, 13).
calls("View3D", "draw", "GL2", "glLoadIdentity").
calls("View3D", "draw", "Camera", "positionCamera").
calls("View3D", "draw", "Iterator", "hasNext").
calls("View3D", "draw", "Drawing", "initialize").
calls("View3D", "draw", "Iterator", "remove").
calls("View3D", "draw", "Log", "error").
calls("View3D", "draw", "Drawing", "isActive").
calls("View3D", "draw", "Log", "error").
calls("View3D", "draw", "Log", "error").
calls("View3D", "draw", "Camera", "flip").
calls("View3D", "draw", "Log", "error").
calls("View3D", "draw", "Camera", "flip").
method("View3D", "reshape", 8, 2).
calls("View3D", "reshape", "GLAutoDrawable", "getGL").
calls("View3D", "reshape", "Camera", "setupFrustum").
method("View3D", "teamChanged", 15, 3).
calls("View3D", "teamChanged", "Set", "clear").
calls("View3D", "teamChanged", "Set", "addAll").
calls("View3D", "teamChanged", "Set", "clear").
calls("View3D", "teamChanged", "Set", "addAll").

# GameController/src/teamcomm/gui/RobotPanel.java

class("RobotPanel").
method("RobotPanel", "robotStateChanged", 5, 2).
calls("RobotPanel", "robotStateChanged", "RobotPanel", "isVisible").
calls("RobotPanel", "robotStateChanged", "RobotPanel", "update").
method("RobotPanel", "connectionStatusChanged", 14, 2).
calls("RobotPanel", "connectionStatusChanged", "RobotPanel", "isVisible").
calls("RobotPanel", "connectionStatusChanged", "RobotState", "getConnectionStatus").
calls("RobotPanel", "connectionStatusChanged", "JLabel", "setIcon").
calls("RobotPanel", "connectionStatusChanged", "JLabel", "setIcon").
calls("RobotPanel", "connectionStatusChanged", "JLabel", "setIcon").
method("RobotPanel", "update", 4, 1).
calls("RobotPanel", "update", "SwingUtilities", "invokeLater").
method("RobotPanel", "setTeamLogoVisible", 7, 2).
calls("RobotPanel", "setTeamLogoVisible", "SwingUtilities", "invokeLater").
calls("RobotPanel", "setTeamLogoVisible", "SwingUtilities", "invokeLater").
method("RobotPanel", "dispose", 4, 1).
calls("RobotPanel", "dispose", "RobotState", "removeListener").
calls("RobotPanel", "dispose", "RobotDetailFrame", "destroy").
method("RobotPanel", "getRobotAddress", 3, 1).
calls("RobotPanel", "getRobotAddress", "RobotState", "getAddress").
method("RobotPanel", "loadIcons", 11, 4).

# GameController/src/teamcomm/gui/RobotDetailFrame.java

class("RobotDetailFrame").
method("RobotDetailFrame", "init", 1, 1).
method("RobotDetailFrame", "destroy", 4, 1).
calls("RobotDetailFrame", "destroy", "RobotDetailFrame", "setVisible").
calls("RobotDetailFrame", "destroy", "RobotState", "removeListener").
method("RobotDetailFrame", "dispose", 4, 1).
calls("RobotDetailFrame", "dispose", "RobotState", "removeListener").

# GameController/src/teamcomm/gui/Camera.java

class("Camera").
method("Camera", "flip", 4, 1).
calls("Camera", "flip", "GL2", "glRotatef").
method("Camera", "addTheta", 10, 3).
method("Camera", "addPhi", 10, 3).
method("Camera", "addRadius", 10, 3).
method("Camera", "setupFrustum", 7, 1).
calls("Camera", "setupFrustum", "GL2", "glMatrixMode").
calls("Camera", "setupFrustum", "GL2", "glLoadIdentity").
calls("Camera", "setupFrustum", "GLU", "gluPerspective").
calls("Camera", "setupFrustum", "GL2", "glMatrixMode").
method("Camera", "positionCamera", 6, 1).
calls("Camera", "positionCamera", "GL2", "glTranslatef").
calls("Camera", "positionCamera", "GL2", "glRotatef").
calls("Camera", "positionCamera", "GL2", "glRotatef").
calls("Camera", "positionCamera", "GL2", "glTranslatef").
method("Camera", "turnTowardsCamera", 4, 1).
calls("Camera", "turnTowardsCamera", "GL2", "glRotatef").
calls("Camera", "turnTowardsCamera", "GL2", "glRotatef").
method("Camera", "shiftToBottom", 3, 1).

# GameController/src/teamcomm/gui/LogReplayFrame.java

class("LogReplayFrame").
method("LogReplayFrame", "logReplayStatus", 64, 13).
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
calls("LogReplayFrame", "logReplayStatus", "JLabel", "setText").
calls("LogReplayFrame", "logReplayStatus", "JButton", "setEnabled").
calls("LogReplayFrame", "logReplayStatus", "JLabel", "setText").
method("LogReplayFrame", "logReplayStarted", 11, 1).
calls("LogReplayFrame", "logReplayStarted", "JButton", "setEnabled").
calls("LogReplayFrame", "logReplayStarted", "JButton", "setEnabled").
calls("LogReplayFrame", "logReplayStarted", "JButton", "setEnabled").
calls("LogReplayFrame", "logReplayStarted", "JButton", "setEnabled").
calls("LogReplayFrame", "logReplayStarted", "JButton", "setEnabled").
calls("LogReplayFrame", "logReplayStarted", "JLabel", "setText").
calls("LogReplayFrame", "logReplayStarted", "JLabel", "setText").
calls("LogReplayFrame", "logReplayStarted", "LogReplayFrame", "setLocationRelativeTo").
calls("LogReplayFrame", "logReplayStarted", "LogReplayFrame", "setVisible").
method("LogReplayFrame", "logReplayEnded", 3, 1).
calls("LogReplayFrame", "logReplayEnded", "LogReplayFrame", "setVisible").

# GameController/src/teamcomm/net/logging/Logger.java

class("Logger").
method("Logger", "getInstance", 3, 1).
method("Logger", "enableLogging", 7, 2).
calls("Logger", "enableLogging", "Logger", "createLogfile").
calls("Logger", "enableLogging", "System.out", "println").
method("Logger", "disableLogging", 7, 2).
calls("Logger", "disableLogging", "Logger", "closeLogfile").
calls("Logger", "disableLogging", "System.out", "println").
method("Logger", "createLogfile", 3, 1).
calls("Logger", "createLogfile", "Logger", "createLogfile").
method("Logger", "createLogfile", 15, 3).
calls("Logger", "createLogfile", "Logger", "closeLogfile").
method("Logger", "closeLogfile", 19, 6).
calls("Logger", "closeLogfile", "LogReplayer", "getInstance").
calls("Logger", "closeLogfile", "ObjectOutputStream", "close").
calls("Logger", "closeLogfile", "Log", "error").
calls("Logger", "closeLogfile", "File", "delete").
method("Logger", "log", 3, 1).
calls("Logger", "log", "Logger", "log").
method("Logger", "log", 3, 1).
calls("Logger", "log", "Logger", "log").
method("Logger", "log", 31, 8).
calls("Logger", "log", "Log", "error").
calls("Logger", "log", "ObjectOutputStream", "writeLong").
calls("Logger", "log", "ObjectOutputStream", "writeBoolean").
calls("Logger", "log", "ObjectOutputStream", "writeInt").
calls("Logger", "log", "ObjectOutputStream", "writeObject").
calls("Logger", "log", "Log", "error").
calls("Logger", "log", "Logger", "closeLogfile").
method("Logger", "getIDForClass", 6, 2).
calls("Logger", "getIDForClass", "Class", "equals").

# GameController/src/teamcomm/net/logging/LogReplayEventListener.java


# GameController/src/teamcomm/net/logging/LogReplayTask.java

class("LogReplayTask").
method("LogReplayTask", "close", 8, 3).
calls("LogReplayTask", "close", "ObjectInputStream", "close").
method("LogReplayTask", "isPaused", 5, 1).
method("LogReplayTask", "setPlaybackSpeed", 5, 1).
method("LogReplayTask", "run", 38, 9).
calls("LogReplayTask", "run", "LogReplayTask", "isPaused").
calls("LogReplayTask", "run", "LogReplayTask", "handleObject").
calls("LogReplayTask", "run", "LogReplayTask", "next").
calls("LogReplayTask", "run", "LogReplayTask", "handleObject").
calls("LogReplayTask", "run", "LogReplayTask", "prev").
calls("LogReplayTask", "run", "LogReplayEventListener", "logReplayStatus").
method("LogReplayTask", "prev", 10, 3).
calls("LogReplayTask", "prev", "Deque", "isEmpty").
calls("LogReplayTask", "prev", "Deque", "push").
method("LogReplayTask", "next", 31, 9).
calls("LogReplayTask", "next", "ObjectInputStream", "readBoolean").
calls("LogReplayTask", "next", "ObjectInputStream", "close").
calls("LogReplayTask", "next", "Log", "error").
calls("LogReplayTask", "next", "ObjectInputStream", "close").
calls("LogReplayTask", "next", "Deque", "push").
method("LogReplayTask", "handleObject", 17, 4).
calls("LogReplayTask", "handleObject", "SPLStandardMessageReceiverTCM", "getInstance").
calls("LogReplayTask", "handleObject", "GameState", "getInstance").
calls("LogReplayTask", "handleObject", "GameState", "getInstance").

# GameController/src/teamcomm/net/logging/LogReplayEvent.java

class("LogReplayEvent").

# GameController/src/teamcomm/net/logging/LogReplayer.java

class("LogReplayer").
method("LogReplayer", "getInstance", 3, 1).
method("LogReplayer", "open", 14, 4).
calls("LogReplayer", "open", "ScheduledFuture", "cancel").
calls("LogReplayer", "open", "LogReplayTask", "close").
calls("LogReplayer", "open", "LogReplayEventListener", "logReplayEnded").
calls("LogReplayer", "open", "SPLStandardMessageReceiverTCM", "getInstance").
calls("LogReplayer", "open", "GameState", "getInstance").
calls("LogReplayer", "open", "LogReplayEventListener", "logReplayStarted").
method("LogReplayer", "isReplaying", 3, 1).
method("LogReplayer", "isPaused", 3, 1).
method("LogReplayer", "setPlaybackSpeed", 5, 2).
calls("LogReplayer", "setPlaybackSpeed", "LogReplayTask", "setPlaybackSpeed").
method("LogReplayer", "close", 12, 3).
calls("LogReplayer", "close", "ScheduledFuture", "cancel").
calls("LogReplayer", "close", "LogReplayTask", "close").
calls("LogReplayer", "close", "LogReplayEventListener", "logReplayEnded").
calls("LogReplayer", "close", "SPLStandardMessageReceiverTCM", "getInstance").
calls("LogReplayer", "close", "GameState", "getInstance").
method("LogReplayer", "addListener", 3, 1).
calls("LogReplayer", "addListener", "EventListenerList", "add").
method("LogReplayer", "removeListener", 3, 1).
calls("LogReplayer", "removeListener", "EventListenerList", "remove").

# GameController/src/teamcomm/data/event/GameControlDataEventListener.java


# GameController/src/teamcomm/data/event/RobotStateEvent.java

class("RobotStateEvent").

# GameController/src/teamcomm/data/event/TeamEvent.java

class("TeamEvent").

# GameController/src/teamcomm/data/event/TeamEventListener.java


# GameController/src/teamcomm/data/event/GameControlDataTimeoutEvent.java

class("GameControlDataTimeoutEvent").

# GameController/src/teamcomm/data/event/RobotStateEventListener.java


# GameController/src/teamcomm/data/event/GameControlDataEvent.java

class("GameControlDataEvent").

# GameController/src/teamcomm/gui/drawings/TextureLoader.java

class("TextureLoader").
method("TextureLoader", "getInstance", 3, 1).
method("TextureLoader", "loadTexture", 36, 5).
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
calls("TextureLoader", "loadTexture", "GL", "glTexImage2D").
calls("TextureLoader", "loadTexture", "GL", "glBindTexture").
calls("TextureLoader", "loadTexture", "Map", "put").

# GameController/src/teamcomm/gui/drawings/Static.java

class("Static").
method("Static", "draw", 1, 1).

# GameController/src/teamcomm/gui/drawings/Drawing.java

class("Drawing").
method("Drawing", "setActive", 4, 1).
calls("Drawing", "setActive", "Config", "getInstance").
method("Drawing", "isActive", 3, 1).
method("Drawing", "getTeamNumber", 3, 1).
method("Drawing", "setTeamNumber", 3, 1).
method("Drawing", "initialize", 12, 3).
calls("Drawing", "initialize", "Drawing", "init").
calls("Drawing", "initialize", "Drawing", "setActive").
calls("Drawing", "initialize", "Drawing", "setActive").
method("Drawing", "init", 1, 1).
method("Drawing", "hasAlpha", 1, 1).
method("Drawing", "getPriority", 1, 1).

# GameController/src/teamcomm/gui/drawings/RoSi2Loader.java

class("RoSi2Loader").
method("RoSi2Loader", "getInstance", 3, 1).
method("RoSi2Loader", "cacheModels", 3, 1).
calls("RoSi2Loader", "cacheModels", "RoSi2Loader", "cacheModels").
method("RoSi2Loader", "cacheModels", 27, 8).
calls("RoSi2Loader", "cacheModels", "Iterator", "hasNext").
calls("RoSi2Loader", "cacheModels", "Map", "containsKey").
calls("RoSi2Loader", "cacheModels", "Iterator", "remove").
calls("RoSi2Loader", "cacheModels", "Set", "isEmpty").
calls("RoSi2Loader", "cacheModels", "Map", "put").
calls("RoSi2Loader", "cacheModels", "Map", "put").
calls("RoSi2Loader", "cacheModels", "Set", "addAll").
method("RoSi2Loader", "loadModel", 3, 1).
calls("RoSi2Loader", "loadModel", "RoSi2Loader", "loadModel").
method("RoSi2Loader", "loadModel", 36, 8).
calls("RoSi2Loader", "loadModel", "Map", "put").
calls("RoSi2Loader", "loadModel", "Map", "put").
calls("RoSi2Loader", "loadModel", "Map", "put").
calls("RoSi2Loader", "loadModel", "Map", "put").
calls("RoSi2Loader", "loadModel", "Set", "add").
calls("RoSi2Loader", "loadModel", "Map", "put").
calls("RoSi2Loader", "loadModel", "JOptionPane", "showMessageDialog").
calls("RoSi2Loader", "loadModel", "System", "exit").
calls("RoSi2Loader", "loadModel", "Set", "clear").
calls("RoSi2Loader", "loadModel", "Map", "get").

# GameController/src/teamcomm/gui/drawings/PerPlayer.java

class("PerPlayer").
method("PerPlayer", "draw", 1, 1).

# GameController/src/teamcomm/gui/drawings/RoSi2Element.java

class("RoSi2Element").
method("RoSi2Element", "getName", 3, 1).
method("RoSi2Element", "findElement", 14, 4).
calls("RoSi2Element", "findElement", "LinkedList", "isEmpty").
calls("RoSi2Element", "findElement", "String", "equals").
calls("RoSi2Element", "findElement", "LinkedList", "addAll").
method("RoSi2Element", "findElements", 19, 5).
calls("RoSi2Element", "findElements", "Collection", "isEmpty").
calls("RoSi2Element", "findElements", "LinkedList", "isEmpty").
calls("RoSi2Element", "findElements", "List", "add").
calls("RoSi2Element", "findElements", "Set", "remove").
calls("RoSi2Element", "findElements", "Set", "isEmpty").
calls("RoSi2Element", "findElements", "LinkedList", "addAll").
method("RoSi2Element", "instantiate", 3, 1).
calls("RoSi2Element", "instantiate", "RoSi2Element", "instantiate").
method("RoSi2Element", "instantiate", 3, 1).
calls("RoSi2Element", "instantiate", "RoSi2Element", "instantiate").
method("RoSi2Element", "instantiate", 257, 55).
calls("RoSi2Element", "instantiate", "Map", "containsKey").
calls("RoSi2Element", "instantiate", "Map", "put").
calls("RoSi2Element", "instantiate", "List", "add").
calls("RoSi2Element", "instantiate", "RoSi2Element", "instantiate").
calls("RoSi2Element", "instantiate", "DecimalFormat", "setGroupingUsed").
calls("RoSi2Element", "instantiate", "DecimalFormatSymbols", "setDecimalSeparator").
calls("RoSi2Element", "instantiate", "DecimalFormat", "setDecimalFormatSymbols").
calls("RoSi2Element", "instantiate", "Character", "isWhitespace").
calls("RoSi2Element", "instantiate", "Character", "isWhitespace").
calls("RoSi2Element", "instantiate", "ArrayList", "add").
calls("RoSi2Element", "instantiate", "ArrayList", "trimToSize").
calls("RoSi2Element", "instantiate", "DecimalFormat", "setGroupingUsed").
calls("RoSi2Element", "instantiate", "DecimalFormatSymbols", "setDecimalSeparator").
calls("RoSi2Element", "instantiate", "DecimalFormat", "setDecimalFormatSymbols").
calls("RoSi2Element", "instantiate", "Character", "isWhitespace").
calls("RoSi2Element", "instantiate", "Character", "isWhitespace").
calls("RoSi2Element", "instantiate", "ArrayList", "add").
calls("RoSi2Element", "instantiate", "ArrayList", "trimToSize").
calls("RoSi2Element", "instantiate", "DecimalFormat", "setGroupingUsed").
calls("RoSi2Element", "instantiate", "DecimalFormatSymbols", "setDecimalSeparator").
calls("RoSi2Element", "instantiate", "DecimalFormat", "setDecimalFormatSymbols").
calls("RoSi2Element", "instantiate", "Character", "isWhitespace").
calls("RoSi2Element", "instantiate", "Character", "isWhitespace").
calls("RoSi2Element", "instantiate", "ArrayList", "add").
calls("RoSi2Element", "instantiate", "ArrayList", "trimToSize").
calls("RoSi2Element", "instantiate", "DecimalFormat", "setParseIntegerOnly").
calls("RoSi2Element", "instantiate", "Character", "isWhitespace").
calls("RoSi2Element", "instantiate", "Character", "isWhitespace").
calls("RoSi2Element", "instantiate", "LinkedList", "add").
method("RoSi2Element", "getColor", 53, 12).
calls("RoSi2Element", "getColor", "String", "length").
calls("RoSi2Element", "getColor", "String", "startsWith").
calls("RoSi2Element", "getColor", "String", "startsWith").
method("RoSi2Element", "hexDigit", 10, 3).
method("RoSi2Element", "getLength", 27, 7).
calls("RoSi2Element", "getLength", "RoSi2Element", "getFloatAndUnit").
method("RoSi2Element", "getUnit", 19, 2).
method("RoSi2Element", "getAngle", 15, 4).
calls("RoSi2Element", "getAngle", "RoSi2Element", "getFloatAndUnit").
method("RoSi2Element", "getFloatAndUnit", 19, 3).
calls("RoSi2Element", "getFloatAndUnit", "DecimalFormat", "setGroupingUsed").
calls("RoSi2Element", "getFloatAndUnit", "DecimalFormatSymbols", "setDecimalSeparator").
calls("RoSi2Element", "getFloatAndUnit", "DecimalFormat", "setDecimalFormatSymbols").
method("RoSi2Element", "getAttributeValue", 52, 12).
calls("RoSi2Element", "getAttributeValue", "StringBuilder", "append").
calls("RoSi2Element", "getAttributeValue", "StringBuilder", "append").
calls("RoSi2Element", "getAttributeValue", "StringBuilder", "append").
calls("RoSi2Element", "getAttributeValue", "StringBuilder", "append").
calls("RoSi2Element", "getAttributeValue", "StringBuilder", "toString").
method("RoSi2Element", "parseFile", 75, 20).
calls("RoSi2Element", "parseFile", "XMLInputFactory", "setProperty").
calls("RoSi2Element", "parseFile", "XMLInputFactory", "setProperty").
calls("RoSi2Element", "parseFile", "Deque", "addFirst").
calls("RoSi2Element", "parseFile", "Deque", "addFirst").
calls("RoSi2Element", "parseFile", "Deque", "isEmpty").
calls("RoSi2Element", "parseFile", "Deque", "getFirst").
calls("RoSi2Element", "parseFile", "XMLEvent", "isStartElement").
calls("RoSi2Element", "parseFile", "String", "equals").
calls("RoSi2Element", "parseFile", "String", "equals").
calls("RoSi2Element", "parseFile", "Deque", "addFirst").
calls("RoSi2Element", "parseFile", "Deque", "getFirst").
calls("RoSi2Element", "parseFile", "String", "equals").
calls("RoSi2Element", "parseFile", "Deque", "getFirst").
calls("RoSi2Element", "parseFile", "Deque", "getFirst").
calls("RoSi2Element", "parseFile", "Map", "put").
calls("RoSi2Element", "parseFile", "Deque", "getFirst").
calls("RoSi2Element", "parseFile", "Deque", "addFirst").
calls("RoSi2Element", "parseFile", "XMLEvent", "isAttribute").
calls("RoSi2Element", "parseFile", "Deque", "getFirst").
calls("RoSi2Element", "parseFile", "XMLEvent", "isCharacters").
calls("RoSi2Element", "parseFile", "Characters", "isWhiteSpace").
calls("RoSi2Element", "parseFile", "Deque", "getFirst").
calls("RoSi2Element", "parseFile", "XMLEvent", "isEndElement").
calls("RoSi2Element", "parseFile", "String", "equals").
calls("RoSi2Element", "parseFile", "Deque", "removeFirst").
calls("RoSi2Element", "parseFile", "Deque", "pollFirst").
calls("RoSi2Element", "parseFile", "cur.tag", "equals").
calls("RoSi2Element", "parseFile", "Deque", "getFirst").
method("RoSi2Element", "getXmlAttribute", 10, 3).
calls("RoSi2Element", "getXmlAttribute", "Attribute", "getValue").

# GameController/src/teamcomm/gui/drawings/Image.java

class("Image").
method("Image", "drawImage", 4, 1).
calls("Image", "drawImage", "Image", "drawImage").
method("Image", "drawImage", 3, 1).
calls("Image", "drawImage", "Image", "drawImage").
method("Image", "drawImage2D", 3, 1).
calls("Image", "drawImage2D", "Image", "drawImage").
method("Image", "drawImage2DCover", 3, 1).
calls("Image", "drawImage2DCover", "Image", "drawImage2D").
method("Image", "drawImage2DContain", 5, 1).
calls("Image", "drawImage2DContain", "Image", "drawImage2D").
method("Image", "drawImage", 27, 3).
calls("Image", "drawImage", "GL2", "glColorMaterial").
calls("Image", "drawImage", "GL2", "glMaterialfv").
calls("Image", "drawImage", "GL2", "glMaterialf").
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
method("Text", "drawText", 3, 1).
calls("Text", "drawText", "Text", "drawText").
method("Text", "drawText", 10, 2).
calls("Text", "drawText", "TextRenderer", "begin3DRendering").
calls("Text", "drawText", "TextRenderer", "setColor").
calls("Text", "drawText", "TextRenderer", "draw3D").
calls("Text", "drawText", "TextRenderer", "end3DRendering").

# GameController/src/teamcomm/gui/drawings/common/Field.java

class("Field").
method("Field", "init", 3, 1).
calls("Field", "init", "RoSi2Loader", "getInstance").
method("Field", "draw", 5, 1).
calls("Field", "draw", "GL2", "glDepthFunc").
calls("Field", "draw", "GL2", "glCallList").
calls("Field", "draw", "GL2", "glDepthFunc").
method("Field", "hasAlpha", 3, 1).
method("Field", "getPriority", 3, 1).

# GameController/src/teamcomm/gui/drawings/common/PlayerNumber.java

class("PlayerNumber").
method("PlayerNumber", "draw", 14, 3).
calls("PlayerNumber", "draw", "GL2", "glPushMatrix").
calls("PlayerNumber", "draw", "GL2", "glTranslatef").
calls("PlayerNumber", "draw", "GL2", "glTranslatef").
calls("PlayerNumber", "draw", "Camera", "turnTowardsCamera").
calls("PlayerNumber", "draw", "Text", "drawText").
calls("PlayerNumber", "draw", "GL2", "glPopMatrix").
method("PlayerNumber", "hasAlpha", 3, 1).
method("PlayerNumber", "getPriority", 3, 1).

# GameController/src/teamcomm/gui/drawings/common/GameControllerInfo.java

class("GameControllerInfo").
method("GameControllerInfo", "draw", 69, 5).
calls("GameControllerInfo", "draw", "GL2", "glPushMatrix").
calls("GameControllerInfo", "draw", "GL2", "glTranslatef").
calls("GameControllerInfo", "draw", "Camera", "turnTowardsCamera").
calls("GameControllerInfo", "draw", "Text", "drawText").
calls("GameControllerInfo", "draw", "Text", "drawText").
calls("GameControllerInfo", "draw", "Text", "drawText").
calls("GameControllerInfo", "draw", "Text", "drawText").
calls("GameControllerInfo", "draw", "Text", "drawText").
calls("GameControllerInfo", "draw", "Text", "drawText").
calls("GameControllerInfo", "draw", "GL2", "glPopMatrix").
method("GameControllerInfo", "getColor", 6, 2).
method("GameControllerInfo", "hasAlpha", 3, 1).
method("GameControllerInfo", "getPriority", 3, 1).

# GameController/src/teamcomm/gui/drawings/common/Player.java

class("Player").
method("Player", "getModelName", 25, 1).
method("Player", "init", 3, 1).
calls("Player", "init", "RoSi2Loader", "getInstance").
method("Player", "draw", 19, 4).
calls("Player", "draw", "GL2", "glPushMatrix").
calls("Player", "draw", "GL2", "glTranslatef").
calls("Player", "draw", "GL2", "glRotatef").
calls("Player", "draw", "GL2", "glTranslatef").
calls("Player", "draw", "GL2", "glRotatef").
calls("Player", "draw", "GL2", "glTranslatef").
calls("Player", "draw", "GL2", "glRotatef").
calls("Player", "draw", "GL2", "glCallList").
calls("Player", "draw", "GL2", "glPopMatrix").
method("Player", "hasAlpha", 3, 1).
method("Player", "getPriority", 3, 1).

# GameController/src/teamcomm/gui/drawings/common/FieldSmall.java

class("FieldSmall").
method("FieldSmall", "init", 4, 1).
calls("FieldSmall", "init", "RoSi2Loader", "getInstance").
calls("FieldSmall", "init", "FieldSmall", "setActive").
method("FieldSmall", "draw", 5, 1).
calls("FieldSmall", "draw", "GL2", "glDepthFunc").
calls("FieldSmall", "draw", "GL2", "glCallList").
calls("FieldSmall", "draw", "GL2", "glDepthFunc").
method("FieldSmall", "hasAlpha", 3, 1).
method("FieldSmall", "getPriority", 3, 1).

# GameController/src/teamcomm/gui/drawings/common/PlayerTarget.java

class("PlayerTarget").
method("PlayerTarget", "draw", 42, 3).
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
method("PlayerTarget", "hasAlpha", 3, 1).
method("PlayerTarget", "getPriority", 3, 1).

# GameController/src/teamcomm/gui/drawings/common/Ball.java

class("Ball").
method("Ball", "init", 3, 1).
calls("Ball", "init", "RoSi2Loader", "getInstance").
method("Ball", "draw", 42, 3).
calls("Ball", "draw", "GL2", "glPushMatrix").
calls("Ball", "draw", "GL2", "glTranslatef").
calls("Ball", "draw", "GL2", "glRotatef").
calls("Ball", "draw", "GL2", "glTranslatef").
calls("Ball", "draw", "GL2", "glCallList").
calls("Ball", "draw", "GL2", "glBegin").
calls("Ball", "draw", "GL2", "glColor3f").
calls("Ball", "draw", "GL2", "glNormal3f").
calls("Ball", "draw", "GL2", "glVertex3f").
calls("Ball", "draw", "GL2", "glVertex3f").
calls("Ball", "draw", "GL2", "glEnd").
calls("Ball", "draw", "GL2", "glTranslatef").
calls("Ball", "draw", "GL2", "glTranslatef").
calls("Ball", "draw", "GL2", "glRotatef").
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
method("Ball", "hasAlpha", 3, 1).
method("Ball", "getPriority", 3, 1).

# GameController/src/controller/ui/StartInput.java

class("StartInput").
method("StartInput", "showAvailableTeams", 12, 3).
calls("StartInput", "showAvailableTeams", "StartInput", "setTeamIcon").
method("StartInput", "getShortTeams", 17, 5).
calls("StartInput", "getShortTeams", "Arrays", "sort").
method("StartInput", "setTeamIcon", 18, 3).
calls("StartInput", "setTeamIcon", "Graphics", "drawImage").
calls("StartInput", "setTeamIcon", "Graphics", "dispose").
method("StartInput", "startEnabling", 3, 1).
calls("StartInput", "startEnabling", "JButton", "setEnabled").
method("StartInput", "getImage", 14, 4).
calls("StartInput", "getImage", "HashMap", "put").
calls("StartInput", "getImage", "HashMap", "get").
method("StartInput", "switchTeamColor", 6, 1).
calls("StartInput", "switchTeamColor", "StartInput", "updateTeamColorIndicator").
method("StartInput", "updateTeamColorIndicator", 4, 1).
method("StartInput", "reloadTeamColor", 23, 6).
calls("StartInput", "reloadTeamColor", "StartInput", "switchTeamColor").
calls("StartInput", "reloadTeamColor", "StartInput", "updateTeamColorIndicator").
calls("StartInput", "reloadTeamColor", "StartInput", "updateTeamColorIndicator").
method("StartInput", "updateBackgrounds", 5, 2).
method("StartInput", "fromColorName", 24, 1).

# GameController/src/controller/ui/GCGUI.java


# GameController/src/controller/ui/BackgroundImage.java

class("BackgroundImage").
method("BackgroundImage", "horizontalflip", 9, 1).
calls("BackgroundImage", "horizontalflip", "Graphics2D", "drawImage").
calls("BackgroundImage", "horizontalflip", "Graphics2D", "dispose").

# GameController/src/controller/ui/GUI.java

class("GUI").
method("GUI", "update", 24, 3).
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
method("GUI", "paint", 4, 1).
calls("GUI", "paint", "GUI", "updateFonts").
method("GUI", "updateClock", 28, 5).
calls("GUI", "updateClock", "JLabel", "setText").
calls("GUI", "updateClock", "JLabel", "setText").
calls("GUI", "updateClock", "JLabel", "setForeground").
calls("GUI", "updateClock", "JLabel", "setText").
calls("GUI", "updateClock", "JLabel", "setForeground").
calls("GUI", "updateClock", "JLabel", "setText").
calls("GUI", "updateClock", "JLabel", "setForeground").
calls("GUI", "updateClock", "ActionBoard.clock", "isClockRunning").
calls("GUI", "updateClock", "ImageButton", "setImage").
calls("GUI", "updateClock", "ImageButton", "setVisible").
calls("GUI", "updateClock", "ImageButton", "setVisible").
calls("GUI", "updateClock", "ImageButton", "setVisible").
method("GUI", "updateHalf", 18, 4).
calls("GUI", "updateHalf", "JToggleButton", "setEnabled").
calls("GUI", "updateHalf", "JToggleButton", "setEnabled").
calls("GUI", "updateHalf", "JToggleButton", "setEnabled").
calls("GUI", "updateHalf", "JToggleButton", "setEnabled").
calls("GUI", "updateHalf", "JToggleButton", "setEnabled").
calls("GUI", "updateHalf", "JToggleButton", "setSelected").
calls("GUI", "updateHalf", "JToggleButton", "setSelected").
calls("GUI", "updateHalf", "JToggleButton", "setSelected").
calls("GUI", "updateHalf", "JToggleButton", "setSelected").
calls("GUI", "updateHalf", "JToggleButton", "setSelected").
method("GUI", "updateColor", 9, 3).
method("GUI", "updateState", 25, 1).
calls("GUI", "updateState", "JToggleButton", "setEnabled").
calls("GUI", "updateState", "JToggleButton", "setEnabled").
calls("GUI", "updateState", "JToggleButton", "setEnabled").
calls("GUI", "updateState", "JToggleButton", "setEnabled").
calls("GUI", "updateState", "JToggleButton", "setEnabled").
calls("GUI", "updateState", "JToggleButton", "setSelected").
calls("GUI", "updateState", "JToggleButton", "setSelected").
calls("GUI", "updateState", "JToggleButton", "setSelected").
calls("GUI", "updateState", "JToggleButton", "setSelected").
calls("GUI", "updateState", "JToggleButton", "setSelected").
calls("GUI", "updateState", "GUI", "highlight").
method("GUI", "updateGoal", 6, 2).
method("GUI", "updateKickoff", 14, 4).
method("GUI", "updatePushes", 12, 4).
method("GUI", "updateRobots", 97, 22).
calls("GUI", "updateRobots", "GUI", "highlight").
calls("GUI", "updateRobots", "GUI", "highlight").
calls("GUI", "updateRobots", "GUI", "highlight").
calls("GUI", "updateRobots", "GUI", "highlight").
calls("GUI", "updateRobots", "GUI", "highlight").
calls("GUI", "updateRobots", "GUI", "highlight").
calls("GUI", "updateRobots", "GUI", "highlight").
method("GUI", "updateTimeOut", 12, 3).
calls("GUI", "updateTimeOut", "GUI", "highlight").
calls("GUI", "updateTimeOut", "GUI", "highlight").
method("GUI", "updateRefereeTimeout", 4, 1).
calls("GUI", "updateRefereeTimeout", "JToggleButton", "setSelected").
calls("GUI", "updateRefereeTimeout", "JToggleButton", "setEnabled").
method("GUI", "updateGlobalStuck", 10, 3).
method("GUI", "updateDropBall", 3, 1).
calls("GUI", "updateDropBall", "JButton", "setEnabled").
method("GUI", "updateOut", 4, 2).
method("GUI", "updatePenaltiesSPL", 36, 5).
method("GUI", "updatePenaltiesHL", 17, 1).
method("GUI", "updateUndo", 19, 4).
calls("GUI", "updateUndo", "JButton", "setVisible").
method("GUI", "updateFonts", 53, 10).
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
method("GUI", "highlight", 7, 2).
calls("GUI", "highlight", "AbstractButton", "setBackground").
calls("GUI", "highlight", "AbstractButton", "setOpaque").
calls("GUI", "highlight", "AbstractButton", "setBorderPainted").
method("GUI", "formatTime", 5, 1).

# GameController/src/controller/ui/KeyboardListener.java

class("KeyboardListener").
method("KeyboardListener", "dispatchKeyEvent", 15, 4).
calls("KeyboardListener", "dispatchKeyEvent", "KeyboardListener", "pressed").
method("KeyboardListener", "pressed", 104, 12).
calls("KeyboardListener", "pressed", "GCAction", "actionPerformed").

# GameController/src/controller/net/SPLCoachMessageReceiver.java

class("SPLCoachMessageReceiver").
method("SPLCoachMessageReceiver", "getInstance", 9, 3).
method("SPLCoachMessageReceiver", "run", 16, 5).
calls("SPLCoachMessageReceiver", "run", "SPLCoachMessageReceiver", "isInterrupted").
calls("SPLCoachMessageReceiver", "run", "DatagramSocket", "receive").
calls("SPLCoachMessageReceiver", "run", "ByteBuffer", "rewind").
calls("SPLCoachMessageReceiver", "run", "SPLCoachMessage", "fromByteArray").
calls("SPLCoachMessageReceiver", "run", "Log", "error").
calls("SPLCoachMessageReceiver", "run", "DatagramSocket", "close").

# GameController/src/controller/net/RobotOnlineStatus.java


# GameController/src/controller/net/RobotWatcher.java

class("RobotWatcher").
method("RobotWatcher", "update", 27, 7).
method("RobotWatcher", "updateRobotOnlineStatus", 24, 8).
method("RobotWatcher", "updateCoach", 3, 1).

# GameController/src/controller/net/TrueDataSender.java

class("TrueDataSender").
method("TrueDataSender", "initialize", 7, 2).
method("TrueDataSender", "getInstance", 7, 2).
method("TrueDataSender", "putOnBlacklist", 9, 2).
calls("TrueDataSender", "putOnBlacklist", "Set", "add").
calls("TrueDataSender", "putOnBlacklist", "Set", "contains").
calls("TrueDataSender", "putOnBlacklist", "Set", "remove").
calls("TrueDataSender", "putOnBlacklist", "Log", "error").
method("TrueDataSender", "send", 5, 1).
method("TrueDataSender", "run", 30, 7).
calls("TrueDataSender", "run", "TrueDataRequestReceiver", "start").
calls("TrueDataSender", "run", "TrueDataSender", "isInterrupted").
calls("TrueDataSender", "run", "AdvancedData", "updateTimes").
calls("TrueDataSender", "run", "teamcomm.net.logging.Logger", "getInstance").
calls("TrueDataSender", "run", "DatagramSocket", "send").
calls("TrueDataSender", "run", "Log", "error").
calls("TrueDataSender", "run", "Thread", "sleep").
calls("TrueDataSender", "run", "TrueDataSender", "interrupt").
calls("TrueDataSender", "run", "TrueDataRequestReceiver", "interrupt").
calls("TrueDataSender", "run", "DatagramSocket", "close").
calls("TrueDataSender", "run", "TrueDataRequestReceiver", "join").

# GameController/src/controller/net/GameControlReturnDataReceiver.java

class("GameControlReturnDataReceiver").
method("GameControlReturnDataReceiver", "initialize", 7, 2).
method("GameControlReturnDataReceiver", "getInstance", 7, 2).
method("GameControlReturnDataReceiver", "run", 17, 5).
calls("GameControlReturnDataReceiver", "run", "GameControlReturnDataReceiver", "isInterrupted").
calls("GameControlReturnDataReceiver", "run", "DatagramSocket", "receive").
calls("GameControlReturnDataReceiver", "run", "TrueDataSender", "getInstance").
calls("GameControlReturnDataReceiver", "run", "ByteBuffer", "rewind").
calls("GameControlReturnDataReceiver", "run", "GameControlReturnData", "fromByteArray").
calls("GameControlReturnDataReceiver", "run", "RobotWatcher", "update").
calls("GameControlReturnDataReceiver", "run", "Log", "error").
calls("GameControlReturnDataReceiver", "run", "DatagramSocket", "close").

# GameController/src/controller/net/Sender.java

class("Sender").
method("Sender", "initialize", 7, 2).
method("Sender", "getInstance", 7, 2).
method("Sender", "send", 35, 8).
calls("Sender", "send", "StringBuilder", "append").
calls("Sender", "send", "StringBuilder", "append").
calls("Sender", "send", "StringBuilder", "append").
calls("Sender", "send", "StringBuilder", "append").
calls("Sender", "send", "teamcomm.net.logging.Logger", "getInstance").
calls("Sender", "send", "teamcomm.net.logging.Logger", "getInstance").
calls("Sender", "send", "teamcomm.net.logging.Logger", "getInstance").
calls("Sender", "send", "TrueDataSender", "getInstance").
method("Sender", "run", 33, 8).
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
method("GCAction", "actionPerformed", 3, 1).
calls("GCAction", "actionPerformed", "EventHandler", "getInstance").
method("GCAction", "perform", 1, 1).
method("GCAction", "performOn", 1, 1).
method("GCAction", "isLegal", 1, 1).

# GameController/src/controller/action/ActionBoard.java

class("ActionBoard").
method("ActionBoard", "init", 57, 7).

# GameController/src/controller/action/ActionType.java


# GameController/src/controller/action/ui/DropBall.java

class("DropBall").
method("DropBall", "perform", 5, 1).
calls("DropBall", "perform", "Log", "setNextMessage").
calls("DropBall", "perform", "ActionBoard.ready", "perform").
method("DropBall", "isLegal", 3, 1).

# GameController/src/controller/action/ui/Testmode.java

class("Testmode").
method("Testmode", "perform", 4, 1).
calls("Testmode", "perform", "Log", "toFile").
method("Testmode", "isLegal", 3, 1).

# GameController/src/controller/action/ui/RefereeTimeout.java

class("RefereeTimeout").
method("RefereeTimeout", "perform", 25, 5).
calls("RefereeTimeout", "perform", "Log", "setNextMessage").
calls("RefereeTimeout", "perform", "AdvancedData", "addTimeInCurrentState").
calls("RefereeTimeout", "perform", "ActionBoard.initial", "perform").
calls("RefereeTimeout", "perform", "Log", "setNextMessage").
calls("RefereeTimeout", "perform", "ActionBoard.ready", "perform").
method("RefereeTimeout", "isLegal", 3, 1).

# GameController/src/controller/action/ui/ClockPause.java

class("ClockPause").
method("ClockPause", "perform", 21, 4).
calls("ClockPause", "perform", "ActionBoard.clock", "isClockRunning").
calls("ClockPause", "perform", "Log", "state").
calls("ClockPause", "perform", "Log", "state").
method("ClockPause", "isLegal", 3, 1).

# GameController/src/controller/action/ui/IncGameClock.java

class("IncGameClock").
method("IncGameClock", "perform", 4, 1).
calls("IncGameClock", "perform", "Log", "state").
method("IncGameClock", "isLegal", 3, 1).

# GameController/src/controller/action/ui/Undo.java

class("Undo").
method("Undo", "perform", 8, 2).
calls("Undo", "perform", "Log", "toFile").
method("Undo", "isLegal", 3, 1).

# GameController/src/controller/action/ui/Goal.java

class("Goal").
method("Goal", "perform", 23, 4).
calls("Goal", "perform", "Log", "setNextMessage").
calls("Goal", "perform", "ActionBoard.secondHalf", "perform").
calls("Goal", "perform", "ActionBoard.finish", "perform").
calls("Goal", "perform", "ActionBoard.ready", "perform").
calls("Goal", "perform", "Log", "setNextMessage").
calls("Goal", "perform", "ActionBoard.finish", "perform").
calls("Goal", "perform", "Log", "state").
method("Goal", "isLegal", 3, 1).

# GameController/src/controller/action/ui/KickOff.java

class("KickOff").
method("KickOff", "perform", 10, 3).
calls("KickOff", "perform", "Log", "state").
method("KickOff", "isLegal", 3, 1).

# GameController/src/controller/action/ui/Quit.java

class("Quit").
method("Quit", "perform", 5, 2).
calls("Quit", "perform", "Clock", "getInstance").
method("Quit", "isLegal", 3, 1).

# GameController/src/controller/action/ui/TimeOut.java

class("TimeOut").
method("TimeOut", "perform", 27, 5).
calls("TimeOut", "perform", "Log", "setNextMessage").
calls("TimeOut", "perform", "ActionBoard.initial", "perform").
calls("TimeOut", "perform", "Log", "setNextMessage").
calls("TimeOut", "perform", "ActionBoard.ready", "perform").
method("TimeOut", "isLegal", 3, 1).

# GameController/src/controller/action/ui/Out.java

class("Out").
method("Out", "perform", 5, 1).
calls("Out", "perform", "Log", "state").
method("Out", "isLegal", 3, 1).

# GameController/src/controller/action/ui/CancelUndo.java

class("CancelUndo").
method("CancelUndo", "perform", 1, 1).
method("CancelUndo", "isLegal", 3, 1).

# GameController/src/controller/action/ui/ClockReset.java

class("ClockReset").
method("ClockReset", "perform", 7, 1).
calls("ClockReset", "perform", "Log", "state").
method("ClockReset", "isLegal", 3, 1).

# GameController/src/controller/action/ui/GlobalStuck.java

class("GlobalStuck").
method("GlobalStuck", "perform", 6, 1).
calls("GlobalStuck", "perform", "Log", "setNextMessage").
calls("GlobalStuck", "perform", "ActionBoard.ready", "perform").
method("GlobalStuck", "isLegal", 3, 1).

# GameController/src/controller/action/ui/Robot.java

class("Robot").
method("Robot", "perform", 42, 9).
calls("Robot", "perform", "ArrayList", "isEmpty").
calls("Robot", "perform", "ArrayList", "remove").
calls("Robot", "perform", "Log", "state").
calls("Robot", "perform", "EventHandler", "getInstance").
calls("Robot", "perform", "AdvancedData", "addToPenaltyQueue").
calls("Robot", "perform", "Log", "state").
calls("Robot", "perform", "Log", "state").
method("Robot", "isLegal", 3, 1).
method("Robot", "isCoach", 3, 1).

# GameController/src/controller/action/net/SPLCoachMessageReceived.java

class("SPLCoachMessageReceived").
method("SPLCoachMessageReceived", "perform", 8, 2).
calls("SPLCoachMessageReceived", "perform", "RobotWatcher", "updateCoach").
calls("SPLCoachMessageReceived", "perform", "data.splCoachMessageQueue", "add").
method("SPLCoachMessageReceived", "isLegal", 3, 1).

# GameController/src/controller/action/net/Manual.java

class("Manual").
method("Manual", "perform", 14, 4).
calls("Manual", "perform", "Log", "state").
calls("Manual", "perform", "Log", "state").
method("Manual", "isLegal", 3, 1).

# GameController/src/controller/action/clock/ClockTick.java

class("ClockTick").
method("ClockTick", "perform", 20, 6).
calls("ClockTick", "perform", "ActionBoard.set", "perform").
calls("ClockTick", "perform", "ActionBoard.secondHalf", "perform").
calls("ClockTick", "perform", "ActionBoard.penaltyShoot", "perform").
calls("ClockTick", "perform", "AdvancedData", "updateCoachMessages").
calls("ClockTick", "perform", "AdvancedData", "updatePenalties").
method("ClockTick", "isLegal", 3, 1).
method("ClockTick", "isClockRunning", 4, 1).

# GameController/src/controller/action/ui/half/PenaltyShoot.java

class("PenaltyShoot").
method("PenaltyShoot", "perform", 13, 3).
calls("PenaltyShoot", "perform", "AdvancedData", "resetPenalties").
calls("PenaltyShoot", "perform", "Log", "state").
method("PenaltyShoot", "isLegal", 3, 1).

# GameController/src/controller/action/ui/half/SecondHalf.java

class("SecondHalf").
method("SecondHalf", "perform", 11, 2).
calls("SecondHalf", "perform", "FirstHalf", "changeSide").
calls("SecondHalf", "perform", "Log", "state").
method("SecondHalf", "isLegal", 3, 1).

# GameController/src/controller/action/ui/half/SecondHalfOvertime.java

class("SecondHalfOvertime").
method("SecondHalfOvertime", "perform", 10, 2).
calls("SecondHalfOvertime", "perform", "FirstHalf", "changeSide").
calls("SecondHalfOvertime", "perform", "Log", "state").
method("SecondHalfOvertime", "isLegal", 3, 1).

# GameController/src/controller/action/ui/half/FirstHalfOvertime.java

class("FirstHalfOvertime").
method("FirstHalfOvertime", "perform", 10, 2).
calls("FirstHalfOvertime", "perform", "FirstHalf", "changeSide").
calls("FirstHalfOvertime", "perform", "Log", "state").
method("FirstHalfOvertime", "isLegal", 3, 1).

# GameController/src/controller/action/ui/half/FirstHalf.java

class("FirstHalf").
method("FirstHalf", "perform", 11, 2).
calls("FirstHalf", "perform", "FirstHalf", "changeSide").
calls("FirstHalf", "perform", "Log", "state").
method("FirstHalf", "isLegal", 3, 1).
method("FirstHalf", "changeSide", 28, 4).
calls("FirstHalf", "changeSide", "AdvancedData", "resetPenalties").

# GameController/src/controller/action/ui/penalty/BallContact.java

class("BallContact").
method("BallContact", "performOn", 6, 1).
calls("BallContact", "performOn", "BallContact", "handleRepeatedPenalty").
calls("BallContact", "performOn", "Log", "state").
method("BallContact", "isLegal", 3, 1).

# GameController/src/controller/action/ui/penalty/MotionInSet.java

class("MotionInSet").
method("MotionInSet", "performOn", 6, 1).
calls("MotionInSet", "performOn", "MotionInSet", "handleRepeatedPenalty").
calls("MotionInSet", "performOn", "Log", "state").
method("MotionInSet", "isLegal", 3, 1).

# GameController/src/controller/action/ui/penalty/CoachMotion.java

class("CoachMotion").
method("CoachMotion", "performOn", 6, 1).
calls("CoachMotion", "performOn", "Log", "state").
method("CoachMotion", "isLegal", 3, 1).

# GameController/src/controller/action/ui/penalty/Substitute.java

class("Substitute").
method("Substitute", "performOn", 9, 2).
calls("Substitute", "performOn", "AdvancedData", "addToPenaltyQueue").
calls("Substitute", "performOn", "Log", "state").
method("Substitute", "isLegal", 3, 1).

# GameController/src/controller/action/ui/penalty/BallManipulation.java

class("BallManipulation").
method("BallManipulation", "performOn", 6, 1).
calls("BallManipulation", "performOn", "BallManipulation", "handleRepeatedPenalty").
calls("BallManipulation", "performOn", "Log", "state").
method("BallManipulation", "isLegal", 3, 1).

# GameController/src/controller/action/ui/penalty/PickUpHL.java

class("PickUpHL").
method("PickUpHL", "performOn", 8, 2).
calls("PickUpHL", "performOn", "PickUpHL", "handleRepeatedPenalty").
calls("PickUpHL", "performOn", "Log", "state").
method("PickUpHL", "isLegal", 3, 1).

# GameController/src/controller/action/ui/penalty/Inactive.java

class("Inactive").
method("Inactive", "performOn", 6, 1).
calls("Inactive", "performOn", "Inactive", "handleRepeatedPenalty").
calls("Inactive", "performOn", "Log", "state").
method("Inactive", "isLegal", 3, 1).

# GameController/src/controller/action/ui/penalty/Pushing.java

class("Pushing").
method("Pushing", "performOn", 7, 1).
calls("Pushing", "performOn", "Pushing", "handleRepeatedPenalty").
calls("Pushing", "performOn", "Log", "state").
method("Pushing", "isLegal", 3, 1).

# GameController/src/controller/action/ui/penalty/ServiceHL.java

class("ServiceHL").
method("ServiceHL", "performOn", 12, 2).
calls("ServiceHL", "performOn", "ServiceHL", "handleRepeatedPenalty").
calls("ServiceHL", "performOn", "Log", "state").
calls("ServiceHL", "performOn", "ServiceHL", "handleRepeatedPenalty").
calls("ServiceHL", "performOn", "Log", "state").

# GameController/src/controller/action/ui/penalty/Defender.java

class("Defender").
method("Defender", "performOn", 6, 1).
calls("Defender", "performOn", "Defender", "handleRepeatedPenalty").
calls("Defender", "performOn", "Log", "state").
method("Defender", "isLegal", 3, 1).

# GameController/src/controller/action/ui/penalty/Defense.java

class("Defense").
method("Defense", "performOn", 6, 1).
calls("Defense", "performOn", "Defense", "handleRepeatedPenalty").
calls("Defense", "performOn", "Log", "state").
method("Defense", "isLegal", 3, 1).

# GameController/src/controller/action/ui/penalty/Penalty.java

class("Penalty").
method("Penalty", "perform", 5, 2).
method("Penalty", "handleRepeatedPenalty", 7, 2).
calls("Penalty", "handleRepeatedPenalty", "Penalty", "containsState").
method("Penalty", "containsState", 10, 4).

# GameController/src/controller/action/ui/penalty/Leaving.java

class("Leaving").
method("Leaving", "performOn", 6, 1).
calls("Leaving", "performOn", "Leaving", "handleRepeatedPenalty").
calls("Leaving", "performOn", "Log", "state").
method("Leaving", "isLegal", 3, 1).

# GameController/src/controller/action/ui/penalty/KickOffGoal.java

class("KickOffGoal").
method("KickOffGoal", "performOn", 6, 1).
calls("KickOffGoal", "performOn", "KickOffGoal", "handleRepeatedPenalty").
calls("KickOffGoal", "performOn", "Log", "state").
method("KickOffGoal", "isLegal", 3, 1).

# GameController/src/controller/action/ui/penalty/PickUp.java

class("PickUp").
method("PickUp", "performOn", 8, 2).
calls("PickUp", "performOn", "Log", "state").
method("PickUp", "isLegal", 3, 1).

# GameController/src/controller/action/ui/penalty/Attack.java

class("Attack").
method("Attack", "performOn", 6, 1).
calls("Attack", "performOn", "Attack", "handleRepeatedPenalty").
calls("Attack", "performOn", "Log", "state").
method("Attack", "isLegal", 3, 1).

# GameController/src/controller/action/ui/state/Set.java

class("Set").
method("Set", "perform", 39, 12).
calls("Set", "perform", "AdvancedData", "resetPenaltyTimes").
calls("Set", "perform", "AdvancedData", "addTimeInCurrentState").
calls("Set", "perform", "FirstHalf", "changeSide").
calls("Set", "perform", "AdvancedData", "addToPenaltyQueue").
calls("Set", "perform", "Log", "state").
method("Set", "isLegal", 3, 1).

# GameController/src/controller/action/ui/state/Play.java

class("Play").
method("Play", "perform", 11, 3).
calls("Play", "perform", "AdvancedData", "addTimeInCurrentState").
calls("Play", "perform", "Log", "state").
method("Play", "isLegal", 3, 1).
method("Play", "bothTeamsHavePlayers", 9, 3).

# GameController/src/controller/action/ui/state/Initial.java

class("Initial").
method("Initial", "perform", 11, 3).
calls("Initial", "perform", "AdvancedData", "resetPenaltyTimes").
calls("Initial", "perform", "Log", "state").
method("Initial", "isLegal", 3, 1).

# GameController/src/controller/action/ui/state/Finish.java

class("Finish").
method("Finish", "perform", 12, 3).
calls("Finish", "perform", "AdvancedData", "resetPenaltyTimes").
calls("Finish", "perform", "AdvancedData", "addTimeInCurrentState").
calls("Finish", "perform", "Log", "state").
method("Finish", "isLegal", 3, 1).

# GameController/src/controller/action/ui/state/Ready.java

class("Ready").
method("Ready", "perform", 14, 4).
calls("Ready", "perform", "AdvancedData", "resetPenaltyTimes").
calls("Ready", "perform", "AdvancedData", "addTimeInCurrentState").
calls("Ready", "perform", "Log", "state").
method("Ready", "isLegal", 3, 1).

# GameController/src/eventrecorder/data/DataModel.java

class("DataModel").

# GameController/src/eventrecorder/data/LogType.java


# GameController/src/eventrecorder/data/LogEntry.java

class("LogEntry").
method("LogEntry", "set", 5, 1).

# GameController/src/eventrecorder/action/EntryChangeTextAction.java

class("EntryChangeTextAction").
method("EntryChangeTextAction", "executeAction", 4, 1).
method("EntryChangeTextAction", "undoAction", 4, 1).

# GameController/src/eventrecorder/action/ActionHistory.java

class("ActionHistory").
method("ActionHistory", "execute", 11, 3).
calls("ActionHistory", "execute", "Action", "executeAction").
calls("ActionHistory", "execute", "Action", "shouldBeAddedToHistory").
calls("ActionHistory", "execute", "CircularLiFoBuffer", "push").
calls("ActionHistory", "execute", "ActionHistory", "notifyGUI").
calls("ActionHistory", "execute", "System.out", "println").
method("ActionHistory", "undo", 12, 3).
calls("ActionHistory", "undo", "CircularLiFoBuffer", "isEmpty").
calls("ActionHistory", "undo", "System.out", "println").
calls("ActionHistory", "undo", "Action", "undoAction").
calls("ActionHistory", "undo", "ActionHistory", "notifyGUI").
method("ActionHistory", "redo", 12, 3).
calls("ActionHistory", "redo", "CircularLiFoBuffer", "hasNext").
calls("ActionHistory", "redo", "System.out", "println").
calls("ActionHistory", "redo", "Action", "executeAction").
calls("ActionHistory", "redo", "ActionHistory", "notifyGUI").
method("ActionHistory", "notifyGUI", 3, 1).
calls("ActionHistory", "notifyGUI", "EventRecorder.gui", "actionWasExecuted").
method("ActionHistory", "undoPossible", 3, 1).
calls("ActionHistory", "undoPossible", "CircularLiFoBuffer", "isEmpty").
method("ActionHistory", "redoPossible", 3, 1).
calls("ActionHistory", "redoPossible", "CircularLiFoBuffer", "hasNext").

# GameController/src/eventrecorder/action/EntryChangeTimeAction.java

class("EntryChangeTimeAction").
method("EntryChangeTimeAction", "executeAction", 5, 1).
method("EntryChangeTimeAction", "undoAction", 5, 1).

# GameController/src/eventrecorder/action/Action.java

class("Action").
method("Action", "executeAction", 1, 1).
method("Action", "undoAction", 1, 1).
method("Action", "getAffectedLogEntry", 3, 1).
method("Action", "shouldBeAddedToHistory", 3, 1).

# GameController/src/eventrecorder/action/EntryDeleteAction.java

class("EntryDeleteAction").
method("EntryDeleteAction", "executeAction", 4, 1).
method("EntryDeleteAction", "undoAction", 4, 1).
calls("EntryDeleteAction", "undoAction", "EventRecorder.model.logEntries", "add").

# GameController/src/eventrecorder/action/CircularLiFoBuffer.java

class("CircularLiFoBuffer").
method("CircularLiFoBuffer", "get", 3, 1).
method("CircularLiFoBuffer", "push", 11, 3).
method("CircularLiFoBuffer", "peek", 6, 2).
method("CircularLiFoBuffer", "pop", 13, 3).
method("CircularLiFoBuffer", "popForward", 12, 3).
method("CircularLiFoBuffer", "isEmpty", 3, 1).
method("CircularLiFoBuffer", "hasNext", 3, 1).

# GameController/src/eventrecorder/action/EntryTypeChangeAction.java

class("EntryTypeChangeAction").
method("EntryTypeChangeAction", "executeAction", 4, 1).
method("EntryTypeChangeAction", "undoAction", 4, 1).

# GameController/src/eventrecorder/action/EntryCreateAction.java

class("EntryCreateAction").
method("EntryCreateAction", "executeAction", 4, 1).
calls("EntryCreateAction", "executeAction", "EventRecorder.model.logEntries", "add").
method("EntryCreateAction", "undoAction", 7, 2).

# GameController/src/eventrecorder/action/TitleChangeAction.java

class("TitleChangeAction").
method("TitleChangeAction", "executeAction", 5, 1).
method("TitleChangeAction", "undoAction", 5, 1).

# GameController/src/eventrecorder/gui/MainFrame.java

class("MainFrame").
method("MainFrame", "setupShortCuts", 5, 1).
calls("MainFrame", "setupShortCuts", "KeyboardFocusManager", "addKeyEventDispatcher").
method("MainFrame", "updateTimeAndButtons", 25, 4).
calls("MainFrame", "updateTimeAndButtons", "JLabel", "setText").
calls("MainFrame", "updateTimeAndButtons", "JLabel", "revalidate").
calls("MainFrame", "updateTimeAndButtons", "JLabel", "repaint").
calls("MainFrame", "updateTimeAndButtons", "ImageToggleButton", "setActivated").
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
method("MainFrame", "saveBeforeExit", 11, 3).
calls("MainFrame", "saveBeforeExit", "MainFrame", "saveAs").
method("MainFrame", "saveAs", 20, 4).
calls("MainFrame", "saveAs", "JFileChooser", "setSelectedFile").
calls("MainFrame", "saveAs", "JFileChooser", "showSaveDialog").
calls("MainFrame", "saveAs", "BufferedWriter", "write").
calls("MainFrame", "saveAs", "BufferedWriter", "close").
calls("MainFrame", "saveAs", "Preferences", "put").
calls("MainFrame", "saveAs", "JOptionPane", "showMessageDialog").
method("MainFrame", "setUIFont", 9, 3).
calls("MainFrame", "setUIFont", "java", "hasMoreElements").
calls("MainFrame", "setUIFont", "UIManager", "put").
method("MainFrame", "actionWasExecuted", 19, 5).
calls("MainFrame", "actionWasExecuted", "ImageButton", "setEnabled").
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

# GameController/src/eventrecorder/gui/EntryPanel.java

class("EntryPanel").
method("EntryPanel", "getTimeField", 3, 1).
method("EntryPanel", "getTextField", 3, 1).

# GameController/src/eventrecorder/gui/TimeField.java

class("TimeField").
method("TimeField", "makeVisibleInScrollPane", 10, 1).
calls("TimeField", "makeVisibleInScrollPane", "LogEntryTable", "getParent").
calls("TimeField", "makeVisibleInScrollPane", "LogEntryTable", "getParent").
calls("TimeField", "makeVisibleInScrollPane", "JComponent", "scrollRectToVisible").
method("TimeField", "executeChangeAction", 7, 2).
calls("TimeField", "executeChangeAction", "EventRecorder.history", "execute").
method("TimeField", "getLogEntry", 3, 1).

# GameController/src/eventrecorder/gui/ImageToggleButton.java

class("ImageToggleButton").
method("ImageToggleButton", "setActivated", 5, 1).
calls("ImageToggleButton", "setActivated", "ImageToggleButton", "setSelected").
calls("ImageToggleButton", "setActivated", "ImageToggleButton", "setIcon").
method("ImageToggleButton", "isActivated", 3, 1).

# GameController/src/eventrecorder/gui/ImageButton.java

class("ImageButton").
method("ImageButton", "setEnabled", 4, 1).
calls("ImageButton", "setEnabled", "ImageButton", "setIcon").

# GameController/src/eventrecorder/gui/LogEntryTable.java

class("LogEntryTable").
method("LogEntryTable", "createLogEntryTable", 11, 2).
calls("LogEntryTable", "createLogEntryTable", "LogEntryTable", "removeAll").
calls("LogEntryTable", "createLogEntryTable", "EntryPanel", "getTimeField").
calls("LogEntryTable", "createLogEntryTable", "EntryPanel", "getTextField").
calls("LogEntryTable", "createLogEntryTable", "LogEntryTable", "add").
calls("LogEntryTable", "createLogEntryTable", "LogEntryTable", "revalidate").
calls("LogEntryTable", "createLogEntryTable", "LogEntryTable", "repaint").
method("LogEntryTable", "getIdByLogEntry", 7, 3).
method("LogEntryTable", "entryActionWasExecuted", 62, 13).
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
calls("LogEntryTable", "entryActionWasExecuted", "EntryPanel", "getTimeField").
calls("LogEntryTable", "entryActionWasExecuted", "EntryPanel", "getTextField").
calls("LogEntryTable", "entryActionWasExecuted", "LogEntryTable", "add").
calls("LogEntryTable", "entryActionWasExecuted", "LogEntryTable", "createLogEntryTable").
calls("LogEntryTable", "entryActionWasExecuted", "EntryPanel", "getTextField").
calls("LogEntryTable", "entryActionWasExecuted", "EntryPanel", "getTextField").
calls("LogEntryTable", "entryActionWasExecuted", "EntryPanel", "getTextField").
calls("LogEntryTable", "entryActionWasExecuted", "EntryPanel", "getTextField").
calls("LogEntryTable", "entryActionWasExecuted", "LogEntryTable", "createLogEntryTable").

# GameController/src/eventrecorder/gui/TextField.java

class("TextField").
method("TextField", "executeChangeAction", 7, 2).
calls("TextField", "executeChangeAction", "EventRecorder.history", "execute").
method("TextField", "makeVisibleInScrollPane", 10, 1).
calls("TextField", "makeVisibleInScrollPane", "LogEntryTable", "getParent").
calls("TextField", "makeVisibleInScrollPane", "LogEntryTable", "getParent").
calls("TextField", "makeVisibleInScrollPane", "JComponent", "scrollRectToVisible").
method("TextField", "getLogEntry", 3, 1).

# GameController/src/eventrecorder/export/MarkDownExporter.java

class("MarkDownExporter").
method("MarkDownExporter", "toMarkDown", 19, 6).
