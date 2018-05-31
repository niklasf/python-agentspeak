
# mapdb/src/main/java/org/mapdb/WriteAheadLog.java

class("WriteAheadLog").
method("WriteAheadLog", "WriteAheadLog", 6, 0, "jan@kotek.net").
method("WriteAheadLog", "WriteAheadLog", 3, 0, "jan@kotek.net").
calls("WriteAheadLog", "WriteAheadLog", "WriteAheadLog", "WriteAheadLog").
method("WriteAheadLog", "initFailedCloseFiles", 16, 7, "jan@kotek.net").
calls("WriteAheadLog", "initFailedCloseFiles", "Volume", "isClosed").
calls("WriteAheadLog", "initFailedCloseFiles", "Volume", "close").
calls("WriteAheadLog", "initFailedCloseFiles", "List", "clear").
calls("WriteAheadLog", "initFailedCloseFiles", "Volume", "isClosed").
calls("WriteAheadLog", "initFailedCloseFiles", "Volume", "close").
calls("WriteAheadLog", "initFailedCloseFiles", "List", "clear").
method("WriteAheadLog", "close", 9, 3, "jan@kotek.net").
calls("WriteAheadLog", "close", "Volume", "close").
calls("WriteAheadLog", "close", "List", "clear").
calls("WriteAheadLog", "close", "Volume", "close").
calls("WriteAheadLog", "close", "List", "clear").
method("WriteAheadLog", "seal", 9, 1, "jan@kotek.net").
calls("WriteAheadLog", "seal", "WriteAheadLog", "ensureFileReady").
calls("WriteAheadLog", "seal", "Volume", "ensureAvailable").
calls("WriteAheadLog", "seal", "Long", "bitCount").
calls("WriteAheadLog", "seal", "Volume", "putUnsignedByte").
calls("WriteAheadLog", "seal", "Volume", "sync").
calls("WriteAheadLog", "seal", "Volume", "putLong").
calls("WriteAheadLog", "seal", "Volume", "sync").
method("WriteAheadLog", "startNextFile", 16, 2, "jan@kotek.net").
calls("WriteAheadLog", "startNextFile", "Volume", "ensureAvailable").
calls("WriteAheadLog", "startNextFile", "Volume", "putInt").
calls("WriteAheadLog", "startNextFile", "Volume", "putLong").
calls("WriteAheadLog", "startNextFile", "WriteAheadLog", "fileOffsetSet").
calls("WriteAheadLog", "startNextFile", "List", "add").
method("WriteAheadLog", "rollback", 19, 2, "jan@kotek.net").
calls("WriteAheadLog", "rollback", "WriteAheadLog", "ensureFileReady").
calls("WriteAheadLog", "rollback", "Volume", "ensureAvailable").
calls("WriteAheadLog", "rollback", "Volume", "putUnsignedByte").
calls("WriteAheadLog", "rollback", "Volume", "putInt").
calls("WriteAheadLog", "rollback", "Volume", "sync").
method("WriteAheadLog", "commit", 19, 2, "jan@kotek.net").
calls("WriteAheadLog", "commit", "WriteAheadLog", "ensureFileReady").
calls("WriteAheadLog", "commit", "Volume", "ensureAvailable").
calls("WriteAheadLog", "commit", "Volume", "putUnsignedByte").
calls("WriteAheadLog", "commit", "Volume", "putInt").
calls("WriteAheadLog", "commit", "Volume", "sync").
method("WriteAheadLog", "checksum", 4, 1, "jan@kotek.net").
method("WriteAheadLog", "fileLoad", 6, 2, "jan@kotek.net").
calls("WriteAheadLog", "fileLoad", "Volume", "fileLoad").
method("WriteAheadLog", "sync", 3, 1, "jan@kotek.net").
calls("WriteAheadLog", "sync", "Volume", "sync").
method("WriteAheadLog", "getAllFiles", 8, 3, "jan@kotek.net").
calls("WriteAheadLog", "getAllFiles", "Volume", "getFile").
calls("WriteAheadLog", "getAllFiles", "Volume", "getFile").
calls("WriteAheadLog", "getAllFiles", "ArrayList", "add").
method("WriteAheadLog", "allocate", 16, 3, "jan@kotek.net").
calls("WriteAheadLog", "allocate", "ReentrantLock", "lock").
calls("WriteAheadLog", "allocate", "Volume", "putUnsignedByte").
calls("WriteAheadLog", "allocate", "ReentrantLock", "unlock").
method("WriteAheadLog", "fileOffsetSet", 7, 1, "jan@kotek.net").
calls("WriteAheadLog", "fileOffsetSet", "ReentrantLock", "lock").
calls("WriteAheadLog", "fileOffsetSet", "ReentrantLock", "unlock").
method("WriteAheadLog", "open", 20, 5, "jan@kotek.net").
calls("WriteAheadLog", "open", "File", "exists").
calls("WriteAheadLog", "open", "VolumeFactory", "makeVolume").
calls("WriteAheadLog", "open", "List", "add").
calls("WriteAheadLog", "open", "File", "delete").
calls("WriteAheadLog", "open", "WriteAheadLog", "walPointerToFileNum").
calls("WriteAheadLog", "open", "List", "get").
calls("WriteAheadLog", "open", "WriteAheadLog", "walPointerToOffset").
calls("WriteAheadLog", "open", "WriteAheadLog", "fileOffsetSet").
calls("WriteAheadLog", "open", "List", "clear").
method("WriteAheadLog", "replayWALSkipRollbacks", 86, 13, "jan@kotek.net").
calls("WriteAheadLog", "replayWALSkipRollbacks", "WALReplay", "beforeReplayStart").
calls("WriteAheadLog", "replayWALSkipRollbacks", "Long", "bitCount").
calls("WriteAheadLog", "replayWALSkipRollbacks", "LOG", "isLoggable").
calls("WriteAheadLog", "replayWALSkipRollbacks", "LOG", "log").
calls("WriteAheadLog", "replayWALSkipRollbacks", "WriteAheadLog", "walPointer").
calls("WriteAheadLog", "replayWALSkipRollbacks", "WriteAheadLog", "instLong").
calls("WriteAheadLog", "replayWALSkipRollbacks", "WriteAheadLog", "instByteArray").
calls("WriteAheadLog", "replayWALSkipRollbacks", "LOG", "isLoggable").
calls("WriteAheadLog", "replayWALSkipRollbacks", "LOG", "log").
calls("WriteAheadLog", "replayWALSkipRollbacks", "Integer", "bitCount").
calls("WriteAheadLog", "replayWALSkipRollbacks", "LOG", "isLoggable").
calls("WriteAheadLog", "replayWALSkipRollbacks", "LOG", "log").
calls("WriteAheadLog", "replayWALSkipRollbacks", "Long", "bitCount").
calls("WriteAheadLog", "replayWALSkipRollbacks", "WriteAheadLog", "instRecord").
calls("WriteAheadLog", "replayWALSkipRollbacks", "WriteAheadLog", "instTombstone").
calls("WriteAheadLog", "replayWALSkipRollbacks", "WriteAheadLog", "instPreallocate").
calls("WriteAheadLog", "replayWALSkipRollbacks", "LOG", "isLoggable").
calls("WriteAheadLog", "replayWALSkipRollbacks", "LOG", "log").
calls("WriteAheadLog", "replayWALSkipRollbacks", "Long", "bitCount").
calls("WriteAheadLog", "replayWALSkipRollbacks", "Integer", "bitCount").
calls("WriteAheadLog", "replayWALSkipRollbacks", "WALReplay", "commit").
calls("WriteAheadLog", "replayWALSkipRollbacks", "WriteAheadLog", "skipRollbacks").
calls("WriteAheadLog", "replayWALSkipRollbacks", "Volume", "length").
calls("WriteAheadLog", "replayWALSkipRollbacks", "Volume", "length").
calls("WriteAheadLog", "replayWALSkipRollbacks", "Volume", "clearOverlap").
calls("WriteAheadLog", "replayWALSkipRollbacks", "Volume", "sync").
calls("WriteAheadLog", "replayWALSkipRollbacks", "WALReplay", "afterReplayFinished").
method("WriteAheadLog", "skipRollbacks", 80, 13, "jan@kotek.net").
calls("WriteAheadLog", "skipRollbacks", "List", "size").
calls("WriteAheadLog", "skipRollbacks", "Volume", "length").
calls("WriteAheadLog", "skipRollbacks", "Long", "bitCount").
calls("WriteAheadLog", "skipRollbacks", "WriteAheadLog", "instLong").
calls("WriteAheadLog", "skipRollbacks", "WriteAheadLog", "instByteArray").
calls("WriteAheadLog", "skipRollbacks", "Integer", "bitCount").
calls("WriteAheadLog", "skipRollbacks", "Long", "bitCount").
calls("WriteAheadLog", "skipRollbacks", "WriteAheadLog", "instRecord").
calls("WriteAheadLog", "skipRollbacks", "WriteAheadLog", "instTombstone").
calls("WriteAheadLog", "skipRollbacks", "WriteAheadLog", "instPreallocate").
calls("WriteAheadLog", "skipRollbacks", "Long", "bitCount").
calls("WriteAheadLog", "skipRollbacks", "Integer", "bitCount").
calls("WriteAheadLog", "skipRollbacks", "LOG", "isLoggable").
calls("WriteAheadLog", "skipRollbacks", "LOG", "log").
calls("WriteAheadLog", "skipRollbacks", "Long", "bitCount").
calls("WriteAheadLog", "skipRollbacks", "Integer", "bitCount").
calls("WriteAheadLog", "skipRollbacks", "WriteAheadLog", "walPointer").
calls("WriteAheadLog", "skipRollbacks", "LOG", "log").
calls("WriteAheadLog", "skipRollbacks", "LOG", "isLoggable").
calls("WriteAheadLog", "skipRollbacks", "LOG", "log").
method("WriteAheadLog", "replayWAL", 67, 9, "jan@kotek.net").
calls("WriteAheadLog", "replayWAL", "WALReplay", "beforeReplayStart").
calls("WriteAheadLog", "replayWAL", "Volume", "length").
calls("WriteAheadLog", "replayWAL", "Long", "bitCount").
calls("WriteAheadLog", "replayWAL", "WriteAheadLog", "instLong").
calls("WriteAheadLog", "replayWAL", "WriteAheadLog", "instByteArray").
calls("WriteAheadLog", "replayWAL", "Integer", "bitCount").
calls("WriteAheadLog", "replayWAL", "Long", "bitCount").
calls("WriteAheadLog", "replayWAL", "WriteAheadLog", "instRecord").
calls("WriteAheadLog", "replayWAL", "WriteAheadLog", "instTombstone").
calls("WriteAheadLog", "replayWAL", "WriteAheadLog", "instPreallocate").
calls("WriteAheadLog", "replayWAL", "Long", "bitCount").
calls("WriteAheadLog", "replayWAL", "Integer", "bitCount").
calls("WriteAheadLog", "replayWAL", "WALReplay", "commit").
calls("WriteAheadLog", "replayWAL", "Long", "bitCount").
calls("WriteAheadLog", "replayWAL", "Integer", "bitCount").
calls("WriteAheadLog", "replayWAL", "WALReplay", "rollback").
calls("WriteAheadLog", "replayWAL", "WALReplay", "afterReplayFinished").
method("WriteAheadLog", "instTombstone", 15, 4, "jan@kotek.net").
calls("WriteAheadLog", "instTombstone", "LOG", "isLoggable").
calls("WriteAheadLog", "instTombstone", "DataIO", "packLongSize").
calls("WriteAheadLog", "instTombstone", "LOG", "log").
calls("WriteAheadLog", "instTombstone", "Long", "bitCount").
calls("WriteAheadLog", "instTombstone", "WALReplay", "writeTombstone").
method("WriteAheadLog", "instPreallocate", 15, 4, "jan@kotek.net").
calls("WriteAheadLog", "instPreallocate", "LOG", "isLoggable").
calls("WriteAheadLog", "instPreallocate", "DataIO", "packLongSize").
calls("WriteAheadLog", "instPreallocate", "LOG", "log").
calls("WriteAheadLog", "instPreallocate", "Long", "bitCount").
calls("WriteAheadLog", "instPreallocate", "WALReplay", "writePreallocate").
method("WriteAheadLog", "instRecord", 28, 6, "jan@kotek.net").
calls("WriteAheadLog", "instRecord", "LOG", "isLoggable").
calls("WriteAheadLog", "instRecord", "LOG", "log").
calls("WriteAheadLog", "instRecord", "Long", "bitCount").
calls("WriteAheadLog", "instRecord", "Long", "bitCount").
calls("WriteAheadLog", "instRecord", "Long", "bitCount").
calls("WriteAheadLog", "instRecord", "WALReplay", "writeRecord").
calls("WriteAheadLog", "instRecord", "WALReplay", "writeRecord").
method("WriteAheadLog", "instByteArray", 20, 4, "jan@kotek.net").
calls("WriteAheadLog", "instByteArray", "LOG", "isLoggable").
calls("WriteAheadLog", "instByteArray", "LOG", "log").
calls("WriteAheadLog", "instByteArray", "Integer", "bitCount").
calls("WriteAheadLog", "instByteArray", "Long", "bitCount").
calls("WriteAheadLog", "instByteArray", "WALReplay", "writeByteArray").
method("WriteAheadLog", "instLong", 16, 4, "jan@kotek.net").
calls("WriteAheadLog", "instLong", "LOG", "isLoggable").
calls("WriteAheadLog", "instLong", "LOG", "log").
calls("WriteAheadLog", "instLong", "Long", "bitCount").
calls("WriteAheadLog", "instLong", "Long", "bitCount").
calls("WriteAheadLog", "instLong", "WALReplay", "writeLong").
method("WriteAheadLog", "destroyWalFiles", 11, 3, "jan@kotek.net").
calls("WriteAheadLog", "destroyWalFiles", "Volume", "isClosed").
calls("WriteAheadLog", "destroyWalFiles", "Volume", "truncate").
calls("WriteAheadLog", "destroyWalFiles", "Volume", "close").
calls("WriteAheadLog", "destroyWalFiles", "Volume", "deleteFile").
calls("WriteAheadLog", "destroyWalFiles", "List", "clear").
method("WriteAheadLog", "getWalFileName", 3, 1, "jan@kotek.net").
method("WriteAheadLog", "getNumberOfFiles", 3, 1, "jan@kotek.net").
calls("WriteAheadLog", "getNumberOfFiles", "List", "size").
method("WriteAheadLog", "walGetByteArray", 10, 2, "jan@kotek.net").
calls("WriteAheadLog", "walGetByteArray", "Volume", "getDataInput").
method("WriteAheadLog", "walGetByteArray2", 9, 1, "jan@kotek.net").
calls("WriteAheadLog", "walGetByteArray2", "Volume", "getData").
method("WriteAheadLog", "walPointerToOffset", 3, 1, "jan@kotek.net").
method("WriteAheadLog", "walPointerToFileNum", 3, 1, "jan@kotek.net").
method("WriteAheadLog", "walPointerToSize", 3, 1, "jan@kotek.net").
method("WriteAheadLog", "walGetRecord", 31, 5, "jan@kotek.net").
calls("WriteAheadLog", "walGetRecord", "DataInput", "readFully").
method("WriteAheadLog", "walPutByteArray", 26, 5, "jan@kotek.net").
calls("WriteAheadLog", "walPutByteArray", "WriteAheadLog", "ensureFileReady").
calls("WriteAheadLog", "walPutByteArray", "Volume", "ensureAvailable").
calls("WriteAheadLog", "walPutByteArray", "Volume", "putUnsignedByte").
calls("WriteAheadLog", "walPutByteArray", "Volume", "putLong").
calls("WriteAheadLog", "walPutByteArray", "Volume", "putData").
calls("WriteAheadLog", "walPutByteArray", "WriteAheadLog", "walPointerToOffset").
calls("WriteAheadLog", "walPutByteArray", "WriteAheadLog", "walPointer").
method("WriteAheadLog", "walPointer", 15, 4, "jan@kotek.net").
calls("WriteAheadLog", "walPointer", "WriteAheadLog", "walPointerToOffset").
calls("WriteAheadLog", "walPointer", "WriteAheadLog", "walPointerToOffset").
calls("WriteAheadLog", "walPointer", "WriteAheadLog", "walPointerToOffset").
method("WriteAheadLog", "walPutRecord", 25, 4, "jan@kotek.net").
calls("WriteAheadLog", "walPutRecord", "WriteAheadLog", "ensureFileReady").
calls("WriteAheadLog", "walPutRecord", "Volume", "ensureAvailable").
calls("WriteAheadLog", "walPutRecord", "Volume", "putUnsignedByte").
calls("WriteAheadLog", "walPutRecord", "Volume", "putPackedLong").
calls("WriteAheadLog", "walPutRecord", "Volume", "putPackedLong").
calls("WriteAheadLog", "walPutRecord", "Volume", "putDataOverlap").
method("WriteAheadLog", "walPutLong", 17, 2, "jan@kotek.net").
calls("WriteAheadLog", "walPutLong", "WriteAheadLog", "ensureFileReady").
calls("WriteAheadLog", "walPutLong", "Volume", "ensureAvailable").
calls("WriteAheadLog", "walPutLong", "Volume", "putUnsignedByte").
calls("WriteAheadLog", "walPutLong", "Volume", "putLong").
calls("WriteAheadLog", "walPutLong", "Volume", "putSixLong").
method("WriteAheadLog", "ensureFileReady", 12, 4, "jan@kotek.net").
calls("WriteAheadLog", "ensureFileReady", "WriteAheadLog", "startNextFile").
calls("WriteAheadLog", "ensureFileReady", "WriteAheadLog", "seal").
calls("WriteAheadLog", "ensureFileReady", "WriteAheadLog", "startNextFile").
method("WriteAheadLog", "walPutTombstone", 12, 1, "jan@kotek.net").
calls("WriteAheadLog", "walPutTombstone", "WriteAheadLog", "ensureFileReady").
calls("WriteAheadLog", "walPutTombstone", "Volume", "ensureAvailable").
calls("WriteAheadLog", "walPutTombstone", "Volume", "putUnsignedByte").
calls("WriteAheadLog", "walPutTombstone", "Volume", "putPackedLong").
method("WriteAheadLog", "walPutPreallocate", 12, 1, "jan@kotek.net").
calls("WriteAheadLog", "walPutPreallocate", "WriteAheadLog", "ensureFileReady").
calls("WriteAheadLog", "walPutPreallocate", "Volume", "ensureAvailable").
calls("WriteAheadLog", "walPutPreallocate", "Volume", "putUnsignedByte").
calls("WriteAheadLog", "walPutPreallocate", "Volume", "putPackedLong").

# mapdb/src/main/java/org/mapdb/CC.java


# mapdb/src/main/java/org/mapdb/Serializer.java


# mapdb/src/main/java/org/mapdb/DataOutput2.java

class("DataOutput2").
method("DataOutput2", "DataOutput2", 5, 0, "jan@kotek.net").
method("DataOutput2", "copyBytes", 3, 1, "jan@kotek.net").
calls("DataOutput2", "copyBytes", "Arrays", "copyOf").
method("DataOutput2", "ensureAvail", 6, 2, "jan@kotek.net").
calls("DataOutput2", "ensureAvail", "DataOutput2", "grow").
method("DataOutput2", "grow", 5, 1, "jan@kotek.net").
calls("DataOutput2", "grow", "Arrays", "copyOf").
method("DataOutput2", "write", 4, 1, "jan@kotek.net").
calls("DataOutput2", "write", "DataOutput2", "ensureAvail").
method("DataOutput2", "write", 3, 1, "jan@kotek.net").
calls("DataOutput2", "write", "DataOutput2", "write").
method("DataOutput2", "write", 5, 1, "jan@kotek.net").
calls("DataOutput2", "write", "DataOutput2", "ensureAvail").
calls("DataOutput2", "write", "System", "arraycopy").
method("DataOutput2", "writeBoolean", 4, 1, "jan@kotek.net").
calls("DataOutput2", "writeBoolean", "DataOutput2", "ensureAvail").
method("DataOutput2", "writeByte", 4, 1, "jan@kotek.net").
calls("DataOutput2", "writeByte", "DataOutput2", "ensureAvail").
method("DataOutput2", "writeShort", 5, 1, "jan@kotek.net").
calls("DataOutput2", "writeShort", "DataOutput2", "ensureAvail").
method("DataOutput2", "writeChar", 5, 1, "jan@kotek.net").
calls("DataOutput2", "writeChar", "DataOutput2", "ensureAvail").
method("DataOutput2", "writeInt", 7, 1, "jan@kotek.net").
calls("DataOutput2", "writeInt", "DataOutput2", "ensureAvail").
method("DataOutput2", "writeLong", 11, 1, "jan@kotek.net").
calls("DataOutput2", "writeLong", "DataOutput2", "ensureAvail").
method("DataOutput2", "writeFloat", 3, 1, "jan@kotek.net").
calls("DataOutput2", "writeFloat", "Float", "floatToIntBits").
calls("DataOutput2", "writeFloat", "DataOutput2", "writeInt").
method("DataOutput2", "writeDouble", 3, 1, "jan@kotek.net").
calls("DataOutput2", "writeDouble", "Double", "doubleToLongBits").
calls("DataOutput2", "writeDouble", "DataOutput2", "writeLong").
method("DataOutput2", "writeBytes", 3, 1, "jan@kotek.net").
calls("DataOutput2", "writeBytes", "DataOutput2", "writeUTF").
method("DataOutput2", "writeChars", 3, 1, "jan@kotek.net").
calls("DataOutput2", "writeChars", "DataOutput2", "writeUTF").
method("DataOutput2", "writeUTF", 7, 2, "jan@kotek.net").
calls("DataOutput2", "writeUTF", "DataOutput2", "packInt").
calls("DataOutput2", "writeUTF", "DataOutput2", "packInt").
method("DataOutput2", "packInt", 12, 3, "jan@kotek.net").
calls("DataOutput2", "packInt", "DataOutput2", "ensureAvail").
calls("DataOutput2", "packInt", "Integer", "numberOfLeadingZeros").
method("DataOutput2", "packIntBigger", 9, 2, "jan@kotek.net").
calls("DataOutput2", "packIntBigger", "DataOutput2", "ensureAvail").
method("DataOutput2", "packLong", 9, 2, "jan@kotek.net").
calls("DataOutput2", "packLong", "DataOutput2", "ensureAvail").
method("DataOutput2", "packLongArray", 11, 3, "jan@kotek.net").
calls("DataOutput2", "packLongArray", "DataOutput2", "ensureAvail").

# mapdb/src/main/java/org/mapdb/DataInput2.java

class("DataInput2").
method("DataInput2", "readFloat", 3, 1, "jan@kotek.net").
calls("DataInput2", "readFloat", "DataInput2", "readInt").
calls("DataInput2", "readFloat", "Float", "intBitsToFloat").
method("DataInput2", "readDouble", 3, 1, "jan@kotek.net").
calls("DataInput2", "readDouble", "DataInput2", "readLong").
calls("DataInput2", "readDouble", "Double", "longBitsToDouble").
method("DataInput2", "readLine", 3, 1, "jan@kotek.net").
calls("DataInput2", "readLine", "DataInput2", "readUTF").
method("DataInput2", "readUTF", 7, 2, "jan@kotek.net").
calls("DataInput2", "readUTF", "DataInput2", "unpackInt").
method("DataInput2", "readUnsignedShort", 3, 1, "jan@kotek.net").
calls("DataInput2", "readUnsignedShort", "DataInput2", "readChar").
method("DataInput2", "readFully", 3, 1, "jan@kotek.net").
calls("DataInput2", "readFully", "DataInput2", "readFully").
method("DataInput2", "getPos", 1, 1, "jan@kotek.net").
method("DataInput2", "setPos", 1, 1, "jan@kotek.net").
method("DataInput2", "internalByteArray", 1, 1, "jan@kotek.net").
method("DataInput2", "internalByteBuffer", 1, 1, "jan@kotek.net").
method("DataInput2", "close", 1, 1, "jan@kotek.net").
method("DataInput2", "unpackLong", 1, 1, "jan@kotek.net").
method("DataInput2", "unpackInt", 1, 1, "jan@kotek.net").
method("DataInput2", "unpackLongArrayDeltaCompression", 1, 1, "jan@kotek.net").
method("DataInput2", "unpackLongArray", 1, 1, "jan@kotek.net").
method("DataInput2", "unpackIntArray", 1, 1, "jan@kotek.net").
method("DataInput2", "unpackLongSkip", 1, 1, "jan@kotek.net").

# mapdb/src/main/java/org/mapdb/StoreBinaryGetLong.java


# mapdb/src/main/java/org/mapdb/MapModificationListener.java


# mapdb/src/main/java/org/mapdb/serializer/SerializerFloatArray.java

class("SerializerFloatArray").
method("SerializerFloatArray", "serialize", 5, 2, "jan@kotek.net").
calls("SerializerFloatArray", "serialize", "DataOutput2", "packInt").
calls("SerializerFloatArray", "serialize", "DataOutput2", "writeFloat").
method("SerializerFloatArray", "deserialize", 6, 2, "jan@kotek.net").
calls("SerializerFloatArray", "deserialize", "DataInput2", "readFloat").
method("SerializerFloatArray", "isTrusted", 3, 1, "jan@kotek.net").
method("SerializerFloatArray", "equals", 3, 1, "jan@kotek.net").
calls("SerializerFloatArray", "equals", "Arrays", "equals").
method("SerializerFloatArray", "hashCode", 5, 2, "jan@kotek.net").
calls("SerializerFloatArray", "hashCode", "Float", "floatToIntBits").
method("SerializerFloatArray", "compare", 15, 5, "jan@kotek.net").
calls("SerializerFloatArray", "compare", "SerializerUtils", "compareInt").

# mapdb/src/main/java/org/mapdb/serializer/SerializerRecid.java

class("SerializerRecid").
method("SerializerRecid", "serialize", 3, 1, "jan@kotek.net").
calls("SerializerRecid", "serialize", "DataIO", "packRecid").
method("SerializerRecid", "deserialize", 3, 1, "jan@kotek.net").
method("SerializerRecid", "fixedSize", 3, 1, "jan@kotek.net").
method("SerializerRecid", "unpack", 3, 1, "jan@kotek.net").
method("SerializerRecid", "pack", 3, 1, "jan@kotek.net").
method("SerializerRecid", "isTrusted", 3, 1, "jan@kotek.net").
method("SerializerRecid", "valueArraySearch", 3, 1, "jan@kotek.net").
calls("SerializerRecid", "valueArraySearch", "Arrays", "binarySearch").
method("SerializerRecid", "valueArraySerialize", 4, 2, "jan@kotek.net").
calls("SerializerRecid", "valueArraySerialize", "DataIO", "packRecid").
method("SerializerRecid", "valueArrayDeserialize", 6, 2, "jan@kotek.net").
calls("SerializerRecid", "valueArrayDeserialize", "DataIO", "unpackRecid").
method("SerializerRecid", "valueArrayBinaryGet", 4, 1, "jan@kotek.net").
calls("SerializerRecid", "valueArrayBinaryGet", "DataInput2", "unpackLongSkip").
calls("SerializerRecid", "valueArrayBinaryGet", "SerializerRecid", "deserialize").

# mapdb/src/main/java/org/mapdb/serializer/SerializerDoubleArray.java

class("SerializerDoubleArray").
method("SerializerDoubleArray", "serialize", 5, 2, "jan@kotek.net").
calls("SerializerDoubleArray", "serialize", "DataOutput2", "packInt").
calls("SerializerDoubleArray", "serialize", "DataOutput2", "writeDouble").
method("SerializerDoubleArray", "deserialize", 7, 2, "jan@kotek.net").
calls("SerializerDoubleArray", "deserialize", "DataInput2", "readDouble").
method("SerializerDoubleArray", "isTrusted", 3, 1, "jan@kotek.net").
method("SerializerDoubleArray", "equals", 3, 1, "jan@kotek.net").
calls("SerializerDoubleArray", "equals", "Arrays", "equals").
method("SerializerDoubleArray", "hashCode", 6, 2, "jan@kotek.net").
method("SerializerDoubleArray", "compare", 15, 5, "jan@kotek.net").
calls("SerializerDoubleArray", "compare", "SerializerUtils", "compareInt").

# mapdb/src/main/java/org/mapdb/serializer/SerializerArrayDelta.java

class("SerializerArrayDelta").
method("SerializerArrayDelta", "SerializerArrayDelta", 3, 0, "jan@kotek.net").
calls("SerializerArrayDelta", "SerializerArrayDelta", "SerializerArray", "SerializerArray").
method("SerializerArrayDelta", "SerializerArrayDelta", 3, 0, "jan@kotek.net").
calls("SerializerArrayDelta", "SerializerArrayDelta", "SerializerArray", "SerializerArray").
method("SerializerArrayDelta", "valueArraySerialize", 21, 6, "jan@kotek.net").
calls("SerializerArrayDelta", "valueArraySerialize", "DataOutput2", "packInt").
calls("SerializerArrayDelta", "valueArraySerialize", "serializer", "serialize").
calls("SerializerArrayDelta", "valueArraySerialize", "serializer", "equals").
calls("SerializerArrayDelta", "valueArraySerialize", "DataOutput2", "packInt").
calls("SerializerArrayDelta", "valueArraySerialize", "DataOutput2", "packInt").
calls("SerializerArrayDelta", "valueArraySerialize", "serializer", "serialize").
method("SerializerArrayDelta", "valueArrayDeserialize", 21, 5, "jan@kotek.net").
calls("SerializerArrayDelta", "valueArrayDeserialize", "serializer", "deserialize").
calls("SerializerArrayDelta", "valueArrayDeserialize", "System", "arraycopy").
calls("SerializerArrayDelta", "valueArrayDeserialize", "serializer", "deserialize").

# mapdb/src/main/java/org/mapdb/serializer/SerializerChar.java

class("SerializerChar").
method("SerializerChar", "serialize", 3, 1, "jan@kotek.net").
calls("SerializerChar", "serialize", "Character", "charValue").
calls("SerializerChar", "serialize", "DataOutput2", "writeChar").
method("SerializerChar", "deserialize", 3, 1, "jan@kotek.net").
calls("SerializerChar", "deserialize", "DataInput2", "readChar").
method("SerializerChar", "fixedSize", 3, 1, "jan@kotek.net").
method("SerializerChar", "isTrusted", 3, 1, "jan@kotek.net").

# mapdb/src/main/java/org/mapdb/serializer/SerializerStringOrigHash.java

class("SerializerStringOrigHash").
method("SerializerStringOrigHash", "serialize", 3, 1, "jan@kotek.net").
calls("SerializerStringOrigHash", "serialize", "DataOutput2", "writeUTF").
method("SerializerStringOrigHash", "deserialize", 3, 1, "jan@kotek.net").
calls("SerializerStringOrigHash", "deserialize", "DataInput2", "readUTF").
method("SerializerStringOrigHash", "isTrusted", 3, 1, "jan@kotek.net").
method("SerializerStringOrigHash", "hashCode", 3, 1, "jan@kotek.net").
calls("SerializerStringOrigHash", "hashCode", "String", "hashCode").
calls("SerializerStringOrigHash", "hashCode", "DataIO", "intHash").

# mapdb/src/main/java/org/mapdb/serializer/SerializerCharArray.java

class("SerializerCharArray").
method("SerializerCharArray", "serialize", 5, 2, "jan@kotek.net").
calls("SerializerCharArray", "serialize", "DataOutput2", "packInt").
calls("SerializerCharArray", "serialize", "DataOutput2", "writeChar").
method("SerializerCharArray", "deserialize", 7, 2, "jan@kotek.net").
calls("SerializerCharArray", "deserialize", "DataInput2", "readChar").
method("SerializerCharArray", "isTrusted", 3, 1, "jan@kotek.net").
method("SerializerCharArray", "equals", 3, 1, "jan@kotek.net").
calls("SerializerCharArray", "equals", "Arrays", "equals").
method("SerializerCharArray", "hashCode", 5, 2, "jan@kotek.net").
method("SerializerCharArray", "compare", 10, 3, "jan@kotek.net").
calls("SerializerCharArray", "compare", "SerializerUtils", "compareInt").
method("SerializerCharArray", "nextValue", 14, 4, "shabanovd@gmail.com").
calls("SerializerCharArray", "nextValue", "char", "clone").

# mapdb/src/main/java/org/mapdb/serializer/SerializerIntegerDelta.java

class("SerializerIntegerDelta").
method("SerializerIntegerDelta", "serialize", 3, 1, "jan@kotek.net").
calls("SerializerIntegerDelta", "serialize", "DataOutput2", "packInt").
method("SerializerIntegerDelta", "deserialize", 3, 1, "jan@kotek.net").
method("SerializerIntegerDelta", "valueArraySerialize", 12, 3, "jan@kotek.net").
calls("SerializerIntegerDelta", "valueArraySerialize", "DataOutput2", "packInt").
calls("SerializerIntegerDelta", "valueArraySerialize", "DataOutput2", "packInt").
method("SerializerIntegerDelta", "valueArrayDeserialize", 8, 2, "jan@kotek.net").
calls("SerializerIntegerDelta", "valueArrayDeserialize", "DataInput2", "unpackInt").
method("SerializerIntegerDelta", "valueArrayBinaryGet", 6, 2, "jan@kotek.net").
calls("SerializerIntegerDelta", "valueArrayBinaryGet", "DataInput2", "unpackInt").
method("SerializerIntegerDelta", "valueArrayBinarySearch", 14, 4, "jan@kotek.net").
calls("SerializerIntegerDelta", "valueArrayBinarySearch", "SerializerInteger", "valueArrayBinarySearch").
calls("SerializerIntegerDelta", "valueArrayBinarySearch", "DataInput2", "unpackInt").
calls("SerializerIntegerDelta", "valueArrayBinarySearch", "DataInput2", "unpackLongSkip").
method("SerializerIntegerDelta", "fixedSize", 3, 1, "jan@kotek.net").

# mapdb/src/main/java/org/mapdb/serializer/SerializerEightByte.java

class("SerializerEightByte").
method("SerializerEightByte", "unpack", 1, 1, "jan@kotek.net").
method("SerializerEightByte", "pack", 1, 1, "jan@kotek.net").
method("SerializerEightByte", "valueArrayGet", 3, 1, "jan@kotek.net").
calls("SerializerEightByte", "valueArrayGet", "SerializerEightByte", "unpack").
method("SerializerEightByte", "valueArraySize", 3, 1, "jan@kotek.net").
method("SerializerEightByte", "valueArrayEmpty", 3, 1, "jan@kotek.net").
method("SerializerEightByte", "valueArrayPut", 9, 2, "jan@kotek.net").
calls("SerializerEightByte", "valueArrayPut", "System", "arraycopy").
calls("SerializerEightByte", "valueArrayPut", "SerializerEightByte", "pack").
method("SerializerEightByte", "valueArrayUpdateVal", 5, 1, "jan@kotek.net").
calls("SerializerEightByte", "valueArrayUpdateVal", "SerializerEightByte", "pack").
method("SerializerEightByte", "valueArrayFromArray", 7, 2, "jan@kotek.net").
calls("SerializerEightByte", "valueArrayFromArray", "SerializerEightByte", "pack").
method("SerializerEightByte", "valueArrayCopyOfRange", 3, 1, "jan@kotek.net").
calls("SerializerEightByte", "valueArrayCopyOfRange", "Arrays", "copyOfRange").
method("SerializerEightByte", "valueArrayDeleteValue", 7, 1, "jan@kotek.net").
calls("SerializerEightByte", "valueArrayDeleteValue", "System", "arraycopy").
calls("SerializerEightByte", "valueArrayDeleteValue", "System", "arraycopy").
method("SerializerEightByte", "valueArraySerialize", 4, 2, "jan@kotek.net").
calls("SerializerEightByte", "valueArraySerialize", "DataOutput2", "writeLong").
method("SerializerEightByte", "valueArrayDeserialize", 6, 2, "jan@kotek.net").
calls("SerializerEightByte", "valueArrayDeserialize", "DataInput2", "readLong").
method("SerializerEightByte", "valueArrayBinaryGet", 4, 1, "jan@kotek.net").
calls("SerializerEightByte", "valueArrayBinaryGet", "DataInput2", "skipBytes").
calls("SerializerEightByte", "valueArrayBinaryGet", "DataInput2", "readLong").
calls("SerializerEightByte", "valueArrayBinaryGet", "SerializerEightByte", "unpack").
method("SerializerEightByte", "isTrusted", 3, 1, "jan@kotek.net").
method("SerializerEightByte", "fixedSize", 3, 1, "jan@kotek.net").
method("SerializerEightByte", "valueArraySearch", 21, 5, "jan@kotek.net").
calls("SerializerEightByte", "valueArraySearch", "SerializerEightByte", "valueArraySearch").

# mapdb/src/main/java/org/mapdb/serializer/SerializerByteArrayNoSize.java

class("SerializerByteArrayNoSize").
method("SerializerByteArrayNoSize", "serialize", 3, 1, "jan@kotek.net").
calls("SerializerByteArrayNoSize", "serialize", "DataOutput2", "write").
method("SerializerByteArrayNoSize", "deserialize", 5, 1, "jan@kotek.net").
calls("SerializerByteArrayNoSize", "deserialize", "DataInput2", "readFully").
method("SerializerByteArrayNoSize", "isTrusted", 3, 1, "jan@kotek.net").
method("SerializerByteArrayNoSize", "equals", 3, 1, "jan@kotek.net").
calls("SerializerByteArrayNoSize", "equals", "Arrays", "equals").
method("SerializerByteArrayNoSize", "hashCode", 3, 1, "jan@kotek.net").
calls("SerializerByteArrayNoSize", "hashCode", "BYTE_ARRAY", "hashCode").
method("SerializerByteArrayNoSize", "needsAvailableSizeHint", 3, 1, "jan@kotek.net").
method("SerializerByteArrayNoSize", "compare", 13, 4, "jan@kotek.net").

# mapdb/src/main/java/org/mapdb/serializer/SerializerStringDelta2.java

class("SerializerStringDelta2").
method("SerializerStringDelta2", "valueArrayDeserialize", 11, 2, "jan@kotek.net").
calls("SerializerStringDelta2", "valueArrayDeserialize", "DataInput2", "unpackInt").
method("SerializerStringDelta2", "valueArraySerialize", 11, 2, "jan@kotek.net").
calls("SerializerStringDelta2", "valueArraySerialize", "DataOutput2", "packInt").
calls("SerializerStringDelta2", "valueArraySerialize", "DataOutput2", "packInt").
calls("SerializerStringDelta2", "valueArraySerialize", "StringArrayKeys", "serialize").
method("SerializerStringDelta2", "valueArrayCopyOfRange", 3, 1, "jan@kotek.net").
method("SerializerStringDelta2", "valueArrayDeleteValue", 5, 1, "jan@kotek.net").
calls("SerializerStringDelta2", "valueArrayDeleteValue", "DataIO", "arrayDelete").
calls("SerializerStringDelta2", "valueArrayDeleteValue", "SerializerStringDelta2", "valueArrayFromArray").
method("SerializerStringDelta2", "valueArrayEmpty", 3, 1, "jan@kotek.net").
method("SerializerStringDelta2", "valueArrayFromArray", 16, 4, "jan@kotek.net").
calls("SerializerStringDelta2", "valueArrayFromArray", "SerializerStringDelta2", "valueArrayEmpty").
calls("SerializerStringDelta2", "valueArrayFromArray", "ByteArrayKeys", "containsUnicode").
calls("SerializerStringDelta2", "valueArrayFromArray", "String", "length").
method("SerializerStringDelta2", "valueArrayGet", 3, 1, "jan@kotek.net").
method("SerializerStringDelta2", "valueArrayPut", 3, 1, "jan@kotek.net").
method("SerializerStringDelta2", "valueArraySearch", 4, 1, "jan@kotek.net").
calls("SerializerStringDelta2", "valueArraySearch", "Arrays", "binarySearch").
method("SerializerStringDelta2", "valueArraySearch", 4, 1, "jan@kotek.net").
calls("SerializerStringDelta2", "valueArraySearch", "Arrays", "binarySearch").
method("SerializerStringDelta2", "valueArraySize", 3, 1, "jan@kotek.net").
method("SerializerStringDelta2", "valueArrayUpdateVal", 5, 1, "jan@kotek.net").
calls("SerializerStringDelta2", "valueArrayUpdateVal", "SerializerStringDelta2", "valueArrayFromArray").
method("SerializerStringDelta2", "isTrusted", 3, 1, "jan@kotek.net").
method("SerializerStringDelta2", "serialize", 3, 1, "jan@kotek.net").
calls("SerializerStringDelta2", "serialize", "Serializer.STRING", "serialize").
method("SerializerStringDelta2", "deserialize", 3, 1, "jan@kotek.net").
calls("SerializerStringDelta2", "deserialize", "Serializer.STRING", "deserialize").
method("SerializerStringDelta2", "hashCode", 3, 1, "jan@kotek.net").
calls("SerializerStringDelta2", "hashCode", "Serializer.STRING", "hashCode").

# mapdb/src/main/java/org/mapdb/serializer/SerializerIntegerPacked.java

class("SerializerIntegerPacked").
method("SerializerIntegerPacked", "serialize", 3, 1, "jan@kotek.net").
calls("SerializerIntegerPacked", "serialize", "DataOutput2", "packInt").
method("SerializerIntegerPacked", "deserialize", 3, 1, "jan@kotek.net").
method("SerializerIntegerPacked", "valueArraySerialize", 4, 2, "jan@kotek.net").
calls("SerializerIntegerPacked", "valueArraySerialize", "DataOutput2", "packIntBigger").
method("SerializerIntegerPacked", "valueArrayDeserialize", 5, 1, "jan@kotek.net").
calls("SerializerIntegerPacked", "valueArrayDeserialize", "DataInput2", "unpackIntArray").
method("SerializerIntegerPacked", "fixedSize", 3, 1, "jan@kotek.net").
method("SerializerIntegerPacked", "valueArrayBinarySearch", 13, 4, "jan@kotek.net").
calls("SerializerIntegerPacked", "valueArrayBinarySearch", "SerializerInteger", "valueArrayBinarySearch").
calls("SerializerIntegerPacked", "valueArrayBinarySearch", "DataInput2", "unpackLongSkip").
method("SerializerIntegerPacked", "valueArrayBinaryGet", 4, 1, "jan@kotek.net").
calls("SerializerIntegerPacked", "valueArrayBinaryGet", "DataInput2", "unpackLongSkip").
calls("SerializerIntegerPacked", "valueArrayBinaryGet", "DataInput2", "unpackInt").

# mapdb/src/main/java/org/mapdb/serializer/SerializerFloat.java

class("SerializerFloat").
method("SerializerFloat", "unpack", 3, 1, "jan@kotek.net").
method("SerializerFloat", "pack", 3, 1, "jan@kotek.net").
calls("SerializerFloat", "pack", "Float", "floatToIntBits").
method("SerializerFloat", "serialize", 3, 1, "jan@kotek.net").
calls("SerializerFloat", "serialize", "DataOutput2", "writeFloat").
method("SerializerFloat", "deserialize", 3, 1, "jan@kotek.net").
method("SerializerFloat", "valueArraySearch", 3, 1, "jan@kotek.net").
calls("SerializerFloat", "valueArraySearch", "SerializerFloat", "valueArrayToArray").
calls("SerializerFloat", "valueArraySearch", "Arrays", "binarySearch").

# mapdb/src/main/java/org/mapdb/serializer/SerializerSqlDate.java

class("SerializerSqlDate").
method("SerializerSqlDate", "serialize", 3, 1, "minborg@speedment.com").
calls("SerializerSqlDate", "serialize", "Date", "getTime").
calls("SerializerSqlDate", "serialize", "DataOutput2", "writeLong").
method("SerializerSqlDate", "deserialize", 3, 1, "minborg@speedment.com").
method("SerializerSqlDate", "unpack", 3, 1, "minborg@speedment.com").
method("SerializerSqlDate", "pack", 3, 1, "minborg@speedment.com").
calls("SerializerSqlDate", "pack", "Date", "getTime").
method("SerializerSqlDate", "valueArraySearch", 4, 1, "minborg@speedment.com").
calls("SerializerSqlDate", "valueArraySearch", "Arrays", "binarySearch").

# mapdb/src/main/java/org/mapdb/serializer/SerializerSqlTimestamp.java

class("SerializerSqlTimestamp").
method("SerializerSqlTimestamp", "serialize", 3, 1, "minborg@speedment.com").
calls("SerializerSqlTimestamp", "serialize", "Timestamp", "getTime").
calls("SerializerSqlTimestamp", "serialize", "DataOutput2", "writeLong").
method("SerializerSqlTimestamp", "deserialize", 3, 1, "minborg@speedment.com").
method("SerializerSqlTimestamp", "unpack", 3, 1, "minborg@speedment.com").
method("SerializerSqlTimestamp", "pack", 3, 1, "minborg@speedment.com").
calls("SerializerSqlTimestamp", "pack", "Timestamp", "getTime").
method("SerializerSqlTimestamp", "valueArraySearch", 4, 1, "minborg@speedment.com").
calls("SerializerSqlTimestamp", "valueArraySearch", "Arrays", "binarySearch").

# mapdb/src/main/java/org/mapdb/serializer/SerializerLongDelta.java

class("SerializerLongDelta").
method("SerializerLongDelta", "serialize", 3, 1, "jan@kotek.net").
calls("SerializerLongDelta", "serialize", "DataOutput2", "packLong").
method("SerializerLongDelta", "deserialize", 3, 1, "jan@kotek.net").
method("SerializerLongDelta", "valueArraySerialize", 12, 3, "jan@kotek.net").
calls("SerializerLongDelta", "valueArraySerialize", "DataOutput2", "packLong").
calls("SerializerLongDelta", "valueArraySerialize", "DataOutput2", "packLong").
method("SerializerLongDelta", "valueArrayDeserialize", 3, 1, "jan@kotek.net").
calls("SerializerLongDelta", "valueArrayDeserialize", "DataInput2", "unpackLongArrayDeltaCompression").
method("SerializerLongDelta", "valueArrayBinaryGet", 6, 2, "jan@kotek.net").
calls("SerializerLongDelta", "valueArrayBinaryGet", "DataInput2", "unpackLong").
method("SerializerLongDelta", "valueArrayBinarySearch", 14, 4, "jan@kotek.net").
calls("SerializerLongDelta", "valueArrayBinarySearch", "SerializerLong", "valueArrayBinarySearch").
calls("SerializerLongDelta", "valueArrayBinarySearch", "DataInput2", "unpackLong").
calls("SerializerLongDelta", "valueArrayBinarySearch", "DataInput2", "unpackLongSkip").
method("SerializerLongDelta", "fixedSize", 3, 1, "jan@kotek.net").

# mapdb/src/main/java/org/mapdb/serializer/SerializerUtils.java

class("SerializerUtils").
method("SerializerUtils", "SerializerUtils", 3, 0, "minborg@speedment.com").
method("SerializerUtils", "put", 3, 1, "minborg@speedment.com").
calls("SerializerUtils", "put", "SERIALIZER_FOR_CLASS", "put").
method("SerializerUtils", "serializerForClass", 4, 1, "jan@kotek.net").
method("SerializerUtils", "compareInt", 3, 1, "jan@kotek.net").

# mapdb/src/main/java/org/mapdb/serializer/SerializerArray.java

class("SerializerArray").
method("SerializerArray", "SerializerArray", 4, 0, "jan@kotek.net").
method("SerializerArray", "SerializerArray", 3, 0, "jan@kotek.net").
calls("SerializerArray", "SerializerArray", "SerializerArray", "SerializerArray").
method("SerializerArray", "SerializerArray", 7, 0, "jan@kotek.net").
method("SerializerArray", "serialize", 5, 2, "jan@kotek.net").
calls("SerializerArray", "serialize", "DataOutput2", "packInt").
calls("SerializerArray", "serialize", "Serializer", "serialize").
method("SerializerArray", "deserialize", 7, 2, "jan@kotek.net").
calls("SerializerArray", "deserialize", "Serializer", "deserialize").
method("SerializerArray", "isTrusted", 3, 1, "jan@kotek.net").
calls("SerializerArray", "isTrusted", "Serializer", "isTrusted").
method("SerializerArray", "equals", 13, 5, "jan@kotek.net").
calls("SerializerArray", "equals", "Serializer", "equals").
method("SerializerArray", "hashCode", 6, 2, "jan@kotek.net").
calls("SerializerArray", "hashCode", "Serializer", "hashCode").
method("SerializerArray", "equals", 9, 3, "jan@kotek.net").
calls("SerializerArray", "equals", "SerializerArray", "getClass").
calls("SerializerArray", "equals", "Object", "getClass").
calls("SerializerArray", "equals", "Serializer", "equals").
method("SerializerArray", "hashCode", 3, 1, "jan@kotek.net").
calls("SerializerArray", "hashCode", "Serializer", "hashCode").
method("SerializerArray", "compare", 24, 6, "jan@kotek.net").
calls("SerializerArray", "compare", "Serializer", "compare").
calls("SerializerArray", "compare", "SerializerUtils", "compareInt").
method("SerializerArray", "callbackDB", 5, 2, "jan@kotek.net").
calls("SerializerArray", "callbackDB", "DB", "getDefaultSerializer").

# mapdb/src/main/java/org/mapdb/serializer/SerializerStringDelta.java

class("SerializerStringDelta").
method("SerializerStringDelta", "commonPrefixLen", 11, 5, "jan@kotek.net").
method("SerializerStringDelta", "valueArrayDeserialize", 15, 6, "jan@kotek.net").
calls("SerializerStringDelta", "valueArrayDeserialize", "DataInput2", "unpackInt").
calls("SerializerStringDelta", "valueArrayDeserialize", "System", "arraycopy").
calls("SerializerStringDelta", "valueArrayDeserialize", "DataInput2", "unpackInt").
method("SerializerStringDelta", "valueArraySerialize", 13, 5, "jan@kotek.net").
calls("SerializerStringDelta", "valueArraySerialize", "DataOutput2", "packInt").
calls("SerializerStringDelta", "valueArraySerialize", "DataIO", "packInt").
calls("SerializerStringDelta", "valueArraySerialize", "DataOutput2", "packInt").
calls("SerializerStringDelta", "valueArraySerialize", "DataOutput2", "packInt").

# mapdb/src/main/java/org/mapdb/serializer/SerializerLong.java

class("SerializerLong").
method("SerializerLong", "serialize", 3, 1, "jan@kotek.net").
calls("SerializerLong", "serialize", "DataOutput2", "writeLong").
method("SerializerLong", "deserialize", 3, 1, "jan@kotek.net").
method("SerializerLong", "unpack", 3, 1, "jan@kotek.net").
method("SerializerLong", "pack", 3, 1, "jan@kotek.net").
calls("SerializerLong", "pack", "Long", "longValue").
method("SerializerLong", "valueArraySearch", 3, 1, "jan@kotek.net").
calls("SerializerLong", "valueArraySearch", "Arrays", "binarySearch").
method("SerializerLong", "valueArrayBinarySearch", 13, 4, "jan@kotek.net").
calls("SerializerLong", "valueArrayBinarySearch", "SerializerEightByte", "valueArrayBinarySearch").
calls("SerializerLong", "valueArrayBinarySearch", "DataInput2", "skipBytes").

# mapdb/src/main/java/org/mapdb/serializer/SerializerArrayTuple.java

class("SerializerArrayTuple").
method("SerializerArrayTuple", "SerializerArrayTuple", 5, 0, "jan@kotek.net").
method("SerializerArrayTuple", "SerializerArrayTuple", 5, 0, "jan@kotek.net").
calls("SerializerArrayTuple", "SerializerArrayTuple", "Serializer", "clone").
calls("SerializerArrayTuple", "SerializerArrayTuple", "Comparator", "clone").
method("SerializerArrayTuple", "SerializerArrayTuple", 5, 0, "jan@kotek.net").
calls("SerializerArrayTuple", "SerializerArrayTuple", "Serializer", "clone").
method("SerializerArrayTuple", "cast", 6, 2, "jan@kotek.net").
method("SerializerArrayTuple", "serialize", 4, 2, "jan@kotek.net").
method("SerializerArrayTuple", "deserialize", 6, 2, "jan@kotek.net").
method("SerializerArrayTuple", "valueArraySerialize", 5, 2, "jan@kotek.net").
method("SerializerArrayTuple", "valueArrayDeserialize", 6, 2, "jan@kotek.net").
method("SerializerArrayTuple", "valueArraySearch", 3, 1, "jan@kotek.net").
calls("SerializerArrayTuple", "valueArraySearch", "SerializerArrayTuple", "valueArrayToArray").
calls("SerializerArrayTuple", "valueArraySearch", "Arrays", "binarySearch").
method("SerializerArrayTuple", "valueArraySearch", 3, 1, "jan@kotek.net").
calls("SerializerArrayTuple", "valueArraySearch", "SerializerArrayTuple", "valueArrayToArray").
calls("SerializerArrayTuple", "valueArraySearch", "Arrays", "binarySearch").
method("SerializerArrayTuple", "valueArrayGet", 4, 1, "jan@kotek.net").
calls("SerializerArrayTuple", "valueArrayGet", "SerializerArrayTuple", "cast").
calls("SerializerArrayTuple", "valueArrayGet", "Arrays", "copyOfRange").
method("SerializerArrayTuple", "valueArraySize", 3, 1, "jan@kotek.net").
calls("SerializerArrayTuple", "valueArraySize", "SerializerArrayTuple", "cast").
method("SerializerArrayTuple", "valueArrayEmpty", 3, 1, "jan@kotek.net").
method("SerializerArrayTuple", "valueArrayPut", 13, 3, "jan@kotek.net").
calls("SerializerArrayTuple", "valueArrayPut", "System", "arraycopy").
calls("SerializerArrayTuple", "valueArrayPut", "System", "arraycopy").
method("SerializerArrayTuple", "valueArrayUpdateVal", 8, 2, "jan@kotek.net").
calls("SerializerArrayTuple", "valueArrayUpdateVal", "System", "arraycopy").
method("SerializerArrayTuple", "valueArrayFromArray", 12, 4, "jan@kotek.net").
method("SerializerArrayTuple", "valueArrayCopyOfRange", 3, 1, "jan@kotek.net").
calls("SerializerArrayTuple", "valueArrayCopyOfRange", "SerializerArrayTuple", "cast").
calls("SerializerArrayTuple", "valueArrayCopyOfRange", "Arrays", "copyOfRange").
method("SerializerArrayTuple", "valueArrayDeleteValue", 8, 1, "jan@kotek.net").
calls("SerializerArrayTuple", "valueArrayDeleteValue", "System", "arraycopy").
calls("SerializerArrayTuple", "valueArrayDeleteValue", "System", "arraycopy").
method("SerializerArrayTuple", "nextValue", 3, 1, "jan@kotek.net").
calls("SerializerArrayTuple", "nextValue", "Arrays", "copyOf").
method("SerializerArrayTuple", "equals", 10, 4, "jan@kotek.net").
method("SerializerArrayTuple", "compare", 20, 6, "jan@kotek.net").
calls("SerializerArrayTuple", "compare", "Integer", "compare").
method("SerializerArrayTuple", "hashCode", 8, 3, "jan@kotek.net").
calls("SerializerArrayTuple", "hashCode", "DataIO", "intHash").
method("SerializerArrayTuple", "isTrusted", 7, 3, "jan@kotek.net").
calls("SerializerArrayTuple", "isTrusted", "Serializer", "isTrusted").
method("SerializerArrayTuple", "callbackDB", 9, 4, "jan@kotek.net").
calls("SerializerArrayTuple", "callbackDB", "DB", "getDefaultSerializer").
calls("SerializerArrayTuple", "callbackDB", "DB", "getDefaultSerializer").

# mapdb/src/main/java/org/mapdb/serializer/SerializerClass.java

class("SerializerClass").
method("SerializerClass", "SerializerClass", 3, 0, "jan@kotek.net").
method("SerializerClass", "SerializerClass", 3, 0, "jan@kotek.net").
calls("SerializerClass", "SerializerClass", "Thread", "currentThread").
calls("SerializerClass", "SerializerClass", "SerializerClass", "SerializerClass").
method("SerializerClass", "serialize", 3, 1, "jan@kotek.net").
calls("SerializerClass", "serialize", "Class", "getName").
calls("SerializerClass", "serialize", "DataOutput2", "writeUTF").
method("SerializerClass", "deserialize", 6, 2, "jan@kotek.net").
calls("SerializerClass", "deserialize", "DataInput2", "readUTF").
calls("SerializerClass", "deserialize", "ClassLoader", "loadClass").
method("SerializerClass", "isTrusted", 3, 1, "jan@kotek.net").
method("SerializerClass", "equals", 3, 1, "jan@kotek.net").
calls("SerializerClass", "equals", "Class", "toString").
method("SerializerClass", "hashCode", 3, 1, "jan@kotek.net").
calls("SerializerClass", "hashCode", "Class", "toString").

# mapdb/src/main/java/org/mapdb/serializer/SerializerIntArray.java

class("SerializerIntArray").
method("SerializerIntArray", "serialize", 5, 2, "jan@kotek.net").
calls("SerializerIntArray", "serialize", "DataOutput2", "packInt").
calls("SerializerIntArray", "serialize", "DataOutput2", "writeInt").
method("SerializerIntArray", "deserialize", 7, 2, "jan@kotek.net").
calls("SerializerIntArray", "deserialize", "DataInput2", "readInt").
method("SerializerIntArray", "isTrusted", 3, 1, "jan@kotek.net").
method("SerializerIntArray", "equals", 3, 1, "jan@kotek.net").
calls("SerializerIntArray", "equals", "Arrays", "equals").
method("SerializerIntArray", "hashCode", 5, 2, "jan@kotek.net").
method("SerializerIntArray", "compare", 15, 5, "jan@kotek.net").
calls("SerializerIntArray", "compare", "SerializerUtils", "compareInt").
method("SerializerIntArray", "nextValue", 14, 4, "shabanovd@gmail.com").
calls("SerializerIntArray", "nextValue", "int", "clone").

# mapdb/src/main/java/org/mapdb/serializer/SerializerJava.java

class("SerializerJava").
method("SerializerJava", "serialize", 5, 1, "jan@kotek.net").
calls("SerializerJava", "serialize", "ObjectOutputStream", "writeObject").
calls("SerializerJava", "serialize", "ObjectOutputStream", "flush").
method("SerializerJava", "deserialize", 7, 2, "jan@kotek.net").
calls("SerializerJava", "deserialize", "ObjectInputStream", "readObject").
method("SerializerJava", "valueArrayDeserialize", 11, 3, "jan@kotek.net").
calls("SerializerJava", "valueArrayDeserialize", "SerializerJava", "valueArraySize").
method("SerializerJava", "valueArraySerialize", 5, 1, "jan@kotek.net").
calls("SerializerJava", "valueArraySerialize", "ObjectOutputStream", "writeObject").
calls("SerializerJava", "valueArraySerialize", "ObjectOutputStream", "flush").

# mapdb/src/main/java/org/mapdb/serializer/SerializerStringIntern.java

class("SerializerStringIntern").
method("SerializerStringIntern", "serialize", 3, 1, "jan@kotek.net").
calls("SerializerStringIntern", "serialize", "DataOutput2", "writeUTF").
method("SerializerStringIntern", "deserialize", 3, 1, "jan@kotek.net").
calls("SerializerStringIntern", "deserialize", "DataInput2", "readUTF").
method("SerializerStringIntern", "isTrusted", 3, 1, "jan@kotek.net").
method("SerializerStringIntern", "hashCode", 3, 1, "jan@kotek.net").
calls("SerializerStringIntern", "hashCode", "STRING", "hashCode").

# mapdb/src/main/java/org/mapdb/serializer/SerializerUUID.java

class("SerializerUUID").
method("SerializerUUID", "serialize", 4, 1, "jan@kotek.net").
calls("SerializerUUID", "serialize", "UUID", "getMostSignificantBits").
calls("SerializerUUID", "serialize", "DataOutput2", "writeLong").
calls("SerializerUUID", "serialize", "UUID", "getLeastSignificantBits").
calls("SerializerUUID", "serialize", "DataOutput2", "writeLong").
method("SerializerUUID", "deserialize", 3, 1, "jan@kotek.net").
method("SerializerUUID", "fixedSize", 3, 1, "jan@kotek.net").
method("SerializerUUID", "isTrusted", 3, 1, "jan@kotek.net").
method("SerializerUUID", "equals", 3, 1, "jan@kotek.net").
calls("SerializerUUID", "equals", "UUID", "getLeastSignificantBits").
calls("SerializerUUID", "equals", "UUID", "getLeastSignificantBits").
calls("SerializerUUID", "equals", "UUID", "getMostSignificantBits").
calls("SerializerUUID", "equals", "UUID", "getMostSignificantBits").
method("SerializerUUID", "hashCode", 4, 1, "jan@kotek.net").
method("SerializerUUID", "valueArraySearch", 3, 1, "jan@kotek.net").
calls("SerializerUUID", "valueArraySearch", "SerializerUUID", "valueArrayToArray").
calls("SerializerUUID", "valueArraySearch", "Arrays", "binarySearch").
method("SerializerUUID", "valueArraySearch", 3, 1, "jan@kotek.net").
calls("SerializerUUID", "valueArraySearch", "SerializerUUID", "valueArrayToArray").
calls("SerializerUUID", "valueArraySearch", "Arrays", "binarySearch").
method("SerializerUUID", "valueArraySerialize", 4, 2, "jan@kotek.net").
calls("SerializerUUID", "valueArraySerialize", "DataOutput2", "writeLong").
method("SerializerUUID", "valueArrayDeserialize", 7, 2, "jan@kotek.net").
calls("SerializerUUID", "valueArrayDeserialize", "DataInput2", "readLong").
method("SerializerUUID", "valueArrayGet", 5, 1, "jan@kotek.net").
method("SerializerUUID", "valueArraySize", 3, 1, "jan@kotek.net").
method("SerializerUUID", "valueArrayEmpty", 3, 1, "jan@kotek.net").
method("SerializerUUID", "valueArrayPut", 11, 2, "jan@kotek.net").
calls("SerializerUUID", "valueArrayPut", "System", "arraycopy").
calls("SerializerUUID", "valueArrayPut", "UUID", "getMostSignificantBits").
calls("SerializerUUID", "valueArrayPut", "UUID", "getLeastSignificantBits").
method("SerializerUUID", "valueArrayUpdateVal", 7, 1, "jan@kotek.net").
calls("SerializerUUID", "valueArrayUpdateVal", "UUID", "getMostSignificantBits").
calls("SerializerUUID", "valueArrayUpdateVal", "UUID", "getLeastSignificantBits").
method("SerializerUUID", "valueArrayFromArray", 9, 2, "jan@kotek.net").
calls("SerializerUUID", "valueArrayFromArray", "UUID", "getMostSignificantBits").
calls("SerializerUUID", "valueArrayFromArray", "UUID", "getLeastSignificantBits").
method("SerializerUUID", "valueArrayCopyOfRange", 3, 1, "jan@kotek.net").
calls("SerializerUUID", "valueArrayCopyOfRange", "Arrays", "copyOfRange").
method("SerializerUUID", "valueArrayDeleteValue", 8, 1, "jan@kotek.net").
calls("SerializerUUID", "valueArrayDeleteValue", "System", "arraycopy").
calls("SerializerUUID", "valueArrayDeleteValue", "System", "arraycopy").

# mapdb/src/main/java/org/mapdb/serializer/SerializerRecidArray.java

class("SerializerRecidArray").
method("SerializerRecidArray", "serialize", 5, 2, "jan@kotek.net").
calls("SerializerRecidArray", "serialize", "DataOutput2", "packInt").
calls("SerializerRecidArray", "serialize", "DataIO", "packRecid").
method("SerializerRecidArray", "deserialize", 7, 2, "jan@kotek.net").
calls("SerializerRecidArray", "deserialize", "DataIO", "unpackRecid").

# mapdb/src/main/java/org/mapdb/serializer/SerializerByte.java

class("SerializerByte").
method("SerializerByte", "serialize", 3, 1, "jan@kotek.net").
calls("SerializerByte", "serialize", "DataOutput2", "writeByte").
method("SerializerByte", "deserialize", 3, 1, "jan@kotek.net").
calls("SerializerByte", "deserialize", "DataInput2", "readByte").
method("SerializerByte", "fixedSize", 3, 1, "jan@kotek.net").
method("SerializerByte", "isTrusted", 3, 1, "jan@kotek.net").

# mapdb/src/main/java/org/mapdb/serializer/SerializerCompressionDeflateWrapper.java

class("SerializerCompressionDeflateWrapper").
method("SerializerCompressionDeflateWrapper", "SerializerCompressionDeflateWrapper", 3, 0, "jan@kotek.net").
calls("SerializerCompressionDeflateWrapper", "SerializerCompressionDeflateWrapper", "SerializerCompressionDeflateWrapper", "SerializerCompressionDeflateWrapper").
method("SerializerCompressionDeflateWrapper", "SerializerCompressionDeflateWrapper", 5, 0, "jan@kotek.net").
method("SerializerCompressionDeflateWrapper", "serialize", 23, 4, "jan@kotek.net").
calls("SerializerCompressionDeflateWrapper", "serialize", "GroupSerializer", "serialize").
calls("SerializerCompressionDeflateWrapper", "serialize", "Deflater", "setDictionary").
calls("SerializerCompressionDeflateWrapper", "serialize", "Deflater", "setInput").
calls("SerializerCompressionDeflateWrapper", "serialize", "Deflater", "finish").
calls("SerializerCompressionDeflateWrapper", "serialize", "Deflater", "deflate").
calls("SerializerCompressionDeflateWrapper", "serialize", "DataOutput2", "packInt").
calls("SerializerCompressionDeflateWrapper", "serialize", "DataOutput2", "write").
calls("SerializerCompressionDeflateWrapper", "serialize", "DataOutput2", "packInt").
calls("SerializerCompressionDeflateWrapper", "serialize", "DataOutput2", "write").
method("SerializerCompressionDeflateWrapper", "deserialize", 19, 4, "jan@kotek.net").
calls("SerializerCompressionDeflateWrapper", "deserialize", "GroupSerializer", "deserialize").
calls("SerializerCompressionDeflateWrapper", "deserialize", "Inflater", "setDictionary").
calls("SerializerCompressionDeflateWrapper", "deserialize", "InflaterInputStream", "read").
method("SerializerCompressionDeflateWrapper", "equals", 16, 5, "jan@kotek.net").
calls("SerializerCompressionDeflateWrapper", "equals", "SerializerCompressionDeflateWrapper", "getClass").
calls("SerializerCompressionDeflateWrapper", "equals", "Object", "getClass").
calls("SerializerCompressionDeflateWrapper", "equals", "GroupSerializer", "equals").
calls("SerializerCompressionDeflateWrapper", "equals", "Arrays", "equals").
method("SerializerCompressionDeflateWrapper", "hashCode", 6, 1, "jan@kotek.net").
calls("SerializerCompressionDeflateWrapper", "hashCode", "Arrays", "hashCode").
method("SerializerCompressionDeflateWrapper", "isTrusted", 3, 1, "jan@kotek.net").
method("SerializerCompressionDeflateWrapper", "valueArraySearch", 3, 1, "jan@kotek.net").
calls("SerializerCompressionDeflateWrapper", "valueArraySearch", "GroupSerializer", "valueArraySearch").
method("SerializerCompressionDeflateWrapper", "valueArraySearch", 3, 1, "jan@kotek.net").
calls("SerializerCompressionDeflateWrapper", "valueArraySearch", "GroupSerializer", "valueArraySearch").
method("SerializerCompressionDeflateWrapper", "valueArraySerialize", 26, 5, "jan@kotek.net").
calls("SerializerCompressionDeflateWrapper", "valueArraySerialize", "GroupSerializer", "valueArraySerialize").
calls("SerializerCompressionDeflateWrapper", "valueArraySerialize", "Deflater", "setDictionary").
calls("SerializerCompressionDeflateWrapper", "valueArraySerialize", "Deflater", "setInput").
calls("SerializerCompressionDeflateWrapper", "valueArraySerialize", "Deflater", "finish").
calls("SerializerCompressionDeflateWrapper", "valueArraySerialize", "Deflater", "deflate").
calls("SerializerCompressionDeflateWrapper", "valueArraySerialize", "DataOutput2", "packInt").
calls("SerializerCompressionDeflateWrapper", "valueArraySerialize", "DataOutput2", "write").
calls("SerializerCompressionDeflateWrapper", "valueArraySerialize", "DataOutput2", "packInt").
calls("SerializerCompressionDeflateWrapper", "valueArraySerialize", "DataOutput2", "write").
method("SerializerCompressionDeflateWrapper", "valueArrayDeserialize", 22, 5, "jan@kotek.net").
calls("SerializerCompressionDeflateWrapper", "valueArrayDeserialize", "GroupSerializer", "valueArrayEmpty").
calls("SerializerCompressionDeflateWrapper", "valueArrayDeserialize", "GroupSerializer", "valueArrayDeserialize").
calls("SerializerCompressionDeflateWrapper", "valueArrayDeserialize", "Inflater", "setDictionary").
calls("SerializerCompressionDeflateWrapper", "valueArrayDeserialize", "InflaterInputStream", "read").
method("SerializerCompressionDeflateWrapper", "valueArrayGet", 3, 1, "jan@kotek.net").
calls("SerializerCompressionDeflateWrapper", "valueArrayGet", "GroupSerializer", "valueArrayGet").
method("SerializerCompressionDeflateWrapper", "valueArraySize", 3, 1, "jan@kotek.net").
calls("SerializerCompressionDeflateWrapper", "valueArraySize", "GroupSerializer", "valueArraySize").
method("SerializerCompressionDeflateWrapper", "valueArrayEmpty", 3, 1, "jan@kotek.net").
calls("SerializerCompressionDeflateWrapper", "valueArrayEmpty", "GroupSerializer", "valueArrayEmpty").
method("SerializerCompressionDeflateWrapper", "valueArrayPut", 3, 1, "jan@kotek.net").
calls("SerializerCompressionDeflateWrapper", "valueArrayPut", "GroupSerializer", "valueArrayPut").
method("SerializerCompressionDeflateWrapper", "valueArrayUpdateVal", 3, 1, "jan@kotek.net").
calls("SerializerCompressionDeflateWrapper", "valueArrayUpdateVal", "GroupSerializer", "valueArrayUpdateVal").
method("SerializerCompressionDeflateWrapper", "valueArrayFromArray", 3, 1, "jan@kotek.net").
calls("SerializerCompressionDeflateWrapper", "valueArrayFromArray", "GroupSerializer", "valueArrayFromArray").
method("SerializerCompressionDeflateWrapper", "valueArrayCopyOfRange", 3, 1, "jan@kotek.net").
calls("SerializerCompressionDeflateWrapper", "valueArrayCopyOfRange", "GroupSerializer", "valueArrayCopyOfRange").
method("SerializerCompressionDeflateWrapper", "valueArrayDeleteValue", 3, 1, "jan@kotek.net").
calls("SerializerCompressionDeflateWrapper", "valueArrayDeleteValue", "GroupSerializer", "valueArrayDeleteValue").
method("SerializerCompressionDeflateWrapper", "equals", 3, 1, "jan@kotek.net").
calls("SerializerCompressionDeflateWrapper", "equals", "GroupSerializer", "equals").
method("SerializerCompressionDeflateWrapper", "hashCode", 3, 1, "jan@kotek.net").
calls("SerializerCompressionDeflateWrapper", "hashCode", "GroupSerializer", "hashCode").
method("SerializerCompressionDeflateWrapper", "compare", 3, 1, "jan@kotek.net").
calls("SerializerCompressionDeflateWrapper", "compare", "GroupSerializer", "compare").

# mapdb/src/main/java/org/mapdb/serializer/SerializerByteArrayDelta2.java

class("SerializerByteArrayDelta2").
method("SerializerByteArrayDelta2", "valueArraySearch", 4, 1, "jan@kotek.net").
calls("SerializerByteArrayDelta2", "valueArraySearch", "Arrays", "binarySearch").
method("SerializerByteArrayDelta2", "valueArraySearch", 4, 1, "jan@kotek.net").
calls("SerializerByteArrayDelta2", "valueArraySearch", "Arrays", "binarySearch").
method("SerializerByteArrayDelta2", "valueArraySerialize", 14, 3, "jan@kotek.net").
calls("SerializerByteArrayDelta2", "valueArraySerialize", "DataOutput2", "packInt").
calls("SerializerByteArrayDelta2", "valueArraySerialize", "DataOutput2", "packInt").
calls("SerializerByteArrayDelta2", "valueArraySerialize", "DataOutput2", "write").
calls("SerializerByteArrayDelta2", "valueArraySerialize", "DataOutput2", "write").
method("SerializerByteArrayDelta2", "valueArrayDeserialize", 17, 4, "jan@kotek.net").
calls("SerializerByteArrayDelta2", "valueArrayDeserialize", "DataInput2", "unpackInt").
calls("SerializerByteArrayDelta2", "valueArrayDeserialize", "DataInput2", "readFully").
calls("SerializerByteArrayDelta2", "valueArrayDeserialize", "System", "arraycopy").
calls("SerializerByteArrayDelta2", "valueArrayDeserialize", "DataInput2", "readFully").
method("SerializerByteArrayDelta2", "valueArrayGet", 3, 1, "jan@kotek.net").
method("SerializerByteArrayDelta2", "valueArraySize", 3, 1, "jan@kotek.net").
method("SerializerByteArrayDelta2", "valueArrayEmpty", 3, 1, "jan@kotek.net").
method("SerializerByteArrayDelta2", "valueArrayPut", 3, 1, "jan@kotek.net").
method("SerializerByteArrayDelta2", "valueArrayUpdateVal", 5, 1, "jan@kotek.net").
calls("SerializerByteArrayDelta2", "valueArrayUpdateVal", "SerializerByteArrayDelta2", "valueArrayFromArray").
method("SerializerByteArrayDelta2", "valueArrayFromArray", 15, 3, "jan@kotek.net").
calls("SerializerByteArrayDelta2", "valueArrayFromArray", "System", "arraycopy").
method("SerializerByteArrayDelta2", "valueArrayCopyOfRange", 3, 1, "jan@kotek.net").
method("SerializerByteArrayDelta2", "valueArrayDeleteValue", 5, 1, "jan@kotek.net").
calls("SerializerByteArrayDelta2", "valueArrayDeleteValue", "DataIO", "arrayDelete").
calls("SerializerByteArrayDelta2", "valueArrayDeleteValue", "SerializerByteArrayDelta2", "valueArrayFromArray").
method("SerializerByteArrayDelta2", "serialize", 3, 1, "jan@kotek.net").
calls("SerializerByteArrayDelta2", "serialize", "Serializer.BYTE_ARRAY", "serialize").
method("SerializerByteArrayDelta2", "deserialize", 3, 1, "jan@kotek.net").
calls("SerializerByteArrayDelta2", "deserialize", "Serializer.BYTE_ARRAY", "deserialize").
method("SerializerByteArrayDelta2", "compare", 3, 1, "jan@kotek.net").
calls("SerializerByteArrayDelta2", "compare", "Serializer.BYTE_ARRAY", "compare").
method("SerializerByteArrayDelta2", "equals", 3, 1, "jan@kotek.net").
calls("SerializerByteArrayDelta2", "equals", "Serializer.BYTE_ARRAY", "equals").
method("SerializerByteArrayDelta2", "hashCode", 3, 1, "jan@kotek.net").
calls("SerializerByteArrayDelta2", "hashCode", "Serializer.BYTE_ARRAY", "hashCode").
method("SerializerByteArrayDelta2", "isTrusted", 3, 1, "jan@kotek.net").

# mapdb/src/main/java/org/mapdb/serializer/GroupSerializerObjectArray.java

class("GroupSerializerObjectArray").
method("GroupSerializerObjectArray", "valueArraySerialize", 4, 2, "jan@kotek.net").
calls("GroupSerializerObjectArray", "valueArraySerialize", "GroupSerializerObjectArray", "serialize").
method("GroupSerializerObjectArray", "valueArrayDeserialize", 6, 2, "jan@kotek.net").
calls("GroupSerializerObjectArray", "valueArrayDeserialize", "GroupSerializerObjectArray", "deserialize").
method("GroupSerializerObjectArray", "valueArrayGet", 3, 1, "jan@kotek.net").
method("GroupSerializerObjectArray", "valueArraySize", 3, 1, "jan@kotek.net").
method("GroupSerializerObjectArray", "valueArrayEmpty", 3, 1, "jan@kotek.net").
method("GroupSerializerObjectArray", "valueArrayPut", 3, 1, "jan@kotek.net").
calls("GroupSerializerObjectArray", "valueArrayPut", "DataIO", "arrayPut").
method("GroupSerializerObjectArray", "valueArrayUpdateVal", 6, 1, "jan@kotek.net").
calls("GroupSerializerObjectArray", "valueArrayUpdateVal", "Object", "clone").
method("GroupSerializerObjectArray", "valueArrayFromArray", 3, 1, "jan@kotek.net").
method("GroupSerializerObjectArray", "valueArrayCopyOfRange", 3, 1, "jan@kotek.net").
calls("GroupSerializerObjectArray", "valueArrayCopyOfRange", "Arrays", "copyOfRange").
method("GroupSerializerObjectArray", "valueArrayDeleteValue", 3, 1, "jan@kotek.net").
calls("GroupSerializerObjectArray", "valueArrayDeleteValue", "DataIO", "arrayDelete").
method("GroupSerializerObjectArray", "valueArraySearch", 3, 1, "jan@kotek.net").
calls("GroupSerializerObjectArray", "valueArraySearch", "Arrays", "binarySearch").
method("GroupSerializerObjectArray", "valueArrayToArray", 3, 1, "jan@kotek.net").
method("GroupSerializerObjectArray", "valueArraySearch", 6, 2, "jan@kotek.net").
calls("GroupSerializerObjectArray", "valueArraySearch", "GroupSerializerObjectArray", "valueArraySearch").
calls("GroupSerializerObjectArray", "valueArraySearch", "Arrays", "binarySearch").

# mapdb/src/main/java/org/mapdb/serializer/SerializerByteArray.java

class("SerializerByteArray").
method("SerializerByteArray", "serialize", 4, 1, "jan@kotek.net").
calls("SerializerByteArray", "serialize", "DataOutput2", "packInt").
calls("SerializerByteArray", "serialize", "DataOutput2", "write").
method("SerializerByteArray", "deserialize", 6, 1, "jan@kotek.net").
calls("SerializerByteArray", "deserialize", "DataInput2", "readFully").
method("SerializerByteArray", "isTrusted", 3, 1, "jan@kotek.net").
method("SerializerByteArray", "equals", 3, 1, "jan@kotek.net").
calls("SerializerByteArray", "equals", "Arrays", "equals").
method("SerializerByteArray", "hashCode", 3, 1, "jan@kotek.net").
calls("SerializerByteArray", "hashCode", "HASHER", "hash").
method("SerializerByteArray", "compare", 13, 4, "jan@kotek.net").
method("SerializerByteArray", "valueArraySearch", 3, 1, "jan@kotek.net").
calls("SerializerByteArray", "valueArraySearch", "Arrays", "binarySearch").
method("SerializerByteArray", "valueArraySearch", 4, 1, "jan@kotek.net").
calls("SerializerByteArray", "valueArraySearch", "Arrays", "binarySearch").
method("SerializerByteArray", "valueArraySerialize", 6, 2, "jan@kotek.net").
calls("SerializerByteArray", "valueArraySerialize", "DataOutput2", "packInt").
calls("SerializerByteArray", "valueArraySerialize", "Serializer.BYTE_ARRAY", "serialize").
method("SerializerByteArray", "valueArrayDeserialize", 7, 2, "jan@kotek.net").
calls("SerializerByteArray", "valueArrayDeserialize", "Serializer.BYTE_ARRAY", "deserialize").
method("SerializerByteArray", "valueArrayGet", 3, 1, "jan@kotek.net").
method("SerializerByteArray", "valueArraySize", 3, 1, "jan@kotek.net").
method("SerializerByteArray", "valueArrayEmpty", 3, 1, "jan@kotek.net").
method("SerializerByteArray", "valueArrayPut", 9, 2, "jan@kotek.net").
calls("SerializerByteArray", "valueArrayPut", "System", "arraycopy").
method("SerializerByteArray", "valueArrayUpdateVal", 6, 1, "jan@kotek.net").
calls("SerializerByteArray", "valueArrayUpdateVal", "byte", "clone").
method("SerializerByteArray", "valueArrayFromArray", 6, 2, "jan@kotek.net").
method("SerializerByteArray", "valueArrayCopyOfRange", 3, 1, "jan@kotek.net").
calls("SerializerByteArray", "valueArrayCopyOfRange", "Arrays", "copyOfRange").
method("SerializerByteArray", "valueArrayDeleteValue", 6, 1, "jan@kotek.net").
calls("SerializerByteArray", "valueArrayDeleteValue", "System", "arraycopy").
calls("SerializerByteArray", "valueArrayDeleteValue", "System", "arraycopy").
method("SerializerByteArray", "nextValue", 14, 4, "jan@kotek.net").
calls("SerializerByteArray", "nextValue", "byte", "clone").

# mapdb/src/main/java/org/mapdb/serializer/SerializerShort.java

class("SerializerShort").
method("SerializerShort", "serialize", 3, 1, "jan@kotek.net").
calls("SerializerShort", "serialize", "Short", "shortValue").
calls("SerializerShort", "serialize", "DataOutput2", "writeShort").
method("SerializerShort", "deserialize", 3, 1, "jan@kotek.net").
calls("SerializerShort", "deserialize", "DataInput2", "readShort").
method("SerializerShort", "fixedSize", 3, 1, "jan@kotek.net").
method("SerializerShort", "isTrusted", 3, 1, "jan@kotek.net").

# mapdb/src/main/java/org/mapdb/serializer/SerializerBigDecimal.java

class("SerializerBigDecimal").
method("SerializerBigDecimal", "serialize", 4, 1, "jan@kotek.net").
calls("SerializerBigDecimal", "serialize", "BigDecimal", "unscaledValue").
calls("SerializerBigDecimal", "serialize", "BYTE_ARRAY", "serialize").
calls("SerializerBigDecimal", "serialize", "BigDecimal", "scale").
calls("SerializerBigDecimal", "serialize", "DataOutput2", "packInt").
method("SerializerBigDecimal", "deserialize", 3, 1, "jan@kotek.net").
method("SerializerBigDecimal", "isTrusted", 3, 1, "jan@kotek.net").

# mapdb/src/main/java/org/mapdb/serializer/SerializerBoolean.java

class("SerializerBoolean").
method("SerializerBoolean", "serialize", 3, 1, "jan@kotek.net").
calls("SerializerBoolean", "serialize", "DataOutput2", "writeBoolean").
method("SerializerBoolean", "deserialize", 3, 1, "jan@kotek.net").
calls("SerializerBoolean", "deserialize", "DataInput2", "readBoolean").
method("SerializerBoolean", "fixedSize", 3, 1, "jan@kotek.net").
method("SerializerBoolean", "isTrusted", 3, 1, "jan@kotek.net").
method("SerializerBoolean", "valueArraySearch", 3, 1, "jan@kotek.net").
calls("SerializerBoolean", "valueArraySearch", "SerializerBoolean", "valueArrayToArray").
calls("SerializerBoolean", "valueArraySearch", "Arrays", "binarySearch").
method("SerializerBoolean", "valueArraySearch", 3, 1, "jan@kotek.net").
calls("SerializerBoolean", "valueArraySearch", "SerializerBoolean", "valueArrayToArray").
calls("SerializerBoolean", "valueArraySearch", "Arrays", "binarySearch").
method("SerializerBoolean", "valueArraySerialize", 4, 2, "jan@kotek.net").
calls("SerializerBoolean", "valueArraySerialize", "DataOutput2", "writeBoolean").
method("SerializerBoolean", "valueArrayDeserialize", 6, 2, "jan@kotek.net").
calls("SerializerBoolean", "valueArrayDeserialize", "DataInput2", "readBoolean").
method("SerializerBoolean", "valueArrayGet", 3, 1, "jan@kotek.net").
method("SerializerBoolean", "valueArraySize", 3, 1, "jan@kotek.net").
method("SerializerBoolean", "valueArrayEmpty", 3, 1, "jan@kotek.net").
method("SerializerBoolean", "valueArrayPut", 9, 2, "jan@kotek.net").
calls("SerializerBoolean", "valueArrayPut", "System", "arraycopy").
method("SerializerBoolean", "valueArrayUpdateVal", 5, 1, "jan@kotek.net").
method("SerializerBoolean", "valueArrayFromArray", 6, 2, "jan@kotek.net").
method("SerializerBoolean", "valueArrayCopyOfRange", 3, 1, "jan@kotek.net").
calls("SerializerBoolean", "valueArrayCopyOfRange", "Arrays", "copyOfRange").
method("SerializerBoolean", "valueArrayDeleteValue", 7, 1, "jan@kotek.net").
calls("SerializerBoolean", "valueArrayDeleteValue", "System", "arraycopy").
calls("SerializerBoolean", "valueArrayDeleteValue", "System", "arraycopy").

# mapdb/src/main/java/org/mapdb/serializer/SerializerString.java

class("SerializerString").
method("SerializerString", "serialize", 3, 1, "jan@kotek.net").
calls("SerializerString", "serialize", "DataOutput2", "writeUTF").
method("SerializerString", "deserialize", 3, 1, "jan@kotek.net").
calls("SerializerString", "deserialize", "DataInput2", "readUTF").
method("SerializerString", "isTrusted", 3, 1, "jan@kotek.net").
method("SerializerString", "valueArraySerialize", 6, 3, "jan@kotek.net").
calls("SerializerString", "valueArraySerialize", "DataOutput2", "packInt").
calls("SerializerString", "valueArraySerialize", "DataOutput2", "packInt").
method("SerializerString", "valueArrayDeserialize", 10, 3, "jan@kotek.net").
calls("SerializerString", "valueArrayDeserialize", "DataInput2", "unpackInt").
method("SerializerString", "valueArraySearch", 4, 1, "jan@kotek.net").
calls("SerializerString", "valueArraySearch", "Arrays", "binarySearch").
method("SerializerString", "valueArraySearch", 18, 4, "jan@kotek.net").
method("SerializerString", "valueArrayGet", 3, 1, "jan@kotek.net").
method("SerializerString", "valueArraySize", 3, 1, "jan@kotek.net").
method("SerializerString", "valueArrayEmpty", 3, 1, "jan@kotek.net").
method("SerializerString", "valueArrayPut", 9, 2, "jan@kotek.net").
calls("SerializerString", "valueArrayPut", "System", "arraycopy").
calls("SerializerString", "valueArrayPut", "String", "toCharArray").
method("SerializerString", "valueArrayUpdateVal", 6, 1, "jan@kotek.net").
calls("SerializerString", "valueArrayUpdateVal", "char", "clone").
calls("SerializerString", "valueArrayUpdateVal", "String", "toCharArray").
method("SerializerString", "valueArrayFromArray", 6, 2, "jan@kotek.net").
method("SerializerString", "valueArrayCopyOfRange", 3, 1, "jan@kotek.net").
calls("SerializerString", "valueArrayCopyOfRange", "Arrays", "copyOfRange").
method("SerializerString", "valueArrayDeleteValue", 6, 1, "jan@kotek.net").
calls("SerializerString", "valueArrayDeleteValue", "System", "arraycopy").
calls("SerializerString", "valueArrayDeleteValue", "System", "arraycopy").
method("SerializerString", "hashCode", 4, 1, "jan@kotek.net").
calls("SerializerString", "hashCode", "CHAR_ARRAY", "hashCode").

# mapdb/src/main/java/org/mapdb/serializer/SerializerByteArrayDelta.java

class("SerializerByteArrayDelta").
method("SerializerByteArrayDelta", "valueArraySerialize", 10, 3, "jan@kotek.net").
calls("SerializerByteArrayDelta", "valueArraySerialize", "DataOutput2", "packInt").
calls("SerializerByteArrayDelta", "valueArraySerialize", "DataOutput2", "packInt").
calls("SerializerByteArrayDelta", "valueArraySerialize", "DataOutput2", "write").
calls("SerializerByteArrayDelta", "valueArraySerialize", "DataOutput2", "write").
method("SerializerByteArrayDelta", "valueArrayDeserialize", 12, 4, "jan@kotek.net").
calls("SerializerByteArrayDelta", "valueArrayDeserialize", "DataInput2", "readFully").
calls("SerializerByteArrayDelta", "valueArrayDeserialize", "System", "arraycopy").
calls("SerializerByteArrayDelta", "valueArrayDeserialize", "DataInput2", "readFully").
method("SerializerByteArrayDelta", "commonPrefixLen", 11, 5, "jan@kotek.net").

# mapdb/src/main/java/org/mapdb/serializer/SerializerShortArray.java

class("SerializerShortArray").
method("SerializerShortArray", "serialize", 5, 2, "jan@kotek.net").
calls("SerializerShortArray", "serialize", "DataOutput2", "packInt").
calls("SerializerShortArray", "serialize", "DataOutput2", "writeShort").
method("SerializerShortArray", "deserialize", 6, 2, "jan@kotek.net").
calls("SerializerShortArray", "deserialize", "DataInput2", "readShort").
method("SerializerShortArray", "isTrusted", 3, 1, "jan@kotek.net").
method("SerializerShortArray", "equals", 3, 1, "jan@kotek.net").
calls("SerializerShortArray", "equals", "Arrays", "equals").
method("SerializerShortArray", "hashCode", 5, 2, "jan@kotek.net").
method("SerializerShortArray", "compare", 15, 5, "jan@kotek.net").
calls("SerializerShortArray", "compare", "SerializerUtils", "compareInt").
method("SerializerShortArray", "nextValue", 14, 4, "shabanovd@gmail.com").
calls("SerializerShortArray", "nextValue", "short", "clone").

# mapdb/src/main/java/org/mapdb/serializer/SerializerStringAscii.java

class("SerializerStringAscii").
method("SerializerStringAscii", "serialize", 6, 2, "jan@kotek.net").
calls("SerializerStringAscii", "serialize", "DataOutput2", "packInt").
calls("SerializerStringAscii", "serialize", "String", "charAt").
calls("SerializerStringAscii", "serialize", "DataOutput2", "write").
method("SerializerStringAscii", "deserialize", 7, 2, "jan@kotek.net").
calls("SerializerStringAscii", "deserialize", "DataInput2", "readUnsignedByte").
calls("SerializerStringAscii", "deserialize", "StringBuilder", "append").
calls("SerializerStringAscii", "deserialize", "StringBuilder", "toString").
method("SerializerStringAscii", "isTrusted", 3, 1, "jan@kotek.net").
method("SerializerStringAscii", "hashCode", 3, 1, "jan@kotek.net").
calls("SerializerStringAscii", "hashCode", "STRING", "hashCode").

# mapdb/src/main/java/org/mapdb/serializer/SerializerUnsupported.java

class("SerializerUnsupported").
method("SerializerUnsupported", "serialize", 3, 1, "vtso@paxata.com").
method("SerializerUnsupported", "deserialize", 3, 1, "vtso@paxata.com").
method("SerializerUnsupported", "isTrusted", 3, 1, "vtso@paxata.com").

# mapdb/src/main/java/org/mapdb/serializer/SerializerCompressionWrapper.java

class("SerializerCompressionWrapper").
method("SerializerCompressionWrapper", "SerializerCompressionWrapper", 3, 0, "jan@kotek.net").
method("SerializerCompressionWrapper", "serialize", 17, 3, "jan@kotek.net").
calls("SerializerCompressionWrapper", "serialize", "GroupSerializer", "serialize").
calls("SerializerCompressionWrapper", "serialize", "LZF", "get").
calls("SerializerCompressionWrapper", "serialize", "DataOutput2", "packInt").
calls("SerializerCompressionWrapper", "serialize", "DataOutput2", "write").
calls("SerializerCompressionWrapper", "serialize", "DataOutput2", "packInt").
calls("SerializerCompressionWrapper", "serialize", "DataOutput2", "write").
method("SerializerCompressionWrapper", "deserialize", 14, 3, "jan@kotek.net").
calls("SerializerCompressionWrapper", "deserialize", "GroupSerializer", "deserialize").
calls("SerializerCompressionWrapper", "deserialize", "LZF", "get").
method("SerializerCompressionWrapper", "equals", 10, 3, "jan@kotek.net").
calls("SerializerCompressionWrapper", "equals", "SerializerCompressionWrapper", "getClass").
calls("SerializerCompressionWrapper", "equals", "Object", "getClass").
calls("SerializerCompressionWrapper", "equals", "GroupSerializer", "equals").
method("SerializerCompressionWrapper", "hashCode", 3, 1, "jan@kotek.net").
calls("SerializerCompressionWrapper", "hashCode", "GroupSerializer", "hashCode").
method("SerializerCompressionWrapper", "isTrusted", 3, 1, "jan@kotek.net").
method("SerializerCompressionWrapper", "valueArraySearch", 3, 1, "jan@kotek.net").
calls("SerializerCompressionWrapper", "valueArraySearch", "GroupSerializer", "valueArraySearch").
method("SerializerCompressionWrapper", "valueArraySearch", 3, 1, "jan@kotek.net").
calls("SerializerCompressionWrapper", "valueArraySearch", "GroupSerializer", "valueArraySearch").
method("SerializerCompressionWrapper", "valueArraySerialize", 20, 4, "jan@kotek.net").
calls("SerializerCompressionWrapper", "valueArraySerialize", "GroupSerializer", "valueArraySerialize").
calls("SerializerCompressionWrapper", "valueArraySerialize", "LZF", "get").
calls("SerializerCompressionWrapper", "valueArraySerialize", "DataOutput2", "packInt").
calls("SerializerCompressionWrapper", "valueArraySerialize", "DataOutput2", "write").
calls("SerializerCompressionWrapper", "valueArraySerialize", "DataOutput2", "packInt").
calls("SerializerCompressionWrapper", "valueArraySerialize", "DataOutput2", "write").
method("SerializerCompressionWrapper", "valueArrayDeserialize", 17, 4, "jan@kotek.net").
calls("SerializerCompressionWrapper", "valueArrayDeserialize", "GroupSerializer", "valueArrayEmpty").
calls("SerializerCompressionWrapper", "valueArrayDeserialize", "GroupSerializer", "valueArrayDeserialize").
calls("SerializerCompressionWrapper", "valueArrayDeserialize", "LZF", "get").
method("SerializerCompressionWrapper", "valueArrayGet", 3, 1, "jan@kotek.net").
calls("SerializerCompressionWrapper", "valueArrayGet", "GroupSerializer", "valueArrayGet").
method("SerializerCompressionWrapper", "valueArraySize", 3, 1, "jan@kotek.net").
calls("SerializerCompressionWrapper", "valueArraySize", "GroupSerializer", "valueArraySize").
method("SerializerCompressionWrapper", "valueArrayEmpty", 3, 1, "jan@kotek.net").
calls("SerializerCompressionWrapper", "valueArrayEmpty", "GroupSerializer", "valueArrayEmpty").
method("SerializerCompressionWrapper", "valueArrayPut", 3, 1, "jan@kotek.net").
calls("SerializerCompressionWrapper", "valueArrayPut", "GroupSerializer", "valueArrayPut").
method("SerializerCompressionWrapper", "valueArrayUpdateVal", 3, 1, "jan@kotek.net").
calls("SerializerCompressionWrapper", "valueArrayUpdateVal", "GroupSerializer", "valueArrayUpdateVal").
method("SerializerCompressionWrapper", "valueArrayFromArray", 3, 1, "jan@kotek.net").
calls("SerializerCompressionWrapper", "valueArrayFromArray", "GroupSerializer", "valueArrayFromArray").
method("SerializerCompressionWrapper", "valueArrayCopyOfRange", 3, 1, "jan@kotek.net").
calls("SerializerCompressionWrapper", "valueArrayCopyOfRange", "GroupSerializer", "valueArrayCopyOfRange").
method("SerializerCompressionWrapper", "valueArrayDeleteValue", 3, 1, "jan@kotek.net").
calls("SerializerCompressionWrapper", "valueArrayDeleteValue", "GroupSerializer", "valueArrayDeleteValue").
method("SerializerCompressionWrapper", "equals", 3, 1, "jan@kotek.net").
calls("SerializerCompressionWrapper", "equals", "GroupSerializer", "equals").
method("SerializerCompressionWrapper", "hashCode", 3, 1, "jan@kotek.net").
calls("SerializerCompressionWrapper", "hashCode", "GroupSerializer", "hashCode").
method("SerializerCompressionWrapper", "compare", 3, 1, "jan@kotek.net").
calls("SerializerCompressionWrapper", "compare", "GroupSerializer", "compare").

# mapdb/src/main/java/org/mapdb/serializer/SerializerLongArray.java

class("SerializerLongArray").
method("SerializerLongArray", "serialize", 5, 2, "jan@kotek.net").
calls("SerializerLongArray", "serialize", "DataOutput2", "packInt").
calls("SerializerLongArray", "serialize", "DataOutput2", "writeLong").
method("SerializerLongArray", "deserialize", 7, 2, "jan@kotek.net").
calls("SerializerLongArray", "deserialize", "DataInput2", "readLong").
method("SerializerLongArray", "isTrusted", 3, 1, "jan@kotek.net").
method("SerializerLongArray", "equals", 3, 1, "jan@kotek.net").
calls("SerializerLongArray", "equals", "Arrays", "equals").
method("SerializerLongArray", "hashCode", 6, 2, "jan@kotek.net").
method("SerializerLongArray", "compare", 15, 5, "jan@kotek.net").
calls("SerializerLongArray", "compare", "SerializerUtils", "compareInt").
method("SerializerLongArray", "nextValue", 14, 4, "shabanovd@gmail.com").
calls("SerializerLongArray", "nextValue", "long", "clone").

# mapdb/src/main/java/org/mapdb/serializer/SerializerBigInteger.java

class("SerializerBigInteger").
method("SerializerBigInteger", "serialize", 3, 1, "jan@kotek.net").
calls("SerializerBigInteger", "serialize", "BigInteger", "toByteArray").
calls("SerializerBigInteger", "serialize", "BYTE_ARRAY", "serialize").
method("SerializerBigInteger", "deserialize", 3, 1, "jan@kotek.net").
method("SerializerBigInteger", "isTrusted", 3, 1, "jan@kotek.net").

# mapdb/src/main/java/org/mapdb/serializer/SerializerDouble.java

class("SerializerDouble").
method("SerializerDouble", "unpack", 3, 1, "jan@kotek.net").
method("SerializerDouble", "pack", 3, 1, "jan@kotek.net").
calls("SerializerDouble", "pack", "Double", "doubleToLongBits").
method("SerializerDouble", "valueArraySearch", 3, 1, "jan@kotek.net").
calls("SerializerDouble", "valueArraySearch", "SerializerDouble", "valueArrayToArray").
calls("SerializerDouble", "valueArraySearch", "Arrays", "binarySearch").
method("SerializerDouble", "serialize", 3, 1, "jan@kotek.net").
calls("SerializerDouble", "serialize", "DataOutput2", "writeDouble").
method("SerializerDouble", "deserialize", 3, 1, "jan@kotek.net").

# mapdb/src/main/java/org/mapdb/serializer/SerializerStringNoSize.java

class("SerializerStringNoSize").
method("SerializerStringNoSize", "serialize", 4, 1, "jan@kotek.net").
calls("SerializerStringNoSize", "serialize", "DataOutput2", "write").
method("SerializerStringNoSize", "deserialize", 8, 2, "jan@kotek.net").
calls("SerializerStringNoSize", "deserialize", "DataInput2", "readFully").
method("SerializerStringNoSize", "isTrusted", 3, 1, "jan@kotek.net").
method("SerializerStringNoSize", "needsAvailableSizeHint", 3, 1, "jan@kotek.net").

# mapdb/src/main/java/org/mapdb/serializer/GroupSerializer.java


# mapdb/src/main/java/org/mapdb/serializer/SerializerDate.java

class("SerializerDate").
method("SerializerDate", "serialize", 3, 1, "jan@kotek.net").
calls("SerializerDate", "serialize", "Date", "getTime").
calls("SerializerDate", "serialize", "DataOutput2", "writeLong").
method("SerializerDate", "deserialize", 3, 1, "jan@kotek.net").
method("SerializerDate", "unpack", 3, 1, "jan@kotek.net").
method("SerializerDate", "pack", 3, 1, "jan@kotek.net").
calls("SerializerDate", "pack", "Date", "getTime").
method("SerializerDate", "valueArraySearch", 4, 1, "jan@kotek.net").
calls("SerializerDate", "valueArraySearch", "Arrays", "binarySearch").

# mapdb/src/main/java/org/mapdb/serializer/SerializerInteger.java

class("SerializerInteger").
method("SerializerInteger", "serialize", 3, 1, "jan@kotek.net").
calls("SerializerInteger", "serialize", "DataOutput2", "writeInt").
method("SerializerInteger", "deserialize", 3, 1, "jan@kotek.net").
method("SerializerInteger", "unpack", 3, 1, "jan@kotek.net").
method("SerializerInteger", "pack", 3, 1, "jan@kotek.net").
method("SerializerInteger", "valueArraySearch", 3, 1, "jan@kotek.net").
calls("SerializerInteger", "valueArraySearch", "Arrays", "binarySearch").
method("SerializerInteger", "valueArrayBinarySearch", 13, 4, "jan@kotek.net").
calls("SerializerInteger", "valueArrayBinarySearch", "SerializerFourByte", "valueArrayBinarySearch").
calls("SerializerInteger", "valueArrayBinarySearch", "DataInput2", "skipBytes").

# mapdb/src/main/java/org/mapdb/serializer/SerializerFourByte.java

class("SerializerFourByte").
method("SerializerFourByte", "unpack", 1, 1, "jan@kotek.net").
method("SerializerFourByte", "pack", 1, 1, "jan@kotek.net").
method("SerializerFourByte", "isTrusted", 3, 1, "jan@kotek.net").
method("SerializerFourByte", "fixedSize", 3, 1, "jan@kotek.net").
method("SerializerFourByte", "valueArrayGet", 3, 1, "jan@kotek.net").
calls("SerializerFourByte", "valueArrayGet", "SerializerFourByte", "unpack").
method("SerializerFourByte", "valueArraySize", 3, 1, "jan@kotek.net").
method("SerializerFourByte", "valueArrayEmpty", 3, 1, "jan@kotek.net").
method("SerializerFourByte", "valueArrayPut", 9, 2, "jan@kotek.net").
calls("SerializerFourByte", "valueArrayPut", "System", "arraycopy").
calls("SerializerFourByte", "valueArrayPut", "SerializerFourByte", "pack").
method("SerializerFourByte", "valueArrayUpdateVal", 5, 1, "jan@kotek.net").
calls("SerializerFourByte", "valueArrayUpdateVal", "SerializerFourByte", "pack").
method("SerializerFourByte", "valueArrayFromArray", 7, 2, "jan@kotek.net").
calls("SerializerFourByte", "valueArrayFromArray", "SerializerFourByte", "pack").
method("SerializerFourByte", "valueArrayCopyOfRange", 3, 1, "jan@kotek.net").
calls("SerializerFourByte", "valueArrayCopyOfRange", "Arrays", "copyOfRange").
method("SerializerFourByte", "valueArrayDeleteValue", 7, 1, "jan@kotek.net").
calls("SerializerFourByte", "valueArrayDeleteValue", "System", "arraycopy").
calls("SerializerFourByte", "valueArrayDeleteValue", "System", "arraycopy").
method("SerializerFourByte", "valueArraySerialize", 4, 2, "jan@kotek.net").
calls("SerializerFourByte", "valueArraySerialize", "DataOutput2", "writeInt").
method("SerializerFourByte", "valueArrayDeserialize", 6, 2, "jan@kotek.net").
calls("SerializerFourByte", "valueArrayDeserialize", "DataInput2", "readInt").
method("SerializerFourByte", "valueArraySearch", 21, 5, "jan@kotek.net").
calls("SerializerFourByte", "valueArraySearch", "SerializerFourByte", "valueArraySearch").
method("SerializerFourByte", "valueArrayBinaryGet", 4, 1, "jan@kotek.net").
calls("SerializerFourByte", "valueArrayBinaryGet", "DataInput2", "skipBytes").
calls("SerializerFourByte", "valueArrayBinaryGet", "DataInput2", "readInt").
calls("SerializerFourByte", "valueArrayBinaryGet", "SerializerFourByte", "unpack").

# mapdb/src/main/java/org/mapdb/serializer/CompressLZF.java

class("CompressLZF").
method("CompressLZF", "first", 3, 1, "jan@kotek.net").
method("CompressLZF", "next", 3, 1, "jan@kotek.net").
method("CompressLZF", "hash", 3, 1, "jan@kotek.net").
method("CompressLZF", "compress", 67, 12, "jan@kotek.net").
calls("CompressLZF", "compress", "CompressLZF", "first").
calls("CompressLZF", "compress", "CompressLZF", "next").
calls("CompressLZF", "compress", "CompressLZF", "next").
method("CompressLZF", "expand", 26, 7, "jan@kotek.net").
calls("CompressLZF", "expand", "DataInput", "readFully").
calls("CompressLZF", "expand", "DataInput", "readByte").
calls("CompressLZF", "expand", "DataInput", "readByte").
method("CompressLZF", "expand", 32, 8, "jan@kotek.net").
calls("CompressLZF", "expand", "ByteBuffer", "duplicate").
calls("CompressLZF", "expand", "ByteBuffer", "position").
calls("CompressLZF", "expand", "ByteBuffer", "get").
calls("CompressLZF", "expand", "ByteBuffer", "get").
calls("CompressLZF", "expand", "ByteBuffer", "get").
method("CompressLZF", "expand", 27, 7, "jan@kotek.net").
calls("CompressLZF", "expand", "System", "arraycopy").

# mapdb/src/main/java/org/mapdb/serializer/SerializerSqlTime.java

class("SerializerSqlTime").
method("SerializerSqlTime", "serialize", 3, 1, "minborg@speedment.com").
calls("SerializerSqlTime", "serialize", "Time", "getTime").
calls("SerializerSqlTime", "serialize", "DataOutput2", "writeLong").
method("SerializerSqlTime", "deserialize", 3, 1, "minborg@speedment.com").
method("SerializerSqlTime", "unpack", 3, 1, "minborg@speedment.com").
method("SerializerSqlTime", "pack", 3, 1, "minborg@speedment.com").
calls("SerializerSqlTime", "pack", "Time", "getTime").
method("SerializerSqlTime", "valueArraySearch", 4, 1, "minborg@speedment.com").
calls("SerializerSqlTime", "valueArraySearch", "Arrays", "binarySearch").

# mapdb/src/main/java/org/mapdb/serializer/SerializerLongPacked.java

class("SerializerLongPacked").
method("SerializerLongPacked", "serialize", 3, 1, "jan@kotek.net").
calls("SerializerLongPacked", "serialize", "DataOutput2", "packLong").
method("SerializerLongPacked", "deserialize", 3, 1, "jan@kotek.net").
method("SerializerLongPacked", "valueArraySerialize", 4, 2, "jan@kotek.net").
calls("SerializerLongPacked", "valueArraySerialize", "DataOutput2", "packLong").
method("SerializerLongPacked", "valueArrayDeserialize", 5, 1, "jan@kotek.net").
calls("SerializerLongPacked", "valueArrayDeserialize", "DataInput2", "unpackLongArray").
method("SerializerLongPacked", "fixedSize", 3, 1, "jan@kotek.net").
method("SerializerLongPacked", "valueArrayBinarySearch", 13, 4, "jan@kotek.net").
calls("SerializerLongPacked", "valueArrayBinarySearch", "SerializerLong", "valueArrayBinarySearch").
calls("SerializerLongPacked", "valueArrayBinarySearch", "DataInput2", "unpackLongSkip").
method("SerializerLongPacked", "valueArrayBinaryGet", 4, 1, "jan@kotek.net").
calls("SerializerLongPacked", "valueArrayBinaryGet", "DataInput2", "unpackLongSkip").
calls("SerializerLongPacked", "valueArrayBinaryGet", "DataInput2", "unpackLong").

# mapdb/src/main/java/org/mapdb/tree/IndexTreeListJava.java

class("IndexTreeListJava").
method("IndexTreeListJava", "dirEmpty", 3, 1, "jan@kotek.net").
method("IndexTreeListJava", "dirOffsetFromSlot", 17, 3, "jan@kotek.net").
calls("IndexTreeListJava", "dirOffsetFromSlot", "Long", "bitCount").
calls("IndexTreeListJava", "dirOffsetFromSlot", "Long", "bitCount").
method("IndexTreeListJava", "dirOffsetFromLong", 17, 3, "jan@kotek.net").
calls("IndexTreeListJava", "dirOffsetFromLong", "Long", "bitCount").
calls("IndexTreeListJava", "dirOffsetFromLong", "Long", "bitCount").
method("IndexTreeListJava", "dirPut", 16, 2, "jan@kotek.net").
calls("IndexTreeListJava", "dirPut", "Arrays", "copyOf").
calls("IndexTreeListJava", "dirPut", "System", "arraycopy").
calls("IndexTreeListJava", "dirPut", "long", "clone").
method("IndexTreeListJava", "dirRemove", 13, 2, "jan@kotek.net").
calls("IndexTreeListJava", "dirRemove", "System", "arraycopy").
calls("IndexTreeListJava", "dirRemove", "System", "arraycopy").
method("IndexTreeListJava", "treeGet", 16, 5, "jan@kotek.net").
calls("IndexTreeListJava", "treeGet", "IndexTreeListJava", "treeGetNonBinary").
calls("IndexTreeListJava", "treeGet", "IndexTreeListJava", "treeGetBinary").
method("IndexTreeListJava", "treeGetBinary", 12, 3, "jan@kotek.net").
method("IndexTreeListJava", "treeGetNonBinary", 22, 6, "jan@kotek.net").
method("IndexTreeListJava", "treeGetNullable", 27, 8, "jan@kotek.net").
method("IndexTreeListJava", "treePos", 4, 1, "jan@kotek.net").
method("IndexTreeListJava", "treePut", 44, 9, "jan@kotek.net").
calls("IndexTreeListJava", "treePut", "IndexTreeListJava", "dirPut").
calls("IndexTreeListJava", "treePut", "Store", "update").
calls("IndexTreeListJava", "treePut", "long", "clone").
calls("IndexTreeListJava", "treePut", "Store", "update").
calls("IndexTreeListJava", "treePut", "long", "clone").
calls("IndexTreeListJava", "treePut", "IndexTreeListJava", "treePutSub").
calls("IndexTreeListJava", "treePut", "Store", "update").
method("IndexTreeListJava", "treePutSub", 22, 5, "jan@kotek.net").
calls("IndexTreeListJava", "treePutSub", "IndexTreeListJava", "dirPut").
calls("IndexTreeListJava", "treePutSub", "IndexTreeListJava", "dirPut").
calls("IndexTreeListJava", "treePutSub", "IndexTreeListJava", "dirPut").
calls("IndexTreeListJava", "treePutSub", "Store", "put").
method("IndexTreeListJava", "treeRemove", 37, 9, "jan@kotek.net").
calls("IndexTreeListJava", "treeRemove", "IndexTreeListJava", "treeRemove").
calls("IndexTreeListJava", "treeRemove", "Long", "longValue").
calls("IndexTreeListJava", "treeRemove", "IndexTreeListJava", "dirRemove").
calls("IndexTreeListJava", "treeRemove", "Store", "update").
method("IndexTreeListJava", "treeRemoveCollapsing", 53, 12, "jan@kotek.net").
calls("IndexTreeListJava", "treeRemoveCollapsing", "Store", "delete").
calls("IndexTreeListJava", "treeRemoveCollapsing", "long", "clone").
calls("IndexTreeListJava", "treeRemoveCollapsing", "Store", "update").
calls("IndexTreeListJava", "treeRemoveCollapsing", "Long", "longValue").
calls("IndexTreeListJava", "treeRemoveCollapsing", "IndexTreeListJava", "dirRemove").
calls("IndexTreeListJava", "treeRemoveCollapsing", "Store", "delete").
calls("IndexTreeListJava", "treeRemoveCollapsing", "Store", "update").
method("IndexTreeListJava", "treeIter", 38, 10, "jan@kotek.net").
method("IndexTreeListJava", "treeFold", 18, 5, "jan@kotek.net").
calls("IndexTreeListJava", "treeFold", "IndexTreeListJava", "treeFold").
calls("IndexTreeListJava", "treeFold", "TreeTraverseCallback", "visit").
method("IndexTreeListJava", "treeClear", 3, 1, "jan@kotek.net").
calls("IndexTreeListJava", "treeClear", "IndexTreeListJava", "treeClear").
method("IndexTreeListJava", "treeClear", 17, 5, "jan@kotek.net").
calls("IndexTreeListJava", "treeClear", "IndexTreeListJava", "dirEmpty").
calls("IndexTreeListJava", "treeClear", "Store", "update").
calls("IndexTreeListJava", "treeClear", "Store", "delete").
calls("IndexTreeListJava", "treeClear", "IndexTreeListJava", "treeClear").
method("IndexTreeListJava", "treeLast", 21, 6, "jan@kotek.net").

# mapdb/src/main/java/org/mapdb/tree/BTreeMapJava.java

class("BTreeMapJava").
method("BTreeMapJava", "findChild", 19, 5, "jan@kotek.net").
calls("BTreeMapJava", "findChild", "Node", "isDir").
calls("BTreeMapJava", "findChild", "Node", "intLeftEdge").
calls("BTreeMapJava", "findChild", "Math", "max").
calls("BTreeMapJava", "findChild", "Node", "isRightEdge").
method("BTreeMapJava", "leafGet", 4, 1, "jan@kotek.net").
calls("BTreeMapJava", "leafGet", "BTreeMapJava", "leafGet").
method("BTreeMapJava", "leafGet", 22, 6, "jan@kotek.net").
calls("BTreeMapJava", "leafGet", "Node", "intLeftEdge").
calls("BTreeMapJava", "leafGet", "Node", "isRightEdge").
calls("BTreeMapJava", "leafGet", "GroupSerializer", "valueArraySize").
calls("BTreeMapJava", "leafGet", "Node", "isRightEdge").
calls("BTreeMapJava", "leafGet", "Node", "intLeftEdge").
calls("BTreeMapJava", "leafGet", "GroupSerializer", "valueArrayGet").
method("BTreeMapJava", "arrayPut", 8, 2, "jan@kotek.net").
calls("BTreeMapJava", "arrayPut", "System", "arraycopy").
method("BTreeMapJava", "arrayPut", 8, 2, "jan@kotek.net").
calls("BTreeMapJava", "arrayPut", "System", "arraycopy").
method("BTreeMapJava", "toList", 6, 2, "jan@kotek.net").
calls("BTreeMapJava", "toList", "List", "add").

# mapdb/src/main/java/org/mapdb/tuple/Tuple3.java

class("Tuple3").
method("Tuple3", "Tuple3", 5, 0, "jan@kotek.net").
method("Tuple3", "compareTo", 3, 1, "jan@kotek.net").
calls("Tuple3", "compareTo", "Tuple.TUPLE3_COMPARATOR", "compare").
method("Tuple3", "toString", 3, 1, "jan@kotek.net").
method("Tuple3", "equals", 10, 3, "jan@kotek.net").
calls("Tuple3", "equals", "Tuple3", "getClass").
calls("Tuple3", "equals", "Object", "getClass").
calls("Tuple3", "equals", "Tuple3", "eq").
calls("Tuple3", "equals", "Tuple3", "eq").
calls("Tuple3", "equals", "Tuple3", "eq").
method("Tuple3", "hashCode", 6, 1, "jan@kotek.net").
calls("Tuple3", "hashCode", "B", "hashCode").
calls("Tuple3", "hashCode", "C", "hashCode").

# mapdb/src/main/java/org/mapdb/tuple/Tuple6Serializer.java

class("Tuple6Serializer").
method("Tuple6Serializer", "Tuple6Serializer", 3, 0, "jan@kotek.net").
calls("Tuple6Serializer", "Tuple6Serializer", "Tuple6Serializer", "Tuple6Serializer").
method("Tuple6Serializer", "Tuple6Serializer", 3, 0, "jan@kotek.net").
calls("Tuple6Serializer", "Tuple6Serializer", "Tuple6Serializer", "Tuple6Serializer").
method("Tuple6Serializer", "Tuple6Serializer", 3, 0, "jan@kotek.net").
calls("Tuple6Serializer", "Tuple6Serializer", "Tuple6Serializer", "Tuple6Serializer").
method("Tuple6Serializer", "Tuple6Serializer", 14, 0, "jan@kotek.net").
method("Tuple6Serializer", "valueArraySerialize", 52, 12, "jan@kotek.net").
calls("Tuple6Serializer", "valueArraySerialize", "Serializer", "serialize").
calls("Tuple6Serializer", "valueArraySerialize", "Comparator", "compare").
calls("Tuple6Serializer", "valueArraySerialize", "DataOutput2", "packInt").
calls("Tuple6Serializer", "valueArraySerialize", "Serializer", "serialize").
calls("Tuple6Serializer", "valueArraySerialize", "Comparator", "compare").
calls("Tuple6Serializer", "valueArraySerialize", "DataOutput2", "packInt").
calls("Tuple6Serializer", "valueArraySerialize", "Serializer", "serialize").
calls("Tuple6Serializer", "valueArraySerialize", "Comparator", "compare").
calls("Tuple6Serializer", "valueArraySerialize", "DataOutput2", "packInt").
calls("Tuple6Serializer", "valueArraySerialize", "Serializer", "serialize").
calls("Tuple6Serializer", "valueArraySerialize", "Comparator", "compare").
calls("Tuple6Serializer", "valueArraySerialize", "DataOutput2", "packInt").
calls("Tuple6Serializer", "valueArraySerialize", "Serializer", "serialize").
calls("Tuple6Serializer", "valueArraySerialize", "Comparator", "compare").
calls("Tuple6Serializer", "valueArraySerialize", "DataOutput2", "packInt").
calls("Tuple6Serializer", "valueArraySerialize", "Serializer", "serialize").
method("Tuple6Serializer", "valueArrayDeserialize", 42, 7, "jan@kotek.net").
calls("Tuple6Serializer", "valueArrayDeserialize", "Serializer", "deserialize").
calls("Tuple6Serializer", "valueArrayDeserialize", "DataInput2", "unpackInt").
calls("Tuple6Serializer", "valueArrayDeserialize", "Serializer", "deserialize").
calls("Tuple6Serializer", "valueArrayDeserialize", "DataInput2", "unpackInt").
calls("Tuple6Serializer", "valueArrayDeserialize", "Serializer", "deserialize").
calls("Tuple6Serializer", "valueArrayDeserialize", "DataInput2", "unpackInt").
calls("Tuple6Serializer", "valueArrayDeserialize", "Serializer", "deserialize").
calls("Tuple6Serializer", "valueArrayDeserialize", "DataInput2", "unpackInt").
calls("Tuple6Serializer", "valueArrayDeserialize", "Serializer", "deserialize").
calls("Tuple6Serializer", "valueArrayDeserialize", "DataInput2", "unpackInt").
calls("Tuple6Serializer", "valueArrayDeserialize", "Tuple", "t6").
method("Tuple6Serializer", "equals", 10, 3, "jan@kotek.net").
calls("Tuple6Serializer", "equals", "Tuple6Serializer", "getClass").
calls("Tuple6Serializer", "equals", "Object", "getClass").
calls("Tuple6Serializer", "equals", "Tuple", "eq").
calls("Tuple6Serializer", "equals", "Tuple", "eq").
calls("Tuple6Serializer", "equals", "Tuple", "eq").
calls("Tuple6Serializer", "equals", "Tuple", "eq").
calls("Tuple6Serializer", "equals", "Tuple", "eq").
calls("Tuple6Serializer", "equals", "Tuple", "eq").
calls("Tuple6Serializer", "equals", "Tuple", "eq").
calls("Tuple6Serializer", "equals", "Tuple", "eq").
calls("Tuple6Serializer", "equals", "Tuple", "eq").
calls("Tuple6Serializer", "equals", "Tuple", "eq").
calls("Tuple6Serializer", "equals", "Tuple", "eq").
method("Tuple6Serializer", "hashCode", 14, 1, "jan@kotek.net").
calls("Tuple6Serializer", "hashCode", "Comparator", "hashCode").
calls("Tuple6Serializer", "hashCode", "Comparator", "hashCode").
calls("Tuple6Serializer", "hashCode", "Comparator", "hashCode").
calls("Tuple6Serializer", "hashCode", "Comparator", "hashCode").
calls("Tuple6Serializer", "hashCode", "Serializer", "hashCode").
calls("Tuple6Serializer", "hashCode", "Serializer", "hashCode").
calls("Tuple6Serializer", "hashCode", "Serializer", "hashCode").
calls("Tuple6Serializer", "hashCode", "Serializer", "hashCode").
calls("Tuple6Serializer", "hashCode", "Serializer", "hashCode").
calls("Tuple6Serializer", "hashCode", "Serializer", "hashCode").
method("Tuple6Serializer", "serialize", 8, 1, "jan@kotek.net").
calls("Tuple6Serializer", "serialize", "Serializer", "serialize").
calls("Tuple6Serializer", "serialize", "Serializer", "serialize").
calls("Tuple6Serializer", "serialize", "Serializer", "serialize").
calls("Tuple6Serializer", "serialize", "Serializer", "serialize").
calls("Tuple6Serializer", "serialize", "Serializer", "serialize").
calls("Tuple6Serializer", "serialize", "Serializer", "serialize").
method("Tuple6Serializer", "deserialize", 3, 1, "jan@kotek.net").
method("Tuple6Serializer", "compare", 23, 6, "jan@kotek.net").
calls("Tuple6Serializer", "compare", "Tuple6Serializer", "compare2").
calls("Tuple6Serializer", "compare", "Tuple6Serializer", "compare2").
calls("Tuple6Serializer", "compare", "Tuple6Serializer", "compare2").
calls("Tuple6Serializer", "compare", "Tuple6Serializer", "compare2").
calls("Tuple6Serializer", "compare", "Tuple6Serializer", "compare2").
method("Tuple6Serializer", "equals", 3, 1, "jan@kotek.net").
calls("Tuple6Serializer", "equals", "Tuple6Serializer", "compare").
method("Tuple6Serializer", "hashCode", 9, 1, "jan@kotek.net").
calls("Tuple6Serializer", "hashCode", "Serializer", "hashCode").
calls("Tuple6Serializer", "hashCode", "Serializer", "hashCode").
calls("Tuple6Serializer", "hashCode", "Serializer", "hashCode").
calls("Tuple6Serializer", "hashCode", "Serializer", "hashCode").
calls("Tuple6Serializer", "hashCode", "Serializer", "hashCode").
calls("Tuple6Serializer", "hashCode", "Serializer", "hashCode").
method("Tuple6Serializer", "callbackDB", 38, 13, "jan@kotek.net").
calls("Tuple6Serializer", "callbackDB", "DB", "getDefaultSerializer").
calls("Tuple6Serializer", "callbackDB", "DB", "getDefaultSerializer").
calls("Tuple6Serializer", "callbackDB", "DB", "getDefaultSerializer").
calls("Tuple6Serializer", "callbackDB", "DB", "getDefaultSerializer").
calls("Tuple6Serializer", "callbackDB", "DB", "getDefaultSerializer").
calls("Tuple6Serializer", "callbackDB", "DB", "getDefaultSerializer").
calls("Tuple6Serializer", "callbackDB", "DB", "getDefaultSerializer").
calls("Tuple6Serializer", "callbackDB", "DB", "getDefaultSerializer").
calls("Tuple6Serializer", "callbackDB", "DB", "getDefaultSerializer").
calls("Tuple6Serializer", "callbackDB", "DB", "getDefaultSerializer").
calls("Tuple6Serializer", "callbackDB", "DB", "getDefaultSerializer").
calls("Tuple6Serializer", "callbackDB", "DB", "getDefaultSerializer").
method("Tuple6Serializer", "nextValue", 3, 1, "jan@kotek.net").

# mapdb/src/main/java/org/mapdb/tuple/Tuple2Serializer.java

class("Tuple2Serializer").
method("Tuple2Serializer", "Tuple2Serializer", 3, 0, "jan@kotek.net").
calls("Tuple2Serializer", "Tuple2Serializer", "Tuple2Serializer", "Tuple2Serializer").
method("Tuple2Serializer", "Tuple2Serializer", 3, 0, "jan@kotek.net").
calls("Tuple2Serializer", "Tuple2Serializer", "Tuple2Serializer", "Tuple2Serializer").
method("Tuple2Serializer", "Tuple2Serializer", 3, 0, "jan@kotek.net").
calls("Tuple2Serializer", "Tuple2Serializer", "Tuple2Serializer", "Tuple2Serializer").
method("Tuple2Serializer", "Tuple2Serializer", 6, 0, "jan@kotek.net").
method("Tuple2Serializer", "valueArraySerialize", 16, 4, "jan@kotek.net").
calls("Tuple2Serializer", "valueArraySerialize", "Serializer", "serialize").
calls("Tuple2Serializer", "valueArraySerialize", "Comparator", "compare").
calls("Tuple2Serializer", "valueArraySerialize", "DataOutput2", "packInt").
calls("Tuple2Serializer", "valueArraySerialize", "Serializer", "serialize").
method("Tuple2Serializer", "valueArrayDeserialize", 14, 3, "jan@kotek.net").
calls("Tuple2Serializer", "valueArrayDeserialize", "Serializer", "deserialize").
calls("Tuple2Serializer", "valueArrayDeserialize", "DataInput2", "unpackInt").
calls("Tuple2Serializer", "valueArrayDeserialize", "Tuple", "t2").
method("Tuple2Serializer", "equals", 10, 3, "jan@kotek.net").
calls("Tuple2Serializer", "equals", "Tuple2Serializer", "getClass").
calls("Tuple2Serializer", "equals", "Object", "getClass").
calls("Tuple2Serializer", "equals", "Tuple", "eq").
calls("Tuple2Serializer", "equals", "Tuple", "eq").
calls("Tuple2Serializer", "equals", "Tuple", "eq").
method("Tuple2Serializer", "hashCode", 6, 1, "jan@kotek.net").
calls("Tuple2Serializer", "hashCode", "Serializer", "hashCode").
calls("Tuple2Serializer", "hashCode", "Serializer", "hashCode").
method("Tuple2Serializer", "serialize", 4, 1, "jan@kotek.net").
calls("Tuple2Serializer", "serialize", "Serializer", "serialize").
calls("Tuple2Serializer", "serialize", "Serializer", "serialize").
method("Tuple2Serializer", "deserialize", 3, 1, "jan@kotek.net").
method("Tuple2Serializer", "compare", 7, 2, "jan@kotek.net").
calls("Tuple2Serializer", "compare", "Tuple2Serializer", "compare2").
method("Tuple2Serializer", "equals", 3, 1, "jan@kotek.net").
calls("Tuple2Serializer", "equals", "Tuple2Serializer", "compare").
method("Tuple2Serializer", "hashCode", 5, 1, "jan@kotek.net").
calls("Tuple2Serializer", "hashCode", "Serializer", "hashCode").
calls("Tuple2Serializer", "hashCode", "Serializer", "hashCode").
method("Tuple2Serializer", "callbackDB", 14, 5, "jan@kotek.net").
calls("Tuple2Serializer", "callbackDB", "DB", "getDefaultSerializer").
calls("Tuple2Serializer", "callbackDB", "DB", "getDefaultSerializer").
calls("Tuple2Serializer", "callbackDB", "DB", "getDefaultSerializer").
calls("Tuple2Serializer", "callbackDB", "DB", "getDefaultSerializer").
method("Tuple2Serializer", "nextValue", 3, 1, "jan@kotek.net").

# mapdb/src/main/java/org/mapdb/tuple/Tuple2.java

class("Tuple2").
method("Tuple2", "Tuple2", 4, 0, "jan@kotek.net").
method("Tuple2", "compareTo", 3, 1, "jan@kotek.net").
calls("Tuple2", "compareTo", "Tuple.TUPLE2_COMPARATOR", "compare").
method("Tuple2", "equals", 10, 3, "jan@kotek.net").
calls("Tuple2", "equals", "Tuple2", "getClass").
calls("Tuple2", "equals", "Object", "getClass").
calls("Tuple2", "equals", "Tuple", "eq").
calls("Tuple2", "equals", "Tuple", "eq").
method("Tuple2", "hashCode", 5, 1, "jan@kotek.net").
calls("Tuple2", "hashCode", "B", "hashCode").
method("Tuple2", "toString", 3, 1, "jan@kotek.net").

# mapdb/src/main/java/org/mapdb/tuple/Tuple6.java

class("Tuple6").
method("Tuple6", "Tuple6", 8, 0, "jan@kotek.net").
method("Tuple6", "compareTo", 3, 1, "jan@kotek.net").
calls("Tuple6", "compareTo", "Tuple.TUPLE6_COMPARATOR", "compare").
method("Tuple6", "toString", 3, 1, "jan@kotek.net").
method("Tuple6", "equals", 10, 3, "jan@kotek.net").
calls("Tuple6", "equals", "Tuple6", "getClass").
calls("Tuple6", "equals", "Object", "getClass").
calls("Tuple6", "equals", "Tuple6", "eq").
calls("Tuple6", "equals", "Tuple6", "eq").
calls("Tuple6", "equals", "Tuple6", "eq").
calls("Tuple6", "equals", "Tuple6", "eq").
calls("Tuple6", "equals", "Tuple6", "eq").
calls("Tuple6", "equals", "Tuple6", "eq").
method("Tuple6", "hashCode", 9, 1, "jan@kotek.net").
calls("Tuple6", "hashCode", "B", "hashCode").
calls("Tuple6", "hashCode", "C", "hashCode").
calls("Tuple6", "hashCode", "D", "hashCode").
calls("Tuple6", "hashCode", "E", "hashCode").
calls("Tuple6", "hashCode", "F", "hashCode").

# mapdb/src/main/java/org/mapdb/tuple/Tuple4.java

class("Tuple4").
method("Tuple4", "Tuple4", 6, 0, "jan@kotek.net").
method("Tuple4", "compareTo", 3, 1, "jan@kotek.net").
calls("Tuple4", "compareTo", "Tuple.TUPLE4_COMPARATOR", "compare").
method("Tuple4", "toString", 3, 1, "jan@kotek.net").
method("Tuple4", "equals", 10, 3, "jan@kotek.net").
calls("Tuple4", "equals", "Tuple4", "getClass").
calls("Tuple4", "equals", "Object", "getClass").
calls("Tuple4", "equals", "Tuple4", "eq").
calls("Tuple4", "equals", "Tuple4", "eq").
calls("Tuple4", "equals", "Tuple4", "eq").
calls("Tuple4", "equals", "Tuple4", "eq").
method("Tuple4", "hashCode", 7, 1, "jan@kotek.net").
calls("Tuple4", "hashCode", "B", "hashCode").
calls("Tuple4", "hashCode", "C", "hashCode").
calls("Tuple4", "hashCode", "D", "hashCode").

# mapdb/src/main/java/org/mapdb/tuple/Tuple3Serializer.java

class("Tuple3Serializer").
method("Tuple3Serializer", "Tuple3Serializer", 3, 0, "jan@kotek.net").
calls("Tuple3Serializer", "Tuple3Serializer", "Tuple3Serializer", "Tuple3Serializer").
method("Tuple3Serializer", "Tuple3Serializer", 3, 0, "jan@kotek.net").
calls("Tuple3Serializer", "Tuple3Serializer", "Tuple3Serializer", "Tuple3Serializer").
method("Tuple3Serializer", "Tuple3Serializer", 3, 0, "jan@kotek.net").
calls("Tuple3Serializer", "Tuple3Serializer", "Tuple3Serializer", "Tuple3Serializer").
method("Tuple3Serializer", "Tuple3Serializer", 8, 0, "jan@kotek.net").
method("Tuple3Serializer", "valueArraySerialize", 25, 6, "jan@kotek.net").
calls("Tuple3Serializer", "valueArraySerialize", "Serializer", "serialize").
calls("Tuple3Serializer", "valueArraySerialize", "Comparator", "compare").
calls("Tuple3Serializer", "valueArraySerialize", "DataOutput2", "packInt").
calls("Tuple3Serializer", "valueArraySerialize", "Serializer", "serialize").
calls("Tuple3Serializer", "valueArraySerialize", "Comparator", "compare").
calls("Tuple3Serializer", "valueArraySerialize", "DataOutput2", "packInt").
calls("Tuple3Serializer", "valueArraySerialize", "Serializer", "serialize").
method("Tuple3Serializer", "valueArrayDeserialize", 21, 4, "jan@kotek.net").
calls("Tuple3Serializer", "valueArrayDeserialize", "Serializer", "deserialize").
calls("Tuple3Serializer", "valueArrayDeserialize", "DataInput2", "unpackInt").
calls("Tuple3Serializer", "valueArrayDeserialize", "Serializer", "deserialize").
calls("Tuple3Serializer", "valueArrayDeserialize", "DataInput2", "unpackInt").
calls("Tuple3Serializer", "valueArrayDeserialize", "Tuple", "t3").
method("Tuple3Serializer", "equals", 10, 3, "jan@kotek.net").
calls("Tuple3Serializer", "equals", "Tuple3Serializer", "getClass").
calls("Tuple3Serializer", "equals", "Object", "getClass").
calls("Tuple3Serializer", "equals", "Tuple", "eq").
calls("Tuple3Serializer", "equals", "Tuple", "eq").
calls("Tuple3Serializer", "equals", "Tuple", "eq").
calls("Tuple3Serializer", "equals", "Tuple", "eq").
calls("Tuple3Serializer", "equals", "Tuple", "eq").
method("Tuple3Serializer", "hashCode", 8, 1, "jan@kotek.net").
calls("Tuple3Serializer", "hashCode", "Comparator", "hashCode").
calls("Tuple3Serializer", "hashCode", "Serializer", "hashCode").
calls("Tuple3Serializer", "hashCode", "Serializer", "hashCode").
calls("Tuple3Serializer", "hashCode", "Serializer", "hashCode").
method("Tuple3Serializer", "serialize", 5, 1, "jan@kotek.net").
calls("Tuple3Serializer", "serialize", "Serializer", "serialize").
calls("Tuple3Serializer", "serialize", "Serializer", "serialize").
calls("Tuple3Serializer", "serialize", "Serializer", "serialize").
method("Tuple3Serializer", "deserialize", 3, 1, "jan@kotek.net").
method("Tuple3Serializer", "compare", 11, 3, "jan@kotek.net").
calls("Tuple3Serializer", "compare", "Tuple3Serializer", "compare2").
calls("Tuple3Serializer", "compare", "Tuple3Serializer", "compare2").
method("Tuple3Serializer", "equals", 3, 1, "jan@kotek.net").
calls("Tuple3Serializer", "equals", "Tuple3Serializer", "compare").
method("Tuple3Serializer", "hashCode", 6, 1, "jan@kotek.net").
calls("Tuple3Serializer", "hashCode", "Serializer", "hashCode").
calls("Tuple3Serializer", "hashCode", "Serializer", "hashCode").
calls("Tuple3Serializer", "hashCode", "Serializer", "hashCode").
method("Tuple3Serializer", "callbackDB", 20, 7, "jan@kotek.net").
calls("Tuple3Serializer", "callbackDB", "DB", "getDefaultSerializer").
calls("Tuple3Serializer", "callbackDB", "DB", "getDefaultSerializer").
calls("Tuple3Serializer", "callbackDB", "DB", "getDefaultSerializer").
calls("Tuple3Serializer", "callbackDB", "DB", "getDefaultSerializer").
calls("Tuple3Serializer", "callbackDB", "DB", "getDefaultSerializer").
calls("Tuple3Serializer", "callbackDB", "DB", "getDefaultSerializer").
method("Tuple3Serializer", "nextValue", 3, 1, "jan@kotek.net").

# mapdb/src/main/java/org/mapdb/tuple/Tuple4Serializer.java

class("Tuple4Serializer").
method("Tuple4Serializer", "Tuple4Serializer", 3, 0, "jan@kotek.net").
calls("Tuple4Serializer", "Tuple4Serializer", "Tuple4Serializer", "Tuple4Serializer").
method("Tuple4Serializer", "Tuple4Serializer", 3, 0, "jan@kotek.net").
calls("Tuple4Serializer", "Tuple4Serializer", "Tuple4Serializer", "Tuple4Serializer").
method("Tuple4Serializer", "Tuple4Serializer", 3, 0, "jan@kotek.net").
calls("Tuple4Serializer", "Tuple4Serializer", "Tuple4Serializer", "Tuple4Serializer").
method("Tuple4Serializer", "Tuple4Serializer", 10, 0, "jan@kotek.net").
method("Tuple4Serializer", "valueArraySerialize", 34, 8, "jan@kotek.net").
calls("Tuple4Serializer", "valueArraySerialize", "Serializer", "serialize").
calls("Tuple4Serializer", "valueArraySerialize", "Comparator", "compare").
calls("Tuple4Serializer", "valueArraySerialize", "DataOutput2", "packInt").
calls("Tuple4Serializer", "valueArraySerialize", "Serializer", "serialize").
calls("Tuple4Serializer", "valueArraySerialize", "Comparator", "compare").
calls("Tuple4Serializer", "valueArraySerialize", "DataOutput2", "packInt").
calls("Tuple4Serializer", "valueArraySerialize", "Serializer", "serialize").
calls("Tuple4Serializer", "valueArraySerialize", "Comparator", "compare").
calls("Tuple4Serializer", "valueArraySerialize", "DataOutput2", "packInt").
calls("Tuple4Serializer", "valueArraySerialize", "Serializer", "serialize").
method("Tuple4Serializer", "valueArrayDeserialize", 28, 5, "jan@kotek.net").
calls("Tuple4Serializer", "valueArrayDeserialize", "Serializer", "deserialize").
calls("Tuple4Serializer", "valueArrayDeserialize", "DataInput2", "unpackInt").
calls("Tuple4Serializer", "valueArrayDeserialize", "Serializer", "deserialize").
calls("Tuple4Serializer", "valueArrayDeserialize", "DataInput2", "unpackInt").
calls("Tuple4Serializer", "valueArrayDeserialize", "Serializer", "deserialize").
calls("Tuple4Serializer", "valueArrayDeserialize", "DataInput2", "unpackInt").
calls("Tuple4Serializer", "valueArrayDeserialize", "Tuple", "t4").
method("Tuple4Serializer", "equals", 10, 3, "jan@kotek.net").
calls("Tuple4Serializer", "equals", "Tuple4Serializer", "getClass").
calls("Tuple4Serializer", "equals", "Object", "getClass").
calls("Tuple4Serializer", "equals", "Tuple", "eq").
calls("Tuple4Serializer", "equals", "Tuple", "eq").
calls("Tuple4Serializer", "equals", "Tuple", "eq").
calls("Tuple4Serializer", "equals", "Tuple", "eq").
calls("Tuple4Serializer", "equals", "Tuple", "eq").
calls("Tuple4Serializer", "equals", "Tuple", "eq").
calls("Tuple4Serializer", "equals", "Tuple", "eq").
method("Tuple4Serializer", "hashCode", 10, 1, "jan@kotek.net").
calls("Tuple4Serializer", "hashCode", "Comparator", "hashCode").
calls("Tuple4Serializer", "hashCode", "Comparator", "hashCode").
calls("Tuple4Serializer", "hashCode", "Serializer", "hashCode").
calls("Tuple4Serializer", "hashCode", "Serializer", "hashCode").
calls("Tuple4Serializer", "hashCode", "Serializer", "hashCode").
calls("Tuple4Serializer", "hashCode", "Serializer", "hashCode").
method("Tuple4Serializer", "serialize", 6, 1, "jan@kotek.net").
calls("Tuple4Serializer", "serialize", "Serializer", "serialize").
calls("Tuple4Serializer", "serialize", "Serializer", "serialize").
calls("Tuple4Serializer", "serialize", "Serializer", "serialize").
calls("Tuple4Serializer", "serialize", "Serializer", "serialize").
method("Tuple4Serializer", "deserialize", 3, 1, "jan@kotek.net").
method("Tuple4Serializer", "compare", 15, 4, "jan@kotek.net").
calls("Tuple4Serializer", "compare", "Tuple4Serializer", "compare2").
calls("Tuple4Serializer", "compare", "Tuple4Serializer", "compare2").
calls("Tuple4Serializer", "compare", "Tuple4Serializer", "compare2").
method("Tuple4Serializer", "equals", 3, 1, "jan@kotek.net").
calls("Tuple4Serializer", "equals", "Tuple4Serializer", "compare").
method("Tuple4Serializer", "hashCode", 7, 1, "jan@kotek.net").
calls("Tuple4Serializer", "hashCode", "Serializer", "hashCode").
calls("Tuple4Serializer", "hashCode", "Serializer", "hashCode").
calls("Tuple4Serializer", "hashCode", "Serializer", "hashCode").
calls("Tuple4Serializer", "hashCode", "Serializer", "hashCode").
method("Tuple4Serializer", "callbackDB", 26, 9, "jan@kotek.net").
calls("Tuple4Serializer", "callbackDB", "DB", "getDefaultSerializer").
calls("Tuple4Serializer", "callbackDB", "DB", "getDefaultSerializer").
calls("Tuple4Serializer", "callbackDB", "DB", "getDefaultSerializer").
calls("Tuple4Serializer", "callbackDB", "DB", "getDefaultSerializer").
calls("Tuple4Serializer", "callbackDB", "DB", "getDefaultSerializer").
calls("Tuple4Serializer", "callbackDB", "DB", "getDefaultSerializer").
calls("Tuple4Serializer", "callbackDB", "DB", "getDefaultSerializer").
calls("Tuple4Serializer", "callbackDB", "DB", "getDefaultSerializer").
method("Tuple4Serializer", "nextValue", 3, 1, "jan@kotek.net").

# mapdb/src/main/java/org/mapdb/tuple/Tuple5Serializer.java

class("Tuple5Serializer").
method("Tuple5Serializer", "Tuple5Serializer", 3, 0, "jan@kotek.net").
calls("Tuple5Serializer", "Tuple5Serializer", "Tuple5Serializer", "Tuple5Serializer").
method("Tuple5Serializer", "Tuple5Serializer", 3, 0, "jan@kotek.net").
calls("Tuple5Serializer", "Tuple5Serializer", "Tuple5Serializer", "Tuple5Serializer").
method("Tuple5Serializer", "Tuple5Serializer", 3, 0, "jan@kotek.net").
calls("Tuple5Serializer", "Tuple5Serializer", "Tuple5Serializer", "Tuple5Serializer").
method("Tuple5Serializer", "Tuple5Serializer", 12, 0, "jan@kotek.net").
method("Tuple5Serializer", "valueArraySerialize", 43, 10, "jan@kotek.net").
calls("Tuple5Serializer", "valueArraySerialize", "Serializer", "serialize").
calls("Tuple5Serializer", "valueArraySerialize", "Comparator", "compare").
calls("Tuple5Serializer", "valueArraySerialize", "DataOutput2", "packInt").
calls("Tuple5Serializer", "valueArraySerialize", "Serializer", "serialize").
calls("Tuple5Serializer", "valueArraySerialize", "Comparator", "compare").
calls("Tuple5Serializer", "valueArraySerialize", "DataOutput2", "packInt").
calls("Tuple5Serializer", "valueArraySerialize", "Serializer", "serialize").
calls("Tuple5Serializer", "valueArraySerialize", "Comparator", "compare").
calls("Tuple5Serializer", "valueArraySerialize", "DataOutput2", "packInt").
calls("Tuple5Serializer", "valueArraySerialize", "Serializer", "serialize").
calls("Tuple5Serializer", "valueArraySerialize", "Comparator", "compare").
calls("Tuple5Serializer", "valueArraySerialize", "DataOutput2", "packInt").
calls("Tuple5Serializer", "valueArraySerialize", "Serializer", "serialize").
method("Tuple5Serializer", "valueArrayDeserialize", 35, 6, "jan@kotek.net").
calls("Tuple5Serializer", "valueArrayDeserialize", "Serializer", "deserialize").
calls("Tuple5Serializer", "valueArrayDeserialize", "DataInput2", "unpackInt").
calls("Tuple5Serializer", "valueArrayDeserialize", "Serializer", "deserialize").
calls("Tuple5Serializer", "valueArrayDeserialize", "DataInput2", "unpackInt").
calls("Tuple5Serializer", "valueArrayDeserialize", "Serializer", "deserialize").
calls("Tuple5Serializer", "valueArrayDeserialize", "DataInput2", "unpackInt").
calls("Tuple5Serializer", "valueArrayDeserialize", "Serializer", "deserialize").
calls("Tuple5Serializer", "valueArrayDeserialize", "DataInput2", "unpackInt").
calls("Tuple5Serializer", "valueArrayDeserialize", "Tuple", "t5").
method("Tuple5Serializer", "equals", 10, 3, "jan@kotek.net").
calls("Tuple5Serializer", "equals", "Tuple5Serializer", "getClass").
calls("Tuple5Serializer", "equals", "Object", "getClass").
calls("Tuple5Serializer", "equals", "Tuple", "eq").
calls("Tuple5Serializer", "equals", "Tuple", "eq").
calls("Tuple5Serializer", "equals", "Tuple", "eq").
calls("Tuple5Serializer", "equals", "Tuple", "eq").
calls("Tuple5Serializer", "equals", "Tuple", "eq").
calls("Tuple5Serializer", "equals", "Tuple", "eq").
calls("Tuple5Serializer", "equals", "Tuple", "eq").
calls("Tuple5Serializer", "equals", "Tuple", "eq").
calls("Tuple5Serializer", "equals", "Tuple", "eq").
method("Tuple5Serializer", "hashCode", 12, 1, "jan@kotek.net").
calls("Tuple5Serializer", "hashCode", "Comparator", "hashCode").
calls("Tuple5Serializer", "hashCode", "Comparator", "hashCode").
calls("Tuple5Serializer", "hashCode", "Comparator", "hashCode").
calls("Tuple5Serializer", "hashCode", "Serializer", "hashCode").
calls("Tuple5Serializer", "hashCode", "Serializer", "hashCode").
calls("Tuple5Serializer", "hashCode", "Serializer", "hashCode").
calls("Tuple5Serializer", "hashCode", "Serializer", "hashCode").
calls("Tuple5Serializer", "hashCode", "Serializer", "hashCode").
method("Tuple5Serializer", "serialize", 7, 1, "jan@kotek.net").
calls("Tuple5Serializer", "serialize", "Serializer", "serialize").
calls("Tuple5Serializer", "serialize", "Serializer", "serialize").
calls("Tuple5Serializer", "serialize", "Serializer", "serialize").
calls("Tuple5Serializer", "serialize", "Serializer", "serialize").
calls("Tuple5Serializer", "serialize", "Serializer", "serialize").
method("Tuple5Serializer", "deserialize", 3, 1, "jan@kotek.net").
method("Tuple5Serializer", "compare", 19, 5, "jan@kotek.net").
calls("Tuple5Serializer", "compare", "Tuple5Serializer", "compare2").
calls("Tuple5Serializer", "compare", "Tuple5Serializer", "compare2").
calls("Tuple5Serializer", "compare", "Tuple5Serializer", "compare2").
calls("Tuple5Serializer", "compare", "Tuple5Serializer", "compare2").
method("Tuple5Serializer", "equals", 3, 1, "jan@kotek.net").
calls("Tuple5Serializer", "equals", "Tuple5Serializer", "compare").
method("Tuple5Serializer", "hashCode", 8, 1, "jan@kotek.net").
calls("Tuple5Serializer", "hashCode", "Serializer", "hashCode").
calls("Tuple5Serializer", "hashCode", "Serializer", "hashCode").
calls("Tuple5Serializer", "hashCode", "Serializer", "hashCode").
calls("Tuple5Serializer", "hashCode", "Serializer", "hashCode").
calls("Tuple5Serializer", "hashCode", "Serializer", "hashCode").
method("Tuple5Serializer", "callbackDB", 32, 11, "jan@kotek.net").
calls("Tuple5Serializer", "callbackDB", "DB", "getDefaultSerializer").
calls("Tuple5Serializer", "callbackDB", "DB", "getDefaultSerializer").
calls("Tuple5Serializer", "callbackDB", "DB", "getDefaultSerializer").
calls("Tuple5Serializer", "callbackDB", "DB", "getDefaultSerializer").
calls("Tuple5Serializer", "callbackDB", "DB", "getDefaultSerializer").
calls("Tuple5Serializer", "callbackDB", "DB", "getDefaultSerializer").
calls("Tuple5Serializer", "callbackDB", "DB", "getDefaultSerializer").
calls("Tuple5Serializer", "callbackDB", "DB", "getDefaultSerializer").
calls("Tuple5Serializer", "callbackDB", "DB", "getDefaultSerializer").
calls("Tuple5Serializer", "callbackDB", "DB", "getDefaultSerializer").
method("Tuple5Serializer", "nextValue", 3, 1, "jan@kotek.net").

# mapdb/src/main/java/org/mapdb/tuple/Tuple.java

class("Tuple").
method("Tuple", "eq", 3, 1, "jan@kotek.net").
calls("Tuple", "eq", "Object", "equals").
method("Tuple", "compare2", 12, 4, "jan@kotek.net").
calls("Tuple", "compare2", "Comparator", "compare").
method("Tuple", "HI", 3, 1, "jan@kotek.net").
method("Tuple", "hiIfNull", 3, 1, "jan@kotek.net").
calls("Tuple", "hiIfNull", "Tuple", "HI").
method("Tuple", "t2", 3, 1, "jan@kotek.net").
method("Tuple", "t3", 3, 1, "jan@kotek.net").
method("Tuple", "t4", 3, 1, "jan@kotek.net").
method("Tuple", "t5", 3, 1, "jan@kotek.net").
method("Tuple", "t6", 3, 1, "jan@kotek.net").

# mapdb/src/main/java/org/mapdb/tuple/Tuple5.java

class("Tuple5").
method("Tuple5", "Tuple5", 7, 0, "jan@kotek.net").
method("Tuple5", "compareTo", 3, 1, "jan@kotek.net").
calls("Tuple5", "compareTo", "Tuple.TUPLE5_COMPARATOR", "compare").
method("Tuple5", "toString", 3, 1, "jan@kotek.net").
method("Tuple5", "equals", 10, 3, "jan@kotek.net").
calls("Tuple5", "equals", "Tuple5", "getClass").
calls("Tuple5", "equals", "Object", "getClass").
calls("Tuple5", "equals", "Tuple5", "eq").
calls("Tuple5", "equals", "Tuple5", "eq").
calls("Tuple5", "equals", "Tuple5", "eq").
calls("Tuple5", "equals", "Tuple5", "eq").
calls("Tuple5", "equals", "Tuple5", "eq").
method("Tuple5", "hashCode", 8, 1, "jan@kotek.net").
calls("Tuple5", "hashCode", "B", "hashCode").
calls("Tuple5", "hashCode", "C", "hashCode").
calls("Tuple5", "hashCode", "D", "hashCode").
calls("Tuple5", "hashCode", "E", "hashCode").

# mapdb/src/main/java/org/mapdb/volume/ByteBufferMemoryVol.java

class("ByteBufferMemoryVol").
method("ByteBufferMemoryVol", "ByteBufferMemoryVol", 7, 0, "jan@kotek.net").
calls("ByteBufferMemoryVol", "ByteBufferMemoryVol", "ByteBufferVol", "ByteBufferVol").
calls("ByteBufferMemoryVol", "ByteBufferMemoryVol", "ByteBufferMemoryVol", "ensureAvailable").
method("ByteBufferMemoryVol", "toString", 3, 1, "jan@kotek.net").
calls("ByteBufferMemoryVol", "toString", "ByteBufferVol", "toString").
method("ByteBufferMemoryVol", "ensureAvailable", 26, 6, "jan@kotek.net").
calls("ByteBufferMemoryVol", "ensureAvailable", "DataIO", "roundUp").
calls("ByteBufferMemoryVol", "ensureAvailable", "growLock", "lock").
calls("ByteBufferMemoryVol", "ensureAvailable", "Arrays", "copyOf").
calls("ByteBufferMemoryVol", "ensureAvailable", "ByteBuffer", "order").
calls("ByteBufferMemoryVol", "ensureAvailable", "growLock", "unlock").
method("ByteBufferMemoryVol", "truncate", 24, 6, "jan@kotek.net").
calls("ByteBufferMemoryVol", "truncate", "ByteBufferMemoryVol", "ensureAvailable").
calls("ByteBufferMemoryVol", "truncate", "growLock", "lock").
calls("ByteBufferMemoryVol", "truncate", "Arrays", "copyOf").
calls("ByteBufferMemoryVol", "truncate", "ByteBufferMemoryVol", "unmap").
calls("ByteBufferMemoryVol", "truncate", "growLock", "unlock").
method("ByteBufferMemoryVol", "close", 17, 5, "jan@kotek.net").
calls("ByteBufferMemoryVol", "close", "closed", "compareAndSet").
calls("ByteBufferMemoryVol", "close", "growLock", "lock").
calls("ByteBufferMemoryVol", "close", "ByteBufferMemoryVol", "unmap").
calls("ByteBufferMemoryVol", "close", "Arrays", "fill").
calls("ByteBufferMemoryVol", "close", "growLock", "unlock").
method("ByteBufferMemoryVol", "sync", 1, 1, "jan@kotek.net").
method("ByteBufferMemoryVol", "length", 3, 1, "jan@kotek.net").
method("ByteBufferMemoryVol", "isReadOnly", 3, 1, "jan@kotek.net").
method("ByteBufferMemoryVol", "getFile", 3, 1, "jan@kotek.net").
method("ByteBufferMemoryVol", "getFileLocked", 3, 1, "jan@kotek.net").

# mapdb/src/main/java/org/mapdb/volume/ByteArrayVol.java

class("ByteArrayVol").
method("ByteArrayVol", "ByteArrayVol", 3, 0, "jan@kotek.net").
calls("ByteArrayVol", "ByteArrayVol", "ByteArrayVol", "ByteArrayVol").
method("ByteArrayVol", "ByteArrayVol", 8, 0, "jan@kotek.net").
calls("ByteArrayVol", "ByteArrayVol", "ByteArrayVol", "ensureAvailable").
method("ByteArrayVol", "getSlice", 8, 2, "jan@kotek.net").
method("ByteArrayVol", "ensureAvailable", 22, 5, "jan@kotek.net").
calls("ByteArrayVol", "ensureAvailable", "DataIO", "roundUp").
calls("ByteArrayVol", "ensureAvailable", "ReentrantLock", "lock").
calls("ByteArrayVol", "ensureAvailable", "Arrays", "copyOf").
calls("ByteArrayVol", "ensureAvailable", "ReentrantLock", "unlock").
method("ByteArrayVol", "truncate", 18, 4, "jan@kotek.net").
calls("ByteArrayVol", "truncate", "ByteArrayVol", "ensureAvailable").
calls("ByteArrayVol", "truncate", "ReentrantLock", "lock").
calls("ByteArrayVol", "truncate", "Arrays", "copyOf").
calls("ByteArrayVol", "truncate", "ReentrantLock", "unlock").
method("ByteArrayVol", "putLong", 5, 1, "jan@kotek.net").
calls("ByteArrayVol", "putLong", "DataIO", "putLong").
method("ByteArrayVol", "putInt", 8, 1, "jan@kotek.net").
method("ByteArrayVol", "putByte", 4, 1, "jan@kotek.net").
method("ByteArrayVol", "putData", 5, 1, "jan@kotek.net").
calls("ByteArrayVol", "putData", "System", "arraycopy").
method("ByteArrayVol", "putData", 5, 1, "jan@kotek.net").
calls("ByteArrayVol", "putData", "ByteBuffer", "remaining").
calls("ByteArrayVol", "putData", "ByteBuffer", "get").
method("ByteArrayVol", "copyTo", 5, 1, "jan@kotek.net").
calls("ByteArrayVol", "copyTo", "Volume", "putData").
method("ByteArrayVol", "putDataOverlap", 15, 3, "jan@kotek.net").
calls("ByteArrayVol", "putDataOverlap", "System", "arraycopy").
calls("ByteArrayVol", "putDataOverlap", "ByteArrayVol", "putData").
method("ByteArrayVol", "getDataInputOverlap", 17, 3, "jan@kotek.net").
calls("ByteArrayVol", "getDataInputOverlap", "System", "arraycopy").
calls("ByteArrayVol", "getDataInputOverlap", "ByteArrayVol", "getDataInput").
method("ByteArrayVol", "clear", 12, 3, "jan@kotek.net").
calls("ByteArrayVol", "clear", "Math", "min").
calls("ByteArrayVol", "clear", "System", "arraycopy").
method("ByteArrayVol", "getLong", 5, 1, "jan@kotek.net").
calls("ByteArrayVol", "getLong", "DataIO", "getLong").
method("ByteArrayVol", "getInt", 9, 2, "jan@kotek.net").
method("ByteArrayVol", "getByte", 4, 1, "jan@kotek.net").
method("ByteArrayVol", "getDataInput", 5, 1, "jan@kotek.net").
method("ByteArrayVol", "getData", 5, 1, "jan@kotek.net").
calls("ByteArrayVol", "getData", "System", "arraycopy").
method("ByteArrayVol", "close", 4, 1, "jan@kotek.net").
calls("ByteArrayVol", "close", "closed", "set").
method("ByteArrayVol", "sync", 1, 1, "jan@kotek.net").
method("ByteArrayVol", "sliceSize", 3, 1, "jan@kotek.net").
method("ByteArrayVol", "isSliced", 3, 1, "jan@kotek.net").
method("ByteArrayVol", "length", 3, 1, "jan@kotek.net").
method("ByteArrayVol", "isReadOnly", 3, 1, "jan@kotek.net").
method("ByteArrayVol", "getFile", 3, 1, "jan@kotek.net").
method("ByteArrayVol", "getFileLocked", 3, 1, "jan@kotek.net").

# mapdb/src/main/java/org/mapdb/volume/MappedFileVolSingle.java

class("MappedFileVolSingle").
method("MappedFileVolSingle", "MappedFileVolSingle", 27, 0, "jan@kotek.net").
calls("MappedFileVolSingle", "MappedFileVolSingle", "ByteBufferVolSingle", "ByteBufferVolSingle").
calls("MappedFileVolSingle", "MappedFileVolSingle", "FileChannelVol", "checkFolder").
calls("MappedFileVolSingle", "MappedFileVolSingle", "RandomAccessFile", "getChannel").
calls("MappedFileVolSingle", "MappedFileVolSingle", "Volume", "lockFile").
calls("MappedFileVolSingle", "MappedFileVolSingle", "Math", "min").
calls("MappedFileVolSingle", "MappedFileVolSingle", "RandomAccessFile", "seek").
calls("MappedFileVolSingle", "MappedFileVolSingle", "Math", "min").
calls("MappedFileVolSingle", "MappedFileVolSingle", "RandomAccessFile", "write").
calls("MappedFileVolSingle", "MappedFileVolSingle", "RandomAccessFile", "getChannel").
calls("MappedFileVolSingle", "MappedFileVolSingle", "buffer", "asReadOnlyBuffer").
method("MappedFileVolSingle", "close", 16, 5, "jan@kotek.net").
calls("MappedFileVolSingle", "close", "closed", "compareAndSet").
calls("MappedFileVolSingle", "close", "FileLock", "isValid").
calls("MappedFileVolSingle", "close", "FileLock", "release").
calls("MappedFileVolSingle", "close", "RandomAccessFile", "close").
calls("MappedFileVolSingle", "close", "ByteBufferVol", "unmap").
method("MappedFileVolSingle", "sync", 8, 3, "jan@kotek.net").
method("MappedFileVolSingle", "length", 3, 1, "jan@kotek.net").
calls("MappedFileVolSingle", "length", "File", "length").
method("MappedFileVolSingle", "isReadOnly", 3, 1, "jan@kotek.net").
method("MappedFileVolSingle", "getFile", 3, 1, "jan@kotek.net").
method("MappedFileVolSingle", "getFileLocked", 3, 1, "jan@kotek.net").
calls("MappedFileVolSingle", "getFileLocked", "FileLock", "isValid").
method("MappedFileVolSingle", "truncate", 1, 1, "jan@kotek.net").
method("MappedFileVolSingle", "fileLoad", 4, 1, "jan@kotek.net").

# mapdb/src/main/java/org/mapdb/volume/ByteBufferMemoryVolSingle.java

class("ByteBufferMemoryVolSingle").
method("ByteBufferMemoryVolSingle", "ByteBufferMemoryVolSingle", 5, 0, "jan@kotek.net").
calls("ByteBufferMemoryVolSingle", "ByteBufferMemoryVolSingle", "ByteBufferVolSingle", "ByteBufferVolSingle").
calls("ByteBufferMemoryVolSingle", "ByteBufferMemoryVolSingle", "ByteBuffer", "allocateDirect").
calls("ByteBufferMemoryVolSingle", "ByteBufferMemoryVolSingle", "ByteBuffer", "allocate").
method("ByteBufferMemoryVolSingle", "toString", 3, 1, "jan@kotek.net").
calls("ByteBufferMemoryVolSingle", "toString", "ByteBufferVolSingle", "toString").
method("ByteBufferMemoryVolSingle", "truncate", 1, 1, "jan@kotek.net").
method("ByteBufferMemoryVolSingle", "close", 9, 3, "jan@kotek.net").
calls("ByteBufferMemoryVolSingle", "close", "closed", "compareAndSet").
calls("ByteBufferMemoryVolSingle", "close", "ByteBufferVol", "unmap").
method("ByteBufferMemoryVolSingle", "sync", 1, 1, "jan@kotek.net").
method("ByteBufferMemoryVolSingle", "length", 3, 1, "jan@kotek.net").
method("ByteBufferMemoryVolSingle", "isReadOnly", 3, 1, "jan@kotek.net").
method("ByteBufferMemoryVolSingle", "getFile", 3, 1, "jan@kotek.net").
method("ByteBufferMemoryVolSingle", "getFileLocked", 3, 1, "jan@kotek.net").

# mapdb/src/main/java/org/mapdb/volume/RandomAccessFileVol.java

class("RandomAccessFileVol").
method("RandomAccessFileVol", "RandomAccessFileVol", 16, 0, "jan@kotek.net").
calls("RandomAccessFileVol", "RandomAccessFileVol", "RandomAccessFile", "getChannel").
calls("RandomAccessFileVol", "RandomAccessFileVol", "Volume", "lockFile").
calls("RandomAccessFileVol", "RandomAccessFileVol", "RandomAccessFile", "length").
calls("RandomAccessFileVol", "RandomAccessFileVol", "RandomAccessFile", "setLength").
calls("RandomAccessFileVol", "RandomAccessFileVol", "RandomAccessFileVol", "clear").
method("RandomAccessFileVol", "ensureAvailable", 8, 3, "jan@kotek.net").
calls("RandomAccessFileVol", "ensureAvailable", "RandomAccessFile", "length").
calls("RandomAccessFileVol", "ensureAvailable", "RandomAccessFile", "setLength").
method("RandomAccessFileVol", "truncate", 6, 2, "jan@kotek.net").
calls("RandomAccessFileVol", "truncate", "RandomAccessFile", "setLength").
method("RandomAccessFileVol", "putLong", 10, 3, "jan@kotek.net").
calls("RandomAccessFileVol", "putLong", "RandomAccessFile", "seek").
calls("RandomAccessFileVol", "putLong", "RandomAccessFile", "writeLong").
method("RandomAccessFileVol", "putInt", 10, 3, "jan@kotek.net").
calls("RandomAccessFileVol", "putInt", "RandomAccessFile", "seek").
calls("RandomAccessFileVol", "putInt", "RandomAccessFile", "writeInt").
method("RandomAccessFileVol", "putByte", 10, 3, "jan@kotek.net").
calls("RandomAccessFileVol", "putByte", "RandomAccessFile", "seek").
calls("RandomAccessFileVol", "putByte", "RandomAccessFile", "writeByte").
method("RandomAccessFileVol", "putData", 10, 3, "jan@kotek.net").
calls("RandomAccessFileVol", "putData", "RandomAccessFile", "seek").
calls("RandomAccessFileVol", "putData", "RandomAccessFile", "write").
method("RandomAccessFileVol", "putData", 14, 3, "jan@kotek.net").
calls("RandomAccessFileVol", "putData", "ByteBuffer", "get").
calls("RandomAccessFileVol", "putData", "RandomAccessFileVol", "putData").
method("RandomAccessFileVol", "getLong", 7, 2, "jan@kotek.net").
calls("RandomAccessFileVol", "getLong", "RandomAccessFile", "seek").
calls("RandomAccessFileVol", "getLong", "RandomAccessFile", "readLong").
method("RandomAccessFileVol", "getInt", 7, 2, "jan@kotek.net").
calls("RandomAccessFileVol", "getInt", "RandomAccessFile", "seek").
calls("RandomAccessFileVol", "getInt", "RandomAccessFile", "readInt").
method("RandomAccessFileVol", "getByte", 7, 2, "jan@kotek.net").
calls("RandomAccessFileVol", "getByte", "RandomAccessFile", "seek").
calls("RandomAccessFileVol", "getByte", "RandomAccessFile", "readByte").
method("RandomAccessFileVol", "getDataInput", 9, 2, "jan@kotek.net").
calls("RandomAccessFileVol", "getDataInput", "RandomAccessFile", "seek").
calls("RandomAccessFileVol", "getDataInput", "RandomAccessFile", "readFully").
method("RandomAccessFileVol", "getData", 7, 2, "jan@kotek.net").
calls("RandomAccessFileVol", "getData", "RandomAccessFile", "seek").
calls("RandomAccessFileVol", "getData", "RandomAccessFile", "readFully").
method("RandomAccessFileVol", "close", 12, 4, "jan@kotek.net").
calls("RandomAccessFileVol", "close", "closed", "compareAndSet").
calls("RandomAccessFileVol", "close", "FileLock", "isValid").
calls("RandomAccessFileVol", "close", "FileLock", "release").
calls("RandomAccessFileVol", "close", "RandomAccessFile", "close").
method("RandomAccessFileVol", "sync", 6, 2, "jan@kotek.net").
calls("RandomAccessFileVol", "sync", "RandomAccessFile", "getFD").
method("RandomAccessFileVol", "sliceSize", 3, 1, "jan@kotek.net").
method("RandomAccessFileVol", "isSliced", 3, 1, "jan@kotek.net").
method("RandomAccessFileVol", "length", 6, 2, "jan@kotek.net").
calls("RandomAccessFileVol", "length", "RandomAccessFile", "length").
method("RandomAccessFileVol", "getFile", 3, 1, "jan@kotek.net").
method("RandomAccessFileVol", "getFileLocked", 3, 1, "jan@kotek.net").
calls("RandomAccessFileVol", "getFileLocked", "FileLock", "isValid").
method("RandomAccessFileVol", "clear", 6, 2, "jan@kotek.net").
calls("RandomAccessFileVol", "clear", "RandomAccessFileVol", "clearRAF").
method("RandomAccessFileVol", "clearRAF", 7, 2, "jan@kotek.net").
calls("RandomAccessFileVol", "clearRAF", "RandomAccessFile", "seek").
calls("RandomAccessFileVol", "clearRAF", "RandomAccessFile", "write").
method("RandomAccessFileVol", "putUnsignedShort", 8, 2, "jan@kotek.net").
calls("RandomAccessFileVol", "putUnsignedShort", "RandomAccessFile", "seek").
calls("RandomAccessFileVol", "putUnsignedShort", "RandomAccessFile", "write").
calls("RandomAccessFileVol", "putUnsignedShort", "RandomAccessFile", "write").
method("RandomAccessFileVol", "getUnsignedShort", 7, 2, "jan@kotek.net").
calls("RandomAccessFileVol", "getUnsignedShort", "RandomAccessFile", "seek").
calls("RandomAccessFileVol", "getUnsignedShort", "RandomAccessFile", "readUnsignedByte").
calls("RandomAccessFileVol", "getUnsignedShort", "RandomAccessFile", "readUnsignedByte").
method("RandomAccessFileVol", "getSixLong", 7, 2, "jan@kotek.net").
calls("RandomAccessFileVol", "getSixLong", "RandomAccessFile", "seek").
calls("RandomAccessFileVol", "getSixLong", "RandomAccessFile", "readUnsignedByte").
calls("RandomAccessFileVol", "getSixLong", "RandomAccessFile", "readUnsignedByte").
calls("RandomAccessFileVol", "getSixLong", "RandomAccessFile", "readUnsignedByte").
calls("RandomAccessFileVol", "getSixLong", "RandomAccessFile", "readUnsignedByte").
calls("RandomAccessFileVol", "getSixLong", "RandomAccessFile", "readUnsignedByte").
calls("RandomAccessFileVol", "getSixLong", "RandomAccessFile", "readUnsignedByte").
method("RandomAccessFileVol", "putSixLong", 15, 3, "jan@kotek.net").
calls("RandomAccessFileVol", "putSixLong", "RandomAccessFile", "seek").
calls("RandomAccessFileVol", "putSixLong", "RandomAccessFile", "write").
calls("RandomAccessFileVol", "putSixLong", "RandomAccessFile", "write").
calls("RandomAccessFileVol", "putSixLong", "RandomAccessFile", "write").
calls("RandomAccessFileVol", "putSixLong", "RandomAccessFile", "write").
calls("RandomAccessFileVol", "putSixLong", "RandomAccessFile", "write").
calls("RandomAccessFileVol", "putSixLong", "RandomAccessFile", "write").
method("RandomAccessFileVol", "putPackedLong", 15, 3, "jan@kotek.net").
calls("RandomAccessFileVol", "putPackedLong", "RandomAccessFile", "seek").
calls("RandomAccessFileVol", "putPackedLong", "RandomAccessFile", "write").
calls("RandomAccessFileVol", "putPackedLong", "RandomAccessFile", "write").
method("RandomAccessFileVol", "getPackedLong", 14, 3, "jan@kotek.net").
calls("RandomAccessFileVol", "getPackedLong", "RandomAccessFile", "seek").
calls("RandomAccessFileVol", "getPackedLong", "RandomAccessFile", "readByte").
method("RandomAccessFileVol", "isReadOnly", 3, 1, "jan@kotek.net").

# mapdb/src/main/java/org/mapdb/volume/ByteBufferVol.java

class("ByteBufferVol").
method("ByteBufferVol", "ByteBufferVol", 7, 0, "jan@kotek.net").
method("ByteBufferVol", "getSlice", 8, 2, "jan@kotek.net").
method("ByteBufferVol", "putLong", 6, 2, "jan@kotek.net").
calls("ByteBufferVol", "putLong", "ByteBufferVol", "getSlice").
method("ByteBufferVol", "putInt", 6, 2, "jan@kotek.net").
calls("ByteBufferVol", "putInt", "ByteBufferVol", "getSlice").
method("ByteBufferVol", "putByte", 6, 2, "jan@kotek.net").
calls("ByteBufferVol", "putByte", "ByteBufferVol", "getSlice").
method("ByteBufferVol", "putData", 9, 2, "jan@kotek.net").
calls("ByteBufferVol", "putData", "ByteBuffer", "position").
calls("ByteBufferVol", "putData", "ByteBuffer", "put").
method("ByteBufferVol", "putData", 9, 2, "jan@kotek.net").
calls("ByteBufferVol", "putData", "ByteBuffer", "remaining").
calls("ByteBufferVol", "putData", "ByteBuffer", "position").
calls("ByteBufferVol", "putData", "ByteBuffer", "put").
method("ByteBufferVol", "copyTo", 7, 1, "jan@kotek.net").
calls("ByteBufferVol", "copyTo", "ByteBuffer", "position").
calls("ByteBufferVol", "copyTo", "ByteBuffer", "limit").
calls("ByteBufferVol", "copyTo", "Volume", "putData").
method("ByteBufferVol", "getData", 6, 1, "jan@kotek.net").
calls("ByteBufferVol", "getData", "ByteBuffer", "position").
calls("ByteBufferVol", "getData", "ByteBuffer", "get").
method("ByteBufferVol", "getLong", 3, 1, "jan@kotek.net").
calls("ByteBufferVol", "getLong", "ByteBufferVol", "getSlice").
method("ByteBufferVol", "getInt", 3, 1, "jan@kotek.net").
calls("ByteBufferVol", "getInt", "ByteBufferVol", "getSlice").
method("ByteBufferVol", "getByte", 3, 1, "jan@kotek.net").
calls("ByteBufferVol", "getByte", "ByteBufferVol", "getSlice").
method("ByteBufferVol", "getDataInput", 3, 1, "jan@kotek.net").
method("ByteBufferVol", "putDataOverlap", 16, 3, "jan@kotek.net").
calls("ByteBufferVol", "putDataOverlap", "ByteBuffer", "position").
calls("ByteBufferVol", "putDataOverlap", "ByteBuffer", "position").
calls("ByteBufferVol", "putDataOverlap", "ByteBuffer", "limit").
calls("ByteBufferVol", "putDataOverlap", "ByteBuffer", "put").
calls("ByteBufferVol", "putDataOverlap", "ByteBufferVol", "putData").
method("ByteBufferVol", "getDataInputOverlap", 18, 3, "jan@kotek.net").
calls("ByteBufferVol", "getDataInputOverlap", "ByteBuffer", "position").
calls("ByteBufferVol", "getDataInputOverlap", "ByteBuffer", "position").
calls("ByteBufferVol", "getDataInputOverlap", "ByteBuffer", "limit").
calls("ByteBufferVol", "getDataInputOverlap", "ByteBuffer", "get").
calls("ByteBufferVol", "getDataInputOverlap", "ByteBufferVol", "getDataInput").
method("ByteBufferVol", "putUnsignedShort", 6, 1, "jan@kotek.net").
calls("ByteBufferVol", "putUnsignedShort", "ByteBuffer", "put").
calls("ByteBufferVol", "putUnsignedShort", "ByteBuffer", "put").
method("ByteBufferVol", "getUnsignedShort", 5, 1, "jan@kotek.net").
calls("ByteBufferVol", "getUnsignedShort", "ByteBuffer", "get").
calls("ByteBufferVol", "getUnsignedShort", "ByteBuffer", "get").
method("ByteBufferVol", "getUnsignedByte", 5, 1, "jan@kotek.net").
calls("ByteBufferVol", "getUnsignedByte", "ByteBuffer", "get").
method("ByteBufferVol", "putUnsignedByte", 5, 1, "jan@kotek.net").
calls("ByteBufferVol", "putUnsignedByte", "ByteBufferVol", "toByte").
calls("ByteBufferVol", "putUnsignedByte", "ByteBuffer", "put").
method("ByteBufferVol", "toByte", 3, 1, "jan@kotek.net").
method("ByteBufferVol", "toByte", 3, 1, "jan@kotek.net").
method("ByteBufferVol", "getSixLong", 5, 1, "jan@kotek.net").
calls("ByteBufferVol", "getSixLong", "ByteBuffer", "get").
calls("ByteBufferVol", "getSixLong", "ByteBuffer", "get").
calls("ByteBufferVol", "getSixLong", "ByteBuffer", "get").
calls("ByteBufferVol", "getSixLong", "ByteBuffer", "get").
calls("ByteBufferVol", "getSixLong", "ByteBuffer", "get").
calls("ByteBufferVol", "getSixLong", "ByteBuffer", "get").
method("ByteBufferVol", "putSixLong", 13, 2, "jan@kotek.net").
calls("ByteBufferVol", "putSixLong", "ByteBuffer", "put").
calls("ByteBufferVol", "putSixLong", "ByteBuffer", "put").
calls("ByteBufferVol", "putSixLong", "ByteBuffer", "put").
calls("ByteBufferVol", "putSixLong", "ByteBuffer", "put").
calls("ByteBufferVol", "putSixLong", "ByteBuffer", "put").
calls("ByteBufferVol", "putSixLong", "ByteBuffer", "put").
method("ByteBufferVol", "putPackedLong", 12, 2, "jan@kotek.net").
calls("ByteBufferVol", "putPackedLong", "ByteBuffer", "put").
calls("ByteBufferVol", "putPackedLong", "ByteBuffer", "put").
method("ByteBufferVol", "getPackedLong", 11, 2, "jan@kotek.net").
calls("ByteBufferVol", "getPackedLong", "ByteBuffer", "get").
method("ByteBufferVol", "clear", 14, 3, "jan@kotek.net").
calls("ByteBufferVol", "clear", "ByteBuffer", "duplicate").
calls("ByteBufferVol", "clear", "ByteBuffer", "position").
calls("ByteBufferVol", "clear", "Math", "min").
calls("ByteBufferVol", "clear", "ByteBuffer", "put").
method("ByteBufferVol", "isSliced", 3, 1, "jan@kotek.net").
method("ByteBufferVol", "sliceSize", 3, 1, "jan@kotek.net").
method("ByteBufferVol", "unmap", 16, 4, "jan@kotek.net").
calls("ByteBufferVol", "unmap", "Cleaner", "clean").
calls("ByteBufferVol", "unmap", "ByteBufferVol", "unmap").

# mapdb/src/main/java/org/mapdb/volume/MappedFileVol.java

class("MappedFileVol").
method("MappedFileVol", "MappedFileVol", 33, 0, "jan@kotek.net").
calls("MappedFileVol", "MappedFileVol", "ByteBufferVol", "ByteBufferVol").
calls("MappedFileVol", "MappedFileVol", "FileChannelVol", "checkFolder").
calls("MappedFileVol", "MappedFileVol", "RandomAccessFile", "getChannel").
calls("MappedFileVol", "MappedFileVol", "Volume", "lockFile").
calls("MappedFileVol", "MappedFileVol", "RandomAccessFileVol", "clearRAF").
calls("MappedFileVol", "MappedFileVol", "ByteBuffer", "order").
method("MappedFileVol", "ensureAvailable", 29, 7, "jan@kotek.net").
calls("MappedFileVol", "ensureAvailable", "DataIO", "roundUp").
calls("MappedFileVol", "ensureAvailable", "growLock", "lock").
calls("MappedFileVol", "ensureAvailable", "RandomAccessFileVol", "clearRAF").
calls("MappedFileVol", "ensureAvailable", "Arrays", "copyOf").
calls("MappedFileVol", "ensureAvailable", "ByteBuffer", "order").
calls("MappedFileVol", "ensureAvailable", "growLock", "unlock").
method("MappedFileVol", "close", 24, 7, "jan@kotek.net").
calls("MappedFileVol", "close", "closed", "compareAndSet").
calls("MappedFileVol", "close", "growLock", "lock").
calls("MappedFileVol", "close", "FileLock", "isValid").
calls("MappedFileVol", "close", "FileLock", "release").
calls("MappedFileVol", "close", "FileChannel", "close").
calls("MappedFileVol", "close", "RandomAccessFile", "close").
calls("MappedFileVol", "close", "MappedFileVol", "unmap").
calls("MappedFileVol", "close", "Arrays", "fill").
calls("MappedFileVol", "close", "growLock", "unlock").
method("MappedFileVol", "sync", 19, 5, "jan@kotek.net").
calls("MappedFileVol", "sync", "growLock", "lock").
calls("MappedFileVol", "sync", "MappedByteBuffer", "force").
calls("MappedFileVol", "sync", "growLock", "unlock").
method("MappedFileVol", "length", 3, 1, "jan@kotek.net").
calls("MappedFileVol", "length", "File", "length").
method("MappedFileVol", "isReadOnly", 3, 1, "jan@kotek.net").
method("MappedFileVol", "getFile", 3, 1, "jan@kotek.net").
method("MappedFileVol", "getFileLocked", 3, 1, "jan@kotek.net").
calls("MappedFileVol", "getFileLocked", "FileLock", "isValid").
method("MappedFileVol", "truncate", 45, 14, "jan@kotek.net").
calls("MappedFileVol", "truncate", "MappedFileVol", "ensureAvailable").
calls("MappedFileVol", "truncate", "growLock", "lock").
calls("MappedFileVol", "truncate", "Arrays", "copyOf").
calls("MappedFileVol", "truncate", "MappedFileVol", "unmap").
calls("MappedFileVol", "truncate", "MappedFileVol", "unmap").
calls("MappedFileVol", "truncate", "FileChannel", "truncate").
calls("MappedFileVol", "truncate", "ByteBuffer", "order").
calls("MappedFileVol", "truncate", "growLock", "unlock").
method("MappedFileVol", "fileLoad", 8, 3, "jan@kotek.net").

# mapdb/src/main/java/org/mapdb/volume/VolumeFactory.java

class("VolumeFactory").
method("VolumeFactory", "makeVolume", 1, 1, "jan@kotek.net").
method("VolumeFactory", "makeVolume", 3, 1, "jan@kotek.net").
calls("VolumeFactory", "makeVolume", "VolumeFactory", "makeVolume").
method("VolumeFactory", "makeVolume", 3, 1, "jan@kotek.net").
calls("VolumeFactory", "makeVolume", "VolumeFactory", "makeVolume").
method("VolumeFactory", "exists", 1, 1, "jan@kotek.net").
method("VolumeFactory", "wrap", 3, 1, "jan@kotek.net").
method("VolumeFactory", "handlesReadonly", 1, 1, "jan@kotek.net").

# mapdb/src/main/java/org/mapdb/volume/ByteBufferVolSingle.java

class("ByteBufferVolSingle").
method("ByteBufferVolSingle", "ByteBufferVolSingle", 5, 0, "jan@kotek.net").
method("ByteBufferVolSingle", "ensureAvailable", 1, 1, "jan@kotek.net").
method("ByteBufferVolSingle", "putLong", 6, 2, "jan@kotek.net").
calls("ByteBufferVolSingle", "putLong", "ByteBuffer", "putLong").
method("ByteBufferVolSingle", "putInt", 6, 2, "jan@kotek.net").
calls("ByteBufferVolSingle", "putInt", "ByteBuffer", "putInt").
method("ByteBufferVolSingle", "putByte", 6, 2, "jan@kotek.net").
calls("ByteBufferVolSingle", "putByte", "ByteBuffer", "put").
method("ByteBufferVolSingle", "putData", 9, 2, "jan@kotek.net").
calls("ByteBufferVolSingle", "putData", "ByteBuffer", "position").
calls("ByteBufferVolSingle", "putData", "ByteBuffer", "put").
method("ByteBufferVolSingle", "putData", 9, 2, "jan@kotek.net").
calls("ByteBufferVolSingle", "putData", "ByteBuffer", "remaining").
calls("ByteBufferVolSingle", "putData", "ByteBuffer", "position").
calls("ByteBufferVolSingle", "putData", "ByteBuffer", "put").
method("ByteBufferVolSingle", "copyTo", 7, 1, "jan@kotek.net").
calls("ByteBufferVolSingle", "copyTo", "ByteBuffer", "position").
calls("ByteBufferVolSingle", "copyTo", "ByteBuffer", "limit").
calls("ByteBufferVolSingle", "copyTo", "Volume", "putData").
method("ByteBufferVolSingle", "getData", 6, 1, "jan@kotek.net").
calls("ByteBufferVolSingle", "getData", "ByteBuffer", "position").
calls("ByteBufferVolSingle", "getData", "ByteBuffer", "get").
method("ByteBufferVolSingle", "getLong", 3, 1, "jan@kotek.net").
calls("ByteBufferVolSingle", "getLong", "ByteBuffer", "getLong").
method("ByteBufferVolSingle", "getInt", 3, 1, "jan@kotek.net").
calls("ByteBufferVolSingle", "getInt", "ByteBuffer", "getInt").
method("ByteBufferVolSingle", "getByte", 3, 1, "jan@kotek.net").
calls("ByteBufferVolSingle", "getByte", "ByteBuffer", "get").
method("ByteBufferVolSingle", "getDataInput", 3, 1, "jan@kotek.net").
method("ByteBufferVolSingle", "putDataOverlap", 3, 1, "jan@kotek.net").
calls("ByteBufferVolSingle", "putDataOverlap", "ByteBufferVolSingle", "putData").
method("ByteBufferVolSingle", "getDataInputOverlap", 3, 1, "jan@kotek.net").
calls("ByteBufferVolSingle", "getDataInputOverlap", "ByteBufferVolSingle", "getDataInput").
method("ByteBufferVolSingle", "clear", 11, 2, "jan@kotek.net").
calls("ByteBufferVolSingle", "clear", "ByteBuffer", "duplicate").
calls("ByteBufferVolSingle", "clear", "ByteBuffer", "position").
calls("ByteBufferVolSingle", "clear", "Math", "min").
calls("ByteBufferVolSingle", "clear", "ByteBuffer", "put").
method("ByteBufferVolSingle", "sliceSize", 3, 1, "jan@kotek.net").
method("ByteBufferVolSingle", "isSliced", 3, 1, "jan@kotek.net").

# mapdb/src/main/java/org/mapdb/volume/SingleByteArrayVol.java

class("SingleByteArrayVol").
method("SingleByteArrayVol", "SingleByteArrayVol", 3, 0, "jan@kotek.net").
calls("SingleByteArrayVol", "SingleByteArrayVol", "SingleByteArrayVol", "SingleByteArrayVol").
method("SingleByteArrayVol", "SingleByteArrayVol", 3, 0, "jan@kotek.net").
method("SingleByteArrayVol", "ensureAvailable", 5, 2, "jan@kotek.net").
method("SingleByteArrayVol", "truncate", 1, 1, "jan@kotek.net").
method("SingleByteArrayVol", "putLong", 3, 1, "jan@kotek.net").
calls("SingleByteArrayVol", "putLong", "DataIO", "putLong").
method("SingleByteArrayVol", "putInt", 7, 1, "jan@kotek.net").
method("SingleByteArrayVol", "putByte", 3, 1, "jan@kotek.net").
method("SingleByteArrayVol", "putData", 3, 1, "jan@kotek.net").
calls("SingleByteArrayVol", "putData", "System", "arraycopy").
method("SingleByteArrayVol", "putData", 3, 1, "jan@kotek.net").
calls("SingleByteArrayVol", "putData", "ByteBuffer", "remaining").
calls("SingleByteArrayVol", "putData", "ByteBuffer", "get").
method("SingleByteArrayVol", "copyTo", 3, 1, "jan@kotek.net").
calls("SingleByteArrayVol", "copyTo", "Volume", "putData").
method("SingleByteArrayVol", "clear", 8, 2, "jan@kotek.net").
calls("SingleByteArrayVol", "clear", "Math", "min").
calls("SingleByteArrayVol", "clear", "System", "arraycopy").
method("SingleByteArrayVol", "getLong", 3, 1, "jan@kotek.net").
calls("SingleByteArrayVol", "getLong", "DataIO", "getLong").
method("SingleByteArrayVol", "getInt", 8, 2, "jan@kotek.net").
method("SingleByteArrayVol", "getByte", 3, 1, "jan@kotek.net").
method("SingleByteArrayVol", "getDataInput", 3, 1, "jan@kotek.net").
method("SingleByteArrayVol", "getData", 3, 1, "jan@kotek.net").
calls("SingleByteArrayVol", "getData", "System", "arraycopy").
method("SingleByteArrayVol", "close", 5, 2, "jan@kotek.net").
calls("SingleByteArrayVol", "close", "closed", "compareAndSet").
method("SingleByteArrayVol", "sync", 1, 1, "jan@kotek.net").
method("SingleByteArrayVol", "sliceSize", 3, 1, "jan@kotek.net").
method("SingleByteArrayVol", "isSliced", 3, 1, "jan@kotek.net").
method("SingleByteArrayVol", "length", 3, 1, "jan@kotek.net").
method("SingleByteArrayVol", "isReadOnly", 3, 1, "jan@kotek.net").
method("SingleByteArrayVol", "getFile", 3, 1, "jan@kotek.net").
method("SingleByteArrayVol", "getFileLocked", 3, 1, "jan@kotek.net").

# mapdb/src/main/java/org/mapdb/volume/FileChannelVol.java

class("FileChannelVol").
method("FileChannelVol", "FileChannelVol", 33, 0, "jan@kotek.net").
calls("FileChannelVol", "FileChannelVol", "Set", "add").
calls("FileChannelVol", "FileChannelVol", "Set", "add").
calls("FileChannelVol", "FileChannelVol", "Set", "add").
calls("FileChannelVol", "FileChannelVol", "FileChannelVol", "checkFolder").
calls("FileChannelVol", "FileChannelVol", "File", "exists").
calls("FileChannelVol", "FileChannelVol", "File", "toPath").
calls("FileChannelVol", "FileChannelVol", "FileChannel", "open").
calls("FileChannelVol", "FileChannelVol", "FileChannel", "size").
calls("FileChannelVol", "FileChannelVol", "Volume", "lockFile").
calls("FileChannelVol", "FileChannelVol", "FileChannelVol", "clear").
method("FileChannelVol", "FileChannelVol", 3, 0, "jan@kotek.net").
calls("FileChannelVol", "FileChannelVol", "FileChannelVol", "FileChannelVol").
method("FileChannelVol", "checkFolder", 18, 6, "jan@kotek.net").
calls("FileChannelVol", "checkFolder", "File", "getCanonicalFile").
calls("FileChannelVol", "checkFolder", "File", "exists").
calls("FileChannelVol", "checkFolder", "File", "isDirectory").
calls("FileChannelVol", "checkFolder", "File", "canRead").
calls("FileChannelVol", "checkFolder", "File", "canWrite").
method("FileChannelVol", "ensureAvailable", 14, 3, "jan@kotek.net").
calls("FileChannelVol", "ensureAvailable", "DataIO", "roundUp").
calls("FileChannelVol", "ensureAvailable", "Lock", "lock").
calls("FileChannelVol", "ensureAvailable", "FileChannel", "position").
calls("FileChannelVol", "ensureAvailable", "ByteBuffer", "allocate").
calls("FileChannelVol", "ensureAvailable", "FileChannel", "write").
calls("FileChannelVol", "ensureAvailable", "Lock", "unlock").
method("FileChannelVol", "truncate", 14, 4, "jan@kotek.net").
calls("FileChannelVol", "truncate", "Lock", "lock").
calls("FileChannelVol", "truncate", "FileChannel", "truncate").
calls("FileChannelVol", "truncate", "Lock", "unlock").
method("FileChannelVol", "writeFully", 19, 7, "jan@kotek.net").
method("FileChannelVol", "putLong", 8, 2, "jan@kotek.net").
calls("FileChannelVol", "putLong", "ByteBuffer", "putLong").
calls("FileChannelVol", "putLong", "FileChannelVol", "writeFully").
method("FileChannelVol", "putInt", 8, 2, "jan@kotek.net").
calls("FileChannelVol", "putInt", "ByteBuffer", "putInt").
calls("FileChannelVol", "putInt", "FileChannelVol", "writeFully").
method("FileChannelVol", "putByte", 8, 2, "jan@kotek.net").
calls("FileChannelVol", "putByte", "ByteBuffer", "put").
calls("FileChannelVol", "putByte", "FileChannelVol", "writeFully").
method("FileChannelVol", "putData", 4, 1, "jan@kotek.net").
calls("FileChannelVol", "putData", "FileChannelVol", "writeFully").
method("FileChannelVol", "putData", 3, 1, "jan@kotek.net").
calls("FileChannelVol", "putData", "FileChannelVol", "writeFully").
method("FileChannelVol", "readFully", 16, 6, "jan@kotek.net").
method("FileChannelVol", "getLong", 5, 1, "jan@kotek.net").
calls("FileChannelVol", "getLong", "FileChannelVol", "readFully").
calls("FileChannelVol", "getLong", "ByteBuffer", "getLong").
method("FileChannelVol", "getInt", 5, 1, "jan@kotek.net").
calls("FileChannelVol", "getInt", "FileChannelVol", "readFully").
calls("FileChannelVol", "getInt", "ByteBuffer", "getInt").
method("FileChannelVol", "getByte", 5, 1, "jan@kotek.net").
calls("FileChannelVol", "getByte", "FileChannelVol", "readFully").
calls("FileChannelVol", "getByte", "ByteBuffer", "get").
method("FileChannelVol", "getDataInput", 5, 1, "jan@kotek.net").
calls("FileChannelVol", "getDataInput", "FileChannelVol", "readFully").
method("FileChannelVol", "getData", 4, 1, "jan@kotek.net").
calls("FileChannelVol", "getData", "FileChannelVol", "readFully").
method("FileChannelVol", "close", 19, 7, "jan@kotek.net").
calls("FileChannelVol", "close", "closed", "compareAndSet").
calls("FileChannelVol", "close", "FileLock", "isValid").
calls("FileChannelVol", "close", "FileLock", "release").
calls("FileChannelVol", "close", "FileChannel", "close").
method("FileChannelVol", "sync", 10, 4, "jan@kotek.net").
calls("FileChannelVol", "sync", "FileChannel", "force").
method("FileChannelVol", "sliceSize", 3, 1, "jan@kotek.net").
method("FileChannelVol", "isSliced", 3, 1, "jan@kotek.net").
method("FileChannelVol", "length", 6, 2, "jan@kotek.net").
calls("FileChannelVol", "length", "FileChannel", "size").
method("FileChannelVol", "isReadOnly", 3, 1, "jan@kotek.net").
method("FileChannelVol", "getFile", 3, 1, "jan@kotek.net").
method("FileChannelVol", "getFileLocked", 3, 1, "jan@kotek.net").
calls("FileChannelVol", "getFileLocked", "FileLock", "isValid").
method("FileChannelVol", "clear", 3, 1, "jan@kotek.net").
calls("FileChannelVol", "clear", "FileChannelVol", "clear").
method("FileChannelVol", "clear", 11, 3, "jan@kotek.net").
calls("FileChannelVol", "clear", "ByteBuffer", "rewind").
calls("FileChannelVol", "clear", "Math", "min").
calls("FileChannelVol", "clear", "ByteBuffer", "limit").
calls("FileChannelVol", "clear", "FileChannel", "write").

# mapdb/src/main/java/org/mapdb/volume/Volume.java

class("Volume").
method("Volume", "sliceShiftFromSize", 8, 3, "jan@kotek.net").
calls("Volume", "sliceShiftFromSize", "DataIO", "nextPowTwo").
method("Volume", "isEmptyFile", 7, 2, "jan@kotek.net").
calls("Volume", "isEmptyFile", "String", "length").
calls("Volume", "isEmptyFile", "File", "exists").
calls("Volume", "isEmptyFile", "File", "length").
method("Volume", "fileLoad", 3, 1, "jan@kotek.net").
method("Volume", "assertZeroes", 6, 3, "jan@kotek.net").
calls("Volume", "assertZeroes", "Volume", "getUnsignedByte").
method("Volume", "isClosed", 3, 1, "jan@kotek.net").
calls("Volume", "isClosed", "AtomicBoolean", "get").
method("Volume", "finalize", 7, 3, "jan@kotek.net").
calls("Volume", "finalize", "AtomicBoolean", "get").
calls("Volume", "finalize", "LOG", "log").
method("Volume", "ensureAvailable", 1, 1, "jan@kotek.net").
method("Volume", "truncate", 1, 1, "jan@kotek.net").
method("Volume", "putLong", 1, 1, "jan@kotek.net").
method("Volume", "putInt", 1, 1, "jan@kotek.net").
method("Volume", "putByte", 1, 1, "jan@kotek.net").
method("Volume", "putData", 1, 1, "jan@kotek.net").
method("Volume", "putData", 1, 1, "jan@kotek.net").
method("Volume", "putDataOverlap", 3, 1, "jan@kotek.net").
calls("Volume", "putDataOverlap", "Volume", "putData").
method("Volume", "getLong", 1, 1, "jan@kotek.net").
method("Volume", "getInt", 1, 1, "jan@kotek.net").
method("Volume", "getByte", 1, 1, "jan@kotek.net").
method("Volume", "getDataInput", 1, 1, "jan@kotek.net").
method("Volume", "getDataInputOverlap", 3, 1, "jan@kotek.net").
calls("Volume", "getDataInputOverlap", "Volume", "getDataInput").
method("Volume", "getData", 1, 1, "jan@kotek.net").
method("Volume", "close", 1, 1, "jan@kotek.net").
method("Volume", "sync", 1, 1, "jan@kotek.net").
method("Volume", "sliceSize", 1, 1, "jan@kotek.net").
method("Volume", "deleteFile", 6, 2, "jan@kotek.net").
calls("Volume", "deleteFile", "File", "isFile").
calls("Volume", "deleteFile", "File", "delete").
calls("Volume", "deleteFile", "LOG", "warning").
method("Volume", "isSliced", 1, 1, "jan@kotek.net").
method("Volume", "length", 1, 1, "jan@kotek.net").
method("Volume", "putUnsignedShort", 4, 1, "jan@kotek.net").
calls("Volume", "putUnsignedShort", "Volume", "putByte").
calls("Volume", "putUnsignedShort", "Volume", "putByte").
method("Volume", "getUnsignedShort", 3, 1, "jan@kotek.net").
calls("Volume", "getUnsignedShort", "Volume", "getByte").
calls("Volume", "getUnsignedShort", "Volume", "getByte").
method("Volume", "getUnsignedByte", 3, 1, "jan@kotek.net").
calls("Volume", "getUnsignedByte", "Volume", "getByte").
method("Volume", "putUnsignedByte", 3, 1, "jan@kotek.net").
calls("Volume", "putUnsignedByte", "Volume", "putByte").
method("Volume", "getSixLong", 3, 1, "jan@kotek.net").
calls("Volume", "getSixLong", "Volume", "getByte").
calls("Volume", "getSixLong", "Volume", "getByte").
calls("Volume", "getSixLong", "Volume", "getByte").
calls("Volume", "getSixLong", "Volume", "getByte").
calls("Volume", "getSixLong", "Volume", "getByte").
calls("Volume", "getSixLong", "Volume", "getByte").
method("Volume", "putSixLong", 11, 2, "jan@kotek.net").
calls("Volume", "putSixLong", "Volume", "putByte").
calls("Volume", "putSixLong", "Volume", "putByte").
calls("Volume", "putSixLong", "Volume", "putByte").
calls("Volume", "putSixLong", "Volume", "putByte").
calls("Volume", "putSixLong", "Volume", "putByte").
calls("Volume", "putSixLong", "Volume", "putByte").
method("Volume", "putPackedLong", 10, 2, "jan@kotek.net").
calls("Volume", "putPackedLong", "Volume", "putByte").
calls("Volume", "putPackedLong", "Volume", "putByte").
method("Volume", "getPackedLong", 9, 2, "jan@kotek.net").
calls("Volume", "getPackedLong", "Volume", "getByte").
method("Volume", "isReadOnly", 1, 1, "jan@kotek.net").
method("Volume", "getFile", 1, 1, "jan@kotek.net").
method("Volume", "getFileLocked", 1, 1, "jan@kotek.net").
method("Volume", "copyTo", 8, 2, "jan@kotek.net").
calls("Volume", "copyTo", "Volume", "getDataInput").
calls("Volume", "copyTo", "Volume", "putData").
method("Volume", "clear", 1, 1, "jan@kotek.net").
method("Volume", "clearOverlap", 19, 5, "jan@kotek.net").
calls("Volume", "clearOverlap", "Volume", "clear").
calls("Volume", "clearOverlap", "DataIO", "roundUp").
calls("Volume", "clearOverlap", "Math", "min").
calls("Volume", "clearOverlap", "Volume", "clear").
calls("Volume", "clearOverlap", "DataIO", "roundUp").
calls("Volume", "clearOverlap", "Math", "min").
method("Volume", "copyTo", 11, 3, "jan@kotek.net").
calls("Volume", "copyTo", "Volume", "ensureAvailable").
calls("Volume", "copyTo", "Volume", "copyTo").
method("Volume", "copyFrom", 15, 4, "jan@kotek.net").
calls("Volume", "copyFrom", "Volume", "ensureAvailable").
calls("Volume", "copyFrom", "Volume", "putData").
method("Volume", "copyTo", 14, 4, "jan@kotek.net").
calls("Volume", "copyTo", "Volume", "getData").
calls("Volume", "copyTo", "OutputStream", "write").
method("Volume", "hash", 16, 2, "jan@kotek.net").
calls("Volume", "hash", "Volume", "getData").
calls("Volume", "hash", "StreamingXXHash64", "update").
calls("Volume", "hash", "Math", "min").
calls("Volume", "hash", "Volume", "getData").
calls("Volume", "hash", "StreamingXXHash64", "update").
calls("Volume", "hash", "StreamingXXHash64", "getValue").
method("Volume", "lockFile", 25, 9, "jan@kotek.net").
calls("Volume", "lockFile", "Thread", "sleep").

# mapdb/src/main/java/org/mapdb/volume/UnsafeVolume.java

class("UnsafeVolume").
method("UnsafeVolume", "UnsafeVolume", 3, 0, "jan@kotek.net").
calls("UnsafeVolume", "UnsafeVolume", "UnsafeVolume", "UnsafeVolume").
method("UnsafeVolume", "UnsafeVolume", 10, 0, "jan@kotek.net").
calls("UnsafeVolume", "UnsafeVolume", "UnsafeVolume", "ensureAvailable").
method("UnsafeVolume", "getUnsafe", 14, 3, "jan@kotek.net").
calls("UnsafeVolume", "getUnsafe", "ByteOrder", "nativeOrder").
calls("UnsafeVolume", "getUnsafe", "LOG", "log").
calls("UnsafeVolume", "getUnsafe", "java", "setAccessible").
calls("UnsafeVolume", "getUnsafe", "LOG", "log").
method("UnsafeVolume", "unsafeAvailable", 3, 1, "jan@kotek.net").
method("UnsafeVolume", "copyFromArray", 9, 2, "jan@kotek.net").
calls("UnsafeVolume", "copyFromArray", "UNSAFE", "copyMemory").
method("UnsafeVolume", "copyToArray", 9, 2, "jan@kotek.net").
calls("UnsafeVolume", "copyToArray", "UNSAFE", "copyMemory").
method("UnsafeVolume", "ensureAvailable", 32, 6, "jan@kotek.net").
calls("UnsafeVolume", "ensureAvailable", "DataIO", "roundUp").
calls("UnsafeVolume", "ensureAvailable", "ReentrantLock", "lock").
calls("UnsafeVolume", "ensureAvailable", "Arrays", "copyOf").
calls("UnsafeVolume", "ensureAvailable", "Arrays", "copyOf").
calls("UnsafeVolume", "ensureAvailable", "UNSAFE", "putLong").
calls("UnsafeVolume", "ensureAvailable", "ReentrantLock", "unlock").
method("UnsafeVolume", "truncate", 1, 1, "jan@kotek.net").
method("UnsafeVolume", "putLong", 6, 1, "jan@kotek.net").
calls("UnsafeVolume", "putLong", "Long", "reverseBytes").
calls("UnsafeVolume", "putLong", "UNSAFE", "putLong").
method("UnsafeVolume", "putInt", 6, 1, "jan@kotek.net").
calls("UnsafeVolume", "putInt", "Integer", "reverseBytes").
calls("UnsafeVolume", "putInt", "UNSAFE", "putInt").
method("UnsafeVolume", "putByte", 5, 1, "jan@kotek.net").
calls("UnsafeVolume", "putByte", "UNSAFE", "putByte").
method("UnsafeVolume", "putData", 5, 1, "jan@kotek.net").
calls("UnsafeVolume", "putData", "UnsafeVolume", "copyFromArray").
method("UnsafeVolume", "putData", 6, 2, "jan@kotek.net").
calls("UnsafeVolume", "putData", "ByteBuffer", "get").
calls("UnsafeVolume", "putData", "UNSAFE", "putByte").
method("UnsafeVolume", "getLong", 6, 1, "jan@kotek.net").
calls("UnsafeVolume", "getLong", "Long", "reverseBytes").
method("UnsafeVolume", "getInt", 6, 1, "jan@kotek.net").
calls("UnsafeVolume", "getInt", "Integer", "reverseBytes").
method("UnsafeVolume", "getByte", 5, 1, "jan@kotek.net").
calls("UnsafeVolume", "getByte", "UNSAFE", "getByte").
method("UnsafeVolume", "getDataInput", 5, 1, "jan@kotek.net").
method("UnsafeVolume", "getData", 5, 1, "jan@kotek.net").
calls("UnsafeVolume", "getData", "UnsafeVolume", "copyToArray").
method("UnsafeVolume", "putDataOverlap", 15, 3, "jan@kotek.net").
calls("UnsafeVolume", "putDataOverlap", "UnsafeVolume", "copyFromArray").
calls("UnsafeVolume", "putDataOverlap", "UnsafeVolume", "putData").
method("UnsafeVolume", "getDataInputOverlap", 17, 3, "jan@kotek.net").
calls("UnsafeVolume", "getDataInputOverlap", "UnsafeVolume", "copyToArray").
calls("UnsafeVolume", "getDataInputOverlap", "UnsafeVolume", "getDataInput").
method("UnsafeVolume", "close", 10, 3, "jan@kotek.net").
calls("UnsafeVolume", "close", "closed", "compareAndSet").
calls("UnsafeVolume", "close", "sun", "cleaner").
method("UnsafeVolume", "sync", 1, 1, "jan@kotek.net").
method("UnsafeVolume", "sliceSize", 3, 1, "jan@kotek.net").
method("UnsafeVolume", "isSliced", 3, 1, "jan@kotek.net").
method("UnsafeVolume", "length", 3, 1, "jan@kotek.net").
method("UnsafeVolume", "isReadOnly", 3, 1, "jan@kotek.net").
method("UnsafeVolume", "getFile", 3, 1, "jan@kotek.net").
method("UnsafeVolume", "getFileLocked", 3, 1, "jan@kotek.net").
method("UnsafeVolume", "clear", 4, 2, "jan@kotek.net").
calls("UnsafeVolume", "clear", "UnsafeVolume", "putByte").

# mapdb/src/main/java/org/mapdb/volume/ReadOnlyVolume.java

class("ReadOnlyVolume").
method("ReadOnlyVolume", "ReadOnlyVolume", 3, 0, "jan@kotek.net").
method("ReadOnlyVolume", "ensureAvailable", 3, 1, "jan@kotek.net").
method("ReadOnlyVolume", "truncate", 3, 1, "jan@kotek.net").
method("ReadOnlyVolume", "putLong", 3, 1, "jan@kotek.net").
method("ReadOnlyVolume", "putInt", 3, 1, "jan@kotek.net").
method("ReadOnlyVolume", "putByte", 3, 1, "jan@kotek.net").
method("ReadOnlyVolume", "putData", 3, 1, "jan@kotek.net").
method("ReadOnlyVolume", "putData", 3, 1, "jan@kotek.net").
method("ReadOnlyVolume", "putDataOverlap", 3, 1, "jan@kotek.net").
method("ReadOnlyVolume", "getLong", 3, 1, "jan@kotek.net").
calls("ReadOnlyVolume", "getLong", "Volume", "getLong").
method("ReadOnlyVolume", "getInt", 3, 1, "jan@kotek.net").
calls("ReadOnlyVolume", "getInt", "Volume", "getInt").
method("ReadOnlyVolume", "getByte", 3, 1, "jan@kotek.net").
calls("ReadOnlyVolume", "getByte", "Volume", "getByte").
method("ReadOnlyVolume", "getDataInput", 3, 1, "jan@kotek.net").
calls("ReadOnlyVolume", "getDataInput", "Volume", "getDataInput").
method("ReadOnlyVolume", "getDataInputOverlap", 3, 1, "jan@kotek.net").
calls("ReadOnlyVolume", "getDataInputOverlap", "Volume", "getDataInputOverlap").
method("ReadOnlyVolume", "getData", 3, 1, "jan@kotek.net").
calls("ReadOnlyVolume", "getData", "Volume", "getData").
method("ReadOnlyVolume", "isClosed", 3, 1, "jan@kotek.net").
calls("ReadOnlyVolume", "isClosed", "Volume", "isClosed").
method("ReadOnlyVolume", "close", 3, 1, "jan@kotek.net").
calls("ReadOnlyVolume", "close", "Volume", "close").
method("ReadOnlyVolume", "sync", 3, 1, "jan@kotek.net").
calls("ReadOnlyVolume", "sync", "Volume", "sync").
method("ReadOnlyVolume", "sliceSize", 3, 1, "jan@kotek.net").
calls("ReadOnlyVolume", "sliceSize", "Volume", "sliceSize").
method("ReadOnlyVolume", "deleteFile", 3, 1, "jan@kotek.net").
method("ReadOnlyVolume", "isSliced", 3, 1, "jan@kotek.net").
calls("ReadOnlyVolume", "isSliced", "Volume", "isSliced").
method("ReadOnlyVolume", "length", 3, 1, "jan@kotek.net").
calls("ReadOnlyVolume", "length", "Volume", "length").
method("ReadOnlyVolume", "putUnsignedShort", 3, 1, "jan@kotek.net").
method("ReadOnlyVolume", "getUnsignedShort", 3, 1, "jan@kotek.net").
calls("ReadOnlyVolume", "getUnsignedShort", "Volume", "getUnsignedShort").
method("ReadOnlyVolume", "getUnsignedByte", 3, 1, "jan@kotek.net").
calls("ReadOnlyVolume", "getUnsignedByte", "Volume", "getUnsignedByte").
method("ReadOnlyVolume", "putUnsignedByte", 3, 1, "jan@kotek.net").
method("ReadOnlyVolume", "getSixLong", 3, 1, "jan@kotek.net").
calls("ReadOnlyVolume", "getSixLong", "Volume", "getSixLong").
method("ReadOnlyVolume", "putSixLong", 3, 1, "jan@kotek.net").
method("ReadOnlyVolume", "isReadOnly", 3, 1, "jan@kotek.net").
method("ReadOnlyVolume", "getFile", 3, 1, "jan@kotek.net").
calls("ReadOnlyVolume", "getFile", "Volume", "getFile").
method("ReadOnlyVolume", "getFileLocked", 3, 1, "jan@kotek.net").
calls("ReadOnlyVolume", "getFileLocked", "Volume", "getFileLocked").
method("ReadOnlyVolume", "copyTo", 3, 1, "jan@kotek.net").
calls("ReadOnlyVolume", "copyTo", "Volume", "copyTo").
method("ReadOnlyVolume", "clear", 3, 1, "jan@kotek.net").

# mapdb/src/main/java/org/mapdb/queue/QueueLongTakeUntil.java


# mapdb/src/main/java/org/mapdb/store/StoreDirectJava.java

class("StoreDirectJava").
method("StoreDirectJava", "indexValToSize", 3, 1, "jan@kotek.net").
method("StoreDirectJava", "indexValToOffset", 3, 1, "jan@kotek.net").

# mapdb/src/main/java/org/mapdb/util/DataIO.java

class("DataIO").
method("DataIO", "DataIO", 1, 0, "jan@kotek.net").
method("DataIO", "unpackInt", 8, 2, "jan@kotek.net").
calls("DataIO", "unpackInt", "DataInput", "readByte").
method("DataIO", "unpackLong", 8, 2, "jan@kotek.net").
calls("DataIO", "unpackLong", "DataInput", "readByte").
method("DataIO", "unpackInt", 11, 3, "jan@kotek.net").
calls("DataIO", "unpackInt", "InputStream", "read").
method("DataIO", "unpackLong", 11, 3, "jan@kotek.net").
calls("DataIO", "unpackLong", "InputStream", "read").
method("DataIO", "packLong", 8, 2, "jan@kotek.net").
calls("DataIO", "packLong", "DataOutput", "writeByte").
calls("DataIO", "packLong", "DataOutput", "writeByte").
method("DataIO", "packLong", 8, 2, "jan@kotek.net").
calls("DataIO", "packLong", "OutputStream", "write").
calls("DataIO", "packLong", "OutputStream", "write").
method("DataIO", "packLongSize", 9, 2, "jan@kotek.net").
method("DataIO", "unpackRecid", 5, 1, "jan@kotek.net").
calls("DataIO", "unpackRecid", "DataIO", "parity1Get").
method("DataIO", "packRecid", 4, 1, "jan@kotek.net").
calls("DataIO", "packRecid", "DataIO", "parity1Set").
calls("DataIO", "packRecid", "DataOutput2", "packLong").
method("DataIO", "packInt", 11, 3, "jan@kotek.net").
calls("DataIO", "packInt", "Integer", "numberOfLeadingZeros").
calls("DataIO", "packInt", "DataOutput", "writeByte").
calls("DataIO", "packInt", "DataOutput", "writeByte").
method("DataIO", "packIntBigger", 8, 2, "jan@kotek.net").
calls("DataIO", "packIntBigger", "DataOutput", "writeByte").
calls("DataIO", "packIntBigger", "DataOutput", "writeByte").
method("DataIO", "longHash", 5, 1, "jan@kotek.net").
method("DataIO", "intHash", 4, 1, "jan@kotek.net").
method("DataIO", "getInt", 3, 1, "jan@kotek.net").
method("DataIO", "putInt", 6, 1, "jan@kotek.net").
method("DataIO", "getLong", 3, 1, "jan@kotek.net").
method("DataIO", "putLong", 10, 1, "jan@kotek.net").
method("DataIO", "putLong", 5, 2, "jan@kotek.net").
method("DataIO", "packInt", 10, 2, "jan@kotek.net").
method("DataIO", "packLong", 10, 2, "jan@kotek.net").
method("DataIO", "unpackInt", 8, 2, "jan@kotek.net").
method("DataIO", "unpackLong", 8, 2, "jan@kotek.net").
method("DataIO", "getSixLong", 3, 1, "jan@kotek.net").
method("DataIO", "putSixLong", 11, 2, "jan@kotek.net").
method("DataIO", "nextPowTwo", 3, 1, "jan@kotek.net").
calls("DataIO", "nextPowTwo", "Long", "numberOfLeadingZeros").
method("DataIO", "nextPowTwo", 3, 1, "jan@kotek.net").
calls("DataIO", "nextPowTwo", "Integer", "numberOfLeadingZeros").
method("DataIO", "readFully", 9, 3, "jan@kotek.net").
method("DataIO", "readFully", 3, 1, "jan@kotek.net").
calls("DataIO", "readFully", "DataIO", "readFully").
method("DataIO", "writeFully", 5, 2, "jan@kotek.net").
calls("DataIO", "writeFully", "FileChannel", "write").
method("DataIO", "skipFully", 3, 2, "dbrosius@mebigfatguy.com").
calls("DataIO", "skipFully", "InputStream", "skip").
method("DataIO", "fillLowBits", 6, 2, "jan@kotek.net").
method("DataIO", "parity1Set", 6, 2, "jan@kotek.net").
calls("DataIO", "parity1Set", "Long", "bitCount").
method("DataIO", "parity1Set", 6, 2, "jan@kotek.net").
calls("DataIO", "parity1Set", "Integer", "bitCount").
method("DataIO", "parity1Get", 6, 2, "jan@kotek.net").
calls("DataIO", "parity1Get", "Long", "bitCount").
method("DataIO", "parity1Get", 6, 2, "jan@kotek.net").
calls("DataIO", "parity1Get", "Integer", "bitCount").
method("DataIO", "parity3Set", 6, 2, "jan@kotek.net").
calls("DataIO", "parity3Set", "Long", "bitCount").
method("DataIO", "parity3Get", 7, 2, "jan@kotek.net").
calls("DataIO", "parity3Get", "Long", "bitCount").
method("DataIO", "parity4Set", 6, 2, "jan@kotek.net").
calls("DataIO", "parity4Set", "Long", "bitCount").
method("DataIO", "parity4Get", 7, 2, "jan@kotek.net").
calls("DataIO", "parity4Get", "Long", "bitCount").
method("DataIO", "parity16Set", 6, 2, "jan@kotek.net").
calls("DataIO", "parity16Set", "DataIO", "longHash").
method("DataIO", "parity16Get", 7, 2, "jan@kotek.net").
calls("DataIO", "parity16Get", "DataIO", "longHash").
method("DataIO", "toHexa", 8, 2, "jan@kotek.net").
method("DataIO", "fromHexa", 6, 2, "jan@kotek.net").
calls("DataIO", "fromHexa", "String", "substring").
calls("DataIO", "fromHexa", "Integer", "parseInt").
method("DataIO", "arrayPut", 8, 2, "jan@kotek.net").
calls("DataIO", "arrayPut", "System", "arraycopy").
method("DataIO", "arrayDelete", 6, 1, "jan@kotek.net").
calls("DataIO", "arrayDelete", "System", "arraycopy").
calls("DataIO", "arrayDelete", "System", "arraycopy").
method("DataIO", "arrayDelete", 6, 1, "jan@kotek.net").
calls("DataIO", "arrayDelete", "System", "arraycopy").
calls("DataIO", "arrayDelete", "System", "arraycopy").
method("DataIO", "intToLong", 3, 1, "jan@kotek.net").
method("DataIO", "roundUp", 3, 1, "jan@kotek.net").
method("DataIO", "roundDown", 3, 1, "jan@kotek.net").
method("DataIO", "roundUp", 3, 1, "jan@kotek.net").
method("DataIO", "roundDown", 3, 1, "jan@kotek.net").
method("DataIO", "shift", 3, 1, "jan@kotek.net").
calls("DataIO", "shift", "Integer", "numberOfLeadingZeros").
method("DataIO", "isWindows", 4, 1, "jan@kotek.net").
calls("DataIO", "isWindows", "String", "toLowerCase").
method("DataIO", "JVMSupportsLargeMappedFiles", 10, 3, "jan@kotek.net").
calls("DataIO", "JVMSupportsLargeMappedFiles", "String", "contains").
calls("DataIO", "JVMSupportsLargeMappedFiles", "DataIO", "isWindows").

# mapdb/src/main/java/org/mapdb/util/ThreadSafeLongArrayList.java

class("ThreadSafeLongArrayList").
method("ThreadSafeLongArrayList", "ThreadSafeLongArrayList", 3, 0, "chengwu.lcw@alibaba-inc.com").
method("ThreadSafeLongArrayList", "addAtIndex", 7, 1, "chengwu.lcw@alibaba-inc.com").
calls("ThreadSafeLongArrayList", "addAtIndex", "Lock", "lock").
calls("ThreadSafeLongArrayList", "addAtIndex", "LongArrayList", "addAtIndex").
calls("ThreadSafeLongArrayList", "addAtIndex", "Lock", "unlock").
method("ThreadSafeLongArrayList", "addAllAtIndex", 7, 1, "chengwu.lcw@alibaba-inc.com").
calls("ThreadSafeLongArrayList", "addAllAtIndex", "Lock", "lock").
calls("ThreadSafeLongArrayList", "addAllAtIndex", "LongArrayList", "addAllAtIndex").
calls("ThreadSafeLongArrayList", "addAllAtIndex", "Lock", "unlock").
method("ThreadSafeLongArrayList", "addAllAtIndex", 7, 1, "chengwu.lcw@alibaba-inc.com").
calls("ThreadSafeLongArrayList", "addAllAtIndex", "Lock", "lock").
calls("ThreadSafeLongArrayList", "addAllAtIndex", "LongArrayList", "addAllAtIndex").
calls("ThreadSafeLongArrayList", "addAllAtIndex", "Lock", "unlock").
method("ThreadSafeLongArrayList", "removeAtIndex", 7, 1, "chengwu.lcw@alibaba-inc.com").
calls("ThreadSafeLongArrayList", "removeAtIndex", "Lock", "lock").
calls("ThreadSafeLongArrayList", "removeAtIndex", "LongArrayList", "removeAtIndex").
calls("ThreadSafeLongArrayList", "removeAtIndex", "Lock", "unlock").
method("ThreadSafeLongArrayList", "set", 7, 1, "chengwu.lcw@alibaba-inc.com").
calls("ThreadSafeLongArrayList", "set", "Lock", "lock").
calls("ThreadSafeLongArrayList", "set", "LongArrayList", "set").
calls("ThreadSafeLongArrayList", "set", "Lock", "unlock").
method("ThreadSafeLongArrayList", "longIterator", 3, 1, "chengwu.lcw@alibaba-inc.com").
calls("ThreadSafeLongArrayList", "longIterator", "LongArrayList", "longIterator").
method("ThreadSafeLongArrayList", "toArray", 7, 1, "chengwu.lcw@alibaba-inc.com").
calls("ThreadSafeLongArrayList", "toArray", "Lock", "lock").
calls("ThreadSafeLongArrayList", "toArray", "LongArrayList", "toArray").
calls("ThreadSafeLongArrayList", "toArray", "Lock", "unlock").
method("ThreadSafeLongArrayList", "contains", 7, 1, "chengwu.lcw@alibaba-inc.com").
calls("ThreadSafeLongArrayList", "contains", "Lock", "lock").
calls("ThreadSafeLongArrayList", "contains", "LongArrayList", "contains").
calls("ThreadSafeLongArrayList", "contains", "Lock", "unlock").
method("ThreadSafeLongArrayList", "containsAll", 7, 1, "chengwu.lcw@alibaba-inc.com").
calls("ThreadSafeLongArrayList", "containsAll", "Lock", "lock").
calls("ThreadSafeLongArrayList", "containsAll", "LongArrayList", "containsAll").
calls("ThreadSafeLongArrayList", "containsAll", "Lock", "unlock").
method("ThreadSafeLongArrayList", "containsAll", 7, 1, "chengwu.lcw@alibaba-inc.com").
calls("ThreadSafeLongArrayList", "containsAll", "Lock", "lock").
calls("ThreadSafeLongArrayList", "containsAll", "LongArrayList", "containsAll").
calls("ThreadSafeLongArrayList", "containsAll", "Lock", "unlock").
method("ThreadSafeLongArrayList", "forEach", 3, 1, "chengwu.lcw@alibaba-inc.com").
calls("ThreadSafeLongArrayList", "forEach", "LongArrayList", "forEach").
method("ThreadSafeLongArrayList", "each", 7, 1, "chengwu.lcw@alibaba-inc.com").
calls("ThreadSafeLongArrayList", "each", "Lock", "lock").
calls("ThreadSafeLongArrayList", "each", "LongArrayList", "each").
calls("ThreadSafeLongArrayList", "each", "Lock", "unlock").
method("ThreadSafeLongArrayList", "add", 7, 1, "chengwu.lcw@alibaba-inc.com").
calls("ThreadSafeLongArrayList", "add", "Lock", "lock").
calls("ThreadSafeLongArrayList", "add", "LongArrayList", "add").
calls("ThreadSafeLongArrayList", "add", "Lock", "unlock").
method("ThreadSafeLongArrayList", "addAll", 7, 1, "chengwu.lcw@alibaba-inc.com").
calls("ThreadSafeLongArrayList", "addAll", "Lock", "lock").
calls("ThreadSafeLongArrayList", "addAll", "LongArrayList", "addAll").
calls("ThreadSafeLongArrayList", "addAll", "Lock", "unlock").
method("ThreadSafeLongArrayList", "addAll", 7, 1, "chengwu.lcw@alibaba-inc.com").
calls("ThreadSafeLongArrayList", "addAll", "Lock", "lock").
calls("ThreadSafeLongArrayList", "addAll", "LongArrayList", "addAll").
calls("ThreadSafeLongArrayList", "addAll", "Lock", "unlock").
method("ThreadSafeLongArrayList", "remove", 7, 1, "chengwu.lcw@alibaba-inc.com").
calls("ThreadSafeLongArrayList", "remove", "Lock", "lock").
calls("ThreadSafeLongArrayList", "remove", "LongArrayList", "remove").
calls("ThreadSafeLongArrayList", "remove", "Lock", "unlock").
method("ThreadSafeLongArrayList", "removeAll", 7, 1, "chengwu.lcw@alibaba-inc.com").
calls("ThreadSafeLongArrayList", "removeAll", "Lock", "lock").
calls("ThreadSafeLongArrayList", "removeAll", "LongArrayList", "removeAll").
calls("ThreadSafeLongArrayList", "removeAll", "Lock", "unlock").
method("ThreadSafeLongArrayList", "removeAll", 7, 1, "chengwu.lcw@alibaba-inc.com").
calls("ThreadSafeLongArrayList", "removeAll", "Lock", "lock").
calls("ThreadSafeLongArrayList", "removeAll", "LongArrayList", "removeAll").
calls("ThreadSafeLongArrayList", "removeAll", "Lock", "unlock").
method("ThreadSafeLongArrayList", "retainAll", 7, 1, "chengwu.lcw@alibaba-inc.com").
calls("ThreadSafeLongArrayList", "retainAll", "Lock", "lock").
calls("ThreadSafeLongArrayList", "retainAll", "LongArrayList", "retainAll").
calls("ThreadSafeLongArrayList", "retainAll", "Lock", "unlock").
method("ThreadSafeLongArrayList", "retainAll", 7, 1, "chengwu.lcw@alibaba-inc.com").
calls("ThreadSafeLongArrayList", "retainAll", "Lock", "lock").
calls("ThreadSafeLongArrayList", "retainAll", "LongArrayList", "retainAll").
calls("ThreadSafeLongArrayList", "retainAll", "Lock", "unlock").
method("ThreadSafeLongArrayList", "clear", 7, 1, "chengwu.lcw@alibaba-inc.com").
calls("ThreadSafeLongArrayList", "clear", "Lock", "lock").
calls("ThreadSafeLongArrayList", "clear", "LongArrayList", "clear").
calls("ThreadSafeLongArrayList", "clear", "Lock", "unlock").
method("ThreadSafeLongArrayList", "get", 7, 1, "chengwu.lcw@alibaba-inc.com").
calls("ThreadSafeLongArrayList", "get", "Lock", "lock").
calls("ThreadSafeLongArrayList", "get", "LongArrayList", "get").
calls("ThreadSafeLongArrayList", "get", "Lock", "unlock").
method("ThreadSafeLongArrayList", "dotProduct", 7, 1, "chengwu.lcw@alibaba-inc.com").
calls("ThreadSafeLongArrayList", "dotProduct", "Lock", "lock").
calls("ThreadSafeLongArrayList", "dotProduct", "LongList", "dotProduct").
calls("ThreadSafeLongArrayList", "dotProduct", "Lock", "unlock").
method("ThreadSafeLongArrayList", "binarySearch", 7, 1, "chengwu.lcw@alibaba-inc.com").
calls("ThreadSafeLongArrayList", "binarySearch", "Lock", "lock").
calls("ThreadSafeLongArrayList", "binarySearch", "LongArrayList", "binarySearch").
calls("ThreadSafeLongArrayList", "binarySearch", "Lock", "unlock").
method("ThreadSafeLongArrayList", "lastIndexOf", 7, 1, "chengwu.lcw@alibaba-inc.com").
calls("ThreadSafeLongArrayList", "lastIndexOf", "Lock", "lock").
calls("ThreadSafeLongArrayList", "lastIndexOf", "LongArrayList", "lastIndexOf").
calls("ThreadSafeLongArrayList", "lastIndexOf", "Lock", "unlock").
method("ThreadSafeLongArrayList", "getLast", 7, 1, "chengwu.lcw@alibaba-inc.com").
calls("ThreadSafeLongArrayList", "getLast", "Lock", "lock").
calls("ThreadSafeLongArrayList", "getLast", "LongArrayList", "getLast").
calls("ThreadSafeLongArrayList", "getLast", "Lock", "unlock").
method("ThreadSafeLongArrayList", "asReversed", 3, 1, "chengwu.lcw@alibaba-inc.com").
calls("ThreadSafeLongArrayList", "asReversed", "LongArrayList", "asReversed").
method("ThreadSafeLongArrayList", "getFirst", 7, 1, "chengwu.lcw@alibaba-inc.com").
calls("ThreadSafeLongArrayList", "getFirst", "Lock", "lock").
calls("ThreadSafeLongArrayList", "getFirst", "LongArrayList", "getFirst").
calls("ThreadSafeLongArrayList", "getFirst", "Lock", "unlock").
method("ThreadSafeLongArrayList", "indexOf", 7, 1, "chengwu.lcw@alibaba-inc.com").
calls("ThreadSafeLongArrayList", "indexOf", "Lock", "lock").
calls("ThreadSafeLongArrayList", "indexOf", "LongArrayList", "indexOf").
calls("ThreadSafeLongArrayList", "indexOf", "Lock", "unlock").
method("ThreadSafeLongArrayList", "select", 7, 1, "chengwu.lcw@alibaba-inc.com").
calls("ThreadSafeLongArrayList", "select", "Lock", "lock").
calls("ThreadSafeLongArrayList", "select", "LongArrayList", "select").
calls("ThreadSafeLongArrayList", "select", "Lock", "unlock").
method("ThreadSafeLongArrayList", "reject", 7, 1, "chengwu.lcw@alibaba-inc.com").
calls("ThreadSafeLongArrayList", "reject", "Lock", "lock").
calls("ThreadSafeLongArrayList", "reject", "LongArrayList", "reject").
calls("ThreadSafeLongArrayList", "reject", "Lock", "unlock").
method("ThreadSafeLongArrayList", "with", 7, 1, "chengwu.lcw@alibaba-inc.com").
calls("ThreadSafeLongArrayList", "with", "Lock", "lock").
calls("ThreadSafeLongArrayList", "with", "LongArrayList", "with").
calls("ThreadSafeLongArrayList", "with", "Lock", "unlock").
method("ThreadSafeLongArrayList", "without", 7, 1, "chengwu.lcw@alibaba-inc.com").
calls("ThreadSafeLongArrayList", "without", "Lock", "lock").
calls("ThreadSafeLongArrayList", "without", "LongArrayList", "without").
calls("ThreadSafeLongArrayList", "without", "Lock", "unlock").
method("ThreadSafeLongArrayList", "withAll", 7, 1, "chengwu.lcw@alibaba-inc.com").
calls("ThreadSafeLongArrayList", "withAll", "Lock", "lock").
calls("ThreadSafeLongArrayList", "withAll", "LongArrayList", "withAll").
calls("ThreadSafeLongArrayList", "withAll", "Lock", "unlock").
method("ThreadSafeLongArrayList", "withoutAll", 7, 1, "chengwu.lcw@alibaba-inc.com").
calls("ThreadSafeLongArrayList", "withoutAll", "Lock", "lock").
calls("ThreadSafeLongArrayList", "withoutAll", "LongArrayList", "withoutAll").
calls("ThreadSafeLongArrayList", "withoutAll", "Lock", "unlock").
method("ThreadSafeLongArrayList", "collect", 7, 1, "chengwu.lcw@alibaba-inc.com").
calls("ThreadSafeLongArrayList", "collect", "Lock", "lock").
calls("ThreadSafeLongArrayList", "collect", "LongArrayList", "collect").
calls("ThreadSafeLongArrayList", "collect", "Lock", "unlock").
method("ThreadSafeLongArrayList", "detectIfNone", 7, 1, "chengwu.lcw@alibaba-inc.com").
calls("ThreadSafeLongArrayList", "detectIfNone", "Lock", "lock").
calls("ThreadSafeLongArrayList", "detectIfNone", "LongArrayList", "detectIfNone").
calls("ThreadSafeLongArrayList", "detectIfNone", "Lock", "unlock").
method("ThreadSafeLongArrayList", "count", 7, 1, "chengwu.lcw@alibaba-inc.com").
calls("ThreadSafeLongArrayList", "count", "Lock", "lock").
calls("ThreadSafeLongArrayList", "count", "LongArrayList", "count").
calls("ThreadSafeLongArrayList", "count", "Lock", "unlock").
method("ThreadSafeLongArrayList", "anySatisfy", 7, 1, "chengwu.lcw@alibaba-inc.com").
calls("ThreadSafeLongArrayList", "anySatisfy", "Lock", "lock").
calls("ThreadSafeLongArrayList", "anySatisfy", "LongArrayList", "anySatisfy").
calls("ThreadSafeLongArrayList", "anySatisfy", "Lock", "unlock").
method("ThreadSafeLongArrayList", "allSatisfy", 7, 1, "chengwu.lcw@alibaba-inc.com").
calls("ThreadSafeLongArrayList", "allSatisfy", "Lock", "lock").
calls("ThreadSafeLongArrayList", "allSatisfy", "LongArrayList", "allSatisfy").
calls("ThreadSafeLongArrayList", "allSatisfy", "Lock", "unlock").
method("ThreadSafeLongArrayList", "noneSatisfy", 7, 1, "chengwu.lcw@alibaba-inc.com").
calls("ThreadSafeLongArrayList", "noneSatisfy", "Lock", "lock").
calls("ThreadSafeLongArrayList", "noneSatisfy", "LongArrayList", "noneSatisfy").
calls("ThreadSafeLongArrayList", "noneSatisfy", "Lock", "unlock").
method("ThreadSafeLongArrayList", "toList", 7, 1, "chengwu.lcw@alibaba-inc.com").
calls("ThreadSafeLongArrayList", "toList", "Lock", "lock").
calls("ThreadSafeLongArrayList", "toList", "LongArrayList", "toList").
calls("ThreadSafeLongArrayList", "toList", "Lock", "unlock").
method("ThreadSafeLongArrayList", "toSet", 7, 1, "chengwu.lcw@alibaba-inc.com").
calls("ThreadSafeLongArrayList", "toSet", "Lock", "lock").
calls("ThreadSafeLongArrayList", "toSet", "LongArrayList", "toSet").
calls("ThreadSafeLongArrayList", "toSet", "Lock", "unlock").
method("ThreadSafeLongArrayList", "toBag", 7, 1, "chengwu.lcw@alibaba-inc.com").
calls("ThreadSafeLongArrayList", "toBag", "Lock", "lock").
calls("ThreadSafeLongArrayList", "toBag", "LongArrayList", "toBag").
calls("ThreadSafeLongArrayList", "toBag", "Lock", "unlock").
method("ThreadSafeLongArrayList", "asLazy", 7, 1, "chengwu.lcw@alibaba-inc.com").
calls("ThreadSafeLongArrayList", "asLazy", "Lock", "lock").
calls("ThreadSafeLongArrayList", "asLazy", "LongArrayList", "asLazy").
calls("ThreadSafeLongArrayList", "asLazy", "Lock", "unlock").
method("ThreadSafeLongArrayList", "injectInto", 7, 1, "chengwu.lcw@alibaba-inc.com").
calls("ThreadSafeLongArrayList", "injectInto", "Lock", "lock").
calls("ThreadSafeLongArrayList", "injectInto", "LongArrayList", "injectInto").
calls("ThreadSafeLongArrayList", "injectInto", "Lock", "unlock").
method("ThreadSafeLongArrayList", "sum", 7, 1, "chengwu.lcw@alibaba-inc.com").
calls("ThreadSafeLongArrayList", "sum", "Lock", "lock").
calls("ThreadSafeLongArrayList", "sum", "LongArrayList", "sum").
calls("ThreadSafeLongArrayList", "sum", "Lock", "unlock").
method("ThreadSafeLongArrayList", "max", 7, 1, "chengwu.lcw@alibaba-inc.com").
calls("ThreadSafeLongArrayList", "max", "Lock", "lock").
calls("ThreadSafeLongArrayList", "max", "LongArrayList", "max").
calls("ThreadSafeLongArrayList", "max", "Lock", "unlock").
method("ThreadSafeLongArrayList", "maxIfEmpty", 7, 1, "chengwu.lcw@alibaba-inc.com").
calls("ThreadSafeLongArrayList", "maxIfEmpty", "Lock", "lock").
calls("ThreadSafeLongArrayList", "maxIfEmpty", "LongArrayList", "maxIfEmpty").
calls("ThreadSafeLongArrayList", "maxIfEmpty", "Lock", "unlock").
method("ThreadSafeLongArrayList", "min", 7, 1, "chengwu.lcw@alibaba-inc.com").
calls("ThreadSafeLongArrayList", "min", "Lock", "lock").
calls("ThreadSafeLongArrayList", "min", "LongArrayList", "min").
calls("ThreadSafeLongArrayList", "min", "Lock", "unlock").
method("ThreadSafeLongArrayList", "minIfEmpty", 7, 1, "chengwu.lcw@alibaba-inc.com").
calls("ThreadSafeLongArrayList", "minIfEmpty", "Lock", "lock").
calls("ThreadSafeLongArrayList", "minIfEmpty", "LongArrayList", "minIfEmpty").
calls("ThreadSafeLongArrayList", "minIfEmpty", "Lock", "unlock").
method("ThreadSafeLongArrayList", "average", 7, 1, "chengwu.lcw@alibaba-inc.com").
calls("ThreadSafeLongArrayList", "average", "Lock", "lock").
calls("ThreadSafeLongArrayList", "average", "LongArrayList", "average").
calls("ThreadSafeLongArrayList", "average", "Lock", "unlock").
method("ThreadSafeLongArrayList", "median", 7, 1, "chengwu.lcw@alibaba-inc.com").
calls("ThreadSafeLongArrayList", "median", "Lock", "lock").
calls("ThreadSafeLongArrayList", "median", "LongArrayList", "median").
calls("ThreadSafeLongArrayList", "median", "Lock", "unlock").
method("ThreadSafeLongArrayList", "toSortedArray", 7, 1, "chengwu.lcw@alibaba-inc.com").
calls("ThreadSafeLongArrayList", "toSortedArray", "Lock", "lock").
calls("ThreadSafeLongArrayList", "toSortedArray", "LongArrayList", "toSortedArray").
calls("ThreadSafeLongArrayList", "toSortedArray", "Lock", "unlock").
method("ThreadSafeLongArrayList", "toSortedList", 7, 1, "chengwu.lcw@alibaba-inc.com").
calls("ThreadSafeLongArrayList", "toSortedList", "Lock", "lock").
calls("ThreadSafeLongArrayList", "toSortedList", "LongArrayList", "toSortedList").
calls("ThreadSafeLongArrayList", "toSortedList", "Lock", "unlock").
method("ThreadSafeLongArrayList", "reverseThis", 7, 1, "chengwu.lcw@alibaba-inc.com").
calls("ThreadSafeLongArrayList", "reverseThis", "Lock", "lock").
calls("ThreadSafeLongArrayList", "reverseThis", "LongArrayList", "reverseThis").
calls("ThreadSafeLongArrayList", "reverseThis", "Lock", "unlock").
method("ThreadSafeLongArrayList", "toReversed", 7, 1, "chengwu.lcw@alibaba-inc.com").
calls("ThreadSafeLongArrayList", "toReversed", "Lock", "lock").
calls("ThreadSafeLongArrayList", "toReversed", "LongArrayList", "toReversed").
calls("ThreadSafeLongArrayList", "toReversed", "Lock", "unlock").
method("ThreadSafeLongArrayList", "distinct", 7, 1, "chengwu.lcw@alibaba-inc.com").
calls("ThreadSafeLongArrayList", "distinct", "Lock", "lock").
calls("ThreadSafeLongArrayList", "distinct", "LongArrayList", "distinct").
calls("ThreadSafeLongArrayList", "distinct", "Lock", "unlock").
method("ThreadSafeLongArrayList", "injectIntoWithIndex", 7, 1, "chengwu.lcw@alibaba-inc.com").
calls("ThreadSafeLongArrayList", "injectIntoWithIndex", "Lock", "lock").
calls("ThreadSafeLongArrayList", "injectIntoWithIndex", "LongArrayList", "injectIntoWithIndex").
calls("ThreadSafeLongArrayList", "injectIntoWithIndex", "Lock", "unlock").
method("ThreadSafeLongArrayList", "forEachWithIndex", 7, 1, "chengwu.lcw@alibaba-inc.com").
calls("ThreadSafeLongArrayList", "forEachWithIndex", "Lock", "lock").
calls("ThreadSafeLongArrayList", "forEachWithIndex", "LongArrayList", "forEachWithIndex").
calls("ThreadSafeLongArrayList", "forEachWithIndex", "Lock", "unlock").
method("ThreadSafeLongArrayList", "sortThis", 7, 1, "chengwu.lcw@alibaba-inc.com").
calls("ThreadSafeLongArrayList", "sortThis", "Lock", "lock").
calls("ThreadSafeLongArrayList", "sortThis", "LongArrayList", "sortThis").
calls("ThreadSafeLongArrayList", "sortThis", "Lock", "unlock").
method("ThreadSafeLongArrayList", "asUnmodifiable", 7, 1, "chengwu.lcw@alibaba-inc.com").
calls("ThreadSafeLongArrayList", "asUnmodifiable", "Lock", "lock").
calls("ThreadSafeLongArrayList", "asUnmodifiable", "LongArrayList", "asUnmodifiable").
calls("ThreadSafeLongArrayList", "asUnmodifiable", "Lock", "unlock").
method("ThreadSafeLongArrayList", "asSynchronized", 3, 1, "chengwu.lcw@alibaba-inc.com").
method("ThreadSafeLongArrayList", "toImmutable", 7, 1, "chengwu.lcw@alibaba-inc.com").
calls("ThreadSafeLongArrayList", "toImmutable", "Lock", "lock").
calls("ThreadSafeLongArrayList", "toImmutable", "LongArrayList", "toImmutable").
calls("ThreadSafeLongArrayList", "toImmutable", "Lock", "unlock").
method("ThreadSafeLongArrayList", "subList", 3, 1, "chengwu.lcw@alibaba-inc.com").
method("ThreadSafeLongArrayList", "size", 7, 1, "chengwu.lcw@alibaba-inc.com").
calls("ThreadSafeLongArrayList", "size", "Lock", "lock").
calls("ThreadSafeLongArrayList", "size", "LongArrayList", "size").
calls("ThreadSafeLongArrayList", "size", "Lock", "unlock").
method("ThreadSafeLongArrayList", "isEmpty", 7, 1, "chengwu.lcw@alibaba-inc.com").
calls("ThreadSafeLongArrayList", "isEmpty", "Lock", "lock").
calls("ThreadSafeLongArrayList", "isEmpty", "LongArrayList", "isEmpty").
calls("ThreadSafeLongArrayList", "isEmpty", "Lock", "unlock").
method("ThreadSafeLongArrayList", "notEmpty", 7, 1, "chengwu.lcw@alibaba-inc.com").
calls("ThreadSafeLongArrayList", "notEmpty", "Lock", "lock").
calls("ThreadSafeLongArrayList", "notEmpty", "LongArrayList", "notEmpty").
calls("ThreadSafeLongArrayList", "notEmpty", "Lock", "unlock").
method("ThreadSafeLongArrayList", "makeString", 7, 1, "chengwu.lcw@alibaba-inc.com").
calls("ThreadSafeLongArrayList", "makeString", "Lock", "lock").
calls("ThreadSafeLongArrayList", "makeString", "LongArrayList", "makeString").
calls("ThreadSafeLongArrayList", "makeString", "Lock", "unlock").
method("ThreadSafeLongArrayList", "makeString", 7, 1, "chengwu.lcw@alibaba-inc.com").
calls("ThreadSafeLongArrayList", "makeString", "Lock", "lock").
calls("ThreadSafeLongArrayList", "makeString", "LongArrayList", "makeString").
calls("ThreadSafeLongArrayList", "makeString", "Lock", "unlock").
method("ThreadSafeLongArrayList", "makeString", 7, 1, "chengwu.lcw@alibaba-inc.com").
calls("ThreadSafeLongArrayList", "makeString", "Lock", "lock").
calls("ThreadSafeLongArrayList", "makeString", "LongArrayList", "makeString").
calls("ThreadSafeLongArrayList", "makeString", "Lock", "unlock").
method("ThreadSafeLongArrayList", "appendString", 7, 1, "chengwu.lcw@alibaba-inc.com").
calls("ThreadSafeLongArrayList", "appendString", "Lock", "lock").
calls("ThreadSafeLongArrayList", "appendString", "LongArrayList", "appendString").
calls("ThreadSafeLongArrayList", "appendString", "Lock", "unlock").
method("ThreadSafeLongArrayList", "appendString", 7, 1, "chengwu.lcw@alibaba-inc.com").
calls("ThreadSafeLongArrayList", "appendString", "Lock", "lock").
calls("ThreadSafeLongArrayList", "appendString", "LongArrayList", "appendString").
calls("ThreadSafeLongArrayList", "appendString", "Lock", "unlock").
method("ThreadSafeLongArrayList", "appendString", 7, 1, "chengwu.lcw@alibaba-inc.com").
calls("ThreadSafeLongArrayList", "appendString", "Lock", "lock").
calls("ThreadSafeLongArrayList", "appendString", "LongArrayList", "appendString").
calls("ThreadSafeLongArrayList", "appendString", "Lock", "unlock").
