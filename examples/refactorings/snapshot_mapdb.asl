
# mapdb/src/main/java/org/mapdb/WriteAheadLog.java

class("WriteAheadLog").
method("WriteAheadLog", "initFailedCloseFiles", 16, 7).
calls("WriteAheadLog", "initFailedCloseFiles", "Volume", "close").
calls("WriteAheadLog", "initFailedCloseFiles", "List", "clear").
calls("WriteAheadLog", "initFailedCloseFiles", "Volume", "close").
calls("WriteAheadLog", "initFailedCloseFiles", "List", "clear").
method("WriteAheadLog", "close", 9, 3).
calls("WriteAheadLog", "close", "Volume", "close").
calls("WriteAheadLog", "close", "List", "clear").
calls("WriteAheadLog", "close", "Volume", "close").
calls("WriteAheadLog", "close", "List", "clear").
method("WriteAheadLog", "seal", 9, 1).
calls("WriteAheadLog", "seal", "WriteAheadLog", "ensureFileReady").
calls("WriteAheadLog", "seal", "Volume", "ensureAvailable").
calls("WriteAheadLog", "seal", "Volume", "putUnsignedByte").
calls("WriteAheadLog", "seal", "Volume", "sync").
calls("WriteAheadLog", "seal", "Volume", "putLong").
calls("WriteAheadLog", "seal", "Volume", "sync").
method("WriteAheadLog", "startNextFile", 16, 2).
calls("WriteAheadLog", "startNextFile", "Volume", "ensureAvailable").
calls("WriteAheadLog", "startNextFile", "Volume", "putInt").
calls("WriteAheadLog", "startNextFile", "Volume", "putLong").
calls("WriteAheadLog", "startNextFile", "WriteAheadLog", "fileOffsetSet").
calls("WriteAheadLog", "startNextFile", "List", "add").
method("WriteAheadLog", "rollback", 19, 2).
calls("WriteAheadLog", "rollback", "WriteAheadLog", "ensureFileReady").
calls("WriteAheadLog", "rollback", "Volume", "ensureAvailable").
calls("WriteAheadLog", "rollback", "Volume", "putUnsignedByte").
calls("WriteAheadLog", "rollback", "Volume", "putInt").
calls("WriteAheadLog", "rollback", "Volume", "sync").
method("WriteAheadLog", "commit", 19, 2).
calls("WriteAheadLog", "commit", "WriteAheadLog", "ensureFileReady").
calls("WriteAheadLog", "commit", "Volume", "ensureAvailable").
calls("WriteAheadLog", "commit", "Volume", "putUnsignedByte").
calls("WriteAheadLog", "commit", "Volume", "putInt").
calls("WriteAheadLog", "commit", "Volume", "sync").
method("WriteAheadLog", "checksum", 4, 1).
method("WriteAheadLog", "fileLoad", 6, 2).
method("WriteAheadLog", "sync", 3, 1).
calls("WriteAheadLog", "sync", "Volume", "sync").
method("WriteAheadLog", "getAllFiles", 8, 3).
calls("WriteAheadLog", "getAllFiles", "ArrayList", "add").
method("WriteAheadLog", "allocate", 16, 3).
calls("WriteAheadLog", "allocate", "ReentrantLock", "lock").
calls("WriteAheadLog", "allocate", "Volume", "putUnsignedByte").
calls("WriteAheadLog", "allocate", "ReentrantLock", "unlock").
method("WriteAheadLog", "fileOffsetSet", 7, 1).
calls("WriteAheadLog", "fileOffsetSet", "ReentrantLock", "lock").
calls("WriteAheadLog", "fileOffsetSet", "ReentrantLock", "unlock").
method("WriteAheadLog", "open", 20, 5).
calls("WriteAheadLog", "open", "File", "exists").
calls("WriteAheadLog", "open", "List", "add").
calls("WriteAheadLog", "open", "File", "delete").
calls("WriteAheadLog", "open", "WriteAheadLog", "fileOffsetSet").
calls("WriteAheadLog", "open", "List", "clear").
method("WriteAheadLog", "replayWALSkipRollbacks", 86, 13).
calls("WriteAheadLog", "replayWALSkipRollbacks", "WALReplay", "beforeReplayStart").
calls("WriteAheadLog", "replayWALSkipRollbacks", "LOG", "log").
calls("WriteAheadLog", "replayWALSkipRollbacks", "LOG", "log").
calls("WriteAheadLog", "replayWALSkipRollbacks", "LOG", "log").
calls("WriteAheadLog", "replayWALSkipRollbacks", "LOG", "log").
calls("WriteAheadLog", "replayWALSkipRollbacks", "WALReplay", "commit").
calls("WriteAheadLog", "replayWALSkipRollbacks", "Volume", "clearOverlap").
calls("WriteAheadLog", "replayWALSkipRollbacks", "Volume", "sync").
calls("WriteAheadLog", "replayWALSkipRollbacks", "WALReplay", "afterReplayFinished").
method("WriteAheadLog", "skipRollbacks", 80, 13).
calls("WriteAheadLog", "skipRollbacks", "LOG", "log").
calls("WriteAheadLog", "skipRollbacks", "LOG", "log").
calls("WriteAheadLog", "skipRollbacks", "LOG", "log").
method("WriteAheadLog", "replayWAL", 67, 9).
calls("WriteAheadLog", "replayWAL", "WALReplay", "beforeReplayStart").
calls("WriteAheadLog", "replayWAL", "WALReplay", "commit").
calls("WriteAheadLog", "replayWAL", "WALReplay", "rollback").
calls("WriteAheadLog", "replayWAL", "WALReplay", "afterReplayFinished").
method("WriteAheadLog", "instTombstone", 15, 4).
calls("WriteAheadLog", "instTombstone", "LOG", "log").
calls("WriteAheadLog", "instTombstone", "WALReplay", "writeTombstone").
method("WriteAheadLog", "instPreallocate", 15, 4).
calls("WriteAheadLog", "instPreallocate", "LOG", "log").
calls("WriteAheadLog", "instPreallocate", "WALReplay", "writePreallocate").
method("WriteAheadLog", "instRecord", 28, 6).
calls("WriteAheadLog", "instRecord", "LOG", "log").
calls("WriteAheadLog", "instRecord", "WALReplay", "writeRecord").
calls("WriteAheadLog", "instRecord", "WALReplay", "writeRecord").
method("WriteAheadLog", "instByteArray", 20, 4).
calls("WriteAheadLog", "instByteArray", "LOG", "log").
calls("WriteAheadLog", "instByteArray", "WALReplay", "writeByteArray").
method("WriteAheadLog", "instLong", 16, 4).
calls("WriteAheadLog", "instLong", "LOG", "log").
calls("WriteAheadLog", "instLong", "WALReplay", "writeLong").
method("WriteAheadLog", "destroyWalFiles", 11, 3).
calls("WriteAheadLog", "destroyWalFiles", "Volume", "isClosed").
calls("WriteAheadLog", "destroyWalFiles", "Volume", "truncate").
calls("WriteAheadLog", "destroyWalFiles", "Volume", "close").
calls("WriteAheadLog", "destroyWalFiles", "Volume", "deleteFile").
calls("WriteAheadLog", "destroyWalFiles", "List", "clear").
method("WriteAheadLog", "getWalFileName", 3, 1).
method("WriteAheadLog", "getNumberOfFiles", 3, 1).
calls("WriteAheadLog", "getNumberOfFiles", "List", "size").
method("WriteAheadLog", "walGetByteArray", 10, 2).
calls("WriteAheadLog", "walGetByteArray", "Volume", "getDataInput").
method("WriteAheadLog", "walGetByteArray2", 9, 1).
calls("WriteAheadLog", "walGetByteArray2", "Volume", "getData").
method("WriteAheadLog", "walPointerToOffset", 3, 1).
method("WriteAheadLog", "walPointerToFileNum", 3, 1).
method("WriteAheadLog", "walPointerToSize", 3, 1).
method("WriteAheadLog", "walGetRecord", 31, 5).
calls("WriteAheadLog", "walGetRecord", "DataInput", "readFully").
method("WriteAheadLog", "walPutByteArray", 26, 5).
calls("WriteAheadLog", "walPutByteArray", "WriteAheadLog", "ensureFileReady").
calls("WriteAheadLog", "walPutByteArray", "Volume", "ensureAvailable").
calls("WriteAheadLog", "walPutByteArray", "Volume", "putUnsignedByte").
calls("WriteAheadLog", "walPutByteArray", "Volume", "putLong").
calls("WriteAheadLog", "walPutByteArray", "Volume", "putData").
calls("WriteAheadLog", "walPutByteArray", "WriteAheadLog", "walPointer").
method("WriteAheadLog", "walPointer", 15, 4).
method("WriteAheadLog", "walPutRecord", 25, 4).
calls("WriteAheadLog", "walPutRecord", "WriteAheadLog", "ensureFileReady").
calls("WriteAheadLog", "walPutRecord", "Volume", "ensureAvailable").
calls("WriteAheadLog", "walPutRecord", "Volume", "putUnsignedByte").
calls("WriteAheadLog", "walPutRecord", "Volume", "putDataOverlap").
method("WriteAheadLog", "walPutLong", 17, 2).
calls("WriteAheadLog", "walPutLong", "WriteAheadLog", "ensureFileReady").
calls("WriteAheadLog", "walPutLong", "Volume", "ensureAvailable").
calls("WriteAheadLog", "walPutLong", "Volume", "putUnsignedByte").
calls("WriteAheadLog", "walPutLong", "Volume", "putLong").
calls("WriteAheadLog", "walPutLong", "Volume", "putSixLong").
method("WriteAheadLog", "ensureFileReady", 12, 4).
calls("WriteAheadLog", "ensureFileReady", "WriteAheadLog", "startNextFile").
calls("WriteAheadLog", "ensureFileReady", "WriteAheadLog", "seal").
calls("WriteAheadLog", "ensureFileReady", "WriteAheadLog", "startNextFile").
method("WriteAheadLog", "walPutTombstone", 12, 1).
calls("WriteAheadLog", "walPutTombstone", "WriteAheadLog", "ensureFileReady").
calls("WriteAheadLog", "walPutTombstone", "Volume", "ensureAvailable").
calls("WriteAheadLog", "walPutTombstone", "Volume", "putUnsignedByte").
calls("WriteAheadLog", "walPutTombstone", "Volume", "putPackedLong").
method("WriteAheadLog", "walPutPreallocate", 12, 1).
calls("WriteAheadLog", "walPutPreallocate", "WriteAheadLog", "ensureFileReady").
calls("WriteAheadLog", "walPutPreallocate", "Volume", "ensureAvailable").
calls("WriteAheadLog", "walPutPreallocate", "Volume", "putUnsignedByte").
calls("WriteAheadLog", "walPutPreallocate", "Volume", "putPackedLong").

# mapdb/src/main/java/org/mapdb/CC.java


# mapdb/src/main/java/org/mapdb/Serializer.java


# mapdb/src/main/java/org/mapdb/DataOutput2.java

class("DataOutput2").
method("DataOutput2", "copyBytes", 3, 1).
calls("DataOutput2", "copyBytes", "Arrays", "copyOf").
method("DataOutput2", "ensureAvail", 6, 2).
calls("DataOutput2", "ensureAvail", "DataOutput2", "grow").
method("DataOutput2", "grow", 5, 1).
method("DataOutput2", "write", 4, 1).
calls("DataOutput2", "write", "DataOutput2", "ensureAvail").
method("DataOutput2", "write", 3, 1).
calls("DataOutput2", "write", "DataOutput2", "write").
method("DataOutput2", "write", 5, 1).
calls("DataOutput2", "write", "DataOutput2", "ensureAvail").
calls("DataOutput2", "write", "System", "arraycopy").
method("DataOutput2", "writeBoolean", 4, 1).
calls("DataOutput2", "writeBoolean", "DataOutput2", "ensureAvail").
method("DataOutput2", "writeByte", 4, 1).
calls("DataOutput2", "writeByte", "DataOutput2", "ensureAvail").
method("DataOutput2", "writeShort", 5, 1).
calls("DataOutput2", "writeShort", "DataOutput2", "ensureAvail").
method("DataOutput2", "writeChar", 5, 1).
calls("DataOutput2", "writeChar", "DataOutput2", "ensureAvail").
method("DataOutput2", "writeInt", 7, 1).
calls("DataOutput2", "writeInt", "DataOutput2", "ensureAvail").
method("DataOutput2", "writeLong", 11, 1).
calls("DataOutput2", "writeLong", "DataOutput2", "ensureAvail").
method("DataOutput2", "writeFloat", 3, 1).
calls("DataOutput2", "writeFloat", "DataOutput2", "writeInt").
method("DataOutput2", "writeDouble", 3, 1).
calls("DataOutput2", "writeDouble", "DataOutput2", "writeLong").
method("DataOutput2", "writeBytes", 3, 1).
calls("DataOutput2", "writeBytes", "DataOutput2", "writeUTF").
method("DataOutput2", "writeChars", 3, 1).
calls("DataOutput2", "writeChars", "DataOutput2", "writeUTF").
method("DataOutput2", "writeUTF", 7, 2).
calls("DataOutput2", "writeUTF", "DataOutput2", "packInt").
calls("DataOutput2", "writeUTF", "DataOutput2", "packInt").
method("DataOutput2", "packInt", 12, 3).
calls("DataOutput2", "packInt", "DataOutput2", "ensureAvail").
method("DataOutput2", "packIntBigger", 9, 2).
calls("DataOutput2", "packIntBigger", "DataOutput2", "ensureAvail").
method("DataOutput2", "packLong", 9, 2).
calls("DataOutput2", "packLong", "DataOutput2", "ensureAvail").
method("DataOutput2", "packLongArray", 11, 3).
calls("DataOutput2", "packLongArray", "DataOutput2", "ensureAvail").

# mapdb/src/main/java/org/mapdb/DataInput2.java

class("DataInput2").
method("DataInput2", "readFloat", 3, 1).
calls("DataInput2", "readFloat", "Float", "intBitsToFloat").
method("DataInput2", "readDouble", 3, 1).
calls("DataInput2", "readDouble", "Double", "longBitsToDouble").
method("DataInput2", "readLine", 3, 1).
calls("DataInput2", "readLine", "DataInput2", "readUTF").
method("DataInput2", "readUTF", 7, 2).
method("DataInput2", "readUnsignedShort", 3, 1).
calls("DataInput2", "readUnsignedShort", "DataInput2", "readChar").
method("DataInput2", "readFully", 3, 1).
calls("DataInput2", "readFully", "DataInput2", "readFully").
method("DataInput2", "getPos", 1, 1).
method("DataInput2", "setPos", 1, 1).
method("DataInput2", "internalByteArray", 1, 1).
method("DataInput2", "internalByteBuffer", 1, 1).
method("DataInput2", "close", 1, 1).
method("DataInput2", "unpackLong", 1, 1).
method("DataInput2", "unpackInt", 1, 1).
method("DataInput2", "unpackLongArrayDeltaCompression", 1, 1).
method("DataInput2", "unpackLongArray", 1, 1).
method("DataInput2", "unpackIntArray", 1, 1).
method("DataInput2", "unpackLongSkip", 1, 1).

# mapdb/src/main/java/org/mapdb/StoreBinaryGetLong.java


# mapdb/src/main/java/org/mapdb/MapModificationListener.java


# mapdb/src/main/java/org/mapdb/serializer/SerializerFloatArray.java

class("SerializerFloatArray").
method("SerializerFloatArray", "serialize", 5, 2).
calls("SerializerFloatArray", "serialize", "DataOutput2", "packInt").
calls("SerializerFloatArray", "serialize", "DataOutput2", "writeFloat").
method("SerializerFloatArray", "deserialize", 6, 2).
method("SerializerFloatArray", "isTrusted", 3, 1).
method("SerializerFloatArray", "equals", 3, 1).
calls("SerializerFloatArray", "equals", "Arrays", "equals").
method("SerializerFloatArray", "hashCode", 5, 2).
method("SerializerFloatArray", "compare", 15, 5).
calls("SerializerFloatArray", "compare", "SerializerUtils", "compareInt").

# mapdb/src/main/java/org/mapdb/serializer/SerializerRecid.java

class("SerializerRecid").
method("SerializerRecid", "serialize", 3, 1).
calls("SerializerRecid", "serialize", "DataIO", "packRecid").
method("SerializerRecid", "deserialize", 3, 1).
method("SerializerRecid", "fixedSize", 3, 1).
method("SerializerRecid", "unpack", 3, 1).
method("SerializerRecid", "pack", 3, 1).
method("SerializerRecid", "isTrusted", 3, 1).
method("SerializerRecid", "valueArraySearch", 3, 1).
calls("SerializerRecid", "valueArraySearch", "Arrays", "binarySearch").
method("SerializerRecid", "valueArraySerialize", 4, 2).
calls("SerializerRecid", "valueArraySerialize", "DataIO", "packRecid").
method("SerializerRecid", "valueArrayDeserialize", 6, 2).
method("SerializerRecid", "valueArrayBinaryGet", 4, 1).
calls("SerializerRecid", "valueArrayBinaryGet", "DataInput2", "unpackLongSkip").
calls("SerializerRecid", "valueArrayBinaryGet", "SerializerRecid", "deserialize").

# mapdb/src/main/java/org/mapdb/serializer/SerializerDoubleArray.java

class("SerializerDoubleArray").
method("SerializerDoubleArray", "serialize", 5, 2).
calls("SerializerDoubleArray", "serialize", "DataOutput2", "packInt").
calls("SerializerDoubleArray", "serialize", "DataOutput2", "writeDouble").
method("SerializerDoubleArray", "deserialize", 7, 2).
method("SerializerDoubleArray", "isTrusted", 3, 1).
method("SerializerDoubleArray", "equals", 3, 1).
calls("SerializerDoubleArray", "equals", "Arrays", "equals").
method("SerializerDoubleArray", "hashCode", 6, 2).
method("SerializerDoubleArray", "compare", 15, 5).
calls("SerializerDoubleArray", "compare", "SerializerUtils", "compareInt").

# mapdb/src/main/java/org/mapdb/serializer/SerializerArrayDelta.java

class("SerializerArrayDelta").
method("SerializerArrayDelta", "valueArraySerialize", 21, 6).
calls("SerializerArrayDelta", "valueArraySerialize", "DataOutput2", "packInt").
calls("SerializerArrayDelta", "valueArraySerialize", "serializer", "serialize").
calls("SerializerArrayDelta", "valueArraySerialize", "DataOutput2", "packInt").
calls("SerializerArrayDelta", "valueArraySerialize", "DataOutput2", "packInt").
calls("SerializerArrayDelta", "valueArraySerialize", "serializer", "serialize").
method("SerializerArrayDelta", "valueArrayDeserialize", 21, 5).
calls("SerializerArrayDelta", "valueArrayDeserialize", "System", "arraycopy").

# mapdb/src/main/java/org/mapdb/serializer/SerializerChar.java

class("SerializerChar").
method("SerializerChar", "serialize", 3, 1).
calls("SerializerChar", "serialize", "DataOutput2", "writeChar").
method("SerializerChar", "deserialize", 3, 1).
calls("SerializerChar", "deserialize", "DataInput2", "readChar").
method("SerializerChar", "fixedSize", 3, 1).
method("SerializerChar", "isTrusted", 3, 1).

# mapdb/src/main/java/org/mapdb/serializer/SerializerStringOrigHash.java

class("SerializerStringOrigHash").
method("SerializerStringOrigHash", "serialize", 3, 1).
calls("SerializerStringOrigHash", "serialize", "DataOutput2", "writeUTF").
method("SerializerStringOrigHash", "deserialize", 3, 1).
calls("SerializerStringOrigHash", "deserialize", "DataInput2", "readUTF").
method("SerializerStringOrigHash", "isTrusted", 3, 1).
method("SerializerStringOrigHash", "hashCode", 3, 1).
calls("SerializerStringOrigHash", "hashCode", "DataIO", "intHash").

# mapdb/src/main/java/org/mapdb/serializer/SerializerCharArray.java

class("SerializerCharArray").
method("SerializerCharArray", "serialize", 5, 2).
calls("SerializerCharArray", "serialize", "DataOutput2", "packInt").
calls("SerializerCharArray", "serialize", "DataOutput2", "writeChar").
method("SerializerCharArray", "deserialize", 7, 2).
method("SerializerCharArray", "isTrusted", 3, 1).
method("SerializerCharArray", "equals", 3, 1).
calls("SerializerCharArray", "equals", "Arrays", "equals").
method("SerializerCharArray", "hashCode", 5, 2).
method("SerializerCharArray", "compare", 10, 3).
calls("SerializerCharArray", "compare", "SerializerUtils", "compareInt").
method("SerializerCharArray", "nextValue", 14, 4).

# mapdb/src/main/java/org/mapdb/serializer/SerializerIntegerDelta.java

class("SerializerIntegerDelta").
method("SerializerIntegerDelta", "serialize", 3, 1).
calls("SerializerIntegerDelta", "serialize", "DataOutput2", "packInt").
method("SerializerIntegerDelta", "deserialize", 3, 1).
method("SerializerIntegerDelta", "valueArraySerialize", 12, 3).
calls("SerializerIntegerDelta", "valueArraySerialize", "DataOutput2", "packInt").
calls("SerializerIntegerDelta", "valueArraySerialize", "DataOutput2", "packInt").
method("SerializerIntegerDelta", "valueArrayDeserialize", 8, 2).
method("SerializerIntegerDelta", "valueArrayBinaryGet", 6, 2).
method("SerializerIntegerDelta", "valueArrayBinarySearch", 14, 4).
calls("SerializerIntegerDelta", "valueArrayBinarySearch", "DataInput2", "unpackLongSkip").
method("SerializerIntegerDelta", "fixedSize", 3, 1).

# mapdb/src/main/java/org/mapdb/serializer/SerializerEightByte.java

class("SerializerEightByte").
method("SerializerEightByte", "unpack", 1, 1).
method("SerializerEightByte", "pack", 1, 1).
method("SerializerEightByte", "valueArrayGet", 3, 1).
calls("SerializerEightByte", "valueArrayGet", "SerializerEightByte", "unpack").
method("SerializerEightByte", "valueArraySize", 3, 1).
method("SerializerEightByte", "valueArrayEmpty", 3, 1).
method("SerializerEightByte", "valueArrayPut", 9, 2).
calls("SerializerEightByte", "valueArrayPut", "System", "arraycopy").
method("SerializerEightByte", "valueArrayUpdateVal", 5, 1).
method("SerializerEightByte", "valueArrayFromArray", 7, 2).
method("SerializerEightByte", "valueArrayCopyOfRange", 3, 1).
calls("SerializerEightByte", "valueArrayCopyOfRange", "Arrays", "copyOfRange").
method("SerializerEightByte", "valueArrayDeleteValue", 7, 1).
calls("SerializerEightByte", "valueArrayDeleteValue", "System", "arraycopy").
calls("SerializerEightByte", "valueArrayDeleteValue", "System", "arraycopy").
method("SerializerEightByte", "valueArraySerialize", 4, 2).
calls("SerializerEightByte", "valueArraySerialize", "DataOutput2", "writeLong").
method("SerializerEightByte", "valueArrayDeserialize", 6, 2).
method("SerializerEightByte", "valueArrayBinaryGet", 4, 1).
calls("SerializerEightByte", "valueArrayBinaryGet", "DataInput2", "skipBytes").
calls("SerializerEightByte", "valueArrayBinaryGet", "SerializerEightByte", "unpack").
method("SerializerEightByte", "isTrusted", 3, 1).
method("SerializerEightByte", "fixedSize", 3, 1).
method("SerializerEightByte", "valueArraySearch", 21, 5).
calls("SerializerEightByte", "valueArraySearch", "SerializerEightByte", "valueArraySearch").

# mapdb/src/main/java/org/mapdb/serializer/SerializerByteArrayNoSize.java

class("SerializerByteArrayNoSize").
method("SerializerByteArrayNoSize", "serialize", 3, 1).
calls("SerializerByteArrayNoSize", "serialize", "DataOutput2", "write").
method("SerializerByteArrayNoSize", "deserialize", 5, 1).
calls("SerializerByteArrayNoSize", "deserialize", "DataInput2", "readFully").
method("SerializerByteArrayNoSize", "isTrusted", 3, 1).
method("SerializerByteArrayNoSize", "equals", 3, 1).
calls("SerializerByteArrayNoSize", "equals", "Arrays", "equals").
method("SerializerByteArrayNoSize", "hashCode", 3, 1).
calls("SerializerByteArrayNoSize", "hashCode", "BYTE_ARRAY", "hashCode").
method("SerializerByteArrayNoSize", "needsAvailableSizeHint", 3, 1).
method("SerializerByteArrayNoSize", "compare", 13, 4).

# mapdb/src/main/java/org/mapdb/serializer/SerializerStringDelta2.java

class("SerializerStringDelta2").
method("SerializerStringDelta2", "valueArrayDeserialize", 11, 2).
method("SerializerStringDelta2", "valueArraySerialize", 11, 2).
calls("SerializerStringDelta2", "valueArraySerialize", "DataOutput2", "packInt").
calls("SerializerStringDelta2", "valueArraySerialize", "DataOutput2", "packInt").
calls("SerializerStringDelta2", "valueArraySerialize", "StringArrayKeys", "serialize").
method("SerializerStringDelta2", "valueArrayCopyOfRange", 3, 1).
method("SerializerStringDelta2", "valueArrayDeleteValue", 5, 1).
calls("SerializerStringDelta2", "valueArrayDeleteValue", "SerializerStringDelta2", "valueArrayFromArray").
method("SerializerStringDelta2", "valueArrayEmpty", 3, 1).
method("SerializerStringDelta2", "valueArrayFromArray", 16, 4).
calls("SerializerStringDelta2", "valueArrayFromArray", "SerializerStringDelta2", "valueArrayEmpty").
method("SerializerStringDelta2", "valueArrayGet", 3, 1).
method("SerializerStringDelta2", "valueArrayPut", 3, 1).
method("SerializerStringDelta2", "valueArraySearch", 4, 1).
calls("SerializerStringDelta2", "valueArraySearch", "Arrays", "binarySearch").
method("SerializerStringDelta2", "valueArraySearch", 4, 1).
calls("SerializerStringDelta2", "valueArraySearch", "Arrays", "binarySearch").
method("SerializerStringDelta2", "valueArraySize", 3, 1).
method("SerializerStringDelta2", "valueArrayUpdateVal", 5, 1).
calls("SerializerStringDelta2", "valueArrayUpdateVal", "SerializerStringDelta2", "valueArrayFromArray").
method("SerializerStringDelta2", "isTrusted", 3, 1).
method("SerializerStringDelta2", "serialize", 3, 1).
calls("SerializerStringDelta2", "serialize", "Serializer.STRING", "serialize").
method("SerializerStringDelta2", "deserialize", 3, 1).
calls("SerializerStringDelta2", "deserialize", "Serializer.STRING", "deserialize").
method("SerializerStringDelta2", "hashCode", 3, 1).
calls("SerializerStringDelta2", "hashCode", "Serializer.STRING", "hashCode").

# mapdb/src/main/java/org/mapdb/serializer/SerializerIntegerPacked.java

class("SerializerIntegerPacked").
method("SerializerIntegerPacked", "serialize", 3, 1).
calls("SerializerIntegerPacked", "serialize", "DataOutput2", "packInt").
method("SerializerIntegerPacked", "deserialize", 3, 1).
method("SerializerIntegerPacked", "valueArraySerialize", 4, 2).
calls("SerializerIntegerPacked", "valueArraySerialize", "DataOutput2", "packIntBigger").
method("SerializerIntegerPacked", "valueArrayDeserialize", 5, 1).
calls("SerializerIntegerPacked", "valueArrayDeserialize", "DataInput2", "unpackIntArray").
method("SerializerIntegerPacked", "fixedSize", 3, 1).
method("SerializerIntegerPacked", "valueArrayBinarySearch", 13, 4).
calls("SerializerIntegerPacked", "valueArrayBinarySearch", "DataInput2", "unpackLongSkip").
method("SerializerIntegerPacked", "valueArrayBinaryGet", 4, 1).
calls("SerializerIntegerPacked", "valueArrayBinaryGet", "DataInput2", "unpackLongSkip").
calls("SerializerIntegerPacked", "valueArrayBinaryGet", "DataInput2", "unpackInt").

# mapdb/src/main/java/org/mapdb/serializer/SerializerFloat.java

class("SerializerFloat").
method("SerializerFloat", "unpack", 3, 1).
method("SerializerFloat", "pack", 3, 1).
calls("SerializerFloat", "pack", "Float", "floatToIntBits").
method("SerializerFloat", "serialize", 3, 1).
calls("SerializerFloat", "serialize", "DataOutput2", "writeFloat").
method("SerializerFloat", "deserialize", 3, 1).
method("SerializerFloat", "valueArraySearch", 3, 1).
calls("SerializerFloat", "valueArraySearch", "Arrays", "binarySearch").

# mapdb/src/main/java/org/mapdb/serializer/SerializerSqlDate.java

class("SerializerSqlDate").
method("SerializerSqlDate", "serialize", 3, 1).
calls("SerializerSqlDate", "serialize", "DataOutput2", "writeLong").
method("SerializerSqlDate", "deserialize", 3, 1).
method("SerializerSqlDate", "unpack", 3, 1).
method("SerializerSqlDate", "pack", 3, 1).
calls("SerializerSqlDate", "pack", "Date", "getTime").
method("SerializerSqlDate", "valueArraySearch", 4, 1).
calls("SerializerSqlDate", "valueArraySearch", "Arrays", "binarySearch").

# mapdb/src/main/java/org/mapdb/serializer/SerializerSqlTimestamp.java

class("SerializerSqlTimestamp").
method("SerializerSqlTimestamp", "serialize", 3, 1).
calls("SerializerSqlTimestamp", "serialize", "DataOutput2", "writeLong").
method("SerializerSqlTimestamp", "deserialize", 3, 1).
method("SerializerSqlTimestamp", "unpack", 3, 1).
method("SerializerSqlTimestamp", "pack", 3, 1).
calls("SerializerSqlTimestamp", "pack", "Timestamp", "getTime").
method("SerializerSqlTimestamp", "valueArraySearch", 4, 1).
calls("SerializerSqlTimestamp", "valueArraySearch", "Arrays", "binarySearch").

# mapdb/src/main/java/org/mapdb/serializer/SerializerLongDelta.java

class("SerializerLongDelta").
method("SerializerLongDelta", "serialize", 3, 1).
calls("SerializerLongDelta", "serialize", "DataOutput2", "packLong").
method("SerializerLongDelta", "deserialize", 3, 1).
method("SerializerLongDelta", "valueArraySerialize", 12, 3).
calls("SerializerLongDelta", "valueArraySerialize", "DataOutput2", "packLong").
calls("SerializerLongDelta", "valueArraySerialize", "DataOutput2", "packLong").
method("SerializerLongDelta", "valueArrayDeserialize", 3, 1).
calls("SerializerLongDelta", "valueArrayDeserialize", "DataInput2", "unpackLongArrayDeltaCompression").
method("SerializerLongDelta", "valueArrayBinaryGet", 6, 2).
method("SerializerLongDelta", "valueArrayBinarySearch", 14, 4).
calls("SerializerLongDelta", "valueArrayBinarySearch", "DataInput2", "unpackLongSkip").
method("SerializerLongDelta", "fixedSize", 3, 1).

# mapdb/src/main/java/org/mapdb/serializer/SerializerUtils.java

class("SerializerUtils").
method("SerializerUtils", "put", 3, 1).
calls("SerializerUtils", "put", "SERIALIZER_FOR_CLASS", "put").
method("SerializerUtils", "serializerForClass", 4, 1).
method("SerializerUtils", "compareInt", 3, 1).

# mapdb/src/main/java/org/mapdb/serializer/SerializerArray.java

class("SerializerArray").
method("SerializerArray", "serialize", 5, 2).
calls("SerializerArray", "serialize", "DataOutput2", "packInt").
calls("SerializerArray", "serialize", "Serializer", "serialize").
method("SerializerArray", "deserialize", 7, 2).
method("SerializerArray", "isTrusted", 3, 1).
calls("SerializerArray", "isTrusted", "Serializer", "isTrusted").
method("SerializerArray", "equals", 13, 5).
calls("SerializerArray", "equals", "Serializer", "equals").
method("SerializerArray", "hashCode", 6, 2).
method("SerializerArray", "equals", 9, 3).
calls("SerializerArray", "equals", "Serializer", "equals").
method("SerializerArray", "hashCode", 3, 1).
calls("SerializerArray", "hashCode", "Serializer", "hashCode").
method("SerializerArray", "compare", 24, 6).
calls("SerializerArray", "compare", "SerializerUtils", "compareInt").
method("SerializerArray", "callbackDB", 5, 2).

# mapdb/src/main/java/org/mapdb/serializer/SerializerStringDelta.java

class("SerializerStringDelta").
method("SerializerStringDelta", "commonPrefixLen", 11, 5).
method("SerializerStringDelta", "valueArrayDeserialize", 15, 6).
calls("SerializerStringDelta", "valueArrayDeserialize", "System", "arraycopy").
method("SerializerStringDelta", "valueArraySerialize", 13, 5).
calls("SerializerStringDelta", "valueArraySerialize", "DataOutput2", "packInt").
calls("SerializerStringDelta", "valueArraySerialize", "DataIO", "packInt").
calls("SerializerStringDelta", "valueArraySerialize", "DataOutput2", "packInt").
calls("SerializerStringDelta", "valueArraySerialize", "DataOutput2", "packInt").

# mapdb/src/main/java/org/mapdb/serializer/SerializerLong.java

class("SerializerLong").
method("SerializerLong", "serialize", 3, 1).
calls("SerializerLong", "serialize", "DataOutput2", "writeLong").
method("SerializerLong", "deserialize", 3, 1).
method("SerializerLong", "unpack", 3, 1).
method("SerializerLong", "pack", 3, 1).
calls("SerializerLong", "pack", "Long", "longValue").
method("SerializerLong", "valueArraySearch", 3, 1).
calls("SerializerLong", "valueArraySearch", "Arrays", "binarySearch").
method("SerializerLong", "valueArrayBinarySearch", 13, 4).
calls("SerializerLong", "valueArrayBinarySearch", "DataInput2", "skipBytes").

# mapdb/src/main/java/org/mapdb/serializer/SerializerArrayTuple.java

class("SerializerArrayTuple").
method("SerializerArrayTuple", "cast", 6, 2).
method("SerializerArrayTuple", "serialize", 4, 2).
method("SerializerArrayTuple", "deserialize", 6, 2).
method("SerializerArrayTuple", "valueArraySerialize", 5, 2).
method("SerializerArrayTuple", "valueArrayDeserialize", 6, 2).
method("SerializerArrayTuple", "valueArraySearch", 3, 1).
calls("SerializerArrayTuple", "valueArraySearch", "Arrays", "binarySearch").
method("SerializerArrayTuple", "valueArraySearch", 3, 1).
calls("SerializerArrayTuple", "valueArraySearch", "Arrays", "binarySearch").
method("SerializerArrayTuple", "valueArrayGet", 4, 1).
calls("SerializerArrayTuple", "valueArrayGet", "Arrays", "copyOfRange").
method("SerializerArrayTuple", "valueArraySize", 3, 1).
method("SerializerArrayTuple", "valueArrayEmpty", 3, 1).
method("SerializerArrayTuple", "valueArrayPut", 13, 3).
calls("SerializerArrayTuple", "valueArrayPut", "System", "arraycopy").
calls("SerializerArrayTuple", "valueArrayPut", "System", "arraycopy").
method("SerializerArrayTuple", "valueArrayUpdateVal", 8, 2).
calls("SerializerArrayTuple", "valueArrayUpdateVal", "System", "arraycopy").
method("SerializerArrayTuple", "valueArrayFromArray", 12, 4).
method("SerializerArrayTuple", "valueArrayCopyOfRange", 3, 1).
calls("SerializerArrayTuple", "valueArrayCopyOfRange", "Arrays", "copyOfRange").
method("SerializerArrayTuple", "valueArrayDeleteValue", 8, 1).
calls("SerializerArrayTuple", "valueArrayDeleteValue", "System", "arraycopy").
calls("SerializerArrayTuple", "valueArrayDeleteValue", "System", "arraycopy").
method("SerializerArrayTuple", "nextValue", 3, 1).
calls("SerializerArrayTuple", "nextValue", "Arrays", "copyOf").
method("SerializerArrayTuple", "equals", 10, 4).
method("SerializerArrayTuple", "compare", 20, 6).
calls("SerializerArrayTuple", "compare", "Integer", "compare").
method("SerializerArrayTuple", "hashCode", 8, 3).
method("SerializerArrayTuple", "isTrusted", 7, 3).
calls("SerializerArrayTuple", "isTrusted", "Serializer", "isTrusted").
method("SerializerArrayTuple", "callbackDB", 9, 4).

# mapdb/src/main/java/org/mapdb/serializer/SerializerClass.java

class("SerializerClass").
method("SerializerClass", "serialize", 3, 1).
calls("SerializerClass", "serialize", "DataOutput2", "writeUTF").
method("SerializerClass", "deserialize", 6, 2).
calls("SerializerClass", "deserialize", "ClassLoader", "loadClass").
method("SerializerClass", "isTrusted", 3, 1).
method("SerializerClass", "equals", 3, 1).
method("SerializerClass", "hashCode", 3, 1).
calls("SerializerClass", "hashCode", "Class", "toString").

# mapdb/src/main/java/org/mapdb/serializer/SerializerIntArray.java

class("SerializerIntArray").
method("SerializerIntArray", "serialize", 5, 2).
calls("SerializerIntArray", "serialize", "DataOutput2", "packInt").
calls("SerializerIntArray", "serialize", "DataOutput2", "writeInt").
method("SerializerIntArray", "deserialize", 7, 2).
method("SerializerIntArray", "isTrusted", 3, 1).
method("SerializerIntArray", "equals", 3, 1).
calls("SerializerIntArray", "equals", "Arrays", "equals").
method("SerializerIntArray", "hashCode", 5, 2).
method("SerializerIntArray", "compare", 15, 5).
calls("SerializerIntArray", "compare", "SerializerUtils", "compareInt").
method("SerializerIntArray", "nextValue", 14, 4).

# mapdb/src/main/java/org/mapdb/serializer/SerializerJava.java

class("SerializerJava").
method("SerializerJava", "serialize", 5, 1).
calls("SerializerJava", "serialize", "ObjectOutputStream", "writeObject").
calls("SerializerJava", "serialize", "ObjectOutputStream", "flush").
method("SerializerJava", "deserialize", 7, 2).
calls("SerializerJava", "deserialize", "ObjectInputStream", "readObject").
method("SerializerJava", "valueArrayDeserialize", 11, 3).
method("SerializerJava", "valueArraySerialize", 5, 1).
calls("SerializerJava", "valueArraySerialize", "ObjectOutputStream", "writeObject").
calls("SerializerJava", "valueArraySerialize", "ObjectOutputStream", "flush").

# mapdb/src/main/java/org/mapdb/serializer/SerializerStringIntern.java

class("SerializerStringIntern").
method("SerializerStringIntern", "serialize", 3, 1).
calls("SerializerStringIntern", "serialize", "DataOutput2", "writeUTF").
method("SerializerStringIntern", "deserialize", 3, 1).
calls("SerializerStringIntern", "deserialize", "DataInput2", "readUTF").
method("SerializerStringIntern", "isTrusted", 3, 1).
method("SerializerStringIntern", "hashCode", 3, 1).
calls("SerializerStringIntern", "hashCode", "STRING", "hashCode").

# mapdb/src/main/java/org/mapdb/serializer/SerializerUUID.java

class("SerializerUUID").
method("SerializerUUID", "serialize", 4, 1).
calls("SerializerUUID", "serialize", "DataOutput2", "writeLong").
calls("SerializerUUID", "serialize", "DataOutput2", "writeLong").
method("SerializerUUID", "deserialize", 3, 1).
method("SerializerUUID", "fixedSize", 3, 1).
method("SerializerUUID", "isTrusted", 3, 1).
method("SerializerUUID", "equals", 3, 1).
method("SerializerUUID", "hashCode", 4, 1).
method("SerializerUUID", "valueArraySearch", 3, 1).
calls("SerializerUUID", "valueArraySearch", "Arrays", "binarySearch").
method("SerializerUUID", "valueArraySearch", 3, 1).
calls("SerializerUUID", "valueArraySearch", "Arrays", "binarySearch").
method("SerializerUUID", "valueArraySerialize", 4, 2).
calls("SerializerUUID", "valueArraySerialize", "DataOutput2", "writeLong").
method("SerializerUUID", "valueArrayDeserialize", 7, 2).
method("SerializerUUID", "valueArrayGet", 5, 1).
method("SerializerUUID", "valueArraySize", 3, 1).
method("SerializerUUID", "valueArrayEmpty", 3, 1).
method("SerializerUUID", "valueArrayPut", 11, 2).
calls("SerializerUUID", "valueArrayPut", "System", "arraycopy").
method("SerializerUUID", "valueArrayUpdateVal", 7, 1).
method("SerializerUUID", "valueArrayFromArray", 9, 2).
method("SerializerUUID", "valueArrayCopyOfRange", 3, 1).
calls("SerializerUUID", "valueArrayCopyOfRange", "Arrays", "copyOfRange").
method("SerializerUUID", "valueArrayDeleteValue", 8, 1).
calls("SerializerUUID", "valueArrayDeleteValue", "System", "arraycopy").
calls("SerializerUUID", "valueArrayDeleteValue", "System", "arraycopy").

# mapdb/src/main/java/org/mapdb/serializer/SerializerRecidArray.java

class("SerializerRecidArray").
method("SerializerRecidArray", "serialize", 5, 2).
calls("SerializerRecidArray", "serialize", "DataOutput2", "packInt").
calls("SerializerRecidArray", "serialize", "DataIO", "packRecid").
method("SerializerRecidArray", "deserialize", 7, 2).

# mapdb/src/main/java/org/mapdb/serializer/SerializerByte.java

class("SerializerByte").
method("SerializerByte", "serialize", 3, 1).
calls("SerializerByte", "serialize", "DataOutput2", "writeByte").
method("SerializerByte", "deserialize", 3, 1).
calls("SerializerByte", "deserialize", "DataInput2", "readByte").
method("SerializerByte", "fixedSize", 3, 1).
method("SerializerByte", "isTrusted", 3, 1).

# mapdb/src/main/java/org/mapdb/serializer/SerializerCompressionDeflateWrapper.java

class("SerializerCompressionDeflateWrapper").
method("SerializerCompressionDeflateWrapper", "serialize", 23, 4).
calls("SerializerCompressionDeflateWrapper", "serialize", "GroupSerializer", "serialize").
calls("SerializerCompressionDeflateWrapper", "serialize", "Deflater", "setDictionary").
calls("SerializerCompressionDeflateWrapper", "serialize", "Deflater", "setInput").
calls("SerializerCompressionDeflateWrapper", "serialize", "Deflater", "finish").
calls("SerializerCompressionDeflateWrapper", "serialize", "DataOutput2", "packInt").
calls("SerializerCompressionDeflateWrapper", "serialize", "DataOutput2", "write").
calls("SerializerCompressionDeflateWrapper", "serialize", "DataOutput2", "packInt").
calls("SerializerCompressionDeflateWrapper", "serialize", "DataOutput2", "write").
method("SerializerCompressionDeflateWrapper", "deserialize", 19, 4).
calls("SerializerCompressionDeflateWrapper", "deserialize", "GroupSerializer", "deserialize").
calls("SerializerCompressionDeflateWrapper", "deserialize", "Inflater", "setDictionary").
calls("SerializerCompressionDeflateWrapper", "deserialize", "InflaterInputStream", "read").
method("SerializerCompressionDeflateWrapper", "equals", 16, 5).
calls("SerializerCompressionDeflateWrapper", "equals", "GroupSerializer", "equals").
calls("SerializerCompressionDeflateWrapper", "equals", "Arrays", "equals").
method("SerializerCompressionDeflateWrapper", "hashCode", 6, 1).
method("SerializerCompressionDeflateWrapper", "isTrusted", 3, 1).
method("SerializerCompressionDeflateWrapper", "valueArraySearch", 3, 1).
calls("SerializerCompressionDeflateWrapper", "valueArraySearch", "GroupSerializer", "valueArraySearch").
method("SerializerCompressionDeflateWrapper", "valueArraySearch", 3, 1).
calls("SerializerCompressionDeflateWrapper", "valueArraySearch", "GroupSerializer", "valueArraySearch").
method("SerializerCompressionDeflateWrapper", "valueArraySerialize", 26, 5).
calls("SerializerCompressionDeflateWrapper", "valueArraySerialize", "GroupSerializer", "valueArraySerialize").
calls("SerializerCompressionDeflateWrapper", "valueArraySerialize", "Deflater", "setDictionary").
calls("SerializerCompressionDeflateWrapper", "valueArraySerialize", "Deflater", "setInput").
calls("SerializerCompressionDeflateWrapper", "valueArraySerialize", "Deflater", "finish").
calls("SerializerCompressionDeflateWrapper", "valueArraySerialize", "DataOutput2", "packInt").
calls("SerializerCompressionDeflateWrapper", "valueArraySerialize", "DataOutput2", "write").
calls("SerializerCompressionDeflateWrapper", "valueArraySerialize", "DataOutput2", "packInt").
calls("SerializerCompressionDeflateWrapper", "valueArraySerialize", "DataOutput2", "write").
method("SerializerCompressionDeflateWrapper", "valueArrayDeserialize", 22, 5).
calls("SerializerCompressionDeflateWrapper", "valueArrayDeserialize", "GroupSerializer", "valueArrayEmpty").
calls("SerializerCompressionDeflateWrapper", "valueArrayDeserialize", "GroupSerializer", "valueArrayDeserialize").
calls("SerializerCompressionDeflateWrapper", "valueArrayDeserialize", "Inflater", "setDictionary").
calls("SerializerCompressionDeflateWrapper", "valueArrayDeserialize", "InflaterInputStream", "read").
method("SerializerCompressionDeflateWrapper", "valueArrayGet", 3, 1).
calls("SerializerCompressionDeflateWrapper", "valueArrayGet", "GroupSerializer", "valueArrayGet").
method("SerializerCompressionDeflateWrapper", "valueArraySize", 3, 1).
calls("SerializerCompressionDeflateWrapper", "valueArraySize", "GroupSerializer", "valueArraySize").
method("SerializerCompressionDeflateWrapper", "valueArrayEmpty", 3, 1).
calls("SerializerCompressionDeflateWrapper", "valueArrayEmpty", "GroupSerializer", "valueArrayEmpty").
method("SerializerCompressionDeflateWrapper", "valueArrayPut", 3, 1).
calls("SerializerCompressionDeflateWrapper", "valueArrayPut", "GroupSerializer", "valueArrayPut").
method("SerializerCompressionDeflateWrapper", "valueArrayUpdateVal", 3, 1).
calls("SerializerCompressionDeflateWrapper", "valueArrayUpdateVal", "GroupSerializer", "valueArrayUpdateVal").
method("SerializerCompressionDeflateWrapper", "valueArrayFromArray", 3, 1).
calls("SerializerCompressionDeflateWrapper", "valueArrayFromArray", "GroupSerializer", "valueArrayFromArray").
method("SerializerCompressionDeflateWrapper", "valueArrayCopyOfRange", 3, 1).
calls("SerializerCompressionDeflateWrapper", "valueArrayCopyOfRange", "GroupSerializer", "valueArrayCopyOfRange").
method("SerializerCompressionDeflateWrapper", "valueArrayDeleteValue", 3, 1).
calls("SerializerCompressionDeflateWrapper", "valueArrayDeleteValue", "GroupSerializer", "valueArrayDeleteValue").
method("SerializerCompressionDeflateWrapper", "equals", 3, 1).
calls("SerializerCompressionDeflateWrapper", "equals", "GroupSerializer", "equals").
method("SerializerCompressionDeflateWrapper", "hashCode", 3, 1).
calls("SerializerCompressionDeflateWrapper", "hashCode", "GroupSerializer", "hashCode").
method("SerializerCompressionDeflateWrapper", "compare", 3, 1).
calls("SerializerCompressionDeflateWrapper", "compare", "GroupSerializer", "compare").

# mapdb/src/main/java/org/mapdb/serializer/SerializerByteArrayDelta2.java

class("SerializerByteArrayDelta2").
method("SerializerByteArrayDelta2", "valueArraySearch", 4, 1).
calls("SerializerByteArrayDelta2", "valueArraySearch", "Arrays", "binarySearch").
method("SerializerByteArrayDelta2", "valueArraySearch", 4, 1).
calls("SerializerByteArrayDelta2", "valueArraySearch", "Arrays", "binarySearch").
method("SerializerByteArrayDelta2", "valueArraySerialize", 14, 3).
calls("SerializerByteArrayDelta2", "valueArraySerialize", "DataOutput2", "packInt").
calls("SerializerByteArrayDelta2", "valueArraySerialize", "DataOutput2", "packInt").
calls("SerializerByteArrayDelta2", "valueArraySerialize", "DataOutput2", "write").
calls("SerializerByteArrayDelta2", "valueArraySerialize", "DataOutput2", "write").
method("SerializerByteArrayDelta2", "valueArrayDeserialize", 17, 4).
calls("SerializerByteArrayDelta2", "valueArrayDeserialize", "DataInput2", "readFully").
calls("SerializerByteArrayDelta2", "valueArrayDeserialize", "System", "arraycopy").
calls("SerializerByteArrayDelta2", "valueArrayDeserialize", "DataInput2", "readFully").
method("SerializerByteArrayDelta2", "valueArrayGet", 3, 1).
method("SerializerByteArrayDelta2", "valueArraySize", 3, 1).
method("SerializerByteArrayDelta2", "valueArrayEmpty", 3, 1).
method("SerializerByteArrayDelta2", "valueArrayPut", 3, 1).
method("SerializerByteArrayDelta2", "valueArrayUpdateVal", 5, 1).
calls("SerializerByteArrayDelta2", "valueArrayUpdateVal", "SerializerByteArrayDelta2", "valueArrayFromArray").
method("SerializerByteArrayDelta2", "valueArrayFromArray", 15, 3).
calls("SerializerByteArrayDelta2", "valueArrayFromArray", "System", "arraycopy").
method("SerializerByteArrayDelta2", "valueArrayCopyOfRange", 3, 1).
method("SerializerByteArrayDelta2", "valueArrayDeleteValue", 5, 1).
calls("SerializerByteArrayDelta2", "valueArrayDeleteValue", "SerializerByteArrayDelta2", "valueArrayFromArray").
method("SerializerByteArrayDelta2", "serialize", 3, 1).
calls("SerializerByteArrayDelta2", "serialize", "Serializer.BYTE_ARRAY", "serialize").
method("SerializerByteArrayDelta2", "deserialize", 3, 1).
calls("SerializerByteArrayDelta2", "deserialize", "Serializer.BYTE_ARRAY", "deserialize").
method("SerializerByteArrayDelta2", "compare", 3, 1).
calls("SerializerByteArrayDelta2", "compare", "Serializer.BYTE_ARRAY", "compare").
method("SerializerByteArrayDelta2", "equals", 3, 1).
calls("SerializerByteArrayDelta2", "equals", "Serializer.BYTE_ARRAY", "equals").
method("SerializerByteArrayDelta2", "hashCode", 3, 1).
calls("SerializerByteArrayDelta2", "hashCode", "Serializer.BYTE_ARRAY", "hashCode").
method("SerializerByteArrayDelta2", "isTrusted", 3, 1).

# mapdb/src/main/java/org/mapdb/serializer/GroupSerializerObjectArray.java

class("GroupSerializerObjectArray").
method("GroupSerializerObjectArray", "valueArraySerialize", 4, 2).
calls("GroupSerializerObjectArray", "valueArraySerialize", "GroupSerializerObjectArray", "serialize").
method("GroupSerializerObjectArray", "valueArrayDeserialize", 6, 2).
method("GroupSerializerObjectArray", "valueArrayGet", 3, 1).
method("GroupSerializerObjectArray", "valueArraySize", 3, 1).
method("GroupSerializerObjectArray", "valueArrayEmpty", 3, 1).
method("GroupSerializerObjectArray", "valueArrayPut", 3, 1).
calls("GroupSerializerObjectArray", "valueArrayPut", "DataIO", "arrayPut").
method("GroupSerializerObjectArray", "valueArrayUpdateVal", 6, 1).
method("GroupSerializerObjectArray", "valueArrayFromArray", 3, 1).
method("GroupSerializerObjectArray", "valueArrayCopyOfRange", 3, 1).
calls("GroupSerializerObjectArray", "valueArrayCopyOfRange", "Arrays", "copyOfRange").
method("GroupSerializerObjectArray", "valueArrayDeleteValue", 3, 1).
calls("GroupSerializerObjectArray", "valueArrayDeleteValue", "DataIO", "arrayDelete").
method("GroupSerializerObjectArray", "valueArraySearch", 3, 1).
calls("GroupSerializerObjectArray", "valueArraySearch", "Arrays", "binarySearch").
method("GroupSerializerObjectArray", "valueArrayToArray", 3, 1).
method("GroupSerializerObjectArray", "valueArraySearch", 6, 2).
calls("GroupSerializerObjectArray", "valueArraySearch", "GroupSerializerObjectArray", "valueArraySearch").
calls("GroupSerializerObjectArray", "valueArraySearch", "Arrays", "binarySearch").

# mapdb/src/main/java/org/mapdb/serializer/SerializerByteArray.java

class("SerializerByteArray").
method("SerializerByteArray", "serialize", 4, 1).
calls("SerializerByteArray", "serialize", "DataOutput2", "packInt").
calls("SerializerByteArray", "serialize", "DataOutput2", "write").
method("SerializerByteArray", "deserialize", 6, 1).
calls("SerializerByteArray", "deserialize", "DataInput2", "readFully").
method("SerializerByteArray", "isTrusted", 3, 1).
method("SerializerByteArray", "equals", 3, 1).
calls("SerializerByteArray", "equals", "Arrays", "equals").
method("SerializerByteArray", "hashCode", 3, 1).
calls("SerializerByteArray", "hashCode", "HASHER", "hash").
method("SerializerByteArray", "compare", 13, 4).
method("SerializerByteArray", "valueArraySearch", 3, 1).
calls("SerializerByteArray", "valueArraySearch", "Arrays", "binarySearch").
method("SerializerByteArray", "valueArraySearch", 4, 1).
calls("SerializerByteArray", "valueArraySearch", "Arrays", "binarySearch").
method("SerializerByteArray", "valueArraySerialize", 6, 2).
calls("SerializerByteArray", "valueArraySerialize", "DataOutput2", "packInt").
calls("SerializerByteArray", "valueArraySerialize", "Serializer.BYTE_ARRAY", "serialize").
method("SerializerByteArray", "valueArrayDeserialize", 7, 2).
method("SerializerByteArray", "valueArrayGet", 3, 1).
method("SerializerByteArray", "valueArraySize", 3, 1).
method("SerializerByteArray", "valueArrayEmpty", 3, 1).
method("SerializerByteArray", "valueArrayPut", 9, 2).
calls("SerializerByteArray", "valueArrayPut", "System", "arraycopy").
method("SerializerByteArray", "valueArrayUpdateVal", 6, 1).
method("SerializerByteArray", "valueArrayFromArray", 6, 2).
method("SerializerByteArray", "valueArrayCopyOfRange", 3, 1).
calls("SerializerByteArray", "valueArrayCopyOfRange", "Arrays", "copyOfRange").
method("SerializerByteArray", "valueArrayDeleteValue", 6, 1).
calls("SerializerByteArray", "valueArrayDeleteValue", "System", "arraycopy").
calls("SerializerByteArray", "valueArrayDeleteValue", "System", "arraycopy").
method("SerializerByteArray", "nextValue", 14, 4).

# mapdb/src/main/java/org/mapdb/serializer/SerializerShort.java

class("SerializerShort").
method("SerializerShort", "serialize", 3, 1).
calls("SerializerShort", "serialize", "DataOutput2", "writeShort").
method("SerializerShort", "deserialize", 3, 1).
calls("SerializerShort", "deserialize", "DataInput2", "readShort").
method("SerializerShort", "fixedSize", 3, 1).
method("SerializerShort", "isTrusted", 3, 1).

# mapdb/src/main/java/org/mapdb/serializer/SerializerBigDecimal.java

class("SerializerBigDecimal").
method("SerializerBigDecimal", "serialize", 4, 1).
calls("SerializerBigDecimal", "serialize", "BYTE_ARRAY", "serialize").
calls("SerializerBigDecimal", "serialize", "DataOutput2", "packInt").
method("SerializerBigDecimal", "deserialize", 3, 1).
method("SerializerBigDecimal", "isTrusted", 3, 1).

# mapdb/src/main/java/org/mapdb/serializer/SerializerBoolean.java

class("SerializerBoolean").
method("SerializerBoolean", "serialize", 3, 1).
calls("SerializerBoolean", "serialize", "DataOutput2", "writeBoolean").
method("SerializerBoolean", "deserialize", 3, 1).
calls("SerializerBoolean", "deserialize", "DataInput2", "readBoolean").
method("SerializerBoolean", "fixedSize", 3, 1).
method("SerializerBoolean", "isTrusted", 3, 1).
method("SerializerBoolean", "valueArraySearch", 3, 1).
calls("SerializerBoolean", "valueArraySearch", "Arrays", "binarySearch").
method("SerializerBoolean", "valueArraySearch", 3, 1).
calls("SerializerBoolean", "valueArraySearch", "Arrays", "binarySearch").
method("SerializerBoolean", "valueArraySerialize", 4, 2).
calls("SerializerBoolean", "valueArraySerialize", "DataOutput2", "writeBoolean").
method("SerializerBoolean", "valueArrayDeserialize", 6, 2).
method("SerializerBoolean", "valueArrayGet", 3, 1).
method("SerializerBoolean", "valueArraySize", 3, 1).
method("SerializerBoolean", "valueArrayEmpty", 3, 1).
method("SerializerBoolean", "valueArrayPut", 9, 2).
calls("SerializerBoolean", "valueArrayPut", "System", "arraycopy").
method("SerializerBoolean", "valueArrayUpdateVal", 5, 1).
method("SerializerBoolean", "valueArrayFromArray", 6, 2).
method("SerializerBoolean", "valueArrayCopyOfRange", 3, 1).
calls("SerializerBoolean", "valueArrayCopyOfRange", "Arrays", "copyOfRange").
method("SerializerBoolean", "valueArrayDeleteValue", 7, 1).
calls("SerializerBoolean", "valueArrayDeleteValue", "System", "arraycopy").
calls("SerializerBoolean", "valueArrayDeleteValue", "System", "arraycopy").

# mapdb/src/main/java/org/mapdb/serializer/SerializerString.java

class("SerializerString").
method("SerializerString", "serialize", 3, 1).
calls("SerializerString", "serialize", "DataOutput2", "writeUTF").
method("SerializerString", "deserialize", 3, 1).
calls("SerializerString", "deserialize", "DataInput2", "readUTF").
method("SerializerString", "isTrusted", 3, 1).
method("SerializerString", "valueArraySerialize", 6, 3).
calls("SerializerString", "valueArraySerialize", "DataOutput2", "packInt").
calls("SerializerString", "valueArraySerialize", "DataOutput2", "packInt").
method("SerializerString", "valueArrayDeserialize", 10, 3).
method("SerializerString", "valueArraySearch", 4, 1).
calls("SerializerString", "valueArraySearch", "Arrays", "binarySearch").
method("SerializerString", "valueArraySearch", 18, 4).
method("SerializerString", "valueArrayGet", 3, 1).
method("SerializerString", "valueArraySize", 3, 1).
method("SerializerString", "valueArrayEmpty", 3, 1).
method("SerializerString", "valueArrayPut", 9, 2).
calls("SerializerString", "valueArrayPut", "System", "arraycopy").
method("SerializerString", "valueArrayUpdateVal", 6, 1).
method("SerializerString", "valueArrayFromArray", 6, 2).
method("SerializerString", "valueArrayCopyOfRange", 3, 1).
calls("SerializerString", "valueArrayCopyOfRange", "Arrays", "copyOfRange").
method("SerializerString", "valueArrayDeleteValue", 6, 1).
calls("SerializerString", "valueArrayDeleteValue", "System", "arraycopy").
calls("SerializerString", "valueArrayDeleteValue", "System", "arraycopy").
method("SerializerString", "hashCode", 4, 1).
calls("SerializerString", "hashCode", "CHAR_ARRAY", "hashCode").

# mapdb/src/main/java/org/mapdb/serializer/SerializerByteArrayDelta.java

class("SerializerByteArrayDelta").
method("SerializerByteArrayDelta", "valueArraySerialize", 10, 3).
calls("SerializerByteArrayDelta", "valueArraySerialize", "DataOutput2", "packInt").
calls("SerializerByteArrayDelta", "valueArraySerialize", "DataOutput2", "packInt").
calls("SerializerByteArrayDelta", "valueArraySerialize", "DataOutput2", "write").
calls("SerializerByteArrayDelta", "valueArraySerialize", "DataOutput2", "write").
method("SerializerByteArrayDelta", "valueArrayDeserialize", 12, 4).
calls("SerializerByteArrayDelta", "valueArrayDeserialize", "DataInput2", "readFully").
calls("SerializerByteArrayDelta", "valueArrayDeserialize", "System", "arraycopy").
calls("SerializerByteArrayDelta", "valueArrayDeserialize", "DataInput2", "readFully").
method("SerializerByteArrayDelta", "commonPrefixLen", 11, 5).

# mapdb/src/main/java/org/mapdb/serializer/SerializerShortArray.java

class("SerializerShortArray").
method("SerializerShortArray", "serialize", 5, 2).
calls("SerializerShortArray", "serialize", "DataOutput2", "packInt").
calls("SerializerShortArray", "serialize", "DataOutput2", "writeShort").
method("SerializerShortArray", "deserialize", 6, 2).
method("SerializerShortArray", "isTrusted", 3, 1).
method("SerializerShortArray", "equals", 3, 1).
calls("SerializerShortArray", "equals", "Arrays", "equals").
method("SerializerShortArray", "hashCode", 5, 2).
method("SerializerShortArray", "compare", 15, 5).
calls("SerializerShortArray", "compare", "SerializerUtils", "compareInt").
method("SerializerShortArray", "nextValue", 14, 4).

# mapdb/src/main/java/org/mapdb/serializer/SerializerStringAscii.java

class("SerializerStringAscii").
method("SerializerStringAscii", "serialize", 6, 2).
calls("SerializerStringAscii", "serialize", "DataOutput2", "packInt").
calls("SerializerStringAscii", "serialize", "DataOutput2", "write").
method("SerializerStringAscii", "deserialize", 7, 2).
calls("SerializerStringAscii", "deserialize", "StringBuilder", "append").
calls("SerializerStringAscii", "deserialize", "StringBuilder", "toString").
method("SerializerStringAscii", "isTrusted", 3, 1).
method("SerializerStringAscii", "hashCode", 3, 1).
calls("SerializerStringAscii", "hashCode", "STRING", "hashCode").

# mapdb/src/main/java/org/mapdb/serializer/SerializerUnsupported.java

class("SerializerUnsupported").
method("SerializerUnsupported", "serialize", 3, 1).
method("SerializerUnsupported", "deserialize", 3, 1).
method("SerializerUnsupported", "isTrusted", 3, 1).

# mapdb/src/main/java/org/mapdb/serializer/SerializerCompressionWrapper.java

class("SerializerCompressionWrapper").
method("SerializerCompressionWrapper", "serialize", 17, 3).
calls("SerializerCompressionWrapper", "serialize", "GroupSerializer", "serialize").
calls("SerializerCompressionWrapper", "serialize", "DataOutput2", "packInt").
calls("SerializerCompressionWrapper", "serialize", "DataOutput2", "write").
calls("SerializerCompressionWrapper", "serialize", "DataOutput2", "packInt").
calls("SerializerCompressionWrapper", "serialize", "DataOutput2", "write").
method("SerializerCompressionWrapper", "deserialize", 14, 3).
calls("SerializerCompressionWrapper", "deserialize", "GroupSerializer", "deserialize").
calls("SerializerCompressionWrapper", "deserialize", "LZF", "get").
method("SerializerCompressionWrapper", "equals", 10, 3).
calls("SerializerCompressionWrapper", "equals", "GroupSerializer", "equals").
method("SerializerCompressionWrapper", "hashCode", 3, 1).
calls("SerializerCompressionWrapper", "hashCode", "GroupSerializer", "hashCode").
method("SerializerCompressionWrapper", "isTrusted", 3, 1).
method("SerializerCompressionWrapper", "valueArraySearch", 3, 1).
calls("SerializerCompressionWrapper", "valueArraySearch", "GroupSerializer", "valueArraySearch").
method("SerializerCompressionWrapper", "valueArraySearch", 3, 1).
calls("SerializerCompressionWrapper", "valueArraySearch", "GroupSerializer", "valueArraySearch").
method("SerializerCompressionWrapper", "valueArraySerialize", 20, 4).
calls("SerializerCompressionWrapper", "valueArraySerialize", "GroupSerializer", "valueArraySerialize").
calls("SerializerCompressionWrapper", "valueArraySerialize", "DataOutput2", "packInt").
calls("SerializerCompressionWrapper", "valueArraySerialize", "DataOutput2", "write").
calls("SerializerCompressionWrapper", "valueArraySerialize", "DataOutput2", "packInt").
calls("SerializerCompressionWrapper", "valueArraySerialize", "DataOutput2", "write").
method("SerializerCompressionWrapper", "valueArrayDeserialize", 17, 4).
calls("SerializerCompressionWrapper", "valueArrayDeserialize", "GroupSerializer", "valueArrayEmpty").
calls("SerializerCompressionWrapper", "valueArrayDeserialize", "GroupSerializer", "valueArrayDeserialize").
calls("SerializerCompressionWrapper", "valueArrayDeserialize", "LZF", "get").
method("SerializerCompressionWrapper", "valueArrayGet", 3, 1).
calls("SerializerCompressionWrapper", "valueArrayGet", "GroupSerializer", "valueArrayGet").
method("SerializerCompressionWrapper", "valueArraySize", 3, 1).
calls("SerializerCompressionWrapper", "valueArraySize", "GroupSerializer", "valueArraySize").
method("SerializerCompressionWrapper", "valueArrayEmpty", 3, 1).
calls("SerializerCompressionWrapper", "valueArrayEmpty", "GroupSerializer", "valueArrayEmpty").
method("SerializerCompressionWrapper", "valueArrayPut", 3, 1).
calls("SerializerCompressionWrapper", "valueArrayPut", "GroupSerializer", "valueArrayPut").
method("SerializerCompressionWrapper", "valueArrayUpdateVal", 3, 1).
calls("SerializerCompressionWrapper", "valueArrayUpdateVal", "GroupSerializer", "valueArrayUpdateVal").
method("SerializerCompressionWrapper", "valueArrayFromArray", 3, 1).
calls("SerializerCompressionWrapper", "valueArrayFromArray", "GroupSerializer", "valueArrayFromArray").
method("SerializerCompressionWrapper", "valueArrayCopyOfRange", 3, 1).
calls("SerializerCompressionWrapper", "valueArrayCopyOfRange", "GroupSerializer", "valueArrayCopyOfRange").
method("SerializerCompressionWrapper", "valueArrayDeleteValue", 3, 1).
calls("SerializerCompressionWrapper", "valueArrayDeleteValue", "GroupSerializer", "valueArrayDeleteValue").
method("SerializerCompressionWrapper", "equals", 3, 1).
calls("SerializerCompressionWrapper", "equals", "GroupSerializer", "equals").
method("SerializerCompressionWrapper", "hashCode", 3, 1).
calls("SerializerCompressionWrapper", "hashCode", "GroupSerializer", "hashCode").
method("SerializerCompressionWrapper", "compare", 3, 1).
calls("SerializerCompressionWrapper", "compare", "GroupSerializer", "compare").

# mapdb/src/main/java/org/mapdb/serializer/SerializerLongArray.java

class("SerializerLongArray").
method("SerializerLongArray", "serialize", 5, 2).
calls("SerializerLongArray", "serialize", "DataOutput2", "packInt").
calls("SerializerLongArray", "serialize", "DataOutput2", "writeLong").
method("SerializerLongArray", "deserialize", 7, 2).
method("SerializerLongArray", "isTrusted", 3, 1).
method("SerializerLongArray", "equals", 3, 1).
calls("SerializerLongArray", "equals", "Arrays", "equals").
method("SerializerLongArray", "hashCode", 6, 2).
method("SerializerLongArray", "compare", 15, 5).
calls("SerializerLongArray", "compare", "SerializerUtils", "compareInt").
method("SerializerLongArray", "nextValue", 14, 4).

# mapdb/src/main/java/org/mapdb/serializer/SerializerBigInteger.java

class("SerializerBigInteger").
method("SerializerBigInteger", "serialize", 3, 1).
calls("SerializerBigInteger", "serialize", "BYTE_ARRAY", "serialize").
method("SerializerBigInteger", "deserialize", 3, 1).
method("SerializerBigInteger", "isTrusted", 3, 1).

# mapdb/src/main/java/org/mapdb/serializer/SerializerDouble.java

class("SerializerDouble").
method("SerializerDouble", "unpack", 3, 1).
method("SerializerDouble", "pack", 3, 1).
calls("SerializerDouble", "pack", "Double", "doubleToLongBits").
method("SerializerDouble", "valueArraySearch", 3, 1).
calls("SerializerDouble", "valueArraySearch", "Arrays", "binarySearch").
method("SerializerDouble", "serialize", 3, 1).
calls("SerializerDouble", "serialize", "DataOutput2", "writeDouble").
method("SerializerDouble", "deserialize", 3, 1).

# mapdb/src/main/java/org/mapdb/serializer/SerializerStringNoSize.java

class("SerializerStringNoSize").
method("SerializerStringNoSize", "serialize", 4, 1).
calls("SerializerStringNoSize", "serialize", "DataOutput2", "write").
method("SerializerStringNoSize", "deserialize", 8, 2).
calls("SerializerStringNoSize", "deserialize", "DataInput2", "readFully").
method("SerializerStringNoSize", "isTrusted", 3, 1).
method("SerializerStringNoSize", "needsAvailableSizeHint", 3, 1).

# mapdb/src/main/java/org/mapdb/serializer/GroupSerializer.java


# mapdb/src/main/java/org/mapdb/serializer/SerializerDate.java

class("SerializerDate").
method("SerializerDate", "serialize", 3, 1).
calls("SerializerDate", "serialize", "DataOutput2", "writeLong").
method("SerializerDate", "deserialize", 3, 1).
method("SerializerDate", "unpack", 3, 1).
method("SerializerDate", "pack", 3, 1).
calls("SerializerDate", "pack", "Date", "getTime").
method("SerializerDate", "valueArraySearch", 4, 1).
calls("SerializerDate", "valueArraySearch", "Arrays", "binarySearch").

# mapdb/src/main/java/org/mapdb/serializer/SerializerInteger.java

class("SerializerInteger").
method("SerializerInteger", "serialize", 3, 1).
calls("SerializerInteger", "serialize", "DataOutput2", "writeInt").
method("SerializerInteger", "deserialize", 3, 1).
method("SerializerInteger", "unpack", 3, 1).
method("SerializerInteger", "pack", 3, 1).
method("SerializerInteger", "valueArraySearch", 3, 1).
calls("SerializerInteger", "valueArraySearch", "Arrays", "binarySearch").
method("SerializerInteger", "valueArrayBinarySearch", 13, 4).
calls("SerializerInteger", "valueArrayBinarySearch", "DataInput2", "skipBytes").

# mapdb/src/main/java/org/mapdb/serializer/SerializerFourByte.java

class("SerializerFourByte").
method("SerializerFourByte", "unpack", 1, 1).
method("SerializerFourByte", "pack", 1, 1).
method("SerializerFourByte", "isTrusted", 3, 1).
method("SerializerFourByte", "fixedSize", 3, 1).
method("SerializerFourByte", "valueArrayGet", 3, 1).
calls("SerializerFourByte", "valueArrayGet", "SerializerFourByte", "unpack").
method("SerializerFourByte", "valueArraySize", 3, 1).
method("SerializerFourByte", "valueArrayEmpty", 3, 1).
method("SerializerFourByte", "valueArrayPut", 9, 2).
calls("SerializerFourByte", "valueArrayPut", "System", "arraycopy").
method("SerializerFourByte", "valueArrayUpdateVal", 5, 1).
method("SerializerFourByte", "valueArrayFromArray", 7, 2).
method("SerializerFourByte", "valueArrayCopyOfRange", 3, 1).
calls("SerializerFourByte", "valueArrayCopyOfRange", "Arrays", "copyOfRange").
method("SerializerFourByte", "valueArrayDeleteValue", 7, 1).
calls("SerializerFourByte", "valueArrayDeleteValue", "System", "arraycopy").
calls("SerializerFourByte", "valueArrayDeleteValue", "System", "arraycopy").
method("SerializerFourByte", "valueArraySerialize", 4, 2).
calls("SerializerFourByte", "valueArraySerialize", "DataOutput2", "writeInt").
method("SerializerFourByte", "valueArrayDeserialize", 6, 2).
method("SerializerFourByte", "valueArraySearch", 21, 5).
calls("SerializerFourByte", "valueArraySearch", "SerializerFourByte", "valueArraySearch").
method("SerializerFourByte", "valueArrayBinaryGet", 4, 1).
calls("SerializerFourByte", "valueArrayBinaryGet", "DataInput2", "skipBytes").
calls("SerializerFourByte", "valueArrayBinaryGet", "SerializerFourByte", "unpack").

# mapdb/src/main/java/org/mapdb/serializer/CompressLZF.java

class("CompressLZF").
method("CompressLZF", "first", 3, 1).
method("CompressLZF", "next", 3, 1).
method("CompressLZF", "hash", 3, 1).
method("CompressLZF", "compress", 67, 12).
method("CompressLZF", "expand", 26, 7).
calls("CompressLZF", "expand", "DataInput", "readFully").
method("CompressLZF", "expand", 32, 8).
calls("CompressLZF", "expand", "ByteBuffer", "position").
calls("CompressLZF", "expand", "ByteBuffer", "get").
method("CompressLZF", "expand", 27, 7).
calls("CompressLZF", "expand", "System", "arraycopy").

# mapdb/src/main/java/org/mapdb/serializer/SerializerSqlTime.java

class("SerializerSqlTime").
method("SerializerSqlTime", "serialize", 3, 1).
calls("SerializerSqlTime", "serialize", "DataOutput2", "writeLong").
method("SerializerSqlTime", "deserialize", 3, 1).
method("SerializerSqlTime", "unpack", 3, 1).
method("SerializerSqlTime", "pack", 3, 1).
calls("SerializerSqlTime", "pack", "Time", "getTime").
method("SerializerSqlTime", "valueArraySearch", 4, 1).
calls("SerializerSqlTime", "valueArraySearch", "Arrays", "binarySearch").

# mapdb/src/main/java/org/mapdb/serializer/SerializerLongPacked.java

class("SerializerLongPacked").
method("SerializerLongPacked", "serialize", 3, 1).
calls("SerializerLongPacked", "serialize", "DataOutput2", "packLong").
method("SerializerLongPacked", "deserialize", 3, 1).
method("SerializerLongPacked", "valueArraySerialize", 4, 2).
calls("SerializerLongPacked", "valueArraySerialize", "DataOutput2", "packLong").
method("SerializerLongPacked", "valueArrayDeserialize", 5, 1).
calls("SerializerLongPacked", "valueArrayDeserialize", "DataInput2", "unpackLongArray").
method("SerializerLongPacked", "fixedSize", 3, 1).
method("SerializerLongPacked", "valueArrayBinarySearch", 13, 4).
calls("SerializerLongPacked", "valueArrayBinarySearch", "DataInput2", "unpackLongSkip").
method("SerializerLongPacked", "valueArrayBinaryGet", 4, 1).
calls("SerializerLongPacked", "valueArrayBinaryGet", "DataInput2", "unpackLongSkip").
calls("SerializerLongPacked", "valueArrayBinaryGet", "DataInput2", "unpackLong").

# mapdb/src/main/java/org/mapdb/tree/IndexTreeListJava.java

class("IndexTreeListJava").
method("IndexTreeListJava", "dirEmpty", 3, 1).
method("IndexTreeListJava", "dirOffsetFromSlot", 17, 3).
method("IndexTreeListJava", "dirOffsetFromLong", 17, 3).
method("IndexTreeListJava", "dirPut", 16, 2).
calls("IndexTreeListJava", "dirPut", "System", "arraycopy").
method("IndexTreeListJava", "dirRemove", 13, 2).
calls("IndexTreeListJava", "dirRemove", "System", "arraycopy").
calls("IndexTreeListJava", "dirRemove", "System", "arraycopy").
method("IndexTreeListJava", "treeGet", 16, 5).
calls("IndexTreeListJava", "treeGet", "IndexTreeListJava", "treeGetNonBinary").
calls("IndexTreeListJava", "treeGet", "IndexTreeListJava", "treeGetBinary").
method("IndexTreeListJava", "treeGetBinary", 12, 3).
method("IndexTreeListJava", "treeGetNonBinary", 22, 6).
method("IndexTreeListJava", "treeGetNullable", 27, 8).
method("IndexTreeListJava", "treePos", 4, 1).
method("IndexTreeListJava", "treePut", 44, 9).
calls("IndexTreeListJava", "treePut", "Store", "update").
calls("IndexTreeListJava", "treePut", "Store", "update").
calls("IndexTreeListJava", "treePut", "Store", "update").
method("IndexTreeListJava", "treePutSub", 22, 5).
calls("IndexTreeListJava", "treePutSub", "Store", "put").
method("IndexTreeListJava", "treeRemove", 37, 9).
calls("IndexTreeListJava", "treeRemove", "IndexTreeListJava", "treeRemove").
calls("IndexTreeListJava", "treeRemove", "Store", "update").
method("IndexTreeListJava", "treeRemoveCollapsing", 53, 12).
calls("IndexTreeListJava", "treeRemoveCollapsing", "Store", "delete").
calls("IndexTreeListJava", "treeRemoveCollapsing", "Store", "update").
calls("IndexTreeListJava", "treeRemoveCollapsing", "Store", "delete").
calls("IndexTreeListJava", "treeRemoveCollapsing", "Store", "update").
method("IndexTreeListJava", "treeIter", 38, 10).
method("IndexTreeListJava", "treeFold", 18, 5).
method("IndexTreeListJava", "treeClear", 3, 1).
calls("IndexTreeListJava", "treeClear", "IndexTreeListJava", "treeClear").
method("IndexTreeListJava", "treeClear", 17, 5).
calls("IndexTreeListJava", "treeClear", "Store", "update").
calls("IndexTreeListJava", "treeClear", "Store", "delete").
calls("IndexTreeListJava", "treeClear", "IndexTreeListJava", "treeClear").
method("IndexTreeListJava", "treeLast", 21, 6).

# mapdb/src/main/java/org/mapdb/tree/BTreeMapJava.java

class("BTreeMapJava").
method("BTreeMapJava", "findChild", 19, 5).
method("BTreeMapJava", "leafGet", 4, 1).
calls("BTreeMapJava", "leafGet", "BTreeMapJava", "leafGet").
method("BTreeMapJava", "leafGet", 22, 6).
calls("BTreeMapJava", "leafGet", "GroupSerializer", "valueArrayGet").
method("BTreeMapJava", "arrayPut", 8, 2).
calls("BTreeMapJava", "arrayPut", "System", "arraycopy").
method("BTreeMapJava", "arrayPut", 8, 2).
calls("BTreeMapJava", "arrayPut", "System", "arraycopy").
method("BTreeMapJava", "toList", 6, 2).
calls("BTreeMapJava", "toList", "List", "add").

# mapdb/src/main/java/org/mapdb/tuple/Tuple3.java

class("Tuple3").
method("Tuple3", "compareTo", 3, 1).
calls("Tuple3", "compareTo", "Tuple.TUPLE3_COMPARATOR", "compare").
method("Tuple3", "toString", 3, 1).
method("Tuple3", "equals", 10, 3).
method("Tuple3", "hashCode", 6, 1).

# mapdb/src/main/java/org/mapdb/tuple/Tuple6Serializer.java

class("Tuple6Serializer").
method("Tuple6Serializer", "valueArraySerialize", 52, 12).
calls("Tuple6Serializer", "valueArraySerialize", "Serializer", "serialize").
calls("Tuple6Serializer", "valueArraySerialize", "DataOutput2", "packInt").
calls("Tuple6Serializer", "valueArraySerialize", "Serializer", "serialize").
calls("Tuple6Serializer", "valueArraySerialize", "DataOutput2", "packInt").
calls("Tuple6Serializer", "valueArraySerialize", "Serializer", "serialize").
calls("Tuple6Serializer", "valueArraySerialize", "DataOutput2", "packInt").
calls("Tuple6Serializer", "valueArraySerialize", "Serializer", "serialize").
calls("Tuple6Serializer", "valueArraySerialize", "DataOutput2", "packInt").
calls("Tuple6Serializer", "valueArraySerialize", "Serializer", "serialize").
calls("Tuple6Serializer", "valueArraySerialize", "DataOutput2", "packInt").
calls("Tuple6Serializer", "valueArraySerialize", "Serializer", "serialize").
method("Tuple6Serializer", "valueArrayDeserialize", 42, 7).
method("Tuple6Serializer", "equals", 10, 3).
method("Tuple6Serializer", "hashCode", 14, 1).
method("Tuple6Serializer", "serialize", 8, 1).
calls("Tuple6Serializer", "serialize", "Serializer", "serialize").
calls("Tuple6Serializer", "serialize", "Serializer", "serialize").
calls("Tuple6Serializer", "serialize", "Serializer", "serialize").
calls("Tuple6Serializer", "serialize", "Serializer", "serialize").
calls("Tuple6Serializer", "serialize", "Serializer", "serialize").
calls("Tuple6Serializer", "serialize", "Serializer", "serialize").
method("Tuple6Serializer", "deserialize", 3, 1).
method("Tuple6Serializer", "compare", 23, 6).
calls("Tuple6Serializer", "compare", "Tuple6Serializer", "compare2").
method("Tuple6Serializer", "equals", 3, 1).
method("Tuple6Serializer", "hashCode", 9, 1).
method("Tuple6Serializer", "callbackDB", 38, 13).
method("Tuple6Serializer", "nextValue", 3, 1).

# mapdb/src/main/java/org/mapdb/tuple/Tuple2Serializer.java

class("Tuple2Serializer").
method("Tuple2Serializer", "valueArraySerialize", 16, 4).
calls("Tuple2Serializer", "valueArraySerialize", "Serializer", "serialize").
calls("Tuple2Serializer", "valueArraySerialize", "DataOutput2", "packInt").
calls("Tuple2Serializer", "valueArraySerialize", "Serializer", "serialize").
method("Tuple2Serializer", "valueArrayDeserialize", 14, 3).
method("Tuple2Serializer", "equals", 10, 3).
method("Tuple2Serializer", "hashCode", 6, 1).
method("Tuple2Serializer", "serialize", 4, 1).
calls("Tuple2Serializer", "serialize", "Serializer", "serialize").
calls("Tuple2Serializer", "serialize", "Serializer", "serialize").
method("Tuple2Serializer", "deserialize", 3, 1).
method("Tuple2Serializer", "compare", 7, 2).
calls("Tuple2Serializer", "compare", "Tuple2Serializer", "compare2").
method("Tuple2Serializer", "equals", 3, 1).
method("Tuple2Serializer", "hashCode", 5, 1).
method("Tuple2Serializer", "callbackDB", 14, 5).
method("Tuple2Serializer", "nextValue", 3, 1).

# mapdb/src/main/java/org/mapdb/tuple/Tuple2.java

class("Tuple2").
method("Tuple2", "compareTo", 3, 1).
calls("Tuple2", "compareTo", "Tuple.TUPLE2_COMPARATOR", "compare").
method("Tuple2", "equals", 10, 3).
method("Tuple2", "hashCode", 5, 1).
method("Tuple2", "toString", 3, 1).

# mapdb/src/main/java/org/mapdb/tuple/Tuple6.java

class("Tuple6").
method("Tuple6", "compareTo", 3, 1).
calls("Tuple6", "compareTo", "Tuple.TUPLE6_COMPARATOR", "compare").
method("Tuple6", "toString", 3, 1).
method("Tuple6", "equals", 10, 3).
method("Tuple6", "hashCode", 9, 1).

# mapdb/src/main/java/org/mapdb/tuple/Tuple4.java

class("Tuple4").
method("Tuple4", "compareTo", 3, 1).
calls("Tuple4", "compareTo", "Tuple.TUPLE4_COMPARATOR", "compare").
method("Tuple4", "toString", 3, 1).
method("Tuple4", "equals", 10, 3).
method("Tuple4", "hashCode", 7, 1).

# mapdb/src/main/java/org/mapdb/tuple/Tuple3Serializer.java

class("Tuple3Serializer").
method("Tuple3Serializer", "valueArraySerialize", 25, 6).
calls("Tuple3Serializer", "valueArraySerialize", "Serializer", "serialize").
calls("Tuple3Serializer", "valueArraySerialize", "DataOutput2", "packInt").
calls("Tuple3Serializer", "valueArraySerialize", "Serializer", "serialize").
calls("Tuple3Serializer", "valueArraySerialize", "DataOutput2", "packInt").
calls("Tuple3Serializer", "valueArraySerialize", "Serializer", "serialize").
method("Tuple3Serializer", "valueArrayDeserialize", 21, 4).
method("Tuple3Serializer", "equals", 10, 3).
method("Tuple3Serializer", "hashCode", 8, 1).
method("Tuple3Serializer", "serialize", 5, 1).
calls("Tuple3Serializer", "serialize", "Serializer", "serialize").
calls("Tuple3Serializer", "serialize", "Serializer", "serialize").
calls("Tuple3Serializer", "serialize", "Serializer", "serialize").
method("Tuple3Serializer", "deserialize", 3, 1).
method("Tuple3Serializer", "compare", 11, 3).
calls("Tuple3Serializer", "compare", "Tuple3Serializer", "compare2").
method("Tuple3Serializer", "equals", 3, 1).
method("Tuple3Serializer", "hashCode", 6, 1).
method("Tuple3Serializer", "callbackDB", 20, 7).
method("Tuple3Serializer", "nextValue", 3, 1).

# mapdb/src/main/java/org/mapdb/tuple/Tuple4Serializer.java

class("Tuple4Serializer").
method("Tuple4Serializer", "valueArraySerialize", 34, 8).
calls("Tuple4Serializer", "valueArraySerialize", "Serializer", "serialize").
calls("Tuple4Serializer", "valueArraySerialize", "DataOutput2", "packInt").
calls("Tuple4Serializer", "valueArraySerialize", "Serializer", "serialize").
calls("Tuple4Serializer", "valueArraySerialize", "DataOutput2", "packInt").
calls("Tuple4Serializer", "valueArraySerialize", "Serializer", "serialize").
calls("Tuple4Serializer", "valueArraySerialize", "DataOutput2", "packInt").
calls("Tuple4Serializer", "valueArraySerialize", "Serializer", "serialize").
method("Tuple4Serializer", "valueArrayDeserialize", 28, 5).
method("Tuple4Serializer", "equals", 10, 3).
method("Tuple4Serializer", "hashCode", 10, 1).
method("Tuple4Serializer", "serialize", 6, 1).
calls("Tuple4Serializer", "serialize", "Serializer", "serialize").
calls("Tuple4Serializer", "serialize", "Serializer", "serialize").
calls("Tuple4Serializer", "serialize", "Serializer", "serialize").
calls("Tuple4Serializer", "serialize", "Serializer", "serialize").
method("Tuple4Serializer", "deserialize", 3, 1).
method("Tuple4Serializer", "compare", 15, 4).
calls("Tuple4Serializer", "compare", "Tuple4Serializer", "compare2").
method("Tuple4Serializer", "equals", 3, 1).
method("Tuple4Serializer", "hashCode", 7, 1).
method("Tuple4Serializer", "callbackDB", 26, 9).
method("Tuple4Serializer", "nextValue", 3, 1).

# mapdb/src/main/java/org/mapdb/tuple/Tuple5Serializer.java

class("Tuple5Serializer").
method("Tuple5Serializer", "valueArraySerialize", 43, 10).
calls("Tuple5Serializer", "valueArraySerialize", "Serializer", "serialize").
calls("Tuple5Serializer", "valueArraySerialize", "DataOutput2", "packInt").
calls("Tuple5Serializer", "valueArraySerialize", "Serializer", "serialize").
calls("Tuple5Serializer", "valueArraySerialize", "DataOutput2", "packInt").
calls("Tuple5Serializer", "valueArraySerialize", "Serializer", "serialize").
calls("Tuple5Serializer", "valueArraySerialize", "DataOutput2", "packInt").
calls("Tuple5Serializer", "valueArraySerialize", "Serializer", "serialize").
calls("Tuple5Serializer", "valueArraySerialize", "DataOutput2", "packInt").
calls("Tuple5Serializer", "valueArraySerialize", "Serializer", "serialize").
method("Tuple5Serializer", "valueArrayDeserialize", 35, 6).
method("Tuple5Serializer", "equals", 10, 3).
method("Tuple5Serializer", "hashCode", 12, 1).
method("Tuple5Serializer", "serialize", 7, 1).
calls("Tuple5Serializer", "serialize", "Serializer", "serialize").
calls("Tuple5Serializer", "serialize", "Serializer", "serialize").
calls("Tuple5Serializer", "serialize", "Serializer", "serialize").
calls("Tuple5Serializer", "serialize", "Serializer", "serialize").
calls("Tuple5Serializer", "serialize", "Serializer", "serialize").
method("Tuple5Serializer", "deserialize", 3, 1).
method("Tuple5Serializer", "compare", 19, 5).
calls("Tuple5Serializer", "compare", "Tuple5Serializer", "compare2").
method("Tuple5Serializer", "equals", 3, 1).
method("Tuple5Serializer", "hashCode", 8, 1).
method("Tuple5Serializer", "callbackDB", 32, 11).
method("Tuple5Serializer", "nextValue", 3, 1).

# mapdb/src/main/java/org/mapdb/tuple/Tuple.java

class("Tuple").
method("Tuple", "eq", 3, 1).
method("Tuple", "compare2", 12, 4).
calls("Tuple", "compare2", "Comparator", "compare").
method("Tuple", "HI", 3, 1).
method("Tuple", "hiIfNull", 3, 1).
method("Tuple", "t2", 3, 1).
method("Tuple", "t3", 3, 1).
method("Tuple", "t4", 3, 1).
method("Tuple", "t5", 3, 1).
method("Tuple", "t6", 3, 1).

# mapdb/src/main/java/org/mapdb/tuple/Tuple5.java

class("Tuple5").
method("Tuple5", "compareTo", 3, 1).
calls("Tuple5", "compareTo", "Tuple.TUPLE5_COMPARATOR", "compare").
method("Tuple5", "toString", 3, 1).
method("Tuple5", "equals", 10, 3).
method("Tuple5", "hashCode", 8, 1).

# mapdb/src/main/java/org/mapdb/volume/ByteBufferMemoryVol.java

class("ByteBufferMemoryVol").
method("ByteBufferMemoryVol", "toString", 3, 1).
method("ByteBufferMemoryVol", "ensureAvailable", 26, 6).
calls("ByteBufferMemoryVol", "ensureAvailable", "growLock", "lock").
calls("ByteBufferMemoryVol", "ensureAvailable", "growLock", "unlock").
method("ByteBufferMemoryVol", "truncate", 24, 6).
calls("ByteBufferMemoryVol", "truncate", "ByteBufferMemoryVol", "ensureAvailable").
calls("ByteBufferMemoryVol", "truncate", "growLock", "lock").
calls("ByteBufferMemoryVol", "truncate", "ByteBufferMemoryVol", "unmap").
calls("ByteBufferMemoryVol", "truncate", "growLock", "unlock").
method("ByteBufferMemoryVol", "close", 17, 5).
calls("ByteBufferMemoryVol", "close", "closed", "compareAndSet").
calls("ByteBufferMemoryVol", "close", "growLock", "lock").
calls("ByteBufferMemoryVol", "close", "ByteBufferMemoryVol", "unmap").
calls("ByteBufferMemoryVol", "close", "Arrays", "fill").
calls("ByteBufferMemoryVol", "close", "growLock", "unlock").
method("ByteBufferMemoryVol", "sync", 1, 1).
method("ByteBufferMemoryVol", "length", 3, 1).
method("ByteBufferMemoryVol", "isReadOnly", 3, 1).
method("ByteBufferMemoryVol", "getFile", 3, 1).
method("ByteBufferMemoryVol", "getFileLocked", 3, 1).

# mapdb/src/main/java/org/mapdb/volume/ByteArrayVol.java

class("ByteArrayVol").
method("ByteArrayVol", "getSlice", 8, 2).
method("ByteArrayVol", "ensureAvailable", 22, 5).
calls("ByteArrayVol", "ensureAvailable", "ReentrantLock", "lock").
calls("ByteArrayVol", "ensureAvailable", "ReentrantLock", "unlock").
method("ByteArrayVol", "truncate", 18, 4).
calls("ByteArrayVol", "truncate", "ByteArrayVol", "ensureAvailable").
calls("ByteArrayVol", "truncate", "ReentrantLock", "lock").
calls("ByteArrayVol", "truncate", "ReentrantLock", "unlock").
method("ByteArrayVol", "putLong", 5, 1).
calls("ByteArrayVol", "putLong", "DataIO", "putLong").
method("ByteArrayVol", "putInt", 8, 1).
method("ByteArrayVol", "putByte", 4, 1).
method("ByteArrayVol", "putData", 5, 1).
calls("ByteArrayVol", "putData", "System", "arraycopy").
method("ByteArrayVol", "putData", 5, 1).
calls("ByteArrayVol", "putData", "ByteBuffer", "get").
method("ByteArrayVol", "copyTo", 5, 1).
calls("ByteArrayVol", "copyTo", "Volume", "putData").
method("ByteArrayVol", "putDataOverlap", 15, 3).
calls("ByteArrayVol", "putDataOverlap", "System", "arraycopy").
calls("ByteArrayVol", "putDataOverlap", "ByteArrayVol", "putData").
method("ByteArrayVol", "getDataInputOverlap", 17, 3).
calls("ByteArrayVol", "getDataInputOverlap", "System", "arraycopy").
calls("ByteArrayVol", "getDataInputOverlap", "ByteArrayVol", "getDataInput").
method("ByteArrayVol", "clear", 12, 3).
calls("ByteArrayVol", "clear", "System", "arraycopy").
method("ByteArrayVol", "getLong", 5, 1).
calls("ByteArrayVol", "getLong", "DataIO", "getLong").
method("ByteArrayVol", "getInt", 9, 2).
method("ByteArrayVol", "getByte", 4, 1).
method("ByteArrayVol", "getDataInput", 5, 1).
method("ByteArrayVol", "getData", 5, 1).
calls("ByteArrayVol", "getData", "System", "arraycopy").
method("ByteArrayVol", "close", 4, 1).
calls("ByteArrayVol", "close", "closed", "set").
method("ByteArrayVol", "sync", 1, 1).
method("ByteArrayVol", "sliceSize", 3, 1).
method("ByteArrayVol", "isSliced", 3, 1).
method("ByteArrayVol", "length", 3, 1).
method("ByteArrayVol", "isReadOnly", 3, 1).
method("ByteArrayVol", "getFile", 3, 1).
method("ByteArrayVol", "getFileLocked", 3, 1).

# mapdb/src/main/java/org/mapdb/volume/MappedFileVolSingle.java

class("MappedFileVolSingle").
method("MappedFileVolSingle", "close", 16, 5).
calls("MappedFileVolSingle", "close", "closed", "compareAndSet").
calls("MappedFileVolSingle", "close", "FileLock", "release").
calls("MappedFileVolSingle", "close", "RandomAccessFile", "close").
calls("MappedFileVolSingle", "close", "ByteBufferVol", "unmap").
method("MappedFileVolSingle", "sync", 8, 3).
method("MappedFileVolSingle", "length", 3, 1).
calls("MappedFileVolSingle", "length", "File", "length").
method("MappedFileVolSingle", "isReadOnly", 3, 1).
method("MappedFileVolSingle", "getFile", 3, 1).
method("MappedFileVolSingle", "getFileLocked", 3, 1).
method("MappedFileVolSingle", "truncate", 1, 1).
method("MappedFileVolSingle", "fileLoad", 4, 1).

# mapdb/src/main/java/org/mapdb/volume/ByteBufferMemoryVolSingle.java

class("ByteBufferMemoryVolSingle").
method("ByteBufferMemoryVolSingle", "toString", 3, 1).
method("ByteBufferMemoryVolSingle", "truncate", 1, 1).
method("ByteBufferMemoryVolSingle", "close", 9, 3).
calls("ByteBufferMemoryVolSingle", "close", "closed", "compareAndSet").
calls("ByteBufferMemoryVolSingle", "close", "ByteBufferVol", "unmap").
method("ByteBufferMemoryVolSingle", "sync", 1, 1).
method("ByteBufferMemoryVolSingle", "length", 3, 1).
method("ByteBufferMemoryVolSingle", "isReadOnly", 3, 1).
method("ByteBufferMemoryVolSingle", "getFile", 3, 1).
method("ByteBufferMemoryVolSingle", "getFileLocked", 3, 1).

# mapdb/src/main/java/org/mapdb/volume/RandomAccessFileVol.java

class("RandomAccessFileVol").
method("RandomAccessFileVol", "ensureAvailable", 8, 3).
calls("RandomAccessFileVol", "ensureAvailable", "RandomAccessFile", "setLength").
method("RandomAccessFileVol", "truncate", 6, 2).
calls("RandomAccessFileVol", "truncate", "RandomAccessFile", "setLength").
method("RandomAccessFileVol", "putLong", 10, 3).
calls("RandomAccessFileVol", "putLong", "RandomAccessFile", "seek").
calls("RandomAccessFileVol", "putLong", "RandomAccessFile", "writeLong").
method("RandomAccessFileVol", "putInt", 10, 3).
calls("RandomAccessFileVol", "putInt", "RandomAccessFile", "seek").
calls("RandomAccessFileVol", "putInt", "RandomAccessFile", "writeInt").
method("RandomAccessFileVol", "putByte", 10, 3).
calls("RandomAccessFileVol", "putByte", "RandomAccessFile", "seek").
calls("RandomAccessFileVol", "putByte", "RandomAccessFile", "writeByte").
method("RandomAccessFileVol", "putData", 10, 3).
calls("RandomAccessFileVol", "putData", "RandomAccessFile", "seek").
calls("RandomAccessFileVol", "putData", "RandomAccessFile", "write").
method("RandomAccessFileVol", "putData", 14, 3).
calls("RandomAccessFileVol", "putData", "ByteBuffer", "get").
calls("RandomAccessFileVol", "putData", "RandomAccessFileVol", "putData").
method("RandomAccessFileVol", "getLong", 7, 2).
calls("RandomAccessFileVol", "getLong", "RandomAccessFile", "seek").
calls("RandomAccessFileVol", "getLong", "RandomAccessFile", "readLong").
method("RandomAccessFileVol", "getInt", 7, 2).
calls("RandomAccessFileVol", "getInt", "RandomAccessFile", "seek").
calls("RandomAccessFileVol", "getInt", "RandomAccessFile", "readInt").
method("RandomAccessFileVol", "getByte", 7, 2).
calls("RandomAccessFileVol", "getByte", "RandomAccessFile", "seek").
calls("RandomAccessFileVol", "getByte", "RandomAccessFile", "readByte").
method("RandomAccessFileVol", "getDataInput", 9, 2).
calls("RandomAccessFileVol", "getDataInput", "RandomAccessFile", "seek").
calls("RandomAccessFileVol", "getDataInput", "RandomAccessFile", "readFully").
method("RandomAccessFileVol", "getData", 7, 2).
calls("RandomAccessFileVol", "getData", "RandomAccessFile", "seek").
calls("RandomAccessFileVol", "getData", "RandomAccessFile", "readFully").
method("RandomAccessFileVol", "close", 12, 4).
calls("RandomAccessFileVol", "close", "closed", "compareAndSet").
calls("RandomAccessFileVol", "close", "FileLock", "release").
calls("RandomAccessFileVol", "close", "RandomAccessFile", "close").
method("RandomAccessFileVol", "sync", 6, 2).
calls("RandomAccessFileVol", "sync", "RandomAccessFile", "getFD").
method("RandomAccessFileVol", "sliceSize", 3, 1).
method("RandomAccessFileVol", "isSliced", 3, 1).
method("RandomAccessFileVol", "length", 6, 2).
calls("RandomAccessFileVol", "length", "RandomAccessFile", "length").
method("RandomAccessFileVol", "getFile", 3, 1).
method("RandomAccessFileVol", "getFileLocked", 3, 1).
method("RandomAccessFileVol", "clear", 6, 2).
calls("RandomAccessFileVol", "clear", "RandomAccessFileVol", "clearRAF").
method("RandomAccessFileVol", "clearRAF", 7, 2).
calls("RandomAccessFileVol", "clearRAF", "RandomAccessFile", "seek").
calls("RandomAccessFileVol", "clearRAF", "RandomAccessFile", "write").
method("RandomAccessFileVol", "putUnsignedShort", 8, 2).
calls("RandomAccessFileVol", "putUnsignedShort", "RandomAccessFile", "seek").
calls("RandomAccessFileVol", "putUnsignedShort", "RandomAccessFile", "write").
calls("RandomAccessFileVol", "putUnsignedShort", "RandomAccessFile", "write").
method("RandomAccessFileVol", "getUnsignedShort", 7, 2).
calls("RandomAccessFileVol", "getUnsignedShort", "RandomAccessFile", "seek").
method("RandomAccessFileVol", "getSixLong", 7, 2).
calls("RandomAccessFileVol", "getSixLong", "RandomAccessFile", "seek").
method("RandomAccessFileVol", "putSixLong", 15, 3).
calls("RandomAccessFileVol", "putSixLong", "RandomAccessFile", "seek").
calls("RandomAccessFileVol", "putSixLong", "RandomAccessFile", "write").
calls("RandomAccessFileVol", "putSixLong", "RandomAccessFile", "write").
calls("RandomAccessFileVol", "putSixLong", "RandomAccessFile", "write").
calls("RandomAccessFileVol", "putSixLong", "RandomAccessFile", "write").
calls("RandomAccessFileVol", "putSixLong", "RandomAccessFile", "write").
calls("RandomAccessFileVol", "putSixLong", "RandomAccessFile", "write").
method("RandomAccessFileVol", "putPackedLong", 15, 3).
calls("RandomAccessFileVol", "putPackedLong", "RandomAccessFile", "seek").
calls("RandomAccessFileVol", "putPackedLong", "RandomAccessFile", "write").
calls("RandomAccessFileVol", "putPackedLong", "RandomAccessFile", "write").
method("RandomAccessFileVol", "getPackedLong", 14, 3).
calls("RandomAccessFileVol", "getPackedLong", "RandomAccessFile", "seek").
method("RandomAccessFileVol", "isReadOnly", 3, 1).

# mapdb/src/main/java/org/mapdb/volume/ByteBufferVol.java

class("ByteBufferVol").
method("ByteBufferVol", "getSlice", 8, 2).
method("ByteBufferVol", "putLong", 6, 2).
calls("ByteBufferVol", "putLong", "ByteBufferVol", "getSlice").
method("ByteBufferVol", "putInt", 6, 2).
calls("ByteBufferVol", "putInt", "ByteBufferVol", "getSlice").
method("ByteBufferVol", "putByte", 6, 2).
calls("ByteBufferVol", "putByte", "ByteBufferVol", "getSlice").
method("ByteBufferVol", "putData", 9, 2).
calls("ByteBufferVol", "putData", "ByteBuffer", "position").
calls("ByteBufferVol", "putData", "ByteBuffer", "put").
method("ByteBufferVol", "putData", 9, 2).
calls("ByteBufferVol", "putData", "ByteBuffer", "position").
calls("ByteBufferVol", "putData", "ByteBuffer", "put").
method("ByteBufferVol", "copyTo", 7, 1).
calls("ByteBufferVol", "copyTo", "ByteBuffer", "position").
calls("ByteBufferVol", "copyTo", "ByteBuffer", "limit").
calls("ByteBufferVol", "copyTo", "Volume", "putData").
method("ByteBufferVol", "getData", 6, 1).
calls("ByteBufferVol", "getData", "ByteBuffer", "position").
calls("ByteBufferVol", "getData", "ByteBuffer", "get").
method("ByteBufferVol", "getLong", 3, 1).
calls("ByteBufferVol", "getLong", "ByteBufferVol", "getSlice").
method("ByteBufferVol", "getInt", 3, 1).
calls("ByteBufferVol", "getInt", "ByteBufferVol", "getSlice").
method("ByteBufferVol", "getByte", 3, 1).
calls("ByteBufferVol", "getByte", "ByteBufferVol", "getSlice").
method("ByteBufferVol", "getDataInput", 3, 1).
method("ByteBufferVol", "putDataOverlap", 16, 3).
calls("ByteBufferVol", "putDataOverlap", "ByteBuffer", "position").
calls("ByteBufferVol", "putDataOverlap", "ByteBuffer", "limit").
calls("ByteBufferVol", "putDataOverlap", "ByteBuffer", "put").
calls("ByteBufferVol", "putDataOverlap", "ByteBufferVol", "putData").
method("ByteBufferVol", "getDataInputOverlap", 18, 3).
calls("ByteBufferVol", "getDataInputOverlap", "ByteBuffer", "position").
calls("ByteBufferVol", "getDataInputOverlap", "ByteBuffer", "limit").
calls("ByteBufferVol", "getDataInputOverlap", "ByteBuffer", "get").
calls("ByteBufferVol", "getDataInputOverlap", "ByteBufferVol", "getDataInput").
method("ByteBufferVol", "putUnsignedShort", 6, 1).
calls("ByteBufferVol", "putUnsignedShort", "ByteBuffer", "put").
calls("ByteBufferVol", "putUnsignedShort", "ByteBuffer", "put").
method("ByteBufferVol", "getUnsignedShort", 5, 1).
method("ByteBufferVol", "getUnsignedByte", 5, 1).
method("ByteBufferVol", "putUnsignedByte", 5, 1).
calls("ByteBufferVol", "putUnsignedByte", "ByteBuffer", "put").
method("ByteBufferVol", "toByte", 3, 1).
method("ByteBufferVol", "toByte", 3, 1).
method("ByteBufferVol", "getSixLong", 5, 1).
method("ByteBufferVol", "putSixLong", 13, 2).
calls("ByteBufferVol", "putSixLong", "ByteBuffer", "put").
calls("ByteBufferVol", "putSixLong", "ByteBuffer", "put").
calls("ByteBufferVol", "putSixLong", "ByteBuffer", "put").
calls("ByteBufferVol", "putSixLong", "ByteBuffer", "put").
calls("ByteBufferVol", "putSixLong", "ByteBuffer", "put").
calls("ByteBufferVol", "putSixLong", "ByteBuffer", "put").
method("ByteBufferVol", "putPackedLong", 12, 2).
calls("ByteBufferVol", "putPackedLong", "ByteBuffer", "put").
calls("ByteBufferVol", "putPackedLong", "ByteBuffer", "put").
method("ByteBufferVol", "getPackedLong", 11, 2).
method("ByteBufferVol", "clear", 14, 3).
calls("ByteBufferVol", "clear", "ByteBuffer", "position").
calls("ByteBufferVol", "clear", "ByteBuffer", "put").
method("ByteBufferVol", "isSliced", 3, 1).
method("ByteBufferVol", "sliceSize", 3, 1).
method("ByteBufferVol", "unmap", 16, 4).
calls("ByteBufferVol", "unmap", "Cleaner", "clean").

# mapdb/src/main/java/org/mapdb/volume/MappedFileVol.java

class("MappedFileVol").
method("MappedFileVol", "ensureAvailable", 29, 7).
calls("MappedFileVol", "ensureAvailable", "growLock", "lock").
calls("MappedFileVol", "ensureAvailable", "RandomAccessFileVol", "clearRAF").
calls("MappedFileVol", "ensureAvailable", "growLock", "unlock").
method("MappedFileVol", "close", 24, 7).
calls("MappedFileVol", "close", "closed", "compareAndSet").
calls("MappedFileVol", "close", "growLock", "lock").
calls("MappedFileVol", "close", "FileLock", "release").
calls("MappedFileVol", "close", "FileChannel", "close").
calls("MappedFileVol", "close", "RandomAccessFile", "close").
calls("MappedFileVol", "close", "MappedFileVol", "unmap").
calls("MappedFileVol", "close", "Arrays", "fill").
calls("MappedFileVol", "close", "growLock", "unlock").
method("MappedFileVol", "sync", 19, 5).
calls("MappedFileVol", "sync", "growLock", "lock").
calls("MappedFileVol", "sync", "MappedByteBuffer", "force").
calls("MappedFileVol", "sync", "growLock", "unlock").
method("MappedFileVol", "length", 3, 1).
calls("MappedFileVol", "length", "File", "length").
method("MappedFileVol", "isReadOnly", 3, 1).
method("MappedFileVol", "getFile", 3, 1).
method("MappedFileVol", "getFileLocked", 3, 1).
method("MappedFileVol", "truncate", 45, 14).
calls("MappedFileVol", "truncate", "MappedFileVol", "ensureAvailable").
calls("MappedFileVol", "truncate", "growLock", "lock").
calls("MappedFileVol", "truncate", "MappedFileVol", "unmap").
calls("MappedFileVol", "truncate", "MappedFileVol", "unmap").
calls("MappedFileVol", "truncate", "FileChannel", "truncate").
calls("MappedFileVol", "truncate", "growLock", "unlock").
method("MappedFileVol", "fileLoad", 8, 3).

# mapdb/src/main/java/org/mapdb/volume/VolumeFactory.java

class("VolumeFactory").
method("VolumeFactory", "makeVolume", 1, 1).
method("VolumeFactory", "makeVolume", 3, 1).
calls("VolumeFactory", "makeVolume", "VolumeFactory", "makeVolume").
method("VolumeFactory", "makeVolume", 3, 1).
calls("VolumeFactory", "makeVolume", "VolumeFactory", "makeVolume").
method("VolumeFactory", "exists", 1, 1).
method("VolumeFactory", "wrap", 3, 1).
method("VolumeFactory", "handlesReadonly", 1, 1).

# mapdb/src/main/java/org/mapdb/volume/ByteBufferVolSingle.java

class("ByteBufferVolSingle").
method("ByteBufferVolSingle", "ensureAvailable", 1, 1).
method("ByteBufferVolSingle", "putLong", 6, 2).
calls("ByteBufferVolSingle", "putLong", "ByteBuffer", "putLong").
method("ByteBufferVolSingle", "putInt", 6, 2).
calls("ByteBufferVolSingle", "putInt", "ByteBuffer", "putInt").
method("ByteBufferVolSingle", "putByte", 6, 2).
calls("ByteBufferVolSingle", "putByte", "ByteBuffer", "put").
method("ByteBufferVolSingle", "putData", 9, 2).
calls("ByteBufferVolSingle", "putData", "ByteBuffer", "position").
calls("ByteBufferVolSingle", "putData", "ByteBuffer", "put").
method("ByteBufferVolSingle", "putData", 9, 2).
calls("ByteBufferVolSingle", "putData", "ByteBuffer", "position").
calls("ByteBufferVolSingle", "putData", "ByteBuffer", "put").
method("ByteBufferVolSingle", "copyTo", 7, 1).
calls("ByteBufferVolSingle", "copyTo", "ByteBuffer", "position").
calls("ByteBufferVolSingle", "copyTo", "ByteBuffer", "limit").
calls("ByteBufferVolSingle", "copyTo", "Volume", "putData").
method("ByteBufferVolSingle", "getData", 6, 1).
calls("ByteBufferVolSingle", "getData", "ByteBuffer", "position").
calls("ByteBufferVolSingle", "getData", "ByteBuffer", "get").
method("ByteBufferVolSingle", "getLong", 3, 1).
calls("ByteBufferVolSingle", "getLong", "ByteBuffer", "getLong").
method("ByteBufferVolSingle", "getInt", 3, 1).
calls("ByteBufferVolSingle", "getInt", "ByteBuffer", "getInt").
method("ByteBufferVolSingle", "getByte", 3, 1).
calls("ByteBufferVolSingle", "getByte", "ByteBuffer", "get").
method("ByteBufferVolSingle", "getDataInput", 3, 1).
method("ByteBufferVolSingle", "putDataOverlap", 3, 1).
calls("ByteBufferVolSingle", "putDataOverlap", "ByteBufferVolSingle", "putData").
method("ByteBufferVolSingle", "getDataInputOverlap", 3, 1).
calls("ByteBufferVolSingle", "getDataInputOverlap", "ByteBufferVolSingle", "getDataInput").
method("ByteBufferVolSingle", "clear", 11, 2).
calls("ByteBufferVolSingle", "clear", "ByteBuffer", "position").
calls("ByteBufferVolSingle", "clear", "ByteBuffer", "put").
method("ByteBufferVolSingle", "sliceSize", 3, 1).
method("ByteBufferVolSingle", "isSliced", 3, 1).

# mapdb/src/main/java/org/mapdb/volume/SingleByteArrayVol.java

class("SingleByteArrayVol").
method("SingleByteArrayVol", "ensureAvailable", 5, 2).
method("SingleByteArrayVol", "truncate", 1, 1).
method("SingleByteArrayVol", "putLong", 3, 1).
calls("SingleByteArrayVol", "putLong", "DataIO", "putLong").
method("SingleByteArrayVol", "putInt", 7, 1).
method("SingleByteArrayVol", "putByte", 3, 1).
method("SingleByteArrayVol", "putData", 3, 1).
calls("SingleByteArrayVol", "putData", "System", "arraycopy").
method("SingleByteArrayVol", "putData", 3, 1).
calls("SingleByteArrayVol", "putData", "ByteBuffer", "get").
method("SingleByteArrayVol", "copyTo", 3, 1).
calls("SingleByteArrayVol", "copyTo", "Volume", "putData").
method("SingleByteArrayVol", "clear", 8, 2).
calls("SingleByteArrayVol", "clear", "System", "arraycopy").
method("SingleByteArrayVol", "getLong", 3, 1).
calls("SingleByteArrayVol", "getLong", "DataIO", "getLong").
method("SingleByteArrayVol", "getInt", 8, 2).
method("SingleByteArrayVol", "getByte", 3, 1).
method("SingleByteArrayVol", "getDataInput", 3, 1).
method("SingleByteArrayVol", "getData", 3, 1).
calls("SingleByteArrayVol", "getData", "System", "arraycopy").
method("SingleByteArrayVol", "close", 5, 2).
calls("SingleByteArrayVol", "close", "closed", "compareAndSet").
method("SingleByteArrayVol", "sync", 1, 1).
method("SingleByteArrayVol", "sliceSize", 3, 1).
method("SingleByteArrayVol", "isSliced", 3, 1).
method("SingleByteArrayVol", "length", 3, 1).
method("SingleByteArrayVol", "isReadOnly", 3, 1).
method("SingleByteArrayVol", "getFile", 3, 1).
method("SingleByteArrayVol", "getFileLocked", 3, 1).

# mapdb/src/main/java/org/mapdb/volume/FileChannelVol.java

class("FileChannelVol").
method("FileChannelVol", "checkFolder", 18, 6).
calls("FileChannelVol", "checkFolder", "File", "canRead").
method("FileChannelVol", "ensureAvailable", 14, 3).
calls("FileChannelVol", "ensureAvailable", "Lock", "lock").
calls("FileChannelVol", "ensureAvailable", "FileChannel", "position").
calls("FileChannelVol", "ensureAvailable", "FileChannel", "write").
calls("FileChannelVol", "ensureAvailable", "Lock", "unlock").
method("FileChannelVol", "truncate", 14, 4).
calls("FileChannelVol", "truncate", "Lock", "lock").
calls("FileChannelVol", "truncate", "FileChannel", "truncate").
calls("FileChannelVol", "truncate", "Lock", "unlock").
method("FileChannelVol", "writeFully", 19, 7).
method("FileChannelVol", "putLong", 8, 2).
calls("FileChannelVol", "putLong", "ByteBuffer", "putLong").
calls("FileChannelVol", "putLong", "FileChannelVol", "writeFully").
method("FileChannelVol", "putInt", 8, 2).
calls("FileChannelVol", "putInt", "ByteBuffer", "putInt").
calls("FileChannelVol", "putInt", "FileChannelVol", "writeFully").
method("FileChannelVol", "putByte", 8, 2).
calls("FileChannelVol", "putByte", "ByteBuffer", "put").
calls("FileChannelVol", "putByte", "FileChannelVol", "writeFully").
method("FileChannelVol", "putData", 4, 1).
calls("FileChannelVol", "putData", "FileChannelVol", "writeFully").
method("FileChannelVol", "putData", 3, 1).
calls("FileChannelVol", "putData", "FileChannelVol", "writeFully").
method("FileChannelVol", "readFully", 16, 6).
method("FileChannelVol", "getLong", 5, 1).
calls("FileChannelVol", "getLong", "FileChannelVol", "readFully").
calls("FileChannelVol", "getLong", "ByteBuffer", "getLong").
method("FileChannelVol", "getInt", 5, 1).
calls("FileChannelVol", "getInt", "FileChannelVol", "readFully").
calls("FileChannelVol", "getInt", "ByteBuffer", "getInt").
method("FileChannelVol", "getByte", 5, 1).
calls("FileChannelVol", "getByte", "FileChannelVol", "readFully").
calls("FileChannelVol", "getByte", "ByteBuffer", "get").
method("FileChannelVol", "getDataInput", 5, 1).
calls("FileChannelVol", "getDataInput", "FileChannelVol", "readFully").
method("FileChannelVol", "getData", 4, 1).
calls("FileChannelVol", "getData", "FileChannelVol", "readFully").
method("FileChannelVol", "close", 19, 7).
calls("FileChannelVol", "close", "closed", "compareAndSet").
calls("FileChannelVol", "close", "FileLock", "release").
calls("FileChannelVol", "close", "FileChannel", "close").
method("FileChannelVol", "sync", 10, 4).
calls("FileChannelVol", "sync", "FileChannel", "force").
method("FileChannelVol", "sliceSize", 3, 1).
method("FileChannelVol", "isSliced", 3, 1).
method("FileChannelVol", "length", 6, 2).
calls("FileChannelVol", "length", "FileChannel", "size").
method("FileChannelVol", "isReadOnly", 3, 1).
method("FileChannelVol", "getFile", 3, 1).
method("FileChannelVol", "getFileLocked", 3, 1).
method("FileChannelVol", "clear", 3, 1).
calls("FileChannelVol", "clear", "FileChannelVol", "clear").
method("FileChannelVol", "clear", 11, 3).
calls("FileChannelVol", "clear", "ByteBuffer", "rewind").
calls("FileChannelVol", "clear", "ByteBuffer", "limit").
calls("FileChannelVol", "clear", "FileChannel", "write").

# mapdb/src/main/java/org/mapdb/volume/Volume.java

class("Volume").
method("Volume", "sliceShiftFromSize", 8, 3).
method("Volume", "isEmptyFile", 7, 2).
method("Volume", "fileLoad", 3, 1).
method("Volume", "assertZeroes", 6, 3).
method("Volume", "isClosed", 3, 1).
calls("Volume", "isClosed", "AtomicBoolean", "get").
method("Volume", "finalize", 7, 3).
calls("Volume", "finalize", "LOG", "log").
method("Volume", "ensureAvailable", 1, 1).
method("Volume", "truncate", 1, 1).
method("Volume", "putLong", 1, 1).
method("Volume", "putInt", 1, 1).
method("Volume", "putByte", 1, 1).
method("Volume", "putData", 1, 1).
method("Volume", "putData", 1, 1).
method("Volume", "putDataOverlap", 3, 1).
calls("Volume", "putDataOverlap", "Volume", "putData").
method("Volume", "getLong", 1, 1).
method("Volume", "getInt", 1, 1).
method("Volume", "getByte", 1, 1).
method("Volume", "getDataInput", 1, 1).
method("Volume", "getDataInputOverlap", 3, 1).
calls("Volume", "getDataInputOverlap", "Volume", "getDataInput").
method("Volume", "getData", 1, 1).
method("Volume", "close", 1, 1).
method("Volume", "sync", 1, 1).
method("Volume", "sliceSize", 1, 1).
method("Volume", "deleteFile", 6, 2).
calls("Volume", "deleteFile", "LOG", "warning").
method("Volume", "isSliced", 1, 1).
method("Volume", "length", 1, 1).
method("Volume", "putUnsignedShort", 4, 1).
calls("Volume", "putUnsignedShort", "Volume", "putByte").
calls("Volume", "putUnsignedShort", "Volume", "putByte").
method("Volume", "getUnsignedShort", 3, 1).
method("Volume", "getUnsignedByte", 3, 1).
method("Volume", "putUnsignedByte", 3, 1).
calls("Volume", "putUnsignedByte", "Volume", "putByte").
method("Volume", "getSixLong", 3, 1).
method("Volume", "putSixLong", 11, 2).
calls("Volume", "putSixLong", "Volume", "putByte").
calls("Volume", "putSixLong", "Volume", "putByte").
calls("Volume", "putSixLong", "Volume", "putByte").
calls("Volume", "putSixLong", "Volume", "putByte").
calls("Volume", "putSixLong", "Volume", "putByte").
calls("Volume", "putSixLong", "Volume", "putByte").
method("Volume", "putPackedLong", 10, 2).
calls("Volume", "putPackedLong", "Volume", "putByte").
calls("Volume", "putPackedLong", "Volume", "putByte").
method("Volume", "getPackedLong", 9, 2).
method("Volume", "isReadOnly", 1, 1).
method("Volume", "getFile", 1, 1).
method("Volume", "getFileLocked", 1, 1).
method("Volume", "copyTo", 8, 2).
calls("Volume", "copyTo", "Volume", "getDataInput").
calls("Volume", "copyTo", "Volume", "putData").
method("Volume", "clear", 1, 1).
method("Volume", "clearOverlap", 19, 5).
calls("Volume", "clearOverlap", "Volume", "clear").
calls("Volume", "clearOverlap", "Volume", "clear").
method("Volume", "copyTo", 11, 3).
calls("Volume", "copyTo", "Volume", "ensureAvailable").
calls("Volume", "copyTo", "Volume", "copyTo").
method("Volume", "copyFrom", 15, 4).
calls("Volume", "copyFrom", "Volume", "ensureAvailable").
calls("Volume", "copyFrom", "Volume", "putData").
method("Volume", "copyTo", 14, 4).
calls("Volume", "copyTo", "Volume", "getData").
calls("Volume", "copyTo", "OutputStream", "write").
method("Volume", "hash", 16, 2).
calls("Volume", "hash", "Volume", "getData").
calls("Volume", "hash", "StreamingXXHash64", "update").
calls("Volume", "hash", "Volume", "getData").
calls("Volume", "hash", "StreamingXXHash64", "update").
calls("Volume", "hash", "StreamingXXHash64", "getValue").
method("Volume", "lockFile", 25, 9).
calls("Volume", "lockFile", "Thread", "sleep").

# mapdb/src/main/java/org/mapdb/volume/UnsafeVolume.java

class("UnsafeVolume").
method("UnsafeVolume", "getUnsafe", 14, 3).
calls("UnsafeVolume", "getUnsafe", "LOG", "log").
calls("UnsafeVolume", "getUnsafe", "java", "setAccessible").
calls("UnsafeVolume", "getUnsafe", "LOG", "log").
method("UnsafeVolume", "unsafeAvailable", 3, 1).
method("UnsafeVolume", "copyFromArray", 9, 2).
calls("UnsafeVolume", "copyFromArray", "UNSAFE", "copyMemory").
method("UnsafeVolume", "copyToArray", 9, 2).
calls("UnsafeVolume", "copyToArray", "UNSAFE", "copyMemory").
method("UnsafeVolume", "ensureAvailable", 32, 6).
calls("UnsafeVolume", "ensureAvailable", "ReentrantLock", "lock").
calls("UnsafeVolume", "ensureAvailable", "UNSAFE", "putLong").
calls("UnsafeVolume", "ensureAvailable", "ReentrantLock", "unlock").
method("UnsafeVolume", "truncate", 1, 1).
method("UnsafeVolume", "putLong", 6, 1).
calls("UnsafeVolume", "putLong", "UNSAFE", "putLong").
method("UnsafeVolume", "putInt", 6, 1).
calls("UnsafeVolume", "putInt", "UNSAFE", "putInt").
method("UnsafeVolume", "putByte", 5, 1).
calls("UnsafeVolume", "putByte", "UNSAFE", "putByte").
method("UnsafeVolume", "putData", 5, 1).
calls("UnsafeVolume", "putData", "UnsafeVolume", "copyFromArray").
method("UnsafeVolume", "putData", 6, 2).
calls("UnsafeVolume", "putData", "UNSAFE", "putByte").
method("UnsafeVolume", "getLong", 6, 1).
calls("UnsafeVolume", "getLong", "Long", "reverseBytes").
method("UnsafeVolume", "getInt", 6, 1).
calls("UnsafeVolume", "getInt", "Integer", "reverseBytes").
method("UnsafeVolume", "getByte", 5, 1).
calls("UnsafeVolume", "getByte", "UNSAFE", "getByte").
method("UnsafeVolume", "getDataInput", 5, 1).
method("UnsafeVolume", "getData", 5, 1).
calls("UnsafeVolume", "getData", "UnsafeVolume", "copyToArray").
method("UnsafeVolume", "putDataOverlap", 15, 3).
calls("UnsafeVolume", "putDataOverlap", "UnsafeVolume", "copyFromArray").
calls("UnsafeVolume", "putDataOverlap", "UnsafeVolume", "putData").
method("UnsafeVolume", "getDataInputOverlap", 17, 3).
calls("UnsafeVolume", "getDataInputOverlap", "UnsafeVolume", "copyToArray").
calls("UnsafeVolume", "getDataInputOverlap", "UnsafeVolume", "getDataInput").
method("UnsafeVolume", "close", 10, 3).
calls("UnsafeVolume", "close", "closed", "compareAndSet").
calls("UnsafeVolume", "close", "sun", "cleaner").
method("UnsafeVolume", "sync", 1, 1).
method("UnsafeVolume", "sliceSize", 3, 1).
method("UnsafeVolume", "isSliced", 3, 1).
method("UnsafeVolume", "length", 3, 1).
method("UnsafeVolume", "isReadOnly", 3, 1).
method("UnsafeVolume", "getFile", 3, 1).
method("UnsafeVolume", "getFileLocked", 3, 1).
method("UnsafeVolume", "clear", 4, 2).
calls("UnsafeVolume", "clear", "UnsafeVolume", "putByte").

# mapdb/src/main/java/org/mapdb/volume/ReadOnlyVolume.java

class("ReadOnlyVolume").
method("ReadOnlyVolume", "ensureAvailable", 3, 1).
method("ReadOnlyVolume", "truncate", 3, 1).
method("ReadOnlyVolume", "putLong", 3, 1).
method("ReadOnlyVolume", "putInt", 3, 1).
method("ReadOnlyVolume", "putByte", 3, 1).
method("ReadOnlyVolume", "putData", 3, 1).
method("ReadOnlyVolume", "putData", 3, 1).
method("ReadOnlyVolume", "putDataOverlap", 3, 1).
method("ReadOnlyVolume", "getLong", 3, 1).
calls("ReadOnlyVolume", "getLong", "Volume", "getLong").
method("ReadOnlyVolume", "getInt", 3, 1).
calls("ReadOnlyVolume", "getInt", "Volume", "getInt").
method("ReadOnlyVolume", "getByte", 3, 1).
calls("ReadOnlyVolume", "getByte", "Volume", "getByte").
method("ReadOnlyVolume", "getDataInput", 3, 1).
calls("ReadOnlyVolume", "getDataInput", "Volume", "getDataInput").
method("ReadOnlyVolume", "getDataInputOverlap", 3, 1).
calls("ReadOnlyVolume", "getDataInputOverlap", "Volume", "getDataInputOverlap").
method("ReadOnlyVolume", "getData", 3, 1).
calls("ReadOnlyVolume", "getData", "Volume", "getData").
method("ReadOnlyVolume", "isClosed", 3, 1).
calls("ReadOnlyVolume", "isClosed", "Volume", "isClosed").
method("ReadOnlyVolume", "close", 3, 1).
calls("ReadOnlyVolume", "close", "Volume", "close").
method("ReadOnlyVolume", "sync", 3, 1).
calls("ReadOnlyVolume", "sync", "Volume", "sync").
method("ReadOnlyVolume", "sliceSize", 3, 1).
calls("ReadOnlyVolume", "sliceSize", "Volume", "sliceSize").
method("ReadOnlyVolume", "deleteFile", 3, 1).
method("ReadOnlyVolume", "isSliced", 3, 1).
calls("ReadOnlyVolume", "isSliced", "Volume", "isSliced").
method("ReadOnlyVolume", "length", 3, 1).
calls("ReadOnlyVolume", "length", "Volume", "length").
method("ReadOnlyVolume", "putUnsignedShort", 3, 1).
method("ReadOnlyVolume", "getUnsignedShort", 3, 1).
calls("ReadOnlyVolume", "getUnsignedShort", "Volume", "getUnsignedShort").
method("ReadOnlyVolume", "getUnsignedByte", 3, 1).
calls("ReadOnlyVolume", "getUnsignedByte", "Volume", "getUnsignedByte").
method("ReadOnlyVolume", "putUnsignedByte", 3, 1).
method("ReadOnlyVolume", "getSixLong", 3, 1).
calls("ReadOnlyVolume", "getSixLong", "Volume", "getSixLong").
method("ReadOnlyVolume", "putSixLong", 3, 1).
method("ReadOnlyVolume", "isReadOnly", 3, 1).
method("ReadOnlyVolume", "getFile", 3, 1).
calls("ReadOnlyVolume", "getFile", "Volume", "getFile").
method("ReadOnlyVolume", "getFileLocked", 3, 1).
calls("ReadOnlyVolume", "getFileLocked", "Volume", "getFileLocked").
method("ReadOnlyVolume", "copyTo", 3, 1).
calls("ReadOnlyVolume", "copyTo", "Volume", "copyTo").
method("ReadOnlyVolume", "clear", 3, 1).

# mapdb/src/main/java/org/mapdb/queue/QueueLongTakeUntil.java


# mapdb/src/main/java/org/mapdb/store/StoreDirectJava.java

class("StoreDirectJava").
method("StoreDirectJava", "indexValToSize", 3, 1).
method("StoreDirectJava", "indexValToOffset", 3, 1).

# mapdb/src/main/java/org/mapdb/util/DataIO.java

class("DataIO").
method("DataIO", "unpackInt", 8, 2).
method("DataIO", "unpackLong", 8, 2).
method("DataIO", "unpackInt", 11, 3).
method("DataIO", "unpackLong", 11, 3).
method("DataIO", "packLong", 8, 2).
calls("DataIO", "packLong", "DataOutput", "writeByte").
calls("DataIO", "packLong", "DataOutput", "writeByte").
method("DataIO", "packLong", 8, 2).
calls("DataIO", "packLong", "OutputStream", "write").
calls("DataIO", "packLong", "OutputStream", "write").
method("DataIO", "packLongSize", 9, 2).
method("DataIO", "unpackRecid", 5, 1).
method("DataIO", "packRecid", 4, 1).
calls("DataIO", "packRecid", "DataOutput2", "packLong").
method("DataIO", "packInt", 11, 3).
calls("DataIO", "packInt", "DataOutput", "writeByte").
calls("DataIO", "packInt", "DataOutput", "writeByte").
method("DataIO", "packIntBigger", 8, 2).
calls("DataIO", "packIntBigger", "DataOutput", "writeByte").
calls("DataIO", "packIntBigger", "DataOutput", "writeByte").
method("DataIO", "longHash", 5, 1).
method("DataIO", "intHash", 4, 1).
method("DataIO", "getInt", 3, 1).
method("DataIO", "putInt", 6, 1).
method("DataIO", "getLong", 3, 1).
method("DataIO", "putLong", 10, 1).
method("DataIO", "putLong", 5, 2).
method("DataIO", "packInt", 10, 2).
method("DataIO", "packLong", 10, 2).
method("DataIO", "unpackInt", 8, 2).
method("DataIO", "unpackLong", 8, 2).
method("DataIO", "getSixLong", 3, 1).
method("DataIO", "putSixLong", 11, 2).
method("DataIO", "nextPowTwo", 3, 1).
method("DataIO", "nextPowTwo", 3, 1).
method("DataIO", "readFully", 9, 3).
method("DataIO", "readFully", 3, 1).
calls("DataIO", "readFully", "DataIO", "readFully").
method("DataIO", "writeFully", 5, 2).
method("DataIO", "skipFully", 3, 2).
method("DataIO", "fillLowBits", 6, 2).
method("DataIO", "parity1Set", 6, 2).
method("DataIO", "parity1Set", 6, 2).
method("DataIO", "parity1Get", 6, 2).
method("DataIO", "parity1Get", 6, 2).
method("DataIO", "parity3Set", 6, 2).
method("DataIO", "parity3Get", 7, 2).
method("DataIO", "parity4Set", 6, 2).
method("DataIO", "parity4Get", 7, 2).
method("DataIO", "parity16Set", 6, 2).
method("DataIO", "parity16Get", 7, 2).
method("DataIO", "toHexa", 8, 2).
method("DataIO", "fromHexa", 6, 2).
method("DataIO", "arrayPut", 8, 2).
calls("DataIO", "arrayPut", "System", "arraycopy").
method("DataIO", "arrayDelete", 6, 1).
calls("DataIO", "arrayDelete", "System", "arraycopy").
calls("DataIO", "arrayDelete", "System", "arraycopy").
method("DataIO", "arrayDelete", 6, 1).
calls("DataIO", "arrayDelete", "System", "arraycopy").
calls("DataIO", "arrayDelete", "System", "arraycopy").
method("DataIO", "intToLong", 3, 1).
method("DataIO", "roundUp", 3, 1).
method("DataIO", "roundDown", 3, 1).
method("DataIO", "roundUp", 3, 1).
method("DataIO", "roundDown", 3, 1).
method("DataIO", "shift", 3, 1).
method("DataIO", "isWindows", 4, 1).
method("DataIO", "JVMSupportsLargeMappedFiles", 10, 3).
calls("DataIO", "JVMSupportsLargeMappedFiles", "DataIO", "isWindows").

# mapdb/src/main/java/org/mapdb/util/ThreadSafeLongArrayList.java

class("ThreadSafeLongArrayList").
method("ThreadSafeLongArrayList", "addAtIndex", 7, 1).
calls("ThreadSafeLongArrayList", "addAtIndex", "Lock", "lock").
calls("ThreadSafeLongArrayList", "addAtIndex", "LongArrayList", "addAtIndex").
calls("ThreadSafeLongArrayList", "addAtIndex", "Lock", "unlock").
method("ThreadSafeLongArrayList", "addAllAtIndex", 7, 1).
calls("ThreadSafeLongArrayList", "addAllAtIndex", "Lock", "lock").
calls("ThreadSafeLongArrayList", "addAllAtIndex", "LongArrayList", "addAllAtIndex").
calls("ThreadSafeLongArrayList", "addAllAtIndex", "Lock", "unlock").
method("ThreadSafeLongArrayList", "addAllAtIndex", 7, 1).
calls("ThreadSafeLongArrayList", "addAllAtIndex", "Lock", "lock").
calls("ThreadSafeLongArrayList", "addAllAtIndex", "LongArrayList", "addAllAtIndex").
calls("ThreadSafeLongArrayList", "addAllAtIndex", "Lock", "unlock").
method("ThreadSafeLongArrayList", "removeAtIndex", 7, 1).
calls("ThreadSafeLongArrayList", "removeAtIndex", "Lock", "lock").
calls("ThreadSafeLongArrayList", "removeAtIndex", "LongArrayList", "removeAtIndex").
calls("ThreadSafeLongArrayList", "removeAtIndex", "Lock", "unlock").
method("ThreadSafeLongArrayList", "set", 7, 1).
calls("ThreadSafeLongArrayList", "set", "Lock", "lock").
calls("ThreadSafeLongArrayList", "set", "LongArrayList", "set").
calls("ThreadSafeLongArrayList", "set", "Lock", "unlock").
method("ThreadSafeLongArrayList", "longIterator", 3, 1).
calls("ThreadSafeLongArrayList", "longIterator", "LongArrayList", "longIterator").
method("ThreadSafeLongArrayList", "toArray", 7, 1).
calls("ThreadSafeLongArrayList", "toArray", "Lock", "lock").
calls("ThreadSafeLongArrayList", "toArray", "LongArrayList", "toArray").
calls("ThreadSafeLongArrayList", "toArray", "Lock", "unlock").
method("ThreadSafeLongArrayList", "contains", 7, 1).
calls("ThreadSafeLongArrayList", "contains", "Lock", "lock").
calls("ThreadSafeLongArrayList", "contains", "LongArrayList", "contains").
calls("ThreadSafeLongArrayList", "contains", "Lock", "unlock").
method("ThreadSafeLongArrayList", "containsAll", 7, 1).
calls("ThreadSafeLongArrayList", "containsAll", "Lock", "lock").
calls("ThreadSafeLongArrayList", "containsAll", "LongArrayList", "containsAll").
calls("ThreadSafeLongArrayList", "containsAll", "Lock", "unlock").
method("ThreadSafeLongArrayList", "containsAll", 7, 1).
calls("ThreadSafeLongArrayList", "containsAll", "Lock", "lock").
calls("ThreadSafeLongArrayList", "containsAll", "LongArrayList", "containsAll").
calls("ThreadSafeLongArrayList", "containsAll", "Lock", "unlock").
method("ThreadSafeLongArrayList", "forEach", 3, 1).
calls("ThreadSafeLongArrayList", "forEach", "LongArrayList", "forEach").
method("ThreadSafeLongArrayList", "each", 7, 1).
calls("ThreadSafeLongArrayList", "each", "Lock", "lock").
calls("ThreadSafeLongArrayList", "each", "LongArrayList", "each").
calls("ThreadSafeLongArrayList", "each", "Lock", "unlock").
method("ThreadSafeLongArrayList", "add", 7, 1).
calls("ThreadSafeLongArrayList", "add", "Lock", "lock").
calls("ThreadSafeLongArrayList", "add", "LongArrayList", "add").
calls("ThreadSafeLongArrayList", "add", "Lock", "unlock").
method("ThreadSafeLongArrayList", "addAll", 7, 1).
calls("ThreadSafeLongArrayList", "addAll", "Lock", "lock").
calls("ThreadSafeLongArrayList", "addAll", "LongArrayList", "addAll").
calls("ThreadSafeLongArrayList", "addAll", "Lock", "unlock").
method("ThreadSafeLongArrayList", "addAll", 7, 1).
calls("ThreadSafeLongArrayList", "addAll", "Lock", "lock").
calls("ThreadSafeLongArrayList", "addAll", "LongArrayList", "addAll").
calls("ThreadSafeLongArrayList", "addAll", "Lock", "unlock").
method("ThreadSafeLongArrayList", "remove", 7, 1).
calls("ThreadSafeLongArrayList", "remove", "Lock", "lock").
calls("ThreadSafeLongArrayList", "remove", "LongArrayList", "remove").
calls("ThreadSafeLongArrayList", "remove", "Lock", "unlock").
method("ThreadSafeLongArrayList", "removeAll", 7, 1).
calls("ThreadSafeLongArrayList", "removeAll", "Lock", "lock").
calls("ThreadSafeLongArrayList", "removeAll", "LongArrayList", "removeAll").
calls("ThreadSafeLongArrayList", "removeAll", "Lock", "unlock").
method("ThreadSafeLongArrayList", "removeAll", 7, 1).
calls("ThreadSafeLongArrayList", "removeAll", "Lock", "lock").
calls("ThreadSafeLongArrayList", "removeAll", "LongArrayList", "removeAll").
calls("ThreadSafeLongArrayList", "removeAll", "Lock", "unlock").
method("ThreadSafeLongArrayList", "retainAll", 7, 1).
calls("ThreadSafeLongArrayList", "retainAll", "Lock", "lock").
calls("ThreadSafeLongArrayList", "retainAll", "LongArrayList", "retainAll").
calls("ThreadSafeLongArrayList", "retainAll", "Lock", "unlock").
method("ThreadSafeLongArrayList", "retainAll", 7, 1).
calls("ThreadSafeLongArrayList", "retainAll", "Lock", "lock").
calls("ThreadSafeLongArrayList", "retainAll", "LongArrayList", "retainAll").
calls("ThreadSafeLongArrayList", "retainAll", "Lock", "unlock").
method("ThreadSafeLongArrayList", "clear", 7, 1).
calls("ThreadSafeLongArrayList", "clear", "Lock", "lock").
calls("ThreadSafeLongArrayList", "clear", "LongArrayList", "clear").
calls("ThreadSafeLongArrayList", "clear", "Lock", "unlock").
method("ThreadSafeLongArrayList", "get", 7, 1).
calls("ThreadSafeLongArrayList", "get", "Lock", "lock").
calls("ThreadSafeLongArrayList", "get", "LongArrayList", "get").
calls("ThreadSafeLongArrayList", "get", "Lock", "unlock").
method("ThreadSafeLongArrayList", "dotProduct", 7, 1).
calls("ThreadSafeLongArrayList", "dotProduct", "Lock", "lock").
calls("ThreadSafeLongArrayList", "dotProduct", "LongList", "dotProduct").
calls("ThreadSafeLongArrayList", "dotProduct", "Lock", "unlock").
method("ThreadSafeLongArrayList", "binarySearch", 7, 1).
calls("ThreadSafeLongArrayList", "binarySearch", "Lock", "lock").
calls("ThreadSafeLongArrayList", "binarySearch", "LongArrayList", "binarySearch").
calls("ThreadSafeLongArrayList", "binarySearch", "Lock", "unlock").
method("ThreadSafeLongArrayList", "lastIndexOf", 7, 1).
calls("ThreadSafeLongArrayList", "lastIndexOf", "Lock", "lock").
calls("ThreadSafeLongArrayList", "lastIndexOf", "LongArrayList", "lastIndexOf").
calls("ThreadSafeLongArrayList", "lastIndexOf", "Lock", "unlock").
method("ThreadSafeLongArrayList", "getLast", 7, 1).
calls("ThreadSafeLongArrayList", "getLast", "Lock", "lock").
calls("ThreadSafeLongArrayList", "getLast", "LongArrayList", "getLast").
calls("ThreadSafeLongArrayList", "getLast", "Lock", "unlock").
method("ThreadSafeLongArrayList", "asReversed", 3, 1).
calls("ThreadSafeLongArrayList", "asReversed", "LongArrayList", "asReversed").
method("ThreadSafeLongArrayList", "getFirst", 7, 1).
calls("ThreadSafeLongArrayList", "getFirst", "Lock", "lock").
calls("ThreadSafeLongArrayList", "getFirst", "LongArrayList", "getFirst").
calls("ThreadSafeLongArrayList", "getFirst", "Lock", "unlock").
method("ThreadSafeLongArrayList", "indexOf", 7, 1).
calls("ThreadSafeLongArrayList", "indexOf", "Lock", "lock").
calls("ThreadSafeLongArrayList", "indexOf", "LongArrayList", "indexOf").
calls("ThreadSafeLongArrayList", "indexOf", "Lock", "unlock").
method("ThreadSafeLongArrayList", "select", 7, 1).
calls("ThreadSafeLongArrayList", "select", "Lock", "lock").
calls("ThreadSafeLongArrayList", "select", "LongArrayList", "select").
calls("ThreadSafeLongArrayList", "select", "Lock", "unlock").
method("ThreadSafeLongArrayList", "reject", 7, 1).
calls("ThreadSafeLongArrayList", "reject", "Lock", "lock").
calls("ThreadSafeLongArrayList", "reject", "LongArrayList", "reject").
calls("ThreadSafeLongArrayList", "reject", "Lock", "unlock").
method("ThreadSafeLongArrayList", "with", 7, 1).
calls("ThreadSafeLongArrayList", "with", "Lock", "lock").
calls("ThreadSafeLongArrayList", "with", "LongArrayList", "with").
calls("ThreadSafeLongArrayList", "with", "Lock", "unlock").
method("ThreadSafeLongArrayList", "without", 7, 1).
calls("ThreadSafeLongArrayList", "without", "Lock", "lock").
calls("ThreadSafeLongArrayList", "without", "LongArrayList", "without").
calls("ThreadSafeLongArrayList", "without", "Lock", "unlock").
method("ThreadSafeLongArrayList", "withAll", 7, 1).
calls("ThreadSafeLongArrayList", "withAll", "Lock", "lock").
calls("ThreadSafeLongArrayList", "withAll", "LongArrayList", "withAll").
calls("ThreadSafeLongArrayList", "withAll", "Lock", "unlock").
method("ThreadSafeLongArrayList", "withoutAll", 7, 1).
calls("ThreadSafeLongArrayList", "withoutAll", "Lock", "lock").
calls("ThreadSafeLongArrayList", "withoutAll", "LongArrayList", "withoutAll").
calls("ThreadSafeLongArrayList", "withoutAll", "Lock", "unlock").
method("ThreadSafeLongArrayList", "collect", 7, 1).
calls("ThreadSafeLongArrayList", "collect", "Lock", "lock").
calls("ThreadSafeLongArrayList", "collect", "LongArrayList", "collect").
calls("ThreadSafeLongArrayList", "collect", "Lock", "unlock").
method("ThreadSafeLongArrayList", "detectIfNone", 7, 1).
calls("ThreadSafeLongArrayList", "detectIfNone", "Lock", "lock").
calls("ThreadSafeLongArrayList", "detectIfNone", "LongArrayList", "detectIfNone").
calls("ThreadSafeLongArrayList", "detectIfNone", "Lock", "unlock").
method("ThreadSafeLongArrayList", "count", 7, 1).
calls("ThreadSafeLongArrayList", "count", "Lock", "lock").
calls("ThreadSafeLongArrayList", "count", "LongArrayList", "count").
calls("ThreadSafeLongArrayList", "count", "Lock", "unlock").
method("ThreadSafeLongArrayList", "anySatisfy", 7, 1).
calls("ThreadSafeLongArrayList", "anySatisfy", "Lock", "lock").
calls("ThreadSafeLongArrayList", "anySatisfy", "LongArrayList", "anySatisfy").
calls("ThreadSafeLongArrayList", "anySatisfy", "Lock", "unlock").
method("ThreadSafeLongArrayList", "allSatisfy", 7, 1).
calls("ThreadSafeLongArrayList", "allSatisfy", "Lock", "lock").
calls("ThreadSafeLongArrayList", "allSatisfy", "LongArrayList", "allSatisfy").
calls("ThreadSafeLongArrayList", "allSatisfy", "Lock", "unlock").
method("ThreadSafeLongArrayList", "noneSatisfy", 7, 1).
calls("ThreadSafeLongArrayList", "noneSatisfy", "Lock", "lock").
calls("ThreadSafeLongArrayList", "noneSatisfy", "LongArrayList", "noneSatisfy").
calls("ThreadSafeLongArrayList", "noneSatisfy", "Lock", "unlock").
method("ThreadSafeLongArrayList", "toList", 7, 1).
calls("ThreadSafeLongArrayList", "toList", "Lock", "lock").
calls("ThreadSafeLongArrayList", "toList", "LongArrayList", "toList").
calls("ThreadSafeLongArrayList", "toList", "Lock", "unlock").
method("ThreadSafeLongArrayList", "toSet", 7, 1).
calls("ThreadSafeLongArrayList", "toSet", "Lock", "lock").
calls("ThreadSafeLongArrayList", "toSet", "LongArrayList", "toSet").
calls("ThreadSafeLongArrayList", "toSet", "Lock", "unlock").
method("ThreadSafeLongArrayList", "toBag", 7, 1).
calls("ThreadSafeLongArrayList", "toBag", "Lock", "lock").
calls("ThreadSafeLongArrayList", "toBag", "LongArrayList", "toBag").
calls("ThreadSafeLongArrayList", "toBag", "Lock", "unlock").
method("ThreadSafeLongArrayList", "asLazy", 7, 1).
calls("ThreadSafeLongArrayList", "asLazy", "Lock", "lock").
calls("ThreadSafeLongArrayList", "asLazy", "LongArrayList", "asLazy").
calls("ThreadSafeLongArrayList", "asLazy", "Lock", "unlock").
method("ThreadSafeLongArrayList", "injectInto", 7, 1).
calls("ThreadSafeLongArrayList", "injectInto", "Lock", "lock").
calls("ThreadSafeLongArrayList", "injectInto", "LongArrayList", "injectInto").
calls("ThreadSafeLongArrayList", "injectInto", "Lock", "unlock").
method("ThreadSafeLongArrayList", "sum", 7, 1).
calls("ThreadSafeLongArrayList", "sum", "Lock", "lock").
calls("ThreadSafeLongArrayList", "sum", "LongArrayList", "sum").
calls("ThreadSafeLongArrayList", "sum", "Lock", "unlock").
method("ThreadSafeLongArrayList", "max", 7, 1).
calls("ThreadSafeLongArrayList", "max", "Lock", "lock").
calls("ThreadSafeLongArrayList", "max", "LongArrayList", "max").
calls("ThreadSafeLongArrayList", "max", "Lock", "unlock").
method("ThreadSafeLongArrayList", "maxIfEmpty", 7, 1).
calls("ThreadSafeLongArrayList", "maxIfEmpty", "Lock", "lock").
calls("ThreadSafeLongArrayList", "maxIfEmpty", "LongArrayList", "maxIfEmpty").
calls("ThreadSafeLongArrayList", "maxIfEmpty", "Lock", "unlock").
method("ThreadSafeLongArrayList", "min", 7, 1).
calls("ThreadSafeLongArrayList", "min", "Lock", "lock").
calls("ThreadSafeLongArrayList", "min", "LongArrayList", "min").
calls("ThreadSafeLongArrayList", "min", "Lock", "unlock").
method("ThreadSafeLongArrayList", "minIfEmpty", 7, 1).
calls("ThreadSafeLongArrayList", "minIfEmpty", "Lock", "lock").
calls("ThreadSafeLongArrayList", "minIfEmpty", "LongArrayList", "minIfEmpty").
calls("ThreadSafeLongArrayList", "minIfEmpty", "Lock", "unlock").
method("ThreadSafeLongArrayList", "average", 7, 1).
calls("ThreadSafeLongArrayList", "average", "Lock", "lock").
calls("ThreadSafeLongArrayList", "average", "LongArrayList", "average").
calls("ThreadSafeLongArrayList", "average", "Lock", "unlock").
method("ThreadSafeLongArrayList", "median", 7, 1).
calls("ThreadSafeLongArrayList", "median", "Lock", "lock").
calls("ThreadSafeLongArrayList", "median", "LongArrayList", "median").
calls("ThreadSafeLongArrayList", "median", "Lock", "unlock").
method("ThreadSafeLongArrayList", "toSortedArray", 7, 1).
calls("ThreadSafeLongArrayList", "toSortedArray", "Lock", "lock").
calls("ThreadSafeLongArrayList", "toSortedArray", "LongArrayList", "toSortedArray").
calls("ThreadSafeLongArrayList", "toSortedArray", "Lock", "unlock").
method("ThreadSafeLongArrayList", "toSortedList", 7, 1).
calls("ThreadSafeLongArrayList", "toSortedList", "Lock", "lock").
calls("ThreadSafeLongArrayList", "toSortedList", "LongArrayList", "toSortedList").
calls("ThreadSafeLongArrayList", "toSortedList", "Lock", "unlock").
method("ThreadSafeLongArrayList", "reverseThis", 7, 1).
calls("ThreadSafeLongArrayList", "reverseThis", "Lock", "lock").
calls("ThreadSafeLongArrayList", "reverseThis", "LongArrayList", "reverseThis").
calls("ThreadSafeLongArrayList", "reverseThis", "Lock", "unlock").
method("ThreadSafeLongArrayList", "toReversed", 7, 1).
calls("ThreadSafeLongArrayList", "toReversed", "Lock", "lock").
calls("ThreadSafeLongArrayList", "toReversed", "LongArrayList", "toReversed").
calls("ThreadSafeLongArrayList", "toReversed", "Lock", "unlock").
method("ThreadSafeLongArrayList", "distinct", 7, 1).
calls("ThreadSafeLongArrayList", "distinct", "Lock", "lock").
calls("ThreadSafeLongArrayList", "distinct", "LongArrayList", "distinct").
calls("ThreadSafeLongArrayList", "distinct", "Lock", "unlock").
method("ThreadSafeLongArrayList", "injectIntoWithIndex", 7, 1).
calls("ThreadSafeLongArrayList", "injectIntoWithIndex", "Lock", "lock").
calls("ThreadSafeLongArrayList", "injectIntoWithIndex", "LongArrayList", "injectIntoWithIndex").
calls("ThreadSafeLongArrayList", "injectIntoWithIndex", "Lock", "unlock").
method("ThreadSafeLongArrayList", "forEachWithIndex", 7, 1).
calls("ThreadSafeLongArrayList", "forEachWithIndex", "Lock", "lock").
calls("ThreadSafeLongArrayList", "forEachWithIndex", "LongArrayList", "forEachWithIndex").
calls("ThreadSafeLongArrayList", "forEachWithIndex", "Lock", "unlock").
method("ThreadSafeLongArrayList", "sortThis", 7, 1).
calls("ThreadSafeLongArrayList", "sortThis", "Lock", "lock").
calls("ThreadSafeLongArrayList", "sortThis", "LongArrayList", "sortThis").
calls("ThreadSafeLongArrayList", "sortThis", "Lock", "unlock").
method("ThreadSafeLongArrayList", "asUnmodifiable", 7, 1).
calls("ThreadSafeLongArrayList", "asUnmodifiable", "Lock", "lock").
calls("ThreadSafeLongArrayList", "asUnmodifiable", "LongArrayList", "asUnmodifiable").
calls("ThreadSafeLongArrayList", "asUnmodifiable", "Lock", "unlock").
method("ThreadSafeLongArrayList", "asSynchronized", 3, 1).
method("ThreadSafeLongArrayList", "toImmutable", 7, 1).
calls("ThreadSafeLongArrayList", "toImmutable", "Lock", "lock").
calls("ThreadSafeLongArrayList", "toImmutable", "LongArrayList", "toImmutable").
calls("ThreadSafeLongArrayList", "toImmutable", "Lock", "unlock").
method("ThreadSafeLongArrayList", "subList", 3, 1).
method("ThreadSafeLongArrayList", "size", 7, 1).
calls("ThreadSafeLongArrayList", "size", "Lock", "lock").
calls("ThreadSafeLongArrayList", "size", "LongArrayList", "size").
calls("ThreadSafeLongArrayList", "size", "Lock", "unlock").
method("ThreadSafeLongArrayList", "isEmpty", 7, 1).
calls("ThreadSafeLongArrayList", "isEmpty", "Lock", "lock").
calls("ThreadSafeLongArrayList", "isEmpty", "LongArrayList", "isEmpty").
calls("ThreadSafeLongArrayList", "isEmpty", "Lock", "unlock").
method("ThreadSafeLongArrayList", "notEmpty", 7, 1).
calls("ThreadSafeLongArrayList", "notEmpty", "Lock", "lock").
calls("ThreadSafeLongArrayList", "notEmpty", "LongArrayList", "notEmpty").
calls("ThreadSafeLongArrayList", "notEmpty", "Lock", "unlock").
method("ThreadSafeLongArrayList", "makeString", 7, 1).
calls("ThreadSafeLongArrayList", "makeString", "Lock", "lock").
calls("ThreadSafeLongArrayList", "makeString", "LongArrayList", "makeString").
calls("ThreadSafeLongArrayList", "makeString", "Lock", "unlock").
method("ThreadSafeLongArrayList", "makeString", 7, 1).
calls("ThreadSafeLongArrayList", "makeString", "Lock", "lock").
calls("ThreadSafeLongArrayList", "makeString", "LongArrayList", "makeString").
calls("ThreadSafeLongArrayList", "makeString", "Lock", "unlock").
method("ThreadSafeLongArrayList", "makeString", 7, 1).
calls("ThreadSafeLongArrayList", "makeString", "Lock", "lock").
calls("ThreadSafeLongArrayList", "makeString", "LongArrayList", "makeString").
calls("ThreadSafeLongArrayList", "makeString", "Lock", "unlock").
method("ThreadSafeLongArrayList", "appendString", 7, 1).
calls("ThreadSafeLongArrayList", "appendString", "Lock", "lock").
calls("ThreadSafeLongArrayList", "appendString", "LongArrayList", "appendString").
calls("ThreadSafeLongArrayList", "appendString", "Lock", "unlock").
method("ThreadSafeLongArrayList", "appendString", 7, 1).
calls("ThreadSafeLongArrayList", "appendString", "Lock", "lock").
calls("ThreadSafeLongArrayList", "appendString", "LongArrayList", "appendString").
calls("ThreadSafeLongArrayList", "appendString", "Lock", "unlock").
method("ThreadSafeLongArrayList", "appendString", 7, 1).
calls("ThreadSafeLongArrayList", "appendString", "Lock", "lock").
calls("ThreadSafeLongArrayList", "appendString", "LongArrayList", "appendString").
calls("ThreadSafeLongArrayList", "appendString", "Lock", "unlock").
