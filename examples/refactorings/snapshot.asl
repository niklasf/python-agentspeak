
# junit4/src/main/java/org/junit/Test.java


# junit4/src/main/java/org/junit/Ignore.java


# junit4/src/main/java/org/junit/AssumptionViolatedException.java

class("AssumptionViolatedException").

# junit4/src/main/java/org/junit/After.java


# junit4/src/main/java/org/junit/Rule.java


# junit4/src/main/java/org/junit/package-info.java


# junit4/src/main/java/org/junit/BeforeClass.java


# junit4/src/main/java/org/junit/ComparisonFailure.java

class("ComparisonFailure").
method("ComparisonFailure", "getMessage", 3, 1).
method("ComparisonFailure", "getActual", 3, 1).
method("ComparisonFailure", "getExpected", 3, 1).

# junit4/src/main/java/org/junit/TestCouldNotBeSkippedException.java

class("TestCouldNotBeSkippedException").

# junit4/src/main/java/org/junit/AfterClass.java


# junit4/src/main/java/org/junit/FixMethodOrder.java


# junit4/src/main/java/org/junit/Assert.java

class("Assert").
method("Assert", "assertTrue", 5, 2).
calls("Assert", "assertTrue", "Assert", "fail").
method("Assert", "assertTrue", 3, 1).
calls("Assert", "assertTrue", "Assert", "assertTrue").
method("Assert", "assertFalse", 3, 1).
calls("Assert", "assertFalse", "Assert", "assertTrue").
method("Assert", "assertFalse", 3, 1).
calls("Assert", "assertFalse", "Assert", "assertFalse").
method("Assert", "fail", 6, 2).
method("Assert", "fail", 3, 1).
calls("Assert", "fail", "Assert", "fail").
method("Assert", "assertEquals", 11, 3).
calls("Assert", "assertEquals", "Assert", "equalsRegardingNull").
calls("Assert", "assertEquals", "Assert", "failNotEquals").
method("Assert", "equalsRegardingNull", 6, 2).
calls("Assert", "equalsRegardingNull", "Assert", "isEquals").
method("Assert", "isEquals", 3, 1).
calls("Assert", "isEquals", "Object", "equals").
method("Assert", "assertEquals", 3, 1).
calls("Assert", "assertEquals", "Assert", "assertEquals").
method("Assert", "assertNotEquals", 5, 2).
calls("Assert", "assertNotEquals", "Assert", "equalsRegardingNull").
calls("Assert", "assertNotEquals", "Assert", "failEquals").
method("Assert", "assertNotEquals", 3, 1).
calls("Assert", "assertNotEquals", "Assert", "assertNotEquals").
method("Assert", "failEquals", 8, 2).
calls("Assert", "failEquals", "Assert", "fail").
method("Assert", "assertNotEquals", 5, 2).
calls("Assert", "assertNotEquals", "Assert", "failEquals").
method("Assert", "assertNotEquals", 3, 1).
calls("Assert", "assertNotEquals", "Assert", "assertNotEquals").
method("Assert", "assertNotEquals", 5, 2).
calls("Assert", "assertNotEquals", "Assert", "doubleIsDifferent").
calls("Assert", "assertNotEquals", "Assert", "failEquals").
method("Assert", "assertNotEquals", 3, 1).
calls("Assert", "assertNotEquals", "Assert", "assertNotEquals").
method("Assert", "assertNotEquals", 3, 1).
calls("Assert", "assertNotEquals", "Assert", "assertNotEquals").
method("Assert", "assertArrayEquals", 3, 1).
calls("Assert", "assertArrayEquals", "Assert", "internalArrayEquals").
method("Assert", "assertArrayEquals", 3, 1).
calls("Assert", "assertArrayEquals", "Assert", "assertArrayEquals").
method("Assert", "assertArrayEquals", 3, 1).
calls("Assert", "assertArrayEquals", "Assert", "internalArrayEquals").
method("Assert", "assertArrayEquals", 3, 1).
calls("Assert", "assertArrayEquals", "Assert", "assertArrayEquals").
method("Assert", "assertArrayEquals", 3, 1).
calls("Assert", "assertArrayEquals", "Assert", "internalArrayEquals").
method("Assert", "assertArrayEquals", 3, 1).
calls("Assert", "assertArrayEquals", "Assert", "assertArrayEquals").
method("Assert", "assertArrayEquals", 3, 1).
calls("Assert", "assertArrayEquals", "Assert", "internalArrayEquals").
method("Assert", "assertArrayEquals", 3, 1).
calls("Assert", "assertArrayEquals", "Assert", "assertArrayEquals").
method("Assert", "assertArrayEquals", 3, 1).
calls("Assert", "assertArrayEquals", "Assert", "internalArrayEquals").
method("Assert", "assertArrayEquals", 3, 1).
calls("Assert", "assertArrayEquals", "Assert", "assertArrayEquals").
method("Assert", "assertArrayEquals", 3, 1).
calls("Assert", "assertArrayEquals", "Assert", "internalArrayEquals").
method("Assert", "assertArrayEquals", 3, 1).
calls("Assert", "assertArrayEquals", "Assert", "assertArrayEquals").
method("Assert", "assertArrayEquals", 3, 1).
calls("Assert", "assertArrayEquals", "Assert", "internalArrayEquals").
method("Assert", "assertArrayEquals", 3, 1).
calls("Assert", "assertArrayEquals", "Assert", "assertArrayEquals").
method("Assert", "assertArrayEquals", 3, 1).
method("Assert", "assertArrayEquals", 3, 1).
calls("Assert", "assertArrayEquals", "Assert", "assertArrayEquals").
method("Assert", "assertArrayEquals", 3, 1).
method("Assert", "assertArrayEquals", 3, 1).
calls("Assert", "assertArrayEquals", "Assert", "assertArrayEquals").
method("Assert", "internalArrayEquals", 3, 1).
method("Assert", "assertEquals", 5, 2).
calls("Assert", "assertEquals", "Assert", "doubleIsDifferent").
calls("Assert", "assertEquals", "Assert", "failNotEquals").
method("Assert", "assertEquals", 5, 2).
calls("Assert", "assertEquals", "Assert", "floatIsDifferent").
calls("Assert", "assertEquals", "Assert", "failNotEquals").
method("Assert", "assertNotEquals", 5, 2).
calls("Assert", "assertNotEquals", "Assert", "floatIsDifferent").
calls("Assert", "assertNotEquals", "Assert", "failEquals").
method("Assert", "doubleIsDifferent", 9, 3).
method("Assert", "floatIsDifferent", 9, 3).
method("Assert", "assertEquals", 3, 1).
calls("Assert", "assertEquals", "Assert", "assertEquals").
method("Assert", "assertEquals", 5, 2).
calls("Assert", "assertEquals", "Assert", "failNotEquals").
method("Assert", "assertEquals", 3, 1).
calls("Assert", "assertEquals", "Assert", "assertEquals").
method("Assert", "assertEquals", 3, 1).
calls("Assert", "assertEquals", "Assert", "fail").
method("Assert", "assertEquals", 3, 1).
calls("Assert", "assertEquals", "Assert", "assertEquals").
method("Assert", "assertEquals", 3, 1).
calls("Assert", "assertEquals", "Assert", "assertEquals").
method("Assert", "assertNotNull", 3, 1).
calls("Assert", "assertNotNull", "Assert", "assertTrue").
method("Assert", "assertNotNull", 3, 1).
calls("Assert", "assertNotNull", "Assert", "assertNotNull").
method("Assert", "assertNull", 6, 2).
calls("Assert", "assertNull", "Assert", "failNotNull").
method("Assert", "assertNull", 3, 1).
calls("Assert", "assertNull", "Assert", "assertNull").
method("Assert", "failNotNull", 7, 2).
calls("Assert", "failNotNull", "Assert", "fail").
method("Assert", "assertSame", 6, 2).
calls("Assert", "assertSame", "Assert", "failNotSame").
method("Assert", "assertSame", 3, 1).
calls("Assert", "assertSame", "Assert", "assertSame").
method("Assert", "assertNotSame", 5, 2).
calls("Assert", "assertNotSame", "Assert", "failSame").
method("Assert", "assertNotSame", 3, 1).
calls("Assert", "assertNotSame", "Assert", "assertNotSame").
method("Assert", "failSame", 7, 2).
calls("Assert", "failSame", "Assert", "fail").
method("Assert", "failNotSame", 7, 2).
calls("Assert", "failNotSame", "Assert", "fail").
method("Assert", "failNotEquals", 3, 1).
calls("Assert", "failNotEquals", "Assert", "fail").
method("Assert", "format", 13, 3).
calls("Assert", "format", "Assert", "equalsRegardingNull").
method("Assert", "formatClass", 4, 1).
method("Assert", "formatClassAndValue", 4, 1).
method("Assert", "assertEquals", 3, 1).
calls("Assert", "assertEquals", "Assert", "assertArrayEquals").
method("Assert", "assertEquals", 3, 1).
calls("Assert", "assertEquals", "Assert", "assertArrayEquals").
method("Assert", "assertThat", 3, 1).
calls("Assert", "assertThat", "Assert", "assertThat").
method("Assert", "assertThat", 3, 1).
calls("Assert", "assertThat", "MatcherAssert", "assertThat").
method("Assert", "assertThrows", 3, 1).
calls("Assert", "assertThrows", "Assert", "expectThrows").
method("Assert", "expectThrows", 23, 4).
calls("Assert", "expectThrows", "ThrowingRunnable", "run").
calls("Assert", "expectThrows", "Class", "isInstance").
calls("Assert", "expectThrows", "String", "equals").
calls("Assert", "expectThrows", "AssertionError", "initCause").

# junit4/src/main/java/org/junit/Assume.java

class("Assume").
method("Assume", "assumeTrue", 3, 1).
calls("Assume", "assumeTrue", "Assume", "assumeThat").
method("Assume", "assumeFalse", 3, 1).
calls("Assume", "assumeFalse", "Assume", "assumeTrue").
method("Assume", "assumeTrue", 5, 2).
method("Assume", "assumeFalse", 3, 1).
calls("Assume", "assumeFalse", "Assume", "assumeTrue").
method("Assume", "assumeNotNull", 4, 1).
calls("Assume", "assumeNotNull", "Assume", "assumeThat").
calls("Assume", "assumeNotNull", "Assume", "assumeThat").
method("Assume", "assumeThat", 5, 2).
calls("Assume", "assumeThat", "Matcher", "matches").
method("Assume", "assumeThat", 5, 2).
calls("Assume", "assumeThat", "Matcher", "matches").
method("Assume", "assumeNoException", 3, 1).
calls("Assume", "assumeNoException", "Assume", "assumeThat").
method("Assume", "assumeNoException", 3, 1).
calls("Assume", "assumeNoException", "Assume", "assumeThat").

# junit4/src/main/java/org/junit/ClassRule.java


# junit4/src/main/java/org/junit/Before.java


# junit4/src/main/java/org/junit/internal/RealSystem.java

class("RealSystem").
method("RealSystem", "exit", 3, 1).
calls("RealSystem", "exit", "System", "exit").
method("RealSystem", "out", 3, 1).

# junit4/src/main/java/org/junit/internal/JUnitSystem.java


# junit4/src/main/java/org/junit/internal/AssumptionViolatedException.java

class("AssumptionViolatedException").
method("AssumptionViolatedException", "getMessage", 3, 1).
calls("AssumptionViolatedException", "getMessage", "StringDescription", "asString").
method("AssumptionViolatedException", "describeTo", 16, 5).
calls("AssumptionViolatedException", "describeTo", "Description", "appendText").
calls("AssumptionViolatedException", "describeTo", "Description", "appendText").
calls("AssumptionViolatedException", "describeTo", "Description", "appendText").
calls("AssumptionViolatedException", "describeTo", "Description", "appendValue").
calls("AssumptionViolatedException", "describeTo", "Description", "appendText").
calls("AssumptionViolatedException", "describeTo", "Description", "appendDescriptionOf").

# junit4/src/main/java/org/junit/internal/Checks.java

class("Checks").
method("Checks", "notNull", 6, 2).
method("Checks", "notNull", 6, 2).

# junit4/src/main/java/org/junit/internal/Classes.java

class("Classes").
method("Classes", "getClass", 3, 1).
calls("Classes", "getClass", "Classes", "getClass").
method("Classes", "getClass", 4, 1).
calls("Classes", "getClass", "Class", "forName").

# junit4/src/main/java/org/junit/internal/Throwables.java

class("Throwables").
method("Throwables", "rethrowAsException", 4, 1).
calls("Throwables", "rethrowAsException", "Throwables", "Throwables").
method("Throwables", "rethrow", 3, 1).
method("Throwables", "getStacktrace", 6, 1).
calls("Throwables", "getStacktrace", "Throwable", "printStackTrace").
calls("Throwables", "getStacktrace", "StringWriter", "toString").
method("Throwables", "getTrimmedStackTrace", 10, 2).
calls("Throwables", "getTrimmedStackTrace", "List", "isEmpty").
calls("Throwables", "getTrimmedStackTrace", "Throwables", "getFullStackTrace").
calls("Throwables", "getTrimmedStackTrace", "Throwables", "appendStackTraceLines").
calls("Throwables", "getTrimmedStackTrace", "Throwables", "appendStackTraceLines").
calls("Throwables", "getTrimmedStackTrace", "StringBuilder", "toString").
method("Throwables", "getTrimmedStackTraceLines", 19, 5).
calls("Throwables", "getTrimmedStackTraceLines", "List", "add").
calls("Throwables", "getTrimmedStackTraceLines", "List", "add").
calls("Throwables", "getTrimmedStackTraceLines", "List", "add").
calls("Throwables", "getTrimmedStackTraceLines", "Collections", "emptyList").
method("Throwables", "initGetSuppressed", 6, 2).
method("Throwables", "hasSuppressed", 10, 3).
method("Throwables", "getCauseStackTraceLines", 18, 6).
calls("Throwables", "getCauseStackTraceLines", "List", "add").
calls("Throwables", "getCauseStackTraceLines", "List", "add").
calls("Throwables", "getCauseStackTraceLines", "Collections", "emptyList").
method("Throwables", "getFullStackTrace", 6, 1).
calls("Throwables", "getFullStackTrace", "Throwable", "printStackTrace").
calls("Throwables", "getFullStackTrace", "StringWriter", "toString").
method("Throwables", "appendStackTraceLines", 4, 2).
calls("Throwables", "appendStackTraceLines", "StringBuilder", "append").
method("Throwables", "asReversedList", 3, 1).
method("Throwables", "isTestFrameworkMethod", 3, 1).
method("Throwables", "isReflectionMethod", 3, 1).
calls("Throwables", "isReflectionMethod", "Throwables", "isMatchingMethod").
method("Throwables", "isMatchingMethod", 7, 3).
calls("Throwables", "isMatchingMethod", "String", "startsWith").

# junit4/src/main/java/org/junit/internal/InexactComparisonCriteria.java

class("InexactComparisonCriteria").
method("InexactComparisonCriteria", "assertElementsEqual", 7, 2).
calls("InexactComparisonCriteria", "assertElementsEqual", "Assert", "assertEquals").
calls("InexactComparisonCriteria", "assertElementsEqual", "Assert", "assertEquals").

# junit4/src/main/java/org/junit/internal/ComparisonCriteria.java

class("ComparisonCriteria").
method("ComparisonCriteria", "arrayEquals", 3, 1).
calls("ComparisonCriteria", "arrayEquals", "ComparisonCriteria", "arrayEquals").
method("ComparisonCriteria", "arrayEquals", 44, 12).
calls("ComparisonCriteria", "arrayEquals", "Assert", "fail").
calls("ComparisonCriteria", "arrayEquals", "Assert", "fail").
calls("ComparisonCriteria", "arrayEquals", "ComparisonCriteria", "arrayEquals").
calls("ComparisonCriteria", "arrayEquals", "ArrayComparisonFailure", "addDimension").
calls("ComparisonCriteria", "arrayEquals", "ComparisonCriteria", "assertElementsEqual").
calls("ComparisonCriteria", "arrayEquals", "Assert", "assertEquals").
method("ComparisonCriteria", "getToStringableArrayElement", 12, 3).
calls("ComparisonCriteria", "getToStringableArrayElement", "ComparisonCriteria", "isArray").
calls("ComparisonCriteria", "getToStringableArrayElement", "ComparisonCriteria", "objectWithToString").
method("ComparisonCriteria", "objectWithToString", 3, 1).
method("ComparisonCriteria", "componentTypeName", 8, 2).
calls("ComparisonCriteria", "componentTypeName", "Class", "isArray").
calls("ComparisonCriteria", "componentTypeName", "Class", "getName").
method("ComparisonCriteria", "isArray", 3, 1).
method("ComparisonCriteria", "assertElementsEqual", 1, 1).

# junit4/src/main/java/org/junit/internal/ExactComparisonCriteria.java

class("ExactComparisonCriteria").
method("ExactComparisonCriteria", "assertElementsEqual", 3, 1).
calls("ExactComparisonCriteria", "assertElementsEqual", "Assert", "assertEquals").

# junit4/src/main/java/org/junit/internal/MethodSorter.java

class("MethodSorter").
method("MethodSorter", "getDeclaredMethods", 8, 2).
calls("MethodSorter", "getDeclaredMethods", "Arrays", "sort").
method("MethodSorter", "getSorter", 6, 2).
calls("MethodSorter", "getSorter", "FixMethodOrder", "value").

# junit4/src/main/java/org/junit/internal/ArrayComparisonFailure.java

class("ArrayComparisonFailure").
method("ArrayComparisonFailure", "addDimension", 3, 1).
calls("ArrayComparisonFailure", "addDimension", "List", "add").
method("ArrayComparisonFailure", "getCause", 3, 1).
method("ArrayComparisonFailure", "getMessage", 14, 3).
calls("ArrayComparisonFailure", "getMessage", "StringBuilder", "append").
calls("ArrayComparisonFailure", "getMessage", "StringBuilder", "append").
calls("ArrayComparisonFailure", "getMessage", "StringBuilder", "append").
calls("ArrayComparisonFailure", "getMessage", "StringBuilder", "append").
calls("ArrayComparisonFailure", "getMessage", "StringBuilder", "append").
calls("ArrayComparisonFailure", "getMessage", "StringBuilder", "append").
calls("ArrayComparisonFailure", "getMessage", "StringBuilder", "append").
calls("ArrayComparisonFailure", "getMessage", "StringBuilder", "toString").
method("ArrayComparisonFailure", "toString", 3, 1).
calls("ArrayComparisonFailure", "toString", "ArrayComparisonFailure", "getMessage").

# junit4/src/main/java/org/junit/internal/TextListener.java

class("TextListener").
method("TextListener", "testRunFinished", 5, 1).
calls("TextListener", "testRunFinished", "TextListener", "printHeader").
calls("TextListener", "testRunFinished", "TextListener", "printFailures").
calls("TextListener", "testRunFinished", "TextListener", "printFooter").
method("TextListener", "testStarted", 3, 1).
calls("TextListener", "testStarted", "PrintStream", "append").
method("TextListener", "testFailure", 3, 1).
calls("TextListener", "testFailure", "PrintStream", "append").
method("TextListener", "testIgnored", 3, 1).
calls("TextListener", "testIgnored", "PrintStream", "append").
method("TextListener", "getWriter", 3, 1).
method("TextListener", "printHeader", 4, 1).
calls("TextListener", "printHeader", "TextListener", "getWriter").
calls("TextListener", "printHeader", "TextListener", "getWriter").
method("TextListener", "printFailures", 14, 4).
calls("TextListener", "printFailures", "List", "isEmpty").
calls("TextListener", "printFailures", "TextListener", "getWriter").
calls("TextListener", "printFailures", "TextListener", "getWriter").
calls("TextListener", "printFailures", "TextListener", "printFailure").
method("TextListener", "printFailure", 4, 1).
calls("TextListener", "printFailure", "TextListener", "getWriter").
calls("TextListener", "printFailure", "TextListener", "getWriter").
method("TextListener", "printFooter", 12, 2).
calls("TextListener", "printFooter", "Result", "wasSuccessful").
calls("TextListener", "printFooter", "TextListener", "getWriter").
calls("TextListener", "printFooter", "TextListener", "getWriter").
calls("TextListener", "printFooter", "TextListener", "getWriter").
calls("TextListener", "printFooter", "TextListener", "getWriter").
calls("TextListener", "printFooter", "TextListener", "getWriter").
calls("TextListener", "printFooter", "TextListener", "getWriter").
calls("TextListener", "printFooter", "TextListener", "getWriter").
method("TextListener", "elapsedTimeAsString", 3, 1).
calls("TextListener", "elapsedTimeAsString", "NumberFormat", "getInstance").

# junit4/src/main/java/org/junit/experimental/ParallelComputer.java

class("ParallelComputer").
method("ParallelComputer", "classes", 3, 1).
method("ParallelComputer", "methods", 3, 1).
method("ParallelComputer", "parallelize", 6, 2).
method("ParallelComputer", "getSuite", 4, 1).
method("ParallelComputer", "getRunner", 4, 1).

# junit4/src/main/java/org/junit/runners/JUnit4.java

class("JUnit4").

# junit4/src/main/java/org/junit/runners/AllTests.java

class("AllTests").

# junit4/src/main/java/org/junit/runners/ParentRunner.java

class("ParentRunner").
method("ParentRunner", "createTestClass", 3, 1).
method("ParentRunner", "getChildren", 1, 1).
method("ParentRunner", "describeChild", 1, 1).
method("ParentRunner", "runChild", 1, 1).
method("ParentRunner", "collectInitializationErrors", 6, 1).
calls("ParentRunner", "collectInitializationErrors", "ParentRunner", "validatePublicVoidNoArgMethods").
calls("ParentRunner", "collectInitializationErrors", "ParentRunner", "validatePublicVoidNoArgMethods").
calls("ParentRunner", "collectInitializationErrors", "ParentRunner", "validateClassRules").
calls("ParentRunner", "collectInitializationErrors", "ParentRunner", "applyValidators").
method("ParentRunner", "applyValidators", 6, 3).
calls("ParentRunner", "applyValidators", "List", "addAll").
method("ParentRunner", "validatePublicVoidNoArgMethods", 5, 2).
calls("ParentRunner", "validatePublicVoidNoArgMethods", "FrameworkMethod", "validatePublicVoidNoArg").
method("ParentRunner", "validateClassRules", 4, 1).
calls("ParentRunner", "validateClassRules", "CLASS_RULE_VALIDATOR", "validate").
calls("ParentRunner", "validateClassRules", "CLASS_RULE_METHOD_VALIDATOR", "validate").
method("ParentRunner", "classBlock", 9, 2).
calls("ParentRunner", "classBlock", "ParentRunner", "areAllChildrenIgnored").
method("ParentRunner", "areAllChildrenIgnored", 7, 3).
calls("ParentRunner", "areAllChildrenIgnored", "ParentRunner", "isIgnored").
method("ParentRunner", "withBeforeClasses", 4, 1).
method("ParentRunner", "withAfterClasses", 4, 1).
method("ParentRunner", "withClassRules", 4, 1).
method("ParentRunner", "classRules", 5, 1).
calls("ParentRunner", "classRules", "List", "addAll").
method("ParentRunner", "childrenInvoker", 3, 1).
method("ParentRunner", "isIgnored", 3, 1).
method("ParentRunner", "runChildren", 8, 2).
calls("ParentRunner", "runChildren", "RunnerScheduler", "schedule").
calls("ParentRunner", "runChildren", "RunnerScheduler", "finished").
method("ParentRunner", "getName", 3, 1).
calls("ParentRunner", "getName", "TestClass", "getName").
method("ParentRunner", "getTestClass", 3, 1).
method("ParentRunner", "runLeaf", 12, 3).
calls("ParentRunner", "runLeaf", "EachTestNotifier", "fireTestStarted").
calls("ParentRunner", "runLeaf", "Statement", "evaluate").
calls("ParentRunner", "runLeaf", "EachTestNotifier", "addFailedAssumption").
calls("ParentRunner", "runLeaf", "EachTestNotifier", "addFailure").
calls("ParentRunner", "runLeaf", "EachTestNotifier", "fireTestFinished").
method("ParentRunner", "getRunnerAnnotations", 3, 1).
calls("ParentRunner", "getRunnerAnnotations", "TestClass", "getAnnotations").
method("ParentRunner", "getDescription", 12, 3).
calls("ParentRunner", "getDescription", "Description", "addChild").
method("ParentRunner", "run", 15, 4).
calls("ParentRunner", "run", "EachTestNotifier", "fireTestSuiteStarted").
calls("ParentRunner", "run", "Statement", "evaluate").
calls("ParentRunner", "run", "EachTestNotifier", "addFailedAssumption").
calls("ParentRunner", "run", "EachTestNotifier", "addFailure").
calls("ParentRunner", "run", "EachTestNotifier", "fireTestSuiteFinished").
method("ParentRunner", "filter", 21, 5).
calls("ParentRunner", "filter", "Lock", "lock").
calls("ParentRunner", "filter", "ParentRunner", "shouldRun").
calls("ParentRunner", "filter", "Filter", "apply").
calls("ParentRunner", "filter", "Iterator", "remove").
calls("ParentRunner", "filter", "Iterator", "remove").
calls("ParentRunner", "filter", "Collection", "isEmpty").
calls("ParentRunner", "filter", "Lock", "unlock").
method("ParentRunner", "sort", 11, 2).
calls("ParentRunner", "sort", "Lock", "lock").
calls("ParentRunner", "sort", "Sorter", "apply").
calls("ParentRunner", "sort", "Collections", "sort").
calls("ParentRunner", "sort", "Lock", "unlock").
method("ParentRunner", "validate", 7, 2).
calls("ParentRunner", "validate", "ParentRunner", "collectInitializationErrors").
calls("ParentRunner", "validate", "List", "isEmpty").
method("ParentRunner", "getFilteredChildren", 12, 3).
calls("ParentRunner", "getFilteredChildren", "Lock", "lock").
calls("ParentRunner", "getFilteredChildren", "Lock", "unlock").
method("ParentRunner", "shouldRun", 3, 1).
calls("ParentRunner", "shouldRun", "Filter", "shouldRun").
method("ParentRunner", "comparator", 3, 1).
method("ParentRunner", "setScheduler", 3, 1).

# junit4/src/main/java/org/junit/runners/package-info.java


# junit4/src/main/java/org/junit/runners/MethodSorters.java


# junit4/src/main/java/org/junit/runners/BlockJUnit4ClassRunner.java

class("BlockJUnit4ClassRunner").
method("BlockJUnit4ClassRunner", "runChild", 13, 3).
calls("BlockJUnit4ClassRunner", "runChild", "BlockJUnit4ClassRunner", "isIgnored").
calls("BlockJUnit4ClassRunner", "runChild", "RunNotifier", "fireTestIgnored").
calls("BlockJUnit4ClassRunner", "runChild", "BlockJUnit4ClassRunner", "runLeaf").
method("BlockJUnit4ClassRunner", "isIgnored", 3, 1).
method("BlockJUnit4ClassRunner", "describeChild", 8, 2).
calls("BlockJUnit4ClassRunner", "describeChild", "ConcurrentMap", "putIfAbsent").
method("BlockJUnit4ClassRunner", "getChildren", 3, 1).
calls("BlockJUnit4ClassRunner", "getChildren", "BlockJUnit4ClassRunner", "computeTestMethods").
method("BlockJUnit4ClassRunner", "computeTestMethods", 3, 1).
calls("BlockJUnit4ClassRunner", "computeTestMethods", "BlockJUnit4ClassRunner", "getTestClass").
method("BlockJUnit4ClassRunner", "collectInitializationErrors", 9, 1).
calls("BlockJUnit4ClassRunner", "collectInitializationErrors", "BlockJUnit4ClassRunner", "validatePublicConstructor").
calls("BlockJUnit4ClassRunner", "collectInitializationErrors", "BlockJUnit4ClassRunner", "validateNoNonStaticInnerClass").
calls("BlockJUnit4ClassRunner", "collectInitializationErrors", "BlockJUnit4ClassRunner", "validateConstructor").
calls("BlockJUnit4ClassRunner", "collectInitializationErrors", "BlockJUnit4ClassRunner", "validateInstanceMethods").
calls("BlockJUnit4ClassRunner", "collectInitializationErrors", "BlockJUnit4ClassRunner", "validateFields").
calls("BlockJUnit4ClassRunner", "collectInitializationErrors", "BlockJUnit4ClassRunner", "validateMethods").
method("BlockJUnit4ClassRunner", "validatePublicConstructor", 5, 2).
calls("BlockJUnit4ClassRunner", "validatePublicConstructor", "List", "addAll").
method("BlockJUnit4ClassRunner", "validateNoNonStaticInnerClass", 6, 2).
calls("BlockJUnit4ClassRunner", "validateNoNonStaticInnerClass", "BlockJUnit4ClassRunner", "getTestClass").
calls("BlockJUnit4ClassRunner", "validateNoNonStaticInnerClass", "List", "add").
method("BlockJUnit4ClassRunner", "validateConstructor", 4, 1).
calls("BlockJUnit4ClassRunner", "validateConstructor", "BlockJUnit4ClassRunner", "validateOnlyOneConstructor").
calls("BlockJUnit4ClassRunner", "validateConstructor", "BlockJUnit4ClassRunner", "validateZeroArgConstructor").
method("BlockJUnit4ClassRunner", "validateOnlyOneConstructor", 6, 2).
calls("BlockJUnit4ClassRunner", "validateOnlyOneConstructor", "BlockJUnit4ClassRunner", "hasOneConstructor").
calls("BlockJUnit4ClassRunner", "validateOnlyOneConstructor", "List", "add").
method("BlockJUnit4ClassRunner", "validateZeroArgConstructor", 6, 2).
calls("BlockJUnit4ClassRunner", "validateZeroArgConstructor", "List", "add").
method("BlockJUnit4ClassRunner", "hasOneConstructor", 3, 1).
method("BlockJUnit4ClassRunner", "validateInstanceMethods", 8, 2).
calls("BlockJUnit4ClassRunner", "validateInstanceMethods", "BlockJUnit4ClassRunner", "validatePublicVoidNoArgMethods").
calls("BlockJUnit4ClassRunner", "validateInstanceMethods", "BlockJUnit4ClassRunner", "validatePublicVoidNoArgMethods").
calls("BlockJUnit4ClassRunner", "validateInstanceMethods", "BlockJUnit4ClassRunner", "validateTestMethods").
calls("BlockJUnit4ClassRunner", "validateInstanceMethods", "BlockJUnit4ClassRunner", "computeTestMethods").
calls("BlockJUnit4ClassRunner", "validateInstanceMethods", "List", "add").
method("BlockJUnit4ClassRunner", "validateFields", 3, 1).
calls("BlockJUnit4ClassRunner", "validateFields", "RULE_VALIDATOR", "validate").
method("BlockJUnit4ClassRunner", "validateMethods", 3, 1).
calls("BlockJUnit4ClassRunner", "validateMethods", "RULE_METHOD_VALIDATOR", "validate").
method("BlockJUnit4ClassRunner", "validateTestMethods", 3, 1).
calls("BlockJUnit4ClassRunner", "validateTestMethods", "BlockJUnit4ClassRunner", "validatePublicVoidNoArgMethods").
method("BlockJUnit4ClassRunner", "createTest", 3, 1).
calls("BlockJUnit4ClassRunner", "createTest", "BlockJUnit4ClassRunner", "getTestClass").
method("BlockJUnit4ClassRunner", "createTest", 3, 1).
calls("BlockJUnit4ClassRunner", "createTest", "BlockJUnit4ClassRunner", "createTest").
method("BlockJUnit4ClassRunner", "testName", 3, 1).
calls("BlockJUnit4ClassRunner", "testName", "FrameworkMethod", "getName").
method("BlockJUnit4ClassRunner", "methodBlock", 14, 2).
method("BlockJUnit4ClassRunner", "methodInvoker", 3, 1).
method("BlockJUnit4ClassRunner", "possiblyExpectingExceptions", 5, 1).
method("BlockJUnit4ClassRunner", "withPotentialTimeout", 7, 2).
calls("BlockJUnit4ClassRunner", "withPotentialTimeout", "FailOnTimeout", "builder").
method("BlockJUnit4ClassRunner", "withBefores", 4, 1).
method("BlockJUnit4ClassRunner", "withAfters", 4, 1).
method("BlockJUnit4ClassRunner", "withRules", 7, 1).
method("BlockJUnit4ClassRunner", "withMethodRules", 8, 3).
method("BlockJUnit4ClassRunner", "getMethodRules", 3, 1).
calls("BlockJUnit4ClassRunner", "getMethodRules", "BlockJUnit4ClassRunner", "rules").
method("BlockJUnit4ClassRunner", "rules", 5, 1).
calls("BlockJUnit4ClassRunner", "rules", "List", "addAll").
method("BlockJUnit4ClassRunner", "withTestRules", 3, 1).
method("BlockJUnit4ClassRunner", "getTestRules", 5, 1).
calls("BlockJUnit4ClassRunner", "getTestRules", "List", "addAll").
method("BlockJUnit4ClassRunner", "getExpectedException", 7, 2).
calls("BlockJUnit4ClassRunner", "getExpectedException", "Test", "expected").
method("BlockJUnit4ClassRunner", "getTimeout", 6, 2).
calls("BlockJUnit4ClassRunner", "getTimeout", "Test", "timeout").

# junit4/src/main/java/org/junit/runners/Parameterized.java

class("Parameterized").
method("Parameterized", "validateBeforeParamAndAfterParamMethods", 8, 2).
calls("Parameterized", "validateBeforeParamAndAfterParamMethods", "Parameterized", "validatePublicStaticVoidMethods").
calls("Parameterized", "validateBeforeParamAndAfterParamMethods", "Parameterized", "validatePublicStaticVoidMethods").
calls("Parameterized", "validateBeforeParamAndAfterParamMethods", "List", "isEmpty").
method("Parameterized", "validatePublicStaticVoidMethods", 11, 4).
calls("Parameterized", "validatePublicStaticVoidMethods", "FrameworkMethod", "validatePublicVoid").
calls("Parameterized", "validatePublicStaticVoidMethods", "List", "add").

# junit4/src/main/java/org/junit/runners/Suite.java

class("Suite").
method("Suite", "emptySuite", 6, 2).
method("Suite", "getAnnotatedClasses", 7, 2).
calls("Suite", "getAnnotatedClasses", "SuiteClasses", "value").
method("Suite", "getChildren", 3, 1).
method("Suite", "describeChild", 3, 1).
calls("Suite", "describeChild", "Runner", "getDescription").
method("Suite", "runChild", 3, 1).
calls("Suite", "runChild", "Runner", "run").

# junit4/src/main/java/org/junit/function/ThrowingRunnable.java


# junit4/src/main/java/org/junit/rules/ExpectedException.java

class("ExpectedException").
method("ExpectedException", "none", 3, 1).
method("ExpectedException", "handleAssertionErrors", 3, 1).
method("ExpectedException", "handleAssumptionViolatedExceptions", 3, 1).
method("ExpectedException", "reportMissingExceptionWithMessage", 4, 1).
method("ExpectedException", "apply", 3, 1).
method("ExpectedException", "expect", 4, 1).
calls("ExpectedException", "expect", "ExpectedExceptionMatcherBuilder", "add").
method("ExpectedException", "expect", 4, 1).
calls("ExpectedException", "expect", "ExpectedException", "expect").
method("ExpectedException", "expectMessage", 4, 1).
calls("ExpectedException", "expectMessage", "ExpectedException", "expectMessage").
method("ExpectedException", "expectMessage", 4, 1).
calls("ExpectedException", "expectMessage", "ExpectedException", "expect").
method("ExpectedException", "expectCause", 4, 1).
calls("ExpectedException", "expectCause", "ExpectedException", "expect").
method("ExpectedException", "isAnyExceptionExpected", 3, 1).
calls("ExpectedException", "isAnyExceptionExpected", "ExpectedExceptionMatcherBuilder", "expectsThrowable").
method("ExpectedException", "handleException", 7, 2).
calls("ExpectedException", "handleException", "ExpectedException", "isAnyExceptionExpected").
calls("ExpectedException", "handleException", "ExpectedException", "assertThat").
method("ExpectedException", "failDueToMissingException", 3, 1).
calls("ExpectedException", "failDueToMissingException", "ExpectedException", "fail").
method("ExpectedException", "missingExceptionMessage", 4, 1).
calls("ExpectedException", "missingExceptionMessage", "ExpectedException", "format").

# junit4/src/main/java/org/junit/rules/RuleChain.java

class("RuleChain").
method("RuleChain", "emptyRuleChain", 3, 1).
method("RuleChain", "outerRule", 3, 1).
calls("RuleChain", "outerRule", "RuleChain", "emptyRuleChain").
method("RuleChain", "around", 9, 2).
calls("RuleChain", "around", "List", "add").
calls("RuleChain", "around", "List", "addAll").
method("RuleChain", "apply", 3, 1).

# junit4/src/main/java/org/junit/rules/ErrorCollector.java

class("ErrorCollector").
method("ErrorCollector", "verify", 3, 1).
calls("ErrorCollector", "verify", "MultipleFailureException", "assertEmpty").
method("ErrorCollector", "addError", 12, 3).
calls("ErrorCollector", "addError", "AssertionError", "initCause").
calls("ErrorCollector", "addError", "List", "add").
calls("ErrorCollector", "addError", "List", "add").
method("ErrorCollector", "checkThat", 3, 1).
calls("ErrorCollector", "checkThat", "ErrorCollector", "checkThat").
method("ErrorCollector", "checkThat", 3, 1).
calls("ErrorCollector", "checkThat", "ErrorCollector", "checkSucceeds").
method("ErrorCollector", "checkSucceeds", 12, 3).
calls("ErrorCollector", "checkSucceeds", "Callable", "call").
calls("ErrorCollector", "checkSucceeds", "AssertionError", "initCause").
calls("ErrorCollector", "checkSucceeds", "ErrorCollector", "addError").
calls("ErrorCollector", "checkSucceeds", "ErrorCollector", "addError").
method("ErrorCollector", "checkThrows", 6, 2).
calls("ErrorCollector", "checkThrows", "ErrorCollector", "assertThrows").
calls("ErrorCollector", "checkThrows", "ErrorCollector", "addError").

# junit4/src/main/java/org/junit/rules/Verifier.java

class("Verifier").
method("Verifier", "apply", 3, 1).
method("Verifier", "verify", 1, 1).

# junit4/src/main/java/org/junit/rules/TestWatcher.java

class("TestWatcher").
method("TestWatcher", "apply", 3, 1).
method("TestWatcher", "succeededQuietly", 6, 2).
calls("TestWatcher", "succeededQuietly", "TestWatcher", "succeeded").
calls("TestWatcher", "succeededQuietly", "List", "add").
method("TestWatcher", "failedQuietly", 6, 2).
calls("TestWatcher", "failedQuietly", "TestWatcher", "failed").
calls("TestWatcher", "failedQuietly", "List", "add").
method("TestWatcher", "skippedQuietly", 10, 3).
calls("TestWatcher", "skippedQuietly", "TestWatcher", "skipped").
calls("TestWatcher", "skippedQuietly", "TestWatcher", "skipped").
calls("TestWatcher", "skippedQuietly", "List", "add").
method("TestWatcher", "startingQuietly", 6, 2).
calls("TestWatcher", "startingQuietly", "TestWatcher", "starting").
calls("TestWatcher", "startingQuietly", "List", "add").
method("TestWatcher", "finishedQuietly", 6, 2).
calls("TestWatcher", "finishedQuietly", "TestWatcher", "finished").
calls("TestWatcher", "finishedQuietly", "List", "add").
method("TestWatcher", "succeeded", 1, 1).
method("TestWatcher", "failed", 1, 1).
method("TestWatcher", "skipped", 4, 1).
calls("TestWatcher", "skipped", "TestWatcher", "skipped").
method("TestWatcher", "skipped", 1, 1).
method("TestWatcher", "starting", 1, 1).
method("TestWatcher", "finished", 1, 1).

# junit4/src/main/java/org/junit/rules/TestWatchman.java

class("TestWatchman").
method("TestWatchman", "apply", 3, 1).
method("TestWatchman", "succeeded", 1, 1).
method("TestWatchman", "failed", 1, 1).
method("TestWatchman", "starting", 1, 1).
method("TestWatchman", "finished", 1, 1).

# junit4/src/main/java/org/junit/rules/TemporaryFolder.java

class("TemporaryFolder").
method("TemporaryFolder", "builder", 3, 1).
method("TemporaryFolder", "before", 3, 1).
calls("TemporaryFolder", "before", "TemporaryFolder", "create").
method("TemporaryFolder", "after", 3, 1).
calls("TemporaryFolder", "after", "TemporaryFolder", "delete").
method("TemporaryFolder", "create", 3, 1).
method("TemporaryFolder", "newFile", 7, 2).
calls("TemporaryFolder", "newFile", "File", "createNewFile").
method("TemporaryFolder", "newFile", 3, 1).
calls("TemporaryFolder", "newFile", "File", "createTempFile").
method("TemporaryFolder", "newFolder", 3, 1).
calls("TemporaryFolder", "newFolder", "TemporaryFolder", "newFolder").
method("TemporaryFolder", "newFolder", 24, 7).
method("TemporaryFolder", "newFolder", 3, 1).
calls("TemporaryFolder", "newFolder", "TemporaryFolder", "createTemporaryFolderIn").
method("TemporaryFolder", "createTemporaryFolderIn", 15, 3).
calls("TemporaryFolder", "createTemporaryFolderIn", "File", "mkdir").
calls("TemporaryFolder", "createTemporaryFolderIn", "File", "delete").
calls("TemporaryFolder", "createTemporaryFolderIn", "File", "delete").
method("TemporaryFolder", "getRoot", 6, 2).
method("TemporaryFolder", "delete", 7, 3).
calls("TemporaryFolder", "delete", "TemporaryFolder", "tryDelete").
calls("TemporaryFolder", "delete", "TemporaryFolder", "fail").
method("TemporaryFolder", "tryDelete", 6, 2).
calls("TemporaryFolder", "tryDelete", "TemporaryFolder", "recursiveDelete").
method("TemporaryFolder", "recursiveDelete", 12, 4).
calls("TemporaryFolder", "recursiveDelete", "File", "delete").

# junit4/src/main/java/org/junit/rules/RunRules.java

class("RunRules").
method("RunRules", "evaluate", 3, 1).
calls("RunRules", "evaluate", "Statement", "evaluate").
method("RunRules", "applyAll", 5, 2).

# junit4/src/main/java/org/junit/rules/MethodRule.java


# junit4/src/main/java/org/junit/rules/Stopwatch.java

class("Stopwatch").
method("Stopwatch", "runtime", 3, 1).
calls("Stopwatch", "runtime", "TimeUnit", "convert").
method("Stopwatch", "succeeded", 1, 1).
method("Stopwatch", "failed", 1, 1).
method("Stopwatch", "skipped", 1, 1).
method("Stopwatch", "finished", 1, 1).
method("Stopwatch", "getNanos", 10, 3).
method("Stopwatch", "starting", 4, 1).
method("Stopwatch", "stopping", 3, 1).
method("Stopwatch", "apply", 3, 1).

# junit4/src/main/java/org/junit/rules/ExpectedExceptionMatcherBuilder.java

class("ExpectedExceptionMatcherBuilder").
method("ExpectedExceptionMatcherBuilder", "add", 3, 1).
calls("ExpectedExceptionMatcherBuilder", "add", "List", "add").
method("ExpectedExceptionMatcherBuilder", "expectsThrowable", 3, 1).
calls("ExpectedExceptionMatcherBuilder", "expectsThrowable", "List", "isEmpty").
method("ExpectedExceptionMatcherBuilder", "build", 3, 1).
calls("ExpectedExceptionMatcherBuilder", "build", "ExpectedExceptionMatcherBuilder", "isThrowable").
method("ExpectedExceptionMatcherBuilder", "allOfTheMatchers", 6, 2).
calls("ExpectedExceptionMatcherBuilder", "allOfTheMatchers", "ExpectedExceptionMatcherBuilder", "cast").
calls("ExpectedExceptionMatcherBuilder", "allOfTheMatchers", "ExpectedExceptionMatcherBuilder", "allOf").
method("ExpectedExceptionMatcherBuilder", "castedMatchers", 3, 1).
method("ExpectedExceptionMatcherBuilder", "cast", 3, 1).

# junit4/src/main/java/org/junit/rules/Timeout.java

class("Timeout").
method("Timeout", "builder", 3, 1).
method("Timeout", "millis", 3, 1).
method("Timeout", "seconds", 3, 1).
method("Timeout", "getTimeout", 3, 1).
calls("Timeout", "getTimeout", "TimeUnit", "convert").
method("Timeout", "getLookingForStuckThread", 3, 1).
method("Timeout", "createFailOnTimeoutStatement", 3, 1).
calls("Timeout", "createFailOnTimeoutStatement", "FailOnTimeout", "builder").
method("Timeout", "apply", 6, 2).
calls("Timeout", "apply", "Timeout", "createFailOnTimeoutStatement").

# junit4/src/main/java/org/junit/rules/TestName.java

class("TestName").
method("TestName", "starting", 3, 1).
method("TestName", "getMethodName", 3, 1).

# junit4/src/main/java/org/junit/rules/TestRule.java


# junit4/src/main/java/org/junit/rules/ExternalResource.java

class("ExternalResource").
method("ExternalResource", "apply", 3, 1).
calls("ExternalResource", "apply", "ExternalResource", "statement").
method("ExternalResource", "statement", 3, 1).
method("ExternalResource", "before", 1, 1).
method("ExternalResource", "after", 1, 1).

# junit4/src/main/java/org/junit/rules/DisableOnDebug.java

class("DisableOnDebug").
method("DisableOnDebug", "apply", 7, 2).
calls("DisableOnDebug", "apply", "TestRule", "apply").
method("DisableOnDebug", "isDebugging", 11, 4).
calls("DisableOnDebug", "isDebugging", "String", "startsWith").
method("DisableOnDebug", "isDebugging", 3, 1).

# junit4/src/main/java/org/junit/runner/Result.java

class("Result").
method("Result", "getRunCount", 3, 1).
calls("Result", "getRunCount", "AtomicInteger", "get").
method("Result", "getFailureCount", 3, 1).
calls("Result", "getFailureCount", "CopyOnWriteArrayList", "size").
method("Result", "getRunTime", 3, 1).
calls("Result", "getRunTime", "AtomicLong", "get").
method("Result", "getFailures", 3, 1).
method("Result", "getIgnoreCount", 3, 1).
calls("Result", "getIgnoreCount", "AtomicInteger", "get").
method("Result", "wasSuccessful", 3, 1).
method("Result", "writeObject", 4, 1).
calls("Result", "writeObject", "SerializedForm", "serialize").
method("Result", "readObject", 3, 1).
method("Result", "readResolve", 3, 1).
method("Result", "createListener", 3, 1).

# junit4/src/main/java/org/junit/runner/FilterFactories.java

class("FilterFactories").
method("FilterFactories", "createFilterFromFilterSpec", 10, 2).
calls("FilterFactories", "createFilterFromFilterSpec", "String", "contains").
calls("FilterFactories", "createFilterFromFilterSpec", "FilterFactories", "createFilter").
method("FilterFactories", "createFilter", 4, 1).
calls("FilterFactories", "createFilter", "FilterFactory", "createFilter").
method("FilterFactories", "createFilter", 4, 1).
calls("FilterFactories", "createFilter", "FilterFactory", "createFilter").
method("FilterFactories", "createFilterFactory", 8, 2).
calls("FilterFactories", "createFilterFactory", "FilterFactories", "createFilterFactory").
method("FilterFactories", "createFilterFactory", 6, 2).
calls("FilterFactories", "createFilterFactory", "Class", "getConstructor").

# junit4/src/main/java/org/junit/runner/Computer.java

class("Computer").
method("Computer", "serial", 3, 1).
method("Computer", "getSuite", 3, 1).
method("Computer", "getRunner", 3, 1).
calls("Computer", "getRunner", "RunnerBuilder", "runnerForClass").

# junit4/src/main/java/org/junit/runner/Runner.java

class("Runner").
method("Runner", "getDescription", 1, 1).
method("Runner", "run", 1, 1).
method("Runner", "testCount", 3, 1).
calls("Runner", "testCount", "Runner", "getDescription").

# junit4/src/main/java/org/junit/runner/package-info.java


# junit4/src/main/java/org/junit/runner/Description.java

class("Description").
method("Description", "createSuiteDescription", 3, 1).
method("Description", "createSuiteDescription", 3, 1).
method("Description", "createTestDescription", 3, 1).
method("Description", "createTestDescription", 3, 1).
method("Description", "createTestDescription", 3, 1).
method("Description", "createTestDescription", 3, 1).
method("Description", "formatDisplayName", 3, 1).
calls("Description", "formatDisplayName", "String", "format").
method("Description", "createSuiteDescription", 3, 1).
method("Description", "createSuiteDescription", 3, 1).
method("Description", "getDisplayName", 3, 1).
method("Description", "addChild", 3, 1).
calls("Description", "addChild", "Collection", "add").
method("Description", "getChildren", 3, 1).
method("Description", "isSuite", 3, 1).
calls("Description", "isSuite", "Description", "isTest").
method("Description", "isTest", 3, 1).
calls("Description", "isTest", "Collection", "isEmpty").
method("Description", "testCount", 9, 3).
calls("Description", "testCount", "Description", "isTest").
method("Description", "hashCode", 3, 1).
calls("Description", "hashCode", "Serializable", "hashCode").
method("Description", "equals", 7, 2).
calls("Description", "equals", "Serializable", "equals").
method("Description", "toString", 3, 1).
calls("Description", "toString", "Description", "getDisplayName").
method("Description", "isEmpty", 3, 1).
calls("Description", "isEmpty", "Description", "equals").
method("Description", "childlessCopy", 3, 1).
method("Description", "getAnnotation", 7, 3).
calls("Description", "getAnnotation", "Annotation", "annotationType").
calls("Description", "getAnnotation", "Class", "cast").
method("Description", "getAnnotations", 3, 1).
calls("Description", "getAnnotations", "Arrays", "asList").
method("Description", "getTestClass", 14, 4).
method("Description", "getClassName", 3, 1).
method("Description", "getMethodName", 3, 1).
calls("Description", "getMethodName", "Description", "methodAndClassNamePatternGroupOrDefault").
method("Description", "methodAndClassNamePatternGroupOrDefault", 4, 1).

# junit4/src/main/java/org/junit/runner/Describable.java


# junit4/src/main/java/org/junit/runner/Request.java

class("Request").
method("Request", "method", 4, 1).
calls("Request", "method", "Request", "aClass").
method("Request", "aClass", 3, 1).
method("Request", "classWithoutSuiteMethod", 3, 1).
method("Request", "classes", 8, 2).
calls("Request", "classes", "Request", "runner").
calls("Request", "classes", "Request", "runner").
method("Request", "classes", 3, 1).
calls("Request", "classes", "Request", "classes").
method("Request", "errorReport", 3, 1).
calls("Request", "errorReport", "Request", "runner").
method("Request", "runner", 3, 1).
method("Request", "getRunner", 1, 1).
method("Request", "filterWith", 3, 1).
method("Request", "filterWith", 3, 1).
calls("Request", "filterWith", "Request", "filterWith").
method("Request", "sortWith", 3, 1).

# junit4/src/main/java/org/junit/runner/RunWith.java


# junit4/src/main/java/org/junit/runner/FilterFactory.java


# junit4/src/main/java/org/junit/runner/JUnitCore.java

class("JUnitCore").
method("JUnitCore", "main", 4, 1).
calls("JUnitCore", "main", "System", "exit").
method("JUnitCore", "runClasses", 3, 1).
calls("JUnitCore", "runClasses", "JUnitCore", "runClasses").
method("JUnitCore", "runClasses", 3, 1).
method("JUnitCore", "runMain", 7, 1).
calls("JUnitCore", "runMain", "JUnitSystem", "out").
calls("JUnitCore", "runMain", "JUnitCore", "addListener").
calls("JUnitCore", "runMain", "JUnitCore", "run").
method("JUnitCore", "getVersion", 3, 1).
calls("JUnitCore", "getVersion", "Version", "id").
method("JUnitCore", "run", 3, 1).
calls("JUnitCore", "run", "JUnitCore", "run").
method("JUnitCore", "run", 3, 1).
calls("JUnitCore", "run", "JUnitCore", "run").
method("JUnitCore", "run", 3, 1).
calls("JUnitCore", "run", "JUnitCore", "run").
method("JUnitCore", "run", 3, 1).
calls("JUnitCore", "run", "JUnitCore", "run").
method("JUnitCore", "run", 12, 1).
calls("JUnitCore", "run", "RunNotifier", "addFirstListener").
calls("JUnitCore", "run", "RunNotifier", "fireTestRunStarted").
calls("JUnitCore", "run", "Runner", "run").
calls("JUnitCore", "run", "RunNotifier", "fireTestRunFinished").
calls("JUnitCore", "run", "JUnitCore", "removeListener").
method("JUnitCore", "addListener", 3, 1).
calls("JUnitCore", "addListener", "RunNotifier", "addListener").
method("JUnitCore", "removeListener", 3, 1).
calls("JUnitCore", "removeListener", "RunNotifier", "removeListener").
method("JUnitCore", "defaultComputer", 3, 1).

# junit4/src/main/java/org/junit/runner/JUnitCommandLineParseResult.java

class("JUnitCommandLineParseResult").
method("JUnitCommandLineParseResult", "getFilterSpecs", 3, 1).
calls("JUnitCommandLineParseResult", "getFilterSpecs", "Collections", "unmodifiableList").
method("JUnitCommandLineParseResult", "getClasses", 3, 1).
calls("JUnitCommandLineParseResult", "getClasses", "Collections", "unmodifiableList").
method("JUnitCommandLineParseResult", "parse", 5, 1).
calls("JUnitCommandLineParseResult", "parse", "JUnitCommandLineParseResult", "parseArgs").
method("JUnitCommandLineParseResult", "parseArgs", 3, 1).
calls("JUnitCommandLineParseResult", "parseArgs", "JUnitCommandLineParseResult", "parseParameters").
method("JUnitCommandLineParseResult", "parseOptions", 30, 7).
calls("JUnitCommandLineParseResult", "parseOptions", "String", "equals").
calls("JUnitCommandLineParseResult", "parseOptions", "JUnitCommandLineParseResult", "copyArray").
calls("JUnitCommandLineParseResult", "parseOptions", "String", "startsWith").
calls("JUnitCommandLineParseResult", "parseOptions", "String", "equals").
calls("JUnitCommandLineParseResult", "parseOptions", "List", "add").
calls("JUnitCommandLineParseResult", "parseOptions", "List", "add").
calls("JUnitCommandLineParseResult", "parseOptions", "List", "add").
calls("JUnitCommandLineParseResult", "parseOptions", "JUnitCommandLineParseResult", "copyArray").
method("JUnitCommandLineParseResult", "copyArray", 6, 2).
method("JUnitCommandLineParseResult", "parseParameters", 7, 3).
calls("JUnitCommandLineParseResult", "parseParameters", "List", "add").
calls("JUnitCommandLineParseResult", "parseParameters", "List", "add").
method("JUnitCommandLineParseResult", "errorReport", 3, 1).
calls("JUnitCommandLineParseResult", "errorReport", "Request", "errorReport").
method("JUnitCommandLineParseResult", "createRequest", 8, 2).
calls("JUnitCommandLineParseResult", "createRequest", "List", "isEmpty").
calls("JUnitCommandLineParseResult", "createRequest", "JUnitCommandLineParseResult", "applyFilterSpecs").
calls("JUnitCommandLineParseResult", "createRequest", "JUnitCommandLineParseResult", "errorReport").
method("JUnitCommandLineParseResult", "applyFilterSpecs", 9, 3).
calls("JUnitCommandLineParseResult", "applyFilterSpecs", "JUnitCommandLineParseResult", "errorReport").

# junit4/src/main/java/org/junit/runner/FilterFactoryParams.java

class("FilterFactoryParams").
method("FilterFactoryParams", "getArgs", 3, 1).
method("FilterFactoryParams", "getTopLevelDescription", 3, 1).

# junit4/src/main/java/org/junit/validator/AnnotationValidator.java

class("AnnotationValidator").
method("AnnotationValidator", "validateAnnotatedClass", 3, 1).
method("AnnotationValidator", "validateAnnotatedField", 3, 1).
method("AnnotationValidator", "validateAnnotatedMethod", 3, 1).

# junit4/src/main/java/org/junit/validator/TestClassValidator.java


# junit4/src/main/java/org/junit/validator/AnnotationValidatorFactory.java

class("AnnotationValidatorFactory").
method("AnnotationValidatorFactory", "createAnnotationValidator", 13, 3).
calls("AnnotationValidatorFactory", "createAnnotationValidator", "VALIDATORS_FOR_ANNOTATION_TYPES", "putIfAbsent").
calls("AnnotationValidatorFactory", "createAnnotationValidator", "VALIDATORS_FOR_ANNOTATION_TYPES", "get").

# junit4/src/main/java/org/junit/validator/PublicClassValidator.java

class("PublicClassValidator").
method("PublicClassValidator", "validateTestClass", 7, 2).
calls("PublicClassValidator", "validateTestClass", "TestClass", "isPublic").
calls("PublicClassValidator", "validateTestClass", "PublicClassValidator", "singletonList").

# junit4/src/main/java/org/junit/validator/AnnotationsValidator.java

class("AnnotationsValidator").
method("AnnotationsValidator", "validateTestClass", 7, 2).
calls("AnnotationsValidator", "validateTestClass", "List", "addAll").

# junit4/src/main/java/org/junit/validator/ValidateWith.java


# junit4/src/main/java/org/junit/matchers/package-info.java


# junit4/src/main/java/org/junit/matchers/JUnitMatchers.java

class("JUnitMatchers").
method("JUnitMatchers", "hasItem", 3, 1).
calls("JUnitMatchers", "hasItem", "CoreMatchers", "hasItem").
method("JUnitMatchers", "hasItem", 3, 1).
calls("JUnitMatchers", "hasItem", "JUnitMatchers", "CoreMatchers").
method("JUnitMatchers", "hasItems", 3, 1).
calls("JUnitMatchers", "hasItems", "CoreMatchers", "hasItems").
method("JUnitMatchers", "hasItems", 3, 1).
calls("JUnitMatchers", "hasItems", "CoreMatchers", "hasItems").
method("JUnitMatchers", "everyItem", 3, 1).
calls("JUnitMatchers", "everyItem", "CoreMatchers", "everyItem").
method("JUnitMatchers", "containsString", 3, 1).
calls("JUnitMatchers", "containsString", "CoreMatchers", "containsString").
method("JUnitMatchers", "both", 3, 1).
calls("JUnitMatchers", "both", "CoreMatchers", "both").
method("JUnitMatchers", "either", 3, 1).
calls("JUnitMatchers", "either", "CoreMatchers", "either").
method("JUnitMatchers", "isThrowable", 3, 1).
calls("JUnitMatchers", "isThrowable", "StacktracePrintingMatcher", "isThrowable").
method("JUnitMatchers", "isException", 3, 1).
calls("JUnitMatchers", "isException", "StacktracePrintingMatcher", "isException").

# junit4/src/main/java/org/junit/internal/runners/MethodValidator.java

class("MethodValidator").
method("MethodValidator", "validateInstanceMethods", 9, 2).
calls("MethodValidator", "validateInstanceMethods", "MethodValidator", "validateTestMethods").
calls("MethodValidator", "validateInstanceMethods", "MethodValidator", "validateTestMethods").
calls("MethodValidator", "validateInstanceMethods", "MethodValidator", "validateTestMethods").
calls("MethodValidator", "validateInstanceMethods", "List", "add").
method("MethodValidator", "validateStaticMethods", 4, 1).
calls("MethodValidator", "validateStaticMethods", "MethodValidator", "validateTestMethods").
calls("MethodValidator", "validateStaticMethods", "MethodValidator", "validateTestMethods").
method("MethodValidator", "validateMethodsForDefaultRunner", 6, 1).
calls("MethodValidator", "validateMethodsForDefaultRunner", "MethodValidator", "validateNoArgConstructor").
calls("MethodValidator", "validateMethodsForDefaultRunner", "MethodValidator", "validateStaticMethods").
calls("MethodValidator", "validateMethodsForDefaultRunner", "MethodValidator", "validateInstanceMethods").
method("MethodValidator", "assertValid", 5, 2).
calls("MethodValidator", "assertValid", "List", "isEmpty").
method("MethodValidator", "validateNoArgConstructor", 6, 2).
calls("MethodValidator", "validateNoArgConstructor", "TestClass", "getConstructor").
calls("MethodValidator", "validateNoArgConstructor", "List", "add").
method("MethodValidator", "validateTestMethods", 20, 7).
calls("MethodValidator", "validateTestMethods", "List", "add").
calls("MethodValidator", "validateTestMethods", "Modifier", "isPublic").
calls("MethodValidator", "validateTestMethods", "List", "add").
calls("MethodValidator", "validateTestMethods", "Modifier", "isPublic").
calls("MethodValidator", "validateTestMethods", "List", "add").
calls("MethodValidator", "validateTestMethods", "List", "add").
calls("MethodValidator", "validateTestMethods", "List", "add").

# junit4/src/main/java/org/junit/internal/runners/FailedBefore.java

class("FailedBefore").

# junit4/src/main/java/org/junit/internal/runners/TestClass.java

class("TestClass").
method("TestClass", "getTestMethods", 3, 1).
calls("TestClass", "getTestMethods", "TestClass", "getAnnotatedMethods").
method("TestClass", "getBefores", 3, 1).
calls("TestClass", "getBefores", "TestClass", "getAnnotatedMethods").
method("TestClass", "getAfters", 3, 1).
calls("TestClass", "getAfters", "TestClass", "getAnnotatedMethods").
method("TestClass", "getAnnotatedMethods", 14, 5).
calls("TestClass", "getAnnotatedMethods", "List", "add").
calls("TestClass", "getAnnotatedMethods", "TestClass", "runsTopToBottom").
calls("TestClass", "getAnnotatedMethods", "Collections", "reverse").
method("TestClass", "runsTopToBottom", 3, 1).
method("TestClass", "isShadowed", 7, 3).
calls("TestClass", "isShadowed", "TestClass", "isShadowed").
method("TestClass", "isShadowed", 13, 5).
calls("TestClass", "isShadowed", "Method", "getName").
calls("TestClass", "isShadowed", "Method", "getParameterTypes").
method("TestClass", "getSuperClasses", 8, 2).
calls("TestClass", "getSuperClasses", "List", "add").
method("TestClass", "getConstructor", 3, 1).
calls("TestClass", "getConstructor", "Class", "getConstructor").
method("TestClass", "getJavaClass", 3, 1).
method("TestClass", "getName", 3, 1).
calls("TestClass", "getName", "Class", "getName").

# junit4/src/main/java/org/junit/internal/runners/SuiteMethod.java

class("SuiteMethod").
method("SuiteMethod", "testFromSuiteMethod", 13, 3).
calls("SuiteMethod", "testFromSuiteMethod", "Modifier", "isStatic").
calls("SuiteMethod", "testFromSuiteMethod", "InvocationTargetException", "getCause").

# junit4/src/main/java/org/junit/internal/runners/TestMethod.java

class("TestMethod").
method("TestMethod", "isIgnored", 3, 1).
method("TestMethod", "getTimeout", 8, 2).
method("TestMethod", "getExpectedException", 8, 2).
calls("TestMethod", "getExpectedException", "Test", "expected").
method("TestMethod", "isUnexpected", 3, 1).
calls("TestMethod", "isUnexpected", "TestMethod", "getExpectedException").
method("TestMethod", "expectsException", 3, 1).
method("TestMethod", "getBefores", 3, 1).
calls("TestMethod", "getBefores", "TestClass", "getAnnotatedMethods").
method("TestMethod", "getAfters", 3, 1).
calls("TestMethod", "getAfters", "TestClass", "getAnnotatedMethods").
method("TestMethod", "invoke", 3, 1).
calls("TestMethod", "invoke", "Method", "invoke").

# junit4/src/main/java/org/junit/internal/runners/package-info.java


# junit4/src/main/java/org/junit/internal/runners/MethodRoadie.java

class("MethodRoadie").
method("MethodRoadie", "run", 16, 3).
calls("MethodRoadie", "run", "TestMethod", "isIgnored").
calls("MethodRoadie", "run", "RunNotifier", "fireTestIgnored").
calls("MethodRoadie", "run", "RunNotifier", "fireTestStarted").
calls("MethodRoadie", "run", "MethodRoadie", "runWithTimeout").
calls("MethodRoadie", "run", "MethodRoadie", "runTest").
calls("MethodRoadie", "run", "RunNotifier", "fireTestFinished").
method("MethodRoadie", "runWithTimeout", 3, 1).
calls("MethodRoadie", "runWithTimeout", "MethodRoadie", "runBeforesThenTestThenAfters").
method("MethodRoadie", "runTest", 3, 1).
calls("MethodRoadie", "runTest", "MethodRoadie", "runBeforesThenTestThenAfters").
method("MethodRoadie", "runBeforesThenTestThenAfters", 10, 3).
calls("MethodRoadie", "runBeforesThenTestThenAfters", "MethodRoadie", "runBefores").
calls("MethodRoadie", "runBeforesThenTestThenAfters", "Runnable", "run").
calls("MethodRoadie", "runBeforesThenTestThenAfters", "MethodRoadie", "runAfters").
method("MethodRoadie", "runTestMethod", 23, 7).
calls("MethodRoadie", "runTestMethod", "TestMethod", "invoke").
calls("MethodRoadie", "runTestMethod", "TestMethod", "expectsException").
calls("MethodRoadie", "runTestMethod", "MethodRoadie", "addFailure").
calls("MethodRoadie", "runTestMethod", "TestMethod", "expectsException").
calls("MethodRoadie", "runTestMethod", "MethodRoadie", "addFailure").
calls("MethodRoadie", "runTestMethod", "TestMethod", "isUnexpected").
calls("MethodRoadie", "runTestMethod", "MethodRoadie", "addFailure").
calls("MethodRoadie", "runTestMethod", "MethodRoadie", "addFailure").
method("MethodRoadie", "runBefores", 14, 5).
calls("MethodRoadie", "runBefores", "Method", "invoke").
calls("MethodRoadie", "runBefores", "InvocationTargetException", "getTargetException").
calls("MethodRoadie", "runBefores", "MethodRoadie", "addFailure").
method("MethodRoadie", "runAfters", 10, 4).
calls("MethodRoadie", "runAfters", "Method", "invoke").
calls("MethodRoadie", "runAfters", "MethodRoadie", "addFailure").
calls("MethodRoadie", "runAfters", "MethodRoadie", "addFailure").
method("MethodRoadie", "addFailure", 3, 1).
calls("MethodRoadie", "addFailure", "RunNotifier", "fireTestFailure").

# junit4/src/main/java/org/junit/internal/runners/JUnit4ClassRunner.java

class("JUnit4ClassRunner").
method("JUnit4ClassRunner", "getTestMethods", 3, 1).
calls("JUnit4ClassRunner", "getTestMethods", "TestClass", "getTestMethods").
method("JUnit4ClassRunner", "validate", 5, 1).
calls("JUnit4ClassRunner", "validate", "MethodValidator", "validateMethodsForDefaultRunner").
calls("JUnit4ClassRunner", "validate", "MethodValidator", "assertValid").
method("JUnit4ClassRunner", "run", 3, 1).
method("JUnit4ClassRunner", "runMethods", 4, 2).
calls("JUnit4ClassRunner", "runMethods", "JUnit4ClassRunner", "invokeTestMethod").
method("JUnit4ClassRunner", "getDescription", 7, 2).
calls("JUnit4ClassRunner", "getDescription", "Description", "addChild").
method("JUnit4ClassRunner", "classAnnotations", 3, 1).
calls("JUnit4ClassRunner", "classAnnotations", "TestClass", "getJavaClass").
method("JUnit4ClassRunner", "getName", 3, 1).
calls("JUnit4ClassRunner", "getName", "JUnit4ClassRunner", "getTestClass").
method("JUnit4ClassRunner", "createTest", 3, 1).
calls("JUnit4ClassRunner", "createTest", "JUnit4ClassRunner", "getTestClass").
method("JUnit4ClassRunner", "invokeTestMethod", 14, 3).
calls("JUnit4ClassRunner", "invokeTestMethod", "JUnit4ClassRunner", "testAborted").
calls("JUnit4ClassRunner", "invokeTestMethod", "JUnit4ClassRunner", "testAborted").
method("JUnit4ClassRunner", "testAborted", 5, 1).
calls("JUnit4ClassRunner", "testAborted", "RunNotifier", "fireTestStarted").
calls("JUnit4ClassRunner", "testAborted", "RunNotifier", "fireTestFailure").
calls("JUnit4ClassRunner", "testAborted", "RunNotifier", "fireTestFinished").
method("JUnit4ClassRunner", "wrapMethod", 3, 1).
method("JUnit4ClassRunner", "testName", 3, 1).
calls("JUnit4ClassRunner", "testName", "Method", "getName").
method("JUnit4ClassRunner", "methodDescription", 3, 1).
calls("JUnit4ClassRunner", "methodDescription", "Description", "createTestDescription").
method("JUnit4ClassRunner", "testAnnotations", 3, 1).
calls("JUnit4ClassRunner", "testAnnotations", "Method", "getAnnotations").
method("JUnit4ClassRunner", "filter", 10, 4).
calls("JUnit4ClassRunner", "filter", "Filter", "shouldRun").
calls("JUnit4ClassRunner", "filter", "Iterator", "remove").
calls("JUnit4ClassRunner", "filter", "List", "isEmpty").
method("JUnit4ClassRunner", "sort", 3, 1).
calls("JUnit4ClassRunner", "sort", "Collections", "sort").
method("JUnit4ClassRunner", "getTestClass", 3, 1).

# junit4/src/main/java/org/junit/internal/runners/InitializationError.java

class("InitializationError").
method("InitializationError", "getCauses", 3, 1).

# junit4/src/main/java/org/junit/internal/runners/ClassRoadie.java

class("ClassRoadie").
method("ClassRoadie", "runUnprotected", 3, 1).
calls("ClassRoadie", "runUnprotected", "Runnable", "run").
method("ClassRoadie", "addFailure", 3, 1).
calls("ClassRoadie", "addFailure", "RunNotifier", "fireTestFailure").
method("ClassRoadie", "runProtected", 8, 2).
calls("ClassRoadie", "runProtected", "ClassRoadie", "runBefores").
calls("ClassRoadie", "runProtected", "ClassRoadie", "runUnprotected").
calls("ClassRoadie", "runProtected", "ClassRoadie", "runAfters").
method("ClassRoadie", "runBefores", 14, 5).
calls("ClassRoadie", "runBefores", "Method", "invoke").
calls("ClassRoadie", "runBefores", "InvocationTargetException", "getTargetException").
calls("ClassRoadie", "runBefores", "ClassRoadie", "addFailure").
method("ClassRoadie", "runAfters", 10, 4).
calls("ClassRoadie", "runAfters", "Method", "invoke").
calls("ClassRoadie", "runAfters", "ClassRoadie", "addFailure").
calls("ClassRoadie", "runAfters", "ClassRoadie", "addFailure").

# junit4/src/main/java/org/junit/internal/runners/JUnit38ClassRunner.java

class("JUnit38ClassRunner").
method("JUnit38ClassRunner", "run", 5, 1).
calls("JUnit38ClassRunner", "run", "TestResult", "addListener").
calls("JUnit38ClassRunner", "run", "JUnit38ClassRunner", "getTest").
method("JUnit38ClassRunner", "createAdaptingListener", 3, 1).
method("JUnit38ClassRunner", "getDescription", 3, 1).
calls("JUnit38ClassRunner", "getDescription", "JUnit38ClassRunner", "makeDescription").
method("JUnit38ClassRunner", "makeDescription", 29, 6).
calls("JUnit38ClassRunner", "makeDescription", "Description", "createTestDescription").
calls("JUnit38ClassRunner", "makeDescription", "Description", "addChild").
calls("JUnit38ClassRunner", "makeDescription", "Describable", "getDescription").
calls("JUnit38ClassRunner", "makeDescription", "JUnit38ClassRunner", "makeDescription").
calls("JUnit38ClassRunner", "makeDescription", "Description", "createSuiteDescription").
method("JUnit38ClassRunner", "getAnnotations", 8, 3).
calls("JUnit38ClassRunner", "getAnnotations", "Method", "getDeclaredAnnotations").
method("JUnit38ClassRunner", "createSuiteDescription", 5, 1).
calls("JUnit38ClassRunner", "createSuiteDescription", "String", "format").
method("JUnit38ClassRunner", "filter", 21, 6).
calls("JUnit38ClassRunner", "filter", "Filterable", "filter").
calls("JUnit38ClassRunner", "filter", "Filter", "shouldRun").
calls("JUnit38ClassRunner", "filter", "TestSuite", "addTest").
calls("JUnit38ClassRunner", "filter", "JUnit38ClassRunner", "setTest").
method("JUnit38ClassRunner", "sort", 6, 2).
calls("JUnit38ClassRunner", "sort", "Sortable", "sort").
method("JUnit38ClassRunner", "setTest", 3, 1).
method("JUnit38ClassRunner", "getTest", 3, 1).

# junit4/src/main/java/org/junit/internal/runners/ErrorReportingRunner.java

class("ErrorReportingRunner").
method("ErrorReportingRunner", "getDescription", 6, 2).
calls("ErrorReportingRunner", "getDescription", "Description", "addChild").
method("ErrorReportingRunner", "run", 4, 2).
calls("ErrorReportingRunner", "run", "ErrorReportingRunner", "runCause").
method("ErrorReportingRunner", "getClassNames", 9, 3).
calls("ErrorReportingRunner", "getClassNames", "StringBuilder", "append").
calls("ErrorReportingRunner", "getClassNames", "StringBuilder", "append").
calls("ErrorReportingRunner", "getClassNames", "StringBuilder", "toString").
method("ErrorReportingRunner", "getCauses", 15, 5).
calls("ErrorReportingRunner", "getCauses", "ErrorReportingRunner", "getCauses").
calls("ErrorReportingRunner", "getCauses", "ErrorReportingRunner", "singletonList").
calls("ErrorReportingRunner", "getCauses", "ErrorReportingRunner", "singletonList").
method("ErrorReportingRunner", "describeCause", 3, 1).
calls("ErrorReportingRunner", "describeCause", "Description", "createTestDescription").
method("ErrorReportingRunner", "runCause", 6, 1).
calls("ErrorReportingRunner", "runCause", "RunNotifier", "fireTestStarted").
calls("ErrorReportingRunner", "runCause", "RunNotifier", "fireTestFailure").
calls("ErrorReportingRunner", "runCause", "RunNotifier", "fireTestFinished").

# junit4/src/main/java/org/junit/internal/builders/AnnotatedBuilder.java

class("AnnotatedBuilder").
method("AnnotatedBuilder", "runnerForClass", 8, 3).
calls("AnnotatedBuilder", "runnerForClass", "AnnotatedBuilder", "buildRunner").
method("AnnotatedBuilder", "getEnclosingClassForNonStaticMemberClass", 7, 2).
calls("AnnotatedBuilder", "getEnclosingClassForNonStaticMemberClass", "Class", "getEnclosingClass").
method("AnnotatedBuilder", "buildRunner", 10, 3).
calls("AnnotatedBuilder", "buildRunner", "Class", "getConstructor").
calls("AnnotatedBuilder", "buildRunner", "Class", "getConstructor").

# junit4/src/main/java/org/junit/internal/builders/IgnoredClassRunner.java

class("IgnoredClassRunner").
method("IgnoredClassRunner", "run", 3, 1).
calls("IgnoredClassRunner", "run", "RunNotifier", "fireTestIgnored").
method("IgnoredClassRunner", "getDescription", 3, 1).
calls("IgnoredClassRunner", "getDescription", "Description", "createSuiteDescription").

# junit4/src/main/java/org/junit/internal/builders/JUnit3Builder.java

class("JUnit3Builder").
method("JUnit3Builder", "runnerForClass", 6, 2).
calls("JUnit3Builder", "runnerForClass", "JUnit3Builder", "isPre4Test").
method("JUnit3Builder", "isPre4Test", 3, 1).

# junit4/src/main/java/org/junit/internal/builders/SuiteMethodBuilder.java

class("SuiteMethodBuilder").
method("SuiteMethodBuilder", "runnerForClass", 6, 2).
calls("SuiteMethodBuilder", "runnerForClass", "SuiteMethodBuilder", "hasSuiteMethod").
method("SuiteMethodBuilder", "hasSuiteMethod", 7, 2).
calls("SuiteMethodBuilder", "hasSuiteMethod", "Class", "getMethod").

# junit4/src/main/java/org/junit/internal/builders/JUnit4Builder.java

class("JUnit4Builder").
method("JUnit4Builder", "runnerForClass", 3, 1).

# junit4/src/main/java/org/junit/internal/builders/AllDefaultPossibilitiesBuilder.java

class("AllDefaultPossibilitiesBuilder").
method("AllDefaultPossibilitiesBuilder", "runnerForClass", 9, 3).
method("AllDefaultPossibilitiesBuilder", "junit4Builder", 3, 1).
method("AllDefaultPossibilitiesBuilder", "junit3Builder", 3, 1).
method("AllDefaultPossibilitiesBuilder", "annotatedBuilder", 3, 1).
method("AllDefaultPossibilitiesBuilder", "ignoredBuilder", 3, 1).
method("AllDefaultPossibilitiesBuilder", "suiteMethodBuilder", 6, 2).

# junit4/src/main/java/org/junit/internal/builders/IgnoredBuilder.java

class("IgnoredBuilder").
method("IgnoredBuilder", "runnerForClass", 6, 2).

# junit4/src/main/java/org/junit/internal/builders/NullBuilder.java

class("NullBuilder").
method("NullBuilder", "runnerForClass", 3, 1).

# junit4/src/main/java/org/junit/internal/matchers/TypeSafeMatcher.java

class("TypeSafeMatcher").
method("TypeSafeMatcher", "matchesSafely", 1, 1).
method("TypeSafeMatcher", "findExpectedType", 8, 4).
calls("TypeSafeMatcher", "findExpectedType", "TypeSafeMatcher", "isMatchesSafelyMethod").
calls("TypeSafeMatcher", "findExpectedType", "Method", "getParameterTypes").
method("TypeSafeMatcher", "isMatchesSafelyMethod", 3, 1).
method("TypeSafeMatcher", "matches", 3, 1).

# junit4/src/main/java/org/junit/internal/matchers/ThrowableMessageMatcher.java

class("ThrowableMessageMatcher").
method("ThrowableMessageMatcher", "describeTo", 4, 1).
calls("ThrowableMessageMatcher", "describeTo", "Description", "appendText").
calls("ThrowableMessageMatcher", "describeTo", "Description", "appendDescriptionOf").
method("ThrowableMessageMatcher", "matchesSafely", 3, 1).
calls("ThrowableMessageMatcher", "matchesSafely", "Matcher", "matches").
method("ThrowableMessageMatcher", "describeMismatchSafely", 4, 1).
calls("ThrowableMessageMatcher", "describeMismatchSafely", "Description", "appendText").
calls("ThrowableMessageMatcher", "describeMismatchSafely", "Matcher", "describeMismatch").
method("ThrowableMessageMatcher", "hasMessage", 3, 1).

# junit4/src/main/java/org/junit/internal/matchers/ThrowableCauseMatcher.java

class("ThrowableCauseMatcher").
method("ThrowableCauseMatcher", "describeTo", 4, 1).
calls("ThrowableCauseMatcher", "describeTo", "Description", "appendText").
calls("ThrowableCauseMatcher", "describeTo", "Description", "appendDescriptionOf").
method("ThrowableCauseMatcher", "matchesSafely", 3, 1).
calls("ThrowableCauseMatcher", "matchesSafely", "Matcher", "matches").
method("ThrowableCauseMatcher", "describeMismatchSafely", 4, 1).
calls("ThrowableCauseMatcher", "describeMismatchSafely", "Description", "appendText").
calls("ThrowableCauseMatcher", "describeMismatchSafely", "Matcher", "describeMismatch").
method("ThrowableCauseMatcher", "hasCause", 3, 1).

# junit4/src/main/java/org/junit/internal/matchers/StacktracePrintingMatcher.java

class("StacktracePrintingMatcher").
method("StacktracePrintingMatcher", "describeTo", 3, 1).
calls("StacktracePrintingMatcher", "describeTo", "Matcher", "describeTo").
method("StacktracePrintingMatcher", "matchesSafely", 3, 1).
calls("StacktracePrintingMatcher", "matchesSafely", "Matcher", "matches").
method("StacktracePrintingMatcher", "describeMismatchSafely", 5, 1).
calls("StacktracePrintingMatcher", "describeMismatchSafely", "Matcher", "describeMismatch").
calls("StacktracePrintingMatcher", "describeMismatchSafely", "Description", "appendText").
calls("StacktracePrintingMatcher", "describeMismatchSafely", "Description", "appendText").
method("StacktracePrintingMatcher", "readStacktrace", 3, 1).
calls("StacktracePrintingMatcher", "readStacktrace", "Throwables", "getStacktrace").
method("StacktracePrintingMatcher", "isThrowable", 3, 1).
method("StacktracePrintingMatcher", "isException", 3, 1).

# junit4/src/main/java/org/junit/internal/requests/SortingRequest.java

class("SortingRequest").
method("SortingRequest", "getRunner", 5, 1).

# junit4/src/main/java/org/junit/internal/requests/ClassRequest.java

class("ClassRequest").
method("ClassRequest", "getRunner", 12, 3).
calls("ClassRequest", "getRunner", "Lock", "lock").
calls("ClassRequest", "getRunner", "Lock", "unlock").

# junit4/src/main/java/org/junit/internal/requests/package-info.java


# junit4/src/main/java/org/junit/internal/requests/FilterRequest.java

class("FilterRequest").
method("FilterRequest", "getRunner", 8, 2).
calls("FilterRequest", "getRunner", "Filter", "apply").

# junit4/src/main/java/org/junit/internal/management/FakeRuntimeMXBean.java

class("FakeRuntimeMXBean").
method("FakeRuntimeMXBean", "getInputArguments", 3, 1).
calls("FakeRuntimeMXBean", "getInputArguments", "Collections", "emptyList").

# junit4/src/main/java/org/junit/internal/management/ReflectiveRuntimeMXBean.java

class("ReflectiveRuntimeMXBean").
method("ReflectiveRuntimeMXBean", "getInputArguments", 11, 6).
calls("ReflectiveRuntimeMXBean", "getInputArguments", "Collections", "emptyList").

# junit4/src/main/java/org/junit/internal/management/ThreadMXBean.java


# junit4/src/main/java/org/junit/internal/management/ManagementFactory.java

class("ManagementFactory").
method("ManagementFactory", "getRuntimeMXBean", 3, 1).
method("ManagementFactory", "getThreadMXBean", 3, 1).

# junit4/src/main/java/org/junit/internal/management/RuntimeMXBean.java


# junit4/src/main/java/org/junit/internal/management/FakeThreadMXBean.java

class("FakeThreadMXBean").
method("FakeThreadMXBean", "getThreadCpuTime", 3, 1).
method("FakeThreadMXBean", "isThreadCpuTimeSupported", 3, 1).

# junit4/src/main/java/org/junit/internal/management/ReflectiveThreadMXBean.java

class("ReflectiveThreadMXBean").
method("ReflectiveThreadMXBean", "getThreadCpuTime", 17, 6).
method("ReflectiveThreadMXBean", "isThreadCpuTimeSupported", 11, 6).

# junit4/src/main/java/org/junit/internal/runners/statements/InvokeMethod.java

class("InvokeMethod").
method("InvokeMethod", "evaluate", 3, 1).
calls("InvokeMethod", "evaluate", "FrameworkMethod", "invokeExplosively").

# junit4/src/main/java/org/junit/internal/runners/statements/Fail.java

class("Fail").
method("Fail", "evaluate", 3, 1).

# junit4/src/main/java/org/junit/internal/runners/statements/FailOnTimeout.java

class("FailOnTimeout").
method("FailOnTimeout", "builder", 3, 1).
method("FailOnTimeout", "evaluate", 13, 2).
calls("FailOnTimeout", "evaluate", "Thread", "setDaemon").
calls("FailOnTimeout", "evaluate", "Thread", "start").
calls("FailOnTimeout", "evaluate", "CallableStatement", "awaitStarted").
method("FailOnTimeout", "getResult", 14, 5).
calls("FailOnTimeout", "getResult", "FutureTask", "get").
calls("FailOnTimeout", "getResult", "FutureTask", "get").
calls("FailOnTimeout", "getResult", "ExecutionException", "getCause").
calls("FailOnTimeout", "getResult", "FailOnTimeout", "createTimeoutException").
method("FailOnTimeout", "createTimeoutException", 16, 3).
calls("FailOnTimeout", "createTimeoutException", "Exception", "setStackTrace").
calls("FailOnTimeout", "createTimeoutException", "Thread", "interrupt").
calls("FailOnTimeout", "createTimeoutException", "Exception", "setStackTrace").
method("FailOnTimeout", "getStackTrace", 6, 2).
calls("FailOnTimeout", "getStackTrace", "Thread", "getStackTrace").
method("FailOnTimeout", "getStuckThread", 17, 5).
calls("FailOnTimeout", "getStuckThread", "List", "isEmpty").
method("FailOnTimeout", "getThreadsInGroup", 12, 3).
calls("FailOnTimeout", "getThreadsInGroup", "Arrays", "asList").
calls("FailOnTimeout", "getThreadsInGroup", "Collections", "emptyList").
method("FailOnTimeout", "cpuTime", 9, 3).
calls("FailOnTimeout", "cpuTime", "ThreadMXBean", "isThreadCpuTimeSupported").
calls("FailOnTimeout", "cpuTime", "ThreadMXBean", "getThreadCpuTime").

# junit4/src/main/java/org/junit/internal/runners/statements/ExpectException.java

class("ExpectException").
method("ExpectException", "evaluate", 18, 6).
calls("ExpectException", "evaluate", "Statement", "evaluate").
calls("ExpectException", "evaluate", "Class", "isAssignableFrom").
calls("ExpectException", "evaluate", "Class", "isAssignableFrom").

# junit4/src/main/java/org/junit/internal/runners/statements/RunAfters.java

class("RunAfters").
method("RunAfters", "evaluate", 14, 4).
calls("RunAfters", "evaluate", "Statement", "evaluate").
calls("RunAfters", "evaluate", "List", "add").
calls("RunAfters", "evaluate", "RunAfters", "invokeMethod").
calls("RunAfters", "evaluate", "List", "add").
calls("RunAfters", "evaluate", "MultipleFailureException", "assertEmpty").
method("RunAfters", "invokeMethod", 3, 1).
calls("RunAfters", "invokeMethod", "FrameworkMethod", "invokeExplosively").

# junit4/src/main/java/org/junit/internal/runners/statements/RunBefores.java

class("RunBefores").
method("RunBefores", "evaluate", 5, 2).
calls("RunBefores", "evaluate", "RunBefores", "invokeMethod").
calls("RunBefores", "evaluate", "Statement", "evaluate").
method("RunBefores", "invokeMethod", 3, 1).
calls("RunBefores", "invokeMethod", "FrameworkMethod", "invokeExplosively").

# junit4/src/main/java/org/junit/internal/runners/rules/RuleMemberValidator.java

class("RuleMemberValidator").
method("RuleMemberValidator", "validate", 5, 2).
calls("RuleMemberValidator", "validate", "RuleMemberValidator", "validateMember").
method("RuleMemberValidator", "validateMember", 4, 2).
calls("RuleMemberValidator", "validateMember", "RuleValidator", "validate").
method("RuleMemberValidator", "classRuleValidatorBuilder", 3, 1).
method("RuleMemberValidator", "testRuleValidatorBuilder", 3, 1).
method("RuleMemberValidator", "isRuleType", 3, 1).
method("RuleMemberValidator", "isTestRule", 3, 1).
method("RuleMemberValidator", "isMethodRule", 3, 1).

# junit4/src/main/java/org/junit/internal/runners/rules/ValidationError.java

class("ValidationError").

# junit4/src/main/java/org/junit/internal/runners/model/ReflectiveCallable.java

class("ReflectiveCallable").
method("ReflectiveCallable", "run", 6, 2).
calls("ReflectiveCallable", "run", "ReflectiveCallable", "runReflectiveCall").
calls("ReflectiveCallable", "run", "InvocationTargetException", "getTargetException").
method("ReflectiveCallable", "runReflectiveCall", 1, 1).

# junit4/src/main/java/org/junit/internal/runners/model/MultipleFailureException.java

class("MultipleFailureException").

# junit4/src/main/java/org/junit/internal/runners/model/EachTestNotifier.java

class("EachTestNotifier").
method("EachTestNotifier", "addFailure", 7, 2).
calls("EachTestNotifier", "addFailure", "EachTestNotifier", "addMultipleFailureException").
calls("EachTestNotifier", "addFailure", "RunNotifier", "fireTestFailure").
method("EachTestNotifier", "addMultipleFailureException", 4, 2).
calls("EachTestNotifier", "addMultipleFailureException", "EachTestNotifier", "addFailure").
method("EachTestNotifier", "addFailedAssumption", 3, 1).
calls("EachTestNotifier", "addFailedAssumption", "RunNotifier", "fireTestAssumptionFailed").
method("EachTestNotifier", "fireTestFinished", 3, 1).
calls("EachTestNotifier", "fireTestFinished", "RunNotifier", "fireTestFinished").
method("EachTestNotifier", "fireTestStarted", 3, 1).
calls("EachTestNotifier", "fireTestStarted", "RunNotifier", "fireTestStarted").
method("EachTestNotifier", "fireTestIgnored", 3, 1).
calls("EachTestNotifier", "fireTestIgnored", "RunNotifier", "fireTestIgnored").
method("EachTestNotifier", "fireTestSuiteStarted", 3, 1).
calls("EachTestNotifier", "fireTestSuiteStarted", "RunNotifier", "fireTestSuiteStarted").
method("EachTestNotifier", "fireTestSuiteFinished", 3, 1).
calls("EachTestNotifier", "fireTestSuiteFinished", "RunNotifier", "fireTestSuiteFinished").

# junit4/src/main/java/org/junit/experimental/max/MaxCore.java

class("MaxCore").
method("MaxCore", "forFolder", 3, 1).
calls("MaxCore", "forFolder", "MaxCore", "storedLocally").
method("MaxCore", "storedLocally", 3, 1).
method("MaxCore", "run", 3, 1).
calls("MaxCore", "run", "MaxCore", "run").
method("MaxCore", "run", 3, 1).
calls("MaxCore", "run", "MaxCore", "run").
method("MaxCore", "run", 4, 1).
calls("MaxCore", "run", "JUnitCore", "addListener").
calls("MaxCore", "run", "JUnitCore", "run").
method("MaxCore", "sortRequest", 8, 2).
calls("MaxCore", "sortRequest", "Collections", "sort").
calls("MaxCore", "sortRequest", "MaxCore", "constructLeafRequest").
method("MaxCore", "constructLeafRequest", 6, 2).
calls("MaxCore", "constructLeafRequest", "List", "add").
method("MaxCore", "buildRunner", 17, 5).
calls("MaxCore", "buildRunner", "Description", "toString").
calls("MaxCore", "buildRunner", "Suite", "emptySuite").
calls("MaxCore", "buildRunner", "Description", "toString").
calls("MaxCore", "buildRunner", "Request", "aClass").
calls("MaxCore", "buildRunner", "Request", "method").
method("MaxCore", "getMalformedTestClass", 6, 2).
calls("MaxCore", "getMalformedTestClass", "Class", "forName").
method("MaxCore", "sortedLeavesForTest", 3, 1).
calls("MaxCore", "sortedLeavesForTest", "MaxCore", "findLeaves").
method("MaxCore", "findLeaves", 5, 1).
calls("MaxCore", "findLeaves", "MaxCore", "findLeaves").
method("MaxCore", "findLeaves", 12, 4).
calls("MaxCore", "findLeaves", "Description", "getChildren").
calls("MaxCore", "findLeaves", "Description", "toString").
calls("MaxCore", "findLeaves", "List", "add").
calls("MaxCore", "findLeaves", "List", "add").
calls("MaxCore", "findLeaves", "MaxCore", "findLeaves").

# junit4/src/main/java/org/junit/experimental/max/CouldNotReadCoreException.java

class("CouldNotReadCoreException").

# junit4/src/main/java/org/junit/experimental/max/MaxHistory.java

class("MaxHistory").
method("MaxHistory", "forFolder", 10, 3).
calls("MaxHistory", "forFolder", "File", "exists").
calls("MaxHistory", "forFolder", "MaxHistory", "readHistory").
calls("MaxHistory", "forFolder", "CouldNotReadCoreException", "printStackTrace").
calls("MaxHistory", "forFolder", "File", "delete").
method("MaxHistory", "readHistory", 14, 2).
calls("MaxHistory", "readHistory", "ObjectInputStream", "close").
calls("MaxHistory", "readHistory", "FileInputStream", "close").
method("MaxHistory", "save", 5, 1).
calls("MaxHistory", "save", "ObjectOutputStream", "writeObject").
calls("MaxHistory", "save", "ObjectOutputStream", "close").
method("MaxHistory", "getFailureTimestamp", 3, 1).
calls("MaxHistory", "getFailureTimestamp", "Map", "get").
method("MaxHistory", "putTestFailureTimestamp", 3, 1).
calls("MaxHistory", "putTestFailureTimestamp", "Map", "put").
method("MaxHistory", "isNewTest", 3, 1).
calls("MaxHistory", "isNewTest", "Map", "containsKey").
method("MaxHistory", "getTestDuration", 3, 1).
calls("MaxHistory", "getTestDuration", "Map", "get").
method("MaxHistory", "putTestDuration", 3, 1).
calls("MaxHistory", "putTestDuration", "Map", "put").
method("MaxHistory", "listener", 3, 1).
method("MaxHistory", "testComparator", 3, 1).

# junit4/src/main/java/org/junit/experimental/runners/Enclosed.java

class("Enclosed").
method("Enclosed", "filterAbstractClasses", 8, 3).
calls("Enclosed", "filterAbstractClasses", "Modifier", "isAbstract").
calls("Enclosed", "filterAbstractClasses", "List", "add").
calls("Enclosed", "filterAbstractClasses", "List", "toArray").

# junit4/src/main/java/org/junit/experimental/categories/IncludeCategories.java

class("IncludeCategories").
method("IncludeCategories", "createFilter", 3, 1).

# junit4/src/main/java/org/junit/experimental/categories/CategoryFilterFactory.java

class("CategoryFilterFactory").
method("CategoryFilterFactory", "createFilter", 6, 2).
calls("CategoryFilterFactory", "createFilter", "CategoryFilterFactory", "createFilter").
method("CategoryFilterFactory", "createFilter", 1, 1).
method("CategoryFilterFactory", "parseCategories", 7, 2).
calls("CategoryFilterFactory", "parseCategories", "List", "add").

# junit4/src/main/java/org/junit/experimental/categories/ExcludeCategories.java

class("ExcludeCategories").
method("ExcludeCategories", "createFilter", 3, 1).

# junit4/src/main/java/org/junit/experimental/categories/Category.java


# junit4/src/main/java/org/junit/experimental/categories/CategoryValidator.java

class("CategoryValidator").
method("CategoryValidator", "validateAnnotatedMethod", 10, 4).
calls("CategoryValidator", "validateAnnotatedMethod", "Annotation", "annotationType").
calls("CategoryValidator", "validateAnnotatedMethod", "CategoryValidator", "addErrorMessage").
calls("CategoryValidator", "validateAnnotatedMethod", "CategoryValidator", "unmodifiableList").
method("CategoryValidator", "addErrorMessage", 4, 1).
calls("CategoryValidator", "addErrorMessage", "List", "add").

# junit4/src/main/java/org/junit/experimental/categories/Categories.java

class("Categories").
method("Categories", "getIncludedCategory", 4, 1).
calls("Categories", "getIncludedCategory", "Categories", "createSet").
method("Categories", "isAnyIncluded", 4, 1).
method("Categories", "getExcludedCategory", 4, 1).
calls("Categories", "getExcludedCategory", "Categories", "createSet").
method("Categories", "isAnyExcluded", 4, 1).
method("Categories", "hasAssignableTo", 7, 3).
calls("Categories", "hasAssignableTo", "Class", "isAssignableFrom").
method("Categories", "createSet", 10, 4).
calls("Categories", "createSet", "Collections", "emptySet").
method("Categories", "nullableClassToSet", 3, 1).

# junit4/src/main/java/org/junit/experimental/results/FailureList.java

class("FailureList").
method("FailureList", "result", 10, 3).
calls("FailureList", "result", "RunListener", "testFailure").

# junit4/src/main/java/org/junit/experimental/results/PrintableResult.java

class("PrintableResult").
method("PrintableResult", "testResult", 3, 1).
calls("PrintableResult", "testResult", "PrintableResult", "testResult").
method("PrintableResult", "testResult", 3, 1).
method("PrintableResult", "failureCount", 3, 1).
calls("PrintableResult", "failureCount", "Result", "getFailures").
method("PrintableResult", "failures", 3, 1).
calls("PrintableResult", "failures", "Result", "getFailures").
method("PrintableResult", "toString", 5, 1).
calls("PrintableResult", "toString", "ByteArrayOutputStream", "toString").

# junit4/src/main/java/org/junit/experimental/results/ResultMatchers.java

class("ResultMatchers").
method("ResultMatchers", "isSuccessful", 3, 1).
calls("ResultMatchers", "isSuccessful", "ResultMatchers", "failureCountIs").
method("ResultMatchers", "failureCountIs", 3, 1).
method("ResultMatchers", "hasSingleFailureContaining", 3, 1).
method("ResultMatchers", "hasSingleFailureMatching", 3, 1).
method("ResultMatchers", "hasFailureContaining", 3, 1).

# junit4/src/main/java/org/junit/experimental/theories/ParameterSupplier.java

class("ParameterSupplier").
method("ParameterSupplier", "getValueSources", 1, 1).

# junit4/src/main/java/org/junit/experimental/theories/Theory.java


# junit4/src/main/java/org/junit/experimental/theories/DataPoints.java


# junit4/src/main/java/org/junit/experimental/theories/DataPoint.java


# junit4/src/main/java/org/junit/experimental/theories/PotentialAssignment.java

class("PotentialAssignment").
method("PotentialAssignment", "forValue", 3, 1).
method("PotentialAssignment", "getValue", 1, 1).
method("PotentialAssignment", "getDescription", 1, 1).

# junit4/src/main/java/org/junit/experimental/theories/ParametersSuppliedBy.java


# junit4/src/main/java/org/junit/experimental/theories/FromDataPoints.java


# junit4/src/main/java/org/junit/experimental/theories/ParameterSignature.java

class("ParameterSignature").
method("ParameterSignature", "buildConvertableTypesMap", 12, 1).
calls("ParameterSignature", "buildConvertableTypesMap", "ParameterSignature", "putSymmetrically").
calls("ParameterSignature", "buildConvertableTypesMap", "ParameterSignature", "putSymmetrically").
calls("ParameterSignature", "buildConvertableTypesMap", "ParameterSignature", "putSymmetrically").
calls("ParameterSignature", "buildConvertableTypesMap", "ParameterSignature", "putSymmetrically").
calls("ParameterSignature", "buildConvertableTypesMap", "ParameterSignature", "putSymmetrically").
calls("ParameterSignature", "buildConvertableTypesMap", "ParameterSignature", "putSymmetrically").
calls("ParameterSignature", "buildConvertableTypesMap", "ParameterSignature", "putSymmetrically").
calls("ParameterSignature", "buildConvertableTypesMap", "ParameterSignature", "putSymmetrically").
calls("ParameterSignature", "buildConvertableTypesMap", "Collections", "unmodifiableMap").
method("ParameterSignature", "putSymmetrically", 4, 1).
calls("ParameterSignature", "putSymmetrically", "Map", "put").
calls("ParameterSignature", "putSymmetrically", "Map", "put").
method("ParameterSignature", "signatures", 3, 1).
calls("ParameterSignature", "signatures", "ParameterSignature", "signatures").
method("ParameterSignature", "signatures", 3, 1).
calls("ParameterSignature", "signatures", "ParameterSignature", "signatures").
method("ParameterSignature", "signatures", 6, 2).
calls("ParameterSignature", "signatures", "ArrayList", "add").
method("ParameterSignature", "canAcceptValue", 3, 1).
method("ParameterSignature", "canAcceptType", 3, 1).
method("ParameterSignature", "canPotentiallyAcceptType", 3, 1).
method("ParameterSignature", "isAssignableViaTypeConversion", 8, 2).
calls("ParameterSignature", "isAssignableViaTypeConversion", "CONVERTABLE_TYPES_MAP", "containsKey").
calls("ParameterSignature", "isAssignableViaTypeConversion", "Class", "isAssignableFrom").
method("ParameterSignature", "getType", 3, 1).
method("ParameterSignature", "getAnnotations", 3, 1).
calls("ParameterSignature", "getAnnotations", "Arrays", "asList").
method("ParameterSignature", "hasAnnotation", 3, 1).
method("ParameterSignature", "findDeepAnnotation", 4, 1).
calls("ParameterSignature", "findDeepAnnotation", "ParameterSignature", "findDeepAnnotation").
method("ParameterSignature", "findDeepAnnotation", 14, 5).
calls("ParameterSignature", "findDeepAnnotation", "Class", "isInstance").
calls("ParameterSignature", "findDeepAnnotation", "Class", "cast").
calls("ParameterSignature", "findDeepAnnotation", "Class", "cast").
method("ParameterSignature", "getAnnotation", 7, 3).
calls("ParameterSignature", "getAnnotation", "Class", "isInstance").
calls("ParameterSignature", "getAnnotation", "Class", "cast").

# junit4/src/main/java/org/junit/experimental/theories/Theories.java

class("Theories").
method("Theories", "collectInitializationErrors", 5, 1).
calls("Theories", "collectInitializationErrors", "Theories", "validateDataPointFields").
calls("Theories", "collectInitializationErrors", "Theories", "validateDataPointMethods").
method("Theories", "validateDataPointFields", 13, 5).
calls("Theories", "validateDataPointFields", "Modifier", "isStatic").
calls("Theories", "validateDataPointFields", "List", "add").
calls("Theories", "validateDataPointFields", "Modifier", "isPublic").
calls("Theories", "validateDataPointFields", "List", "add").
method("Theories", "validateDataPointMethods", 13, 5).
calls("Theories", "validateDataPointMethods", "Modifier", "isStatic").
calls("Theories", "validateDataPointMethods", "List", "add").
calls("Theories", "validateDataPointMethods", "Modifier", "isPublic").
calls("Theories", "validateDataPointMethods", "List", "add").
method("Theories", "validateConstructor", 3, 1).
calls("Theories", "validateConstructor", "Theories", "validateOnlyOneConstructor").
method("Theories", "validateTestMethods", 14, 5).
calls("Theories", "validateTestMethods", "FrameworkMethod", "validatePublicVoid").
calls("Theories", "validateTestMethods", "FrameworkMethod", "validateNoTypeParametersOnArgs").
calls("Theories", "validateTestMethods", "FrameworkMethod", "validatePublicVoidNoArg").
calls("Theories", "validateTestMethods", "Theories", "validateParameterSupplier").
method("Theories", "validateParameterSupplier", 11, 3).
calls("Theories", "validateParameterSupplier", "List", "add").
calls("Theories", "validateParameterSupplier", "List", "add").
method("Theories", "computeTestMethods", 7, 1).
calls("Theories", "computeTestMethods", "List", "removeAll").
calls("Theories", "computeTestMethods", "List", "addAll").
method("Theories", "methodBlock", 3, 1).

# junit4/src/main/java/org/junit/experimental/theories/internal/ParameterizedAssertionError.java

class("ParameterizedAssertionError").
method("ParameterizedAssertionError", "equals", 3, 1).
method("ParameterizedAssertionError", "hashCode", 3, 1).
calls("ParameterizedAssertionError", "hashCode", "ParameterizedAssertionError", "toString").
method("ParameterizedAssertionError", "join", 3, 1).
calls("ParameterizedAssertionError", "join", "ParameterizedAssertionError", "join").
method("ParameterizedAssertionError", "join", 11, 3).
calls("ParameterizedAssertionError", "join", "Iterator", "hasNext").
calls("ParameterizedAssertionError", "join", "StringBuilder", "append").
calls("ParameterizedAssertionError", "join", "Iterator", "hasNext").
calls("ParameterizedAssertionError", "join", "StringBuilder", "append").
calls("ParameterizedAssertionError", "join", "StringBuilder", "toString").
method("ParameterizedAssertionError", "stringValueOf", 6, 2).
calls("ParameterizedAssertionError", "stringValueOf", "String", "valueOf").

# junit4/src/main/java/org/junit/experimental/theories/internal/Assignments.java

class("Assignments").
method("Assignments", "allUnassigned", 6, 1).
calls("Assignments", "allUnassigned", "List", "addAll").
method("Assignments", "isComplete", 3, 1).
calls("Assignments", "isComplete", "List", "isEmpty").
method("Assignments", "nextUnassigned", 3, 1).
calls("Assignments", "nextUnassigned", "List", "get").
method("Assignments", "assignNext", 5, 1).
calls("Assignments", "assignNext", "List", "add").
method("Assignments", "getActualValues", 6, 2).
method("Assignments", "potentialsForNextUnassigned", 8, 2).
calls("Assignments", "potentialsForNextUnassigned", "List", "isEmpty").
method("Assignments", "generateAssignmentsFromTypeAlone", 12, 3).
calls("Assignments", "generateAssignmentsFromTypeAlone", "Class", "isEnum").
calls("Assignments", "generateAssignmentsFromTypeAlone", "Assignments", "emptyList").
method("Assignments", "getSupplier", 8, 2).
calls("Assignments", "getSupplier", "Assignments", "buildParameterSupplierFromClass").
method("Assignments", "buildParameterSupplierFromClass", 9, 3).
calls("Assignments", "buildParameterSupplierFromClass", "Class", "newInstance").
method("Assignments", "getConstructorArguments", 3, 1).
calls("Assignments", "getConstructorArguments", "Assignments", "getActualValues").
method("Assignments", "getMethodArguments", 3, 1).
calls("Assignments", "getMethodArguments", "Assignments", "getActualValues").
method("Assignments", "getAllArguments", 3, 1).
calls("Assignments", "getAllArguments", "Assignments", "getActualValues").
method("Assignments", "getConstructorParameterCount", 5, 1).
method("Assignments", "getArgumentStrings", 6, 2).

# junit4/src/main/java/org/junit/experimental/theories/internal/AllMembersSupplier.java

class("AllMembersSupplier").
method("AllMembersSupplier", "getValueSources", 8, 1).
calls("AllMembersSupplier", "getValueSources", "AllMembersSupplier", "addSinglePointFields").
calls("AllMembersSupplier", "getValueSources", "AllMembersSupplier", "addMultiPointFields").
calls("AllMembersSupplier", "getValueSources", "AllMembersSupplier", "addSinglePointMethods").
calls("AllMembersSupplier", "getValueSources", "AllMembersSupplier", "addMultiPointMethods").
method("AllMembersSupplier", "addMultiPointMethods", 15, 5).
calls("AllMembersSupplier", "addMultiPointMethods", "AllMembersSupplier", "addDataPointsValues").
method("AllMembersSupplier", "addSinglePointMethods", 6, 3).
calls("AllMembersSupplier", "addSinglePointMethods", "ParameterSignature", "canAcceptType").
calls("AllMembersSupplier", "addSinglePointMethods", "List", "add").
method("AllMembersSupplier", "addMultiPointFields", 5, 2).
calls("AllMembersSupplier", "addMultiPointFields", "AllMembersSupplier", "addDataPointsValues").
method("AllMembersSupplier", "addSinglePointFields", 7, 3).
calls("AllMembersSupplier", "addSinglePointFields", "ParameterSignature", "canAcceptValue").
calls("AllMembersSupplier", "addSinglePointFields", "List", "add").
method("AllMembersSupplier", "addDataPointsValues", 9, 3).
calls("AllMembersSupplier", "addDataPointsValues", "Class", "isArray").
calls("AllMembersSupplier", "addDataPointsValues", "AllMembersSupplier", "addArrayValues").
calls("AllMembersSupplier", "addDataPointsValues", "AllMembersSupplier", "addIterableValues").
method("AllMembersSupplier", "addArrayValues", 7, 3).
calls("AllMembersSupplier", "addArrayValues", "ParameterSignature", "canAcceptValue").
calls("AllMembersSupplier", "addArrayValues", "List", "add").
method("AllMembersSupplier", "addIterableValues", 10, 3).
calls("AllMembersSupplier", "addIterableValues", "Iterator", "hasNext").
calls("AllMembersSupplier", "addIterableValues", "ParameterSignature", "canAcceptValue").
calls("AllMembersSupplier", "addIterableValues", "List", "add").
method("AllMembersSupplier", "getStaticFieldValue", 8, 3).
calls("AllMembersSupplier", "getStaticFieldValue", "Field", "get").
method("AllMembersSupplier", "isAssignableToAnyOf", 7, 3).
calls("AllMembersSupplier", "isAssignableToAnyOf", "Class", "isAssignableFrom").
method("AllMembersSupplier", "getDataPointsMethods", 3, 1).
calls("AllMembersSupplier", "getDataPointsMethods", "TestClass", "getAnnotatedMethods").
method("AllMembersSupplier", "getSingleDataPointFields", 7, 2).
calls("AllMembersSupplier", "getSingleDataPointFields", "Collection", "add").
method("AllMembersSupplier", "getDataPointsFields", 7, 2).
calls("AllMembersSupplier", "getDataPointsFields", "Collection", "add").
method("AllMembersSupplier", "getSingleDataPointMethods", 3, 1).
calls("AllMembersSupplier", "getSingleDataPointMethods", "TestClass", "getAnnotatedMethods").

# junit4/src/main/java/org/junit/experimental/theories/internal/BooleanSupplier.java

class("BooleanSupplier").
method("BooleanSupplier", "getValueSources", 3, 1).
calls("BooleanSupplier", "getValueSources", "Arrays", "asList").

# junit4/src/main/java/org/junit/experimental/theories/internal/EnumSupplier.java

class("EnumSupplier").
method("EnumSupplier", "getValueSources", 7, 2).
calls("EnumSupplier", "getValueSources", "List", "add").

# junit4/src/main/java/org/junit/experimental/theories/internal/SpecificDataPointsSupplier.java

class("SpecificDataPointsSupplier").
method("SpecificDataPointsSupplier", "getSingleDataPointFields", 11, 3).
calls("SpecificDataPointsSupplier", "getSingleDataPointFields", "Arrays", "asList").
calls("SpecificDataPointsSupplier", "getSingleDataPointFields", "List", "add").
method("SpecificDataPointsSupplier", "getDataPointsFields", 11, 3).
calls("SpecificDataPointsSupplier", "getDataPointsFields", "Arrays", "asList").
calls("SpecificDataPointsSupplier", "getDataPointsFields", "List", "add").
method("SpecificDataPointsSupplier", "getSingleDataPointMethods", 11, 3).
calls("SpecificDataPointsSupplier", "getSingleDataPointMethods", "Arrays", "asList").
calls("SpecificDataPointsSupplier", "getSingleDataPointMethods", "List", "add").
method("SpecificDataPointsSupplier", "getDataPointsMethods", 11, 3).
calls("SpecificDataPointsSupplier", "getDataPointsMethods", "Arrays", "asList").
calls("SpecificDataPointsSupplier", "getDataPointsMethods", "List", "add").

# junit4/src/main/java/org/junit/experimental/theories/suppliers/TestedOnSupplier.java

class("TestedOnSupplier").
method("TestedOnSupplier", "getValueSources", 8, 2).
calls("TestedOnSupplier", "getValueSources", "List", "add").

# junit4/src/main/java/org/junit/experimental/theories/suppliers/TestedOn.java


# junit4/src/main/java/org/junit/runners/parameterized/ParametersRunnerFactory.java


# junit4/src/main/java/org/junit/runners/parameterized/TestWithParameters.java

class("TestWithParameters").
method("TestWithParameters", "getName", 3, 1).
method("TestWithParameters", "getTestClass", 3, 1).
method("TestWithParameters", "getParameters", 3, 1).
method("TestWithParameters", "hashCode", 6, 1).
method("TestWithParameters", "equals", 13, 4).
method("TestWithParameters", "toString", 3, 1).

# junit4/src/main/java/org/junit/runners/parameterized/BlockJUnit4ClassRunnerWithParametersFactory.java

class("BlockJUnit4ClassRunnerWithParametersFactory").
method("BlockJUnit4ClassRunnerWithParametersFactory", "createRunnerForTestWithParameters", 3, 1).

# junit4/src/main/java/org/junit/runners/parameterized/BlockJUnit4ClassRunnerWithParameters.java

class("BlockJUnit4ClassRunnerWithParameters").
method("BlockJUnit4ClassRunnerWithParameters", "createTest", 11, 1).
calls("BlockJUnit4ClassRunnerWithParameters", "createTest", "BlockJUnit4ClassRunnerWithParameters", "createTestUsingConstructorInjection").
calls("BlockJUnit4ClassRunnerWithParameters", "createTest", "BlockJUnit4ClassRunnerWithParameters", "createTestUsingFieldInjection").
method("BlockJUnit4ClassRunnerWithParameters", "createTestUsingConstructorInjection", 3, 1).
calls("BlockJUnit4ClassRunnerWithParameters", "createTestUsingConstructorInjection", "BlockJUnit4ClassRunnerWithParameters", "getTestClass").
method("BlockJUnit4ClassRunnerWithParameters", "createTestUsingFieldInjection", 16, 4).
calls("BlockJUnit4ClassRunnerWithParameters", "createTestUsingFieldInjection", "Field", "set").
method("BlockJUnit4ClassRunnerWithParameters", "getName", 3, 1).
method("BlockJUnit4ClassRunnerWithParameters", "testName", 3, 1).
method("BlockJUnit4ClassRunnerWithParameters", "validateConstructor", 6, 2).
calls("BlockJUnit4ClassRunnerWithParameters", "validateConstructor", "BlockJUnit4ClassRunnerWithParameters", "validateOnlyOneConstructor").
calls("BlockJUnit4ClassRunnerWithParameters", "validateConstructor", "BlockJUnit4ClassRunnerWithParameters", "validateZeroArgConstructor").
method("BlockJUnit4ClassRunnerWithParameters", "validateFields", 23, 7).
calls("BlockJUnit4ClassRunnerWithParameters", "validateFields", "List", "add").
calls("BlockJUnit4ClassRunnerWithParameters", "validateFields", "List", "add").
calls("BlockJUnit4ClassRunnerWithParameters", "validateFields", "List", "add").
method("BlockJUnit4ClassRunnerWithParameters", "classBlock", 6, 1).
method("BlockJUnit4ClassRunnerWithParameters", "withBeforeParams", 4, 1).
method("BlockJUnit4ClassRunnerWithParameters", "withAfterParams", 4, 1).
method("BlockJUnit4ClassRunnerWithParameters", "getRunnerAnnotations", 11, 3).
calls("BlockJUnit4ClassRunnerWithParameters", "getRunnerAnnotations", "Annotation", "annotationType").
method("BlockJUnit4ClassRunnerWithParameters", "getAnnotatedFieldsByParameter", 3, 1).
calls("BlockJUnit4ClassRunnerWithParameters", "getAnnotatedFieldsByParameter", "BlockJUnit4ClassRunnerWithParameters", "getTestClass").
method("BlockJUnit4ClassRunnerWithParameters", "getInjectionType", 7, 2).
calls("BlockJUnit4ClassRunnerWithParameters", "getInjectionType", "BlockJUnit4ClassRunnerWithParameters", "fieldsAreAnnotated").
method("BlockJUnit4ClassRunnerWithParameters", "fieldsAreAnnotated", 3, 1).
calls("BlockJUnit4ClassRunnerWithParameters", "fieldsAreAnnotated", "BlockJUnit4ClassRunnerWithParameters", "getAnnotatedFieldsByParameter").

# junit4/src/main/java/org/junit/runners/model/TestTimedOutException.java

class("TestTimedOutException").
method("TestTimedOutException", "getTimeout", 3, 1).
method("TestTimedOutException", "getTimeUnit", 3, 1).

# junit4/src/main/java/org/junit/runners/model/RunnerBuilder.java

class("RunnerBuilder").
method("RunnerBuilder", "runnerForClass", 1, 1).
method("RunnerBuilder", "safeRunnerForClass", 6, 2).
calls("RunnerBuilder", "safeRunnerForClass", "RunnerBuilder", "runnerForClass").
method("RunnerBuilder", "addParent", 6, 2).
calls("RunnerBuilder", "addParent", "Set", "add").
method("RunnerBuilder", "removeParent", 3, 1).
calls("RunnerBuilder", "removeParent", "Set", "remove").
method("RunnerBuilder", "runners", 7, 1).
calls("RunnerBuilder", "runners", "RunnerBuilder", "addParent").
calls("RunnerBuilder", "runners", "RunnerBuilder", "runners").
calls("RunnerBuilder", "runners", "RunnerBuilder", "removeParent").
method("RunnerBuilder", "runners", 3, 1).
calls("RunnerBuilder", "runners", "RunnerBuilder", "runners").
method("RunnerBuilder", "runners", 9, 3).
calls("RunnerBuilder", "runners", "List", "add").

# junit4/src/main/java/org/junit/runners/model/MultipleFailureException.java

class("MultipleFailureException").
method("MultipleFailureException", "getFailures", 3, 1).
calls("MultipleFailureException", "getFailures", "Collections", "unmodifiableList").
method("MultipleFailureException", "getMessage", 6, 2).
calls("MultipleFailureException", "getMessage", "StringBuilder", "append").
calls("MultipleFailureException", "getMessage", "StringBuilder", "toString").
method("MultipleFailureException", "printStackTrace", 4, 2).
calls("MultipleFailureException", "printStackTrace", "Throwable", "printStackTrace").
method("MultipleFailureException", "printStackTrace", 4, 2).
calls("MultipleFailureException", "printStackTrace", "Throwable", "printStackTrace").
method("MultipleFailureException", "printStackTrace", 4, 2).
calls("MultipleFailureException", "printStackTrace", "Throwable", "printStackTrace").
method("MultipleFailureException", "assertEmpty", 9, 3).
calls("MultipleFailureException", "assertEmpty", "List", "isEmpty").
calls("MultipleFailureException", "assertEmpty", "Throwables", "rethrowAsException").

# junit4/src/main/java/org/junit/runners/model/TestClass.java

class("TestClass").
method("TestClass", "scanAnnotatedMembers", 7, 4).
calls("TestClass", "scanAnnotatedMembers", "TestClass", "addToAnnotationLists").
calls("TestClass", "scanAnnotatedMembers", "TestClass", "addToAnnotationLists").
method("TestClass", "getSortedDeclaredFields", 5, 1).
calls("TestClass", "getSortedDeclaredFields", "Arrays", "sort").
method("TestClass", "addToAnnotationLists", 14, 4).
calls("TestClass", "addToAnnotationLists", "TestClass", "runsTopToBottom").
calls("TestClass", "addToAnnotationLists", "List", "add").
calls("TestClass", "addToAnnotationLists", "List", "add").
method("TestClass", "makeDeeplyUnmodifiable", 6, 2).
calls("TestClass", "makeDeeplyUnmodifiable", "Map", "put").
calls("TestClass", "makeDeeplyUnmodifiable", "Collections", "unmodifiableMap").
method("TestClass", "getAnnotatedMethods", 5, 1).
calls("TestClass", "getAnnotatedMethods", "Collections", "sort").
method("TestClass", "getAnnotatedMethods", 3, 1).
calls("TestClass", "getAnnotatedMethods", "Collections", "unmodifiableList").
method("TestClass", "getAnnotatedFields", 3, 1).
calls("TestClass", "getAnnotatedFields", "TestClass", "collectValues").
method("TestClass", "getAnnotatedFields", 3, 1).
calls("TestClass", "getAnnotatedFields", "Collections", "unmodifiableList").
method("TestClass", "collectValues", 6, 2).
calls("TestClass", "collectValues", "Set", "addAll").
method("TestClass", "getAnnotatedMembers", 7, 2).
calls("TestClass", "getAnnotatedMembers", "Map", "put").
method("TestClass", "runsTopToBottom", 3, 1).
method("TestClass", "getSuperClasses", 8, 2).
calls("TestClass", "getSuperClasses", "List", "add").
method("TestClass", "getJavaClass", 3, 1).
method("TestClass", "getName", 6, 2).
calls("TestClass", "getName", "Class", "getName").
method("TestClass", "getOnlyConstructor", 5, 1).
calls("TestClass", "getOnlyConstructor", "Assert", "assertEquals").
method("TestClass", "getAnnotations", 6, 2).
calls("TestClass", "getAnnotations", "Class", "getAnnotations").
method("TestClass", "getAnnotation", 6, 2).
calls("TestClass", "getAnnotation", "Class", "getAnnotation").
method("TestClass", "getAnnotatedFieldValues", 12, 4).
calls("TestClass", "getAnnotatedFieldValues", "Class", "isInstance").
calls("TestClass", "getAnnotatedFieldValues", "List", "add").
method("TestClass", "getAnnotatedMethodValues", 12, 4).
calls("TestClass", "getAnnotatedMethodValues", "Class", "isAssignableFrom").
calls("TestClass", "getAnnotatedMethodValues", "List", "add").
method("TestClass", "isPublic", 3, 1).
calls("TestClass", "isPublic", "Modifier", "isPublic").
method("TestClass", "isANonStaticInnerClass", 3, 1).
method("TestClass", "hashCode", 3, 1).
method("TestClass", "equals", 13, 4).

# junit4/src/main/java/org/junit/runners/model/FrameworkMethod.java

class("FrameworkMethod").
method("FrameworkMethod", "getMethod", 3, 1).
method("FrameworkMethod", "invokeExplosively", 3, 1).
method("FrameworkMethod", "getName", 3, 1).
calls("FrameworkMethod", "getName", "Method", "getName").
method("FrameworkMethod", "validatePublicVoidNoArg", 6, 2).
calls("FrameworkMethod", "validatePublicVoidNoArg", "FrameworkMethod", "validatePublicVoid").
calls("FrameworkMethod", "validatePublicVoidNoArg", "List", "add").
method("FrameworkMethod", "validatePublicVoid", 12, 4).
calls("FrameworkMethod", "validatePublicVoid", "List", "add").
calls("FrameworkMethod", "validatePublicVoid", "FrameworkMethod", "isPublic").
calls("FrameworkMethod", "validatePublicVoid", "List", "add").
calls("FrameworkMethod", "validatePublicVoid", "List", "add").
method("FrameworkMethod", "getModifiers", 3, 1).
calls("FrameworkMethod", "getModifiers", "Method", "getModifiers").
method("FrameworkMethod", "getReturnType", 3, 1).
calls("FrameworkMethod", "getReturnType", "Method", "getReturnType").
method("FrameworkMethod", "getType", 3, 1).
calls("FrameworkMethod", "getType", "FrameworkMethod", "getReturnType").
method("FrameworkMethod", "getDeclaringClass", 3, 1).
calls("FrameworkMethod", "getDeclaringClass", "Method", "getDeclaringClass").
method("FrameworkMethod", "validateNoTypeParametersOnArgs", 3, 1).
method("FrameworkMethod", "handlePossibleBridgeMethod", 12, 4).
calls("FrameworkMethod", "handlePossibleBridgeMethod", "FrameworkMethod", "isShadowedBy").
calls("FrameworkMethod", "handlePossibleBridgeMethod", "FrameworkMethod", "isBridgeMethod").
calls("FrameworkMethod", "handlePossibleBridgeMethod", "List", "remove").
method("FrameworkMethod", "isShadowedBy", 16, 6).
calls("FrameworkMethod", "isShadowedBy", "FrameworkMethod", "isStatic").
calls("FrameworkMethod", "isShadowedBy", "FrameworkMethod", "getName").
calls("FrameworkMethod", "isShadowedBy", "FrameworkMethod", "getParameterTypes").
method("FrameworkMethod", "isBridgeMethod", 3, 1).
calls("FrameworkMethod", "isBridgeMethod", "Method", "isBridge").
method("FrameworkMethod", "equals", 6, 2).
method("FrameworkMethod", "hashCode", 3, 1).
calls("FrameworkMethod", "hashCode", "Method", "hashCode").
method("FrameworkMethod", "producesType", 3, 1).
method("FrameworkMethod", "getParameterTypes", 3, 1).
calls("FrameworkMethod", "getParameterTypes", "Method", "getParameterTypes").
method("FrameworkMethod", "getAnnotations", 3, 1).
calls("FrameworkMethod", "getAnnotations", "Method", "getAnnotations").
method("FrameworkMethod", "getAnnotation", 3, 1).
calls("FrameworkMethod", "getAnnotation", "Method", "getAnnotation").
method("FrameworkMethod", "toString", 3, 1).
calls("FrameworkMethod", "toString", "Method", "toString").

# junit4/src/main/java/org/junit/runners/model/FrameworkField.java

class("FrameworkField").
method("FrameworkField", "getName", 3, 1).
calls("FrameworkField", "getName", "FrameworkField", "getField").
method("FrameworkField", "getAnnotations", 3, 1).
calls("FrameworkField", "getAnnotations", "Field", "getAnnotations").
method("FrameworkField", "getAnnotation", 3, 1).
calls("FrameworkField", "getAnnotation", "Field", "getAnnotation").
method("FrameworkField", "isShadowedBy", 3, 1).
method("FrameworkField", "handlePossibleBridgeMethod", 3, 1).
method("FrameworkField", "isBridgeMethod", 3, 1).
method("FrameworkField", "getModifiers", 3, 1).
calls("FrameworkField", "getModifiers", "Field", "getModifiers").
method("FrameworkField", "getField", 3, 1).
method("FrameworkField", "getType", 3, 1).
calls("FrameworkField", "getType", "Field", "getType").
method("FrameworkField", "getDeclaringClass", 3, 1).
calls("FrameworkField", "getDeclaringClass", "Field", "getDeclaringClass").
method("FrameworkField", "get", 3, 1).
calls("FrameworkField", "get", "Field", "get").
method("FrameworkField", "toString", 3, 1).
calls("FrameworkField", "toString", "Field", "toString").

# junit4/src/main/java/org/junit/runners/model/FrameworkMember.java

class("FrameworkMember").
method("FrameworkMember", "isShadowedBy", 1, 1).
method("FrameworkMember", "handlePossibleBridgeMethod", 1, 1).
method("FrameworkMember", "isBridgeMethod", 1, 1).
method("FrameworkMember", "getModifiers", 1, 1).
method("FrameworkMember", "isStatic", 3, 1).
calls("FrameworkMember", "isStatic", "Modifier", "isStatic").
method("FrameworkMember", "isPublic", 3, 1).
calls("FrameworkMember", "isPublic", "Modifier", "isPublic").
method("FrameworkMember", "getName", 1, 1).
method("FrameworkMember", "getType", 1, 1).
method("FrameworkMember", "getDeclaringClass", 1, 1).

# junit4/src/main/java/org/junit/runners/model/Statement.java

class("Statement").
method("Statement", "evaluate", 1, 1).

# junit4/src/main/java/org/junit/runners/model/InvalidTestClassError.java

class("InvalidTestClassError").
method("InvalidTestClassError", "createMessage", 8, 2).
calls("InvalidTestClassError", "createMessage", "StringBuilder", "append").
calls("InvalidTestClassError", "createMessage", "StringBuilder", "append").
calls("InvalidTestClassError", "createMessage", "StringBuilder", "toString").
method("InvalidTestClassError", "getMessage", 3, 1).

# junit4/src/main/java/org/junit/runners/model/Annotatable.java


# junit4/src/main/java/org/junit/runners/model/NoGenericTypeParametersValidator.java

class("NoGenericTypeParametersValidator").
method("NoGenericTypeParametersValidator", "validate", 4, 2).
calls("NoGenericTypeParametersValidator", "validate", "NoGenericTypeParametersValidator", "validateNoTypeParameterOnType").
method("NoGenericTypeParametersValidator", "validateNoTypeParameterOnType", 17, 5).
calls("NoGenericTypeParametersValidator", "validateNoTypeParameterOnType", "List", "add").
calls("NoGenericTypeParametersValidator", "validateNoTypeParameterOnType", "NoGenericTypeParametersValidator", "validateNoTypeParameterOnParameterizedType").
calls("NoGenericTypeParametersValidator", "validateNoTypeParameterOnType", "NoGenericTypeParametersValidator", "validateNoTypeParameterOnWildcardType").
calls("NoGenericTypeParametersValidator", "validateNoTypeParameterOnType", "NoGenericTypeParametersValidator", "validateNoTypeParameterOnGenericArrayType").
method("NoGenericTypeParametersValidator", "validateNoTypeParameterOnParameterizedType", 4, 2).
calls("NoGenericTypeParametersValidator", "validateNoTypeParameterOnParameterizedType", "NoGenericTypeParametersValidator", "validateNoTypeParameterOnType").
method("NoGenericTypeParametersValidator", "validateNoTypeParameterOnWildcardType", 6, 3).
calls("NoGenericTypeParametersValidator", "validateNoTypeParameterOnWildcardType", "NoGenericTypeParametersValidator", "validateNoTypeParameterOnType").
calls("NoGenericTypeParametersValidator", "validateNoTypeParameterOnWildcardType", "NoGenericTypeParametersValidator", "validateNoTypeParameterOnType").
method("NoGenericTypeParametersValidator", "validateNoTypeParameterOnGenericArrayType", 3, 1).
calls("NoGenericTypeParametersValidator", "validateNoTypeParameterOnGenericArrayType", "NoGenericTypeParametersValidator", "validateNoTypeParameterOnType").

# junit4/src/main/java/org/junit/runners/model/RunnerScheduler.java


# junit4/src/main/java/org/junit/runners/model/InitializationError.java

class("InitializationError").
method("InitializationError", "getCauses", 3, 1).

# junit4/src/main/java/org/junit/runner/notification/SynchronizedRunListener.java

class("SynchronizedRunListener").
method("SynchronizedRunListener", "testRunStarted", 5, 1).
calls("SynchronizedRunListener", "testRunStarted", "RunListener", "testRunStarted").
method("SynchronizedRunListener", "testRunFinished", 5, 1).
calls("SynchronizedRunListener", "testRunFinished", "RunListener", "testRunFinished").
method("SynchronizedRunListener", "testSuiteStarted", 5, 1).
calls("SynchronizedRunListener", "testSuiteStarted", "RunListener", "testSuiteStarted").
method("SynchronizedRunListener", "testSuiteFinished", 5, 1).
calls("SynchronizedRunListener", "testSuiteFinished", "RunListener", "testSuiteFinished").
method("SynchronizedRunListener", "testStarted", 5, 1).
calls("SynchronizedRunListener", "testStarted", "RunListener", "testStarted").
method("SynchronizedRunListener", "testFinished", 5, 1).
calls("SynchronizedRunListener", "testFinished", "RunListener", "testFinished").
method("SynchronizedRunListener", "testFailure", 5, 1).
calls("SynchronizedRunListener", "testFailure", "RunListener", "testFailure").
method("SynchronizedRunListener", "testAssumptionFailure", 5, 1).
calls("SynchronizedRunListener", "testAssumptionFailure", "RunListener", "testAssumptionFailure").
method("SynchronizedRunListener", "testIgnored", 5, 1).
calls("SynchronizedRunListener", "testIgnored", "RunListener", "testIgnored").
method("SynchronizedRunListener", "hashCode", 3, 1).
calls("SynchronizedRunListener", "hashCode", "RunListener", "hashCode").
method("SynchronizedRunListener", "equals", 10, 3).
calls("SynchronizedRunListener", "equals", "RunListener", "equals").
method("SynchronizedRunListener", "toString", 3, 1).

# junit4/src/main/java/org/junit/runner/notification/RunListener.java

class("RunListener").
method("RunListener", "testRunStarted", 1, 1).
method("RunListener", "testRunFinished", 1, 1).
method("RunListener", "testSuiteStarted", 1, 1).
method("RunListener", "testSuiteFinished", 1, 1).
method("RunListener", "testStarted", 1, 1).
method("RunListener", "testFinished", 1, 1).
method("RunListener", "testFailure", 1, 1).
method("RunListener", "testAssumptionFailure", 1, 1).
method("RunListener", "testIgnored", 1, 1).

# junit4/src/main/java/org/junit/runner/notification/RunNotifier.java

class("RunNotifier").
method("RunNotifier", "addListener", 6, 2).
calls("RunNotifier", "addListener", "List", "add").
method("RunNotifier", "removeListener", 6, 2).
calls("RunNotifier", "removeListener", "List", "remove").
method("RunNotifier", "wrapIfNotThreadSafe", 3, 1).
method("RunNotifier", "fireTestRunStarted", 3, 1).
method("RunNotifier", "fireTestRunFinished", 3, 1).
method("RunNotifier", "fireTestSuiteStarted", 3, 1).
method("RunNotifier", "fireTestSuiteFinished", 3, 1).
method("RunNotifier", "fireTestStarted", 6, 2).
method("RunNotifier", "fireTestFailure", 3, 1).
calls("RunNotifier", "fireTestFailure", "RunNotifier", "fireTestFailures").
method("RunNotifier", "fireTestFailures", 5, 2).
calls("RunNotifier", "fireTestFailures", "List", "isEmpty").
method("RunNotifier", "fireTestAssumptionFailed", 3, 1).
method("RunNotifier", "fireTestIgnored", 3, 1).
method("RunNotifier", "fireTestFinished", 3, 1).
method("RunNotifier", "pleaseStop", 3, 1).
method("RunNotifier", "addFirstListener", 6, 2).
calls("RunNotifier", "addFirstListener", "List", "add").

# junit4/src/main/java/org/junit/runner/notification/package-info.java


# junit4/src/main/java/org/junit/runner/notification/Failure.java

class("Failure").
method("Failure", "getTestHeader", 3, 1).
calls("Failure", "getTestHeader", "Description", "getDisplayName").
method("Failure", "getDescription", 3, 1).
method("Failure", "getException", 3, 1).
method("Failure", "toString", 3, 1).
method("Failure", "getTrace", 3, 1).
calls("Failure", "getTrace", "Throwables", "getStacktrace").
method("Failure", "getTrimmedTrace", 3, 1).
calls("Failure", "getTrimmedTrace", "Throwables", "getTrimmedStackTrace").
method("Failure", "getMessage", 3, 1).
calls("Failure", "getMessage", "Failure", "getException").

# junit4/src/main/java/org/junit/runner/notification/StoppedByUserException.java

class("StoppedByUserException").

# junit4/src/main/java/org/junit/runner/manipulation/Sorter.java

class("Sorter").
method("Sorter", "apply", 6, 2).
calls("Sorter", "apply", "Sortable", "sort").
method("Sorter", "compare", 3, 1).
calls("Sorter", "compare", "Comparator", "compare").

# junit4/src/main/java/org/junit/runner/manipulation/Filter.java

class("Filter").
method("Filter", "matchMethodDescription", 3, 1).
method("Filter", "shouldRun", 1, 1).
method("Filter", "describe", 1, 1).
method("Filter", "apply", 7, 2).
calls("Filter", "apply", "Filterable", "filter").
method("Filter", "intersect", 7, 2).

# junit4/src/main/java/org/junit/runner/manipulation/package-info.java


# junit4/src/main/java/org/junit/runner/manipulation/Sortable.java


# junit4/src/main/java/org/junit/runner/manipulation/Filterable.java


# junit4/src/main/java/org/junit/runner/manipulation/NoTestsRemainException.java

class("NoTestsRemainException").

# junit4/src/main/java/junit/extensions/TestSetup.java

class("TestSetup").
method("TestSetup", "run", 4, 1).
calls("TestSetup", "run", "TestResult", "runProtected").
method("TestSetup", "setUp", 1, 1).
method("TestSetup", "tearDown", 1, 1).

# junit4/src/main/java/junit/extensions/package-info.java


# junit4/src/main/java/junit/extensions/ActiveTestSuite.java

class("ActiveTestSuite").
method("ActiveTestSuite", "run", 5, 1).
calls("ActiveTestSuite", "run", "ActiveTestSuite", "waitUntilFinished").
method("ActiveTestSuite", "runTest", 4, 1).
calls("ActiveTestSuite", "runTest", "Thread", "start").
method("ActiveTestSuite", "waitUntilFinished", 7, 3).
calls("ActiveTestSuite", "waitUntilFinished", "ActiveTestSuite", "wait").
method("ActiveTestSuite", "runFinished", 4, 1).
calls("ActiveTestSuite", "runFinished", "ActiveTestSuite", "notifyAll").

# junit4/src/main/java/junit/extensions/TestDecorator.java

class("TestDecorator").
method("TestDecorator", "basicRun", 3, 1).
calls("TestDecorator", "basicRun", "Test", "run").
method("TestDecorator", "countTestCases", 3, 1).
calls("TestDecorator", "countTestCases", "Test", "countTestCases").
method("TestDecorator", "run", 3, 1).
calls("TestDecorator", "run", "TestDecorator", "basicRun").
method("TestDecorator", "toString", 3, 1).
calls("TestDecorator", "toString", "Test", "toString").
method("TestDecorator", "getTest", 3, 1).

# junit4/src/main/java/junit/extensions/RepeatedTest.java

class("RepeatedTest").
method("RepeatedTest", "countTestCases", 3, 1).
method("RepeatedTest", "run", 7, 3).
calls("RepeatedTest", "run", "TestResult", "shouldStop").
method("RepeatedTest", "toString", 3, 1).

# junit4/src/main/java/junit/runner/Version.java

class("Version").
method("Version", "id", 3, 1).
method("Version", "main", 3, 1).
calls("Version", "main", "System.out", "println").

# junit4/src/main/java/junit/runner/package-info.java


# junit4/src/main/java/junit/runner/TestRunListener.java


# junit4/src/main/java/junit/runner/BaseTestRunner.java

class("BaseTestRunner").
method("BaseTestRunner", "startTest", 3, 1).
calls("BaseTestRunner", "startTest", "BaseTestRunner", "testStarted").
method("BaseTestRunner", "setPreferences", 3, 1).
method("BaseTestRunner", "getPreferences", 9, 2).
calls("BaseTestRunner", "getPreferences", "Properties", "put").
calls("BaseTestRunner", "getPreferences", "Properties", "put").
calls("BaseTestRunner", "getPreferences", "BaseTestRunner", "readPreferences").
method("BaseTestRunner", "savePreferences", 7, 1).
calls("BaseTestRunner", "savePreferences", "BaseTestRunner", "getPreferences").
calls("BaseTestRunner", "savePreferences", "FileOutputStream", "close").
method("BaseTestRunner", "setPreference", 3, 1).
calls("BaseTestRunner", "setPreference", "BaseTestRunner", "getPreferences").
method("BaseTestRunner", "endTest", 3, 1).
calls("BaseTestRunner", "endTest", "BaseTestRunner", "testEnded").
method("BaseTestRunner", "addError", 3, 1).
calls("BaseTestRunner", "addError", "BaseTestRunner", "testFailed").
method("BaseTestRunner", "addFailure", 3, 1).
calls("BaseTestRunner", "addFailure", "BaseTestRunner", "testFailed").
method("BaseTestRunner", "testStarted", 1, 1).
method("BaseTestRunner", "testEnded", 1, 1).
method("BaseTestRunner", "testFailed", 1, 1).
method("BaseTestRunner", "getTest", 43, 10).
calls("BaseTestRunner", "getTest", "BaseTestRunner", "clearStatus").
calls("BaseTestRunner", "getTest", "BaseTestRunner", "runFailed").
calls("BaseTestRunner", "getTest", "BaseTestRunner", "runFailed").
calls("BaseTestRunner", "getTest", "BaseTestRunner", "clearStatus").
calls("BaseTestRunner", "getTest", "Modifier", "isStatic").
calls("BaseTestRunner", "getTest", "BaseTestRunner", "runFailed").
calls("BaseTestRunner", "getTest", "BaseTestRunner", "runFailed").
calls("BaseTestRunner", "getTest", "BaseTestRunner", "runFailed").
calls("BaseTestRunner", "getTest", "BaseTestRunner", "clearStatus").
method("BaseTestRunner", "elapsedTimeAsString", 3, 1).
calls("BaseTestRunner", "elapsedTimeAsString", "NumberFormat", "getInstance").
method("BaseTestRunner", "processArguments", 23, 6).
calls("BaseTestRunner", "processArguments", "BaseTestRunner", "setLoading").
calls("BaseTestRunner", "processArguments", "System.out", "println").
method("BaseTestRunner", "setLoading", 3, 1).
method("BaseTestRunner", "extractClassName", 6, 2).
calls("BaseTestRunner", "extractClassName", "String", "startsWith").
calls("BaseTestRunner", "extractClassName", "String", "substring").
method("BaseTestRunner", "truncate", 6, 2).
method("BaseTestRunner", "runFailed", 1, 1).
method("BaseTestRunner", "loadSuiteClass", 3, 1).
calls("BaseTestRunner", "loadSuiteClass", "Class", "forName").
method("BaseTestRunner", "clearStatus", 1, 1).
method("BaseTestRunner", "useReloadingTestSuiteLoader", 3, 1).
method("BaseTestRunner", "getPreferencesFile", 4, 1).
method("BaseTestRunner", "readPreferences", 15, 5).
calls("BaseTestRunner", "readPreferences", "BaseTestRunner", "setPreferences").
calls("BaseTestRunner", "readPreferences", "BaseTestRunner", "getPreferences").
calls("BaseTestRunner", "readPreferences", "InputStream", "close").
method("BaseTestRunner", "getPreference", 3, 1).
calls("BaseTestRunner", "getPreference", "BaseTestRunner", "getPreferences").
method("BaseTestRunner", "getPreference", 11, 3).
method("BaseTestRunner", "getFilteredTrace", 3, 1).
calls("BaseTestRunner", "getFilteredTrace", "BaseTestRunner", "getFilteredTrace").
method("BaseTestRunner", "getFilteredTrace", 18, 5).
calls("BaseTestRunner", "getFilteredTrace", "BaseTestRunner", "showStackRaw").
calls("BaseTestRunner", "getFilteredTrace", "BaseTestRunner", "filterLine").
calls("BaseTestRunner", "getFilteredTrace", "PrintWriter", "println").
calls("BaseTestRunner", "getFilteredTrace", "StringWriter", "toString").
method("BaseTestRunner", "showStackRaw", 3, 1).
method("BaseTestRunner", "filterLine", 8, 3).

# junit4/src/main/java/junit/framework/Test.java


# junit4/src/main/java/junit/framework/TestSuite.java

class("TestSuite").
method("TestSuite", "createTest", 24, 7).
calls("TestSuite", "createTest", "TestSuite", "warning").
calls("TestSuite", "createTest", "TestSuite", "warning").
calls("TestSuite", "createTest", "TestSuite", "warning").
calls("TestSuite", "createTest", "TestSuite", "warning").
method("TestSuite", "getTestConstructor", 6, 2).
calls("TestSuite", "getTestConstructor", "Class", "getConstructor").
calls("TestSuite", "getTestConstructor", "Class", "getConstructor").
method("TestSuite", "warning", 3, 1).
method("TestSuite", "addTestsFromTestCase", 21, 6).
calls("TestSuite", "addTestsFromTestCase", "TestSuite", "getTestConstructor").
calls("TestSuite", "addTestsFromTestCase", "TestSuite", "addTest").
calls("TestSuite", "addTestsFromTestCase", "Modifier", "isPublic").
calls("TestSuite", "addTestsFromTestCase", "TestSuite", "addTest").
calls("TestSuite", "addTestsFromTestCase", "TestSuite", "addTestMethod").
calls("TestSuite", "addTestsFromTestCase", "TestSuite", "addTest").
method("TestSuite", "testCaseForClass", 7, 2).
calls("TestSuite", "testCaseForClass", "TestSuite", "warning").
method("TestSuite", "addTest", 3, 1).
calls("TestSuite", "addTest", "Vector", "add").
method("TestSuite", "addTestSuite", 3, 1).
calls("TestSuite", "addTestSuite", "TestSuite", "addTest").
method("TestSuite", "countTestCases", 6, 2).
method("TestSuite", "getName", 3, 1).
method("TestSuite", "run", 7, 3).
calls("TestSuite", "run", "TestResult", "shouldStop").
calls("TestSuite", "run", "TestSuite", "runTest").
method("TestSuite", "runTest", 3, 1).
calls("TestSuite", "runTest", "Test", "run").
method("TestSuite", "setName", 3, 1).
method("TestSuite", "testAt", 3, 1).
calls("TestSuite", "testAt", "Vector", "get").
method("TestSuite", "testCount", 3, 1).
calls("TestSuite", "testCount", "Vector", "size").
method("TestSuite", "tests", 3, 1).
calls("TestSuite", "tests", "Vector", "elements").
method("TestSuite", "toString", 6, 2).
calls("TestSuite", "toString", "TestSuite", "getName").
method("TestSuite", "addTestMethod", 14, 4).
calls("TestSuite", "addTestMethod", "List", "contains").
calls("TestSuite", "addTestMethod", "TestSuite", "isPublicTestMethod").
calls("TestSuite", "addTestMethod", "TestSuite", "isTestMethod").
calls("TestSuite", "addTestMethod", "TestSuite", "addTest").
calls("TestSuite", "addTestMethod", "List", "add").
calls("TestSuite", "addTestMethod", "TestSuite", "addTest").
method("TestSuite", "isPublicTestMethod", 3, 1).
method("TestSuite", "isTestMethod", 3, 1).

# junit4/src/main/java/junit/framework/JUnit4TestAdapter.java

class("JUnit4TestAdapter").
method("JUnit4TestAdapter", "countTestCases", 3, 1).
calls("JUnit4TestAdapter", "countTestCases", "Runner", "testCount").
method("JUnit4TestAdapter", "run", 3, 1).
calls("JUnit4TestAdapter", "run", "Runner", "run").
method("JUnit4TestAdapter", "getTests", 3, 1).
calls("JUnit4TestAdapter", "getTests", "JUnit4TestAdapterCache", "asTestList").
method("JUnit4TestAdapter", "getTestClass", 3, 1).
method("JUnit4TestAdapter", "getDescription", 4, 1).
calls("JUnit4TestAdapter", "getDescription", "JUnit4TestAdapter", "removeIgnored").
method("JUnit4TestAdapter", "removeIgnored", 12, 4).
calls("JUnit4TestAdapter", "removeIgnored", "JUnit4TestAdapter", "isIgnored").
calls("JUnit4TestAdapter", "removeIgnored", "Description", "isEmpty").
calls("JUnit4TestAdapter", "removeIgnored", "Description", "addChild").
method("JUnit4TestAdapter", "isIgnored", 3, 1).
method("JUnit4TestAdapter", "toString", 3, 1).
calls("JUnit4TestAdapter", "toString", "Class", "getName").
method("JUnit4TestAdapter", "filter", 3, 1).
calls("JUnit4TestAdapter", "filter", "Filter", "apply").
method("JUnit4TestAdapter", "sort", 3, 1).
calls("JUnit4TestAdapter", "sort", "Sorter", "apply").

# junit4/src/main/java/junit/framework/TestCase.java

class("TestCase").
method("TestCase", "countTestCases", 3, 1).
method("TestCase", "createResult", 3, 1).
method("TestCase", "run", 5, 1).
calls("TestCase", "run", "TestCase", "run").
method("TestCase", "run", 3, 1).
calls("TestCase", "run", "TestResult", "run").
method("TestCase", "runBare", 18, 5).
calls("TestCase", "runBare", "TestCase", "setUp").
calls("TestCase", "runBare", "TestCase", "runTest").
calls("TestCase", "runBare", "TestCase", "tearDown").
method("TestCase", "runTest", 19, 5).
calls("TestCase", "runTest", "TestCase", "assertNotNull").
calls("TestCase", "runTest", "TestCase", "fail").
calls("TestCase", "runTest", "Modifier", "isPublic").
calls("TestCase", "runTest", "TestCase", "fail").
calls("TestCase", "runTest", "Method", "invoke").
calls("TestCase", "runTest", "InvocationTargetException", "fillInStackTrace").
calls("TestCase", "runTest", "InvocationTargetException", "getTargetException").
calls("TestCase", "runTest", "IllegalAccessException", "fillInStackTrace").
method("TestCase", "assertTrue", 3, 1).
calls("TestCase", "assertTrue", "Assert", "assertTrue").
method("TestCase", "assertTrue", 3, 1).
calls("TestCase", "assertTrue", "Assert", "assertTrue").
method("TestCase", "assertFalse", 3, 1).
calls("TestCase", "assertFalse", "Assert", "assertFalse").
method("TestCase", "assertFalse", 3, 1).
calls("TestCase", "assertFalse", "Assert", "assertFalse").
method("TestCase", "fail", 3, 1).
calls("TestCase", "fail", "Assert", "fail").
method("TestCase", "fail", 3, 1).
calls("TestCase", "fail", "Assert", "fail").
method("TestCase", "assertEquals", 3, 1).
calls("TestCase", "assertEquals", "Assert", "assertEquals").
method("TestCase", "assertEquals", 3, 1).
calls("TestCase", "assertEquals", "Assert", "assertEquals").
method("TestCase", "assertEquals", 3, 1).
calls("TestCase", "assertEquals", "Assert", "assertEquals").
method("TestCase", "assertEquals", 3, 1).
calls("TestCase", "assertEquals", "Assert", "assertEquals").
method("TestCase", "assertEquals", 3, 1).
calls("TestCase", "assertEquals", "Assert", "assertEquals").
method("TestCase", "assertEquals", 3, 1).
calls("TestCase", "assertEquals", "Assert", "assertEquals").
method("TestCase", "assertEquals", 3, 1).
calls("TestCase", "assertEquals", "Assert", "assertEquals").
method("TestCase", "assertEquals", 3, 1).
calls("TestCase", "assertEquals", "Assert", "assertEquals").
method("TestCase", "assertEquals", 3, 1).
calls("TestCase", "assertEquals", "Assert", "assertEquals").
method("TestCase", "assertEquals", 3, 1).
calls("TestCase", "assertEquals", "Assert", "assertEquals").
method("TestCase", "assertEquals", 3, 1).
calls("TestCase", "assertEquals", "Assert", "assertEquals").
method("TestCase", "assertEquals", 3, 1).
calls("TestCase", "assertEquals", "Assert", "assertEquals").
method("TestCase", "assertEquals", 3, 1).
calls("TestCase", "assertEquals", "Assert", "assertEquals").
method("TestCase", "assertEquals", 3, 1).
calls("TestCase", "assertEquals", "Assert", "assertEquals").
method("TestCase", "assertEquals", 3, 1).
calls("TestCase", "assertEquals", "Assert", "assertEquals").
method("TestCase", "assertEquals", 3, 1).
calls("TestCase", "assertEquals", "Assert", "assertEquals").
method("TestCase", "assertEquals", 3, 1).
calls("TestCase", "assertEquals", "Assert", "assertEquals").
method("TestCase", "assertEquals", 3, 1).
calls("TestCase", "assertEquals", "Assert", "assertEquals").
method("TestCase", "assertEquals", 3, 1).
calls("TestCase", "assertEquals", "Assert", "assertEquals").
method("TestCase", "assertEquals", 3, 1).
calls("TestCase", "assertEquals", "Assert", "assertEquals").
method("TestCase", "assertNotNull", 3, 1).
calls("TestCase", "assertNotNull", "Assert", "assertNotNull").
method("TestCase", "assertNotNull", 3, 1).
calls("TestCase", "assertNotNull", "Assert", "assertNotNull").
method("TestCase", "assertNull", 3, 1).
calls("TestCase", "assertNull", "Assert", "assertNull").
method("TestCase", "assertNull", 3, 1).
calls("TestCase", "assertNull", "Assert", "assertNull").
method("TestCase", "assertSame", 3, 1).
calls("TestCase", "assertSame", "Assert", "assertSame").
method("TestCase", "assertSame", 3, 1).
calls("TestCase", "assertSame", "Assert", "assertSame").
method("TestCase", "assertNotSame", 3, 1).
calls("TestCase", "assertNotSame", "Assert", "assertNotSame").
method("TestCase", "assertNotSame", 3, 1).
calls("TestCase", "assertNotSame", "Assert", "assertNotSame").
method("TestCase", "failSame", 3, 1).
calls("TestCase", "failSame", "Assert", "failSame").
method("TestCase", "failNotSame", 3, 1).
calls("TestCase", "failNotSame", "Assert", "failNotSame").
method("TestCase", "failNotEquals", 3, 1).
calls("TestCase", "failNotEquals", "Assert", "failNotEquals").
method("TestCase", "format", 3, 1).
calls("TestCase", "format", "Assert", "format").
method("TestCase", "setUp", 1, 1).
method("TestCase", "tearDown", 1, 1).
method("TestCase", "toString", 3, 1).
method("TestCase", "getName", 3, 1).
method("TestCase", "setName", 3, 1).

# junit4/src/main/java/junit/framework/ComparisonCompactor.java

class("ComparisonCompactor").
method("ComparisonCompactor", "compact", 10, 2).
calls("ComparisonCompactor", "compact", "Assert", "format").
calls("ComparisonCompactor", "compact", "ComparisonCompactor", "findCommonPrefix").
calls("ComparisonCompactor", "compact", "ComparisonCompactor", "findCommonSuffix").
calls("ComparisonCompactor", "compact", "Assert", "format").
method("ComparisonCompactor", "compactString", 10, 3).
method("ComparisonCompactor", "findCommonPrefix", 8, 3).
method("ComparisonCompactor", "findCommonSuffix", 9, 3).
method("ComparisonCompactor", "computeCommonPrefix", 3, 1).
method("ComparisonCompactor", "computeCommonSuffix", 4, 1).
method("ComparisonCompactor", "areStringsEqual", 3, 1).
calls("ComparisonCompactor", "areStringsEqual", "String", "equals").

# junit4/src/main/java/junit/framework/package-info.java


# junit4/src/main/java/junit/framework/TestResult.java

class("TestResult").
method("TestResult", "addError", 5, 2).
calls("TestResult", "addError", "List", "add").
calls("TestResult", "addError", "TestListener", "addError").
method("TestResult", "addFailure", 5, 2).
calls("TestResult", "addFailure", "List", "add").
calls("TestResult", "addFailure", "TestListener", "addFailure").
method("TestResult", "addListener", 3, 1).
calls("TestResult", "addListener", "List", "add").
method("TestResult", "removeListener", 3, 1).
calls("TestResult", "removeListener", "List", "remove").
method("TestResult", "cloneListeners", 5, 1).
calls("TestResult", "cloneListeners", "List", "addAll").
method("TestResult", "endTest", 4, 2).
calls("TestResult", "endTest", "TestListener", "endTest").
method("TestResult", "errorCount", 3, 1).
calls("TestResult", "errorCount", "List", "size").
method("TestResult", "errors", 3, 1).
calls("TestResult", "errors", "Collections", "enumeration").
method("TestResult", "failureCount", 3, 1).
calls("TestResult", "failureCount", "List", "size").
method("TestResult", "failures", 3, 1).
calls("TestResult", "failures", "Collections", "enumeration").
method("TestResult", "run", 6, 1).
calls("TestResult", "run", "TestResult", "startTest").
calls("TestResult", "run", "TestResult", "runProtected").
calls("TestResult", "run", "TestResult", "endTest").
method("TestResult", "runCount", 3, 1).
method("TestResult", "runProtected", 10, 4).
calls("TestResult", "runProtected", "Protectable", "protect").
calls("TestResult", "runProtected", "TestResult", "addFailure").
calls("TestResult", "runProtected", "TestResult", "addError").
method("TestResult", "shouldStop", 3, 1).
method("TestResult", "startTest", 8, 2).
calls("TestResult", "startTest", "TestListener", "startTest").
method("TestResult", "stop", 3, 1).
method("TestResult", "wasSuccessful", 3, 1).

# junit4/src/main/java/junit/framework/ComparisonFailure.java

class("ComparisonFailure").
method("ComparisonFailure", "getMessage", 3, 1).
method("ComparisonFailure", "getActual", 3, 1).
method("ComparisonFailure", "getExpected", 3, 1).

# junit4/src/main/java/junit/framework/Assert.java

class("Assert").
method("Assert", "assertTrue", 5, 2).
calls("Assert", "assertTrue", "Assert", "fail").
method("Assert", "assertTrue", 3, 1).
calls("Assert", "assertTrue", "Assert", "assertTrue").
method("Assert", "assertFalse", 3, 1).
calls("Assert", "assertFalse", "Assert", "assertTrue").
method("Assert", "assertFalse", 3, 1).
calls("Assert", "assertFalse", "Assert", "assertFalse").
method("Assert", "fail", 6, 2).
method("Assert", "fail", 3, 1).
calls("Assert", "fail", "Assert", "fail").
method("Assert", "assertEquals", 9, 3).
calls("Assert", "assertEquals", "Assert", "failNotEquals").
method("Assert", "assertEquals", 3, 1).
calls("Assert", "assertEquals", "Assert", "assertEquals").
method("Assert", "assertEquals", 10, 3).
method("Assert", "assertEquals", 3, 1).
calls("Assert", "assertEquals", "Assert", "assertEquals").
method("Assert", "assertEquals", 8, 3).
calls("Assert", "assertEquals", "Assert", "failNotEquals").
method("Assert", "assertEquals", 3, 1).
calls("Assert", "assertEquals", "Assert", "assertEquals").
method("Assert", "assertEquals", 8, 3).
calls("Assert", "assertEquals", "Assert", "failNotEquals").
method("Assert", "assertEquals", 3, 1).
calls("Assert", "assertEquals", "Assert", "assertEquals").
method("Assert", "assertEquals", 3, 1).
calls("Assert", "assertEquals", "Assert", "assertEquals").
method("Assert", "assertEquals", 3, 1).
calls("Assert", "assertEquals", "Assert", "assertEquals").
method("Assert", "assertEquals", 3, 1).
calls("Assert", "assertEquals", "Assert", "assertEquals").
method("Assert", "assertEquals", 3, 1).
calls("Assert", "assertEquals", "Assert", "assertEquals").
method("Assert", "assertEquals", 3, 1).
calls("Assert", "assertEquals", "Assert", "assertEquals").
method("Assert", "assertEquals", 3, 1).
calls("Assert", "assertEquals", "Assert", "assertEquals").
method("Assert", "assertEquals", 3, 1).
calls("Assert", "assertEquals", "Assert", "assertEquals").
method("Assert", "assertEquals", 3, 1).
calls("Assert", "assertEquals", "Assert", "assertEquals").
method("Assert", "assertEquals", 3, 1).
calls("Assert", "assertEquals", "Assert", "assertEquals").
method("Assert", "assertEquals", 3, 1).
calls("Assert", "assertEquals", "Assert", "assertEquals").
method("Assert", "assertEquals", 3, 1).
calls("Assert", "assertEquals", "Assert", "assertEquals").
method("Assert", "assertEquals", 3, 1).
calls("Assert", "assertEquals", "Assert", "assertEquals").
method("Assert", "assertNotNull", 3, 1).
calls("Assert", "assertNotNull", "Assert", "assertNotNull").
method("Assert", "assertNotNull", 3, 1).
calls("Assert", "assertNotNull", "Assert", "assertTrue").
method("Assert", "assertNull", 5, 2).
calls("Assert", "assertNull", "Assert", "assertNull").
method("Assert", "assertNull", 3, 1).
calls("Assert", "assertNull", "Assert", "assertTrue").
method("Assert", "assertSame", 6, 2).
calls("Assert", "assertSame", "Assert", "failNotSame").
method("Assert", "assertSame", 3, 1).
calls("Assert", "assertSame", "Assert", "assertSame").
method("Assert", "assertNotSame", 5, 2).
calls("Assert", "assertNotSame", "Assert", "failSame").
method("Assert", "assertNotSame", 3, 1).
calls("Assert", "assertNotSame", "Assert", "assertNotSame").
method("Assert", "failSame", 4, 1).
calls("Assert", "failSame", "Assert", "fail").
method("Assert", "failNotSame", 4, 1).
calls("Assert", "failNotSame", "Assert", "fail").
method("Assert", "failNotEquals", 3, 1).
calls("Assert", "failNotEquals", "Assert", "fail").
method("Assert", "format", 7, 2).

# junit4/src/main/java/junit/framework/TestFailure.java

class("TestFailure").
method("TestFailure", "failedTest", 3, 1).
method("TestFailure", "thrownException", 3, 1).
method("TestFailure", "toString", 3, 1).
method("TestFailure", "trace", 3, 1).
calls("TestFailure", "trace", "Throwables", "getStacktrace").
method("TestFailure", "exceptionMessage", 3, 1).
calls("TestFailure", "exceptionMessage", "TestFailure", "thrownException").
method("TestFailure", "isFailure", 3, 1).

# junit4/src/main/java/junit/framework/TestListener.java


# junit4/src/main/java/junit/framework/Protectable.java


# junit4/src/main/java/junit/framework/AssertionFailedError.java

class("AssertionFailedError").
method("AssertionFailedError", "defaultString", 3, 1).

# junit4/src/main/java/junit/framework/JUnit4TestAdapterCache.java

class("JUnit4TestAdapterCache").
method("JUnit4TestAdapterCache", "getDefault", 3, 1).
method("JUnit4TestAdapterCache", "asTest", 10, 3).
calls("JUnit4TestAdapterCache", "asTest", "Description", "isSuite").
calls("JUnit4TestAdapterCache", "asTest", "JUnit4TestAdapterCache", "createTest").
calls("JUnit4TestAdapterCache", "asTest", "JUnit4TestAdapterCache", "containsKey").
calls("JUnit4TestAdapterCache", "asTest", "JUnit4TestAdapterCache", "put").
calls("JUnit4TestAdapterCache", "asTest", "JUnit4TestAdapterCache", "get").
method("JUnit4TestAdapterCache", "createTest", 10, 3).
calls("JUnit4TestAdapterCache", "createTest", "Description", "isTest").
calls("JUnit4TestAdapterCache", "createTest", "TestSuite", "addTest").
method("JUnit4TestAdapterCache", "getNotifier", 5, 1).
calls("JUnit4TestAdapterCache", "getNotifier", "RunNotifier", "addListener").
method("JUnit4TestAdapterCache", "asTestList", 10, 3).
calls("JUnit4TestAdapterCache", "asTestList", "Description", "isTest").
calls("JUnit4TestAdapterCache", "asTestList", "Arrays", "asList").
calls("JUnit4TestAdapterCache", "asTestList", "List", "add").

# junit4/src/main/java/junit/framework/JUnit4TestCaseFacade.java

class("JUnit4TestCaseFacade").
method("JUnit4TestCaseFacade", "toString", 3, 1).
calls("JUnit4TestCaseFacade", "toString", "JUnit4TestCaseFacade", "getDescription").
method("JUnit4TestCaseFacade", "countTestCases", 3, 1).
method("JUnit4TestCaseFacade", "run", 3, 1).
method("JUnit4TestCaseFacade", "getDescription", 3, 1).

# junit4/src/main/java/junit/textui/ResultPrinter.java

class("ResultPrinter").
method("ResultPrinter", "print", 6, 1).
calls("ResultPrinter", "print", "ResultPrinter", "printHeader").
calls("ResultPrinter", "print", "ResultPrinter", "printErrors").
calls("ResultPrinter", "print", "ResultPrinter", "printFailures").
calls("ResultPrinter", "print", "ResultPrinter", "printFooter").
method("ResultPrinter", "printWaitPrompt", 4, 1).
calls("ResultPrinter", "printWaitPrompt", "ResultPrinter", "getWriter").
calls("ResultPrinter", "printWaitPrompt", "ResultPrinter", "getWriter").
method("ResultPrinter", "printHeader", 4, 1).
calls("ResultPrinter", "printHeader", "ResultPrinter", "getWriter").
calls("ResultPrinter", "printHeader", "ResultPrinter", "getWriter").
method("ResultPrinter", "printErrors", 3, 1).
calls("ResultPrinter", "printErrors", "ResultPrinter", "printDefects").
method("ResultPrinter", "printFailures", 3, 1).
calls("ResultPrinter", "printFailures", "ResultPrinter", "printDefects").
method("ResultPrinter", "printDefects", 12, 4).
calls("ResultPrinter", "printDefects", "ResultPrinter", "getWriter").
calls("ResultPrinter", "printDefects", "ResultPrinter", "getWriter").
calls("ResultPrinter", "printDefects", "ResultPrinter", "printDefect").
method("ResultPrinter", "printDefect", 4, 1).
calls("ResultPrinter", "printDefect", "ResultPrinter", "printDefectHeader").
calls("ResultPrinter", "printDefect", "ResultPrinter", "printDefectTrace").
method("ResultPrinter", "printDefectHeader", 3, 1).
calls("ResultPrinter", "printDefectHeader", "ResultPrinter", "getWriter").
method("ResultPrinter", "printDefectTrace", 3, 1).
calls("ResultPrinter", "printDefectTrace", "ResultPrinter", "getWriter").
method("ResultPrinter", "printFooter", 12, 2).
calls("ResultPrinter", "printFooter", "TestResult", "wasSuccessful").
calls("ResultPrinter", "printFooter", "ResultPrinter", "getWriter").
calls("ResultPrinter", "printFooter", "ResultPrinter", "getWriter").
calls("ResultPrinter", "printFooter", "ResultPrinter", "getWriter").
calls("ResultPrinter", "printFooter", "ResultPrinter", "getWriter").
calls("ResultPrinter", "printFooter", "ResultPrinter", "getWriter").
calls("ResultPrinter", "printFooter", "ResultPrinter", "getWriter").
calls("ResultPrinter", "printFooter", "ResultPrinter", "getWriter").
method("ResultPrinter", "elapsedTimeAsString", 3, 1).
calls("ResultPrinter", "elapsedTimeAsString", "NumberFormat", "getInstance").
method("ResultPrinter", "getWriter", 3, 1).
method("ResultPrinter", "addError", 3, 1).
calls("ResultPrinter", "addError", "ResultPrinter", "getWriter").
method("ResultPrinter", "addFailure", 3, 1).
calls("ResultPrinter", "addFailure", "ResultPrinter", "getWriter").
method("ResultPrinter", "endTest", 1, 1).
method("ResultPrinter", "startTest", 7, 2).
calls("ResultPrinter", "startTest", "ResultPrinter", "getWriter").
calls("ResultPrinter", "startTest", "ResultPrinter", "getWriter").

# junit4/src/main/java/junit/textui/package-info.java


# junit4/src/main/java/junit/textui/TestRunner.java

class("TestRunner").
method("TestRunner", "run", 3, 1).
calls("TestRunner", "run", "TestRunner", "run").
method("TestRunner", "run", 4, 1).
calls("TestRunner", "run", "TestRunner", "doRun").
method("TestRunner", "runAndWait", 4, 1).
calls("TestRunner", "runAndWait", "TestRunner", "doRun").
method("TestRunner", "testFailed", 1, 1).
method("TestRunner", "testStarted", 1, 1).
method("TestRunner", "testEnded", 1, 1).
method("TestRunner", "createTestResult", 3, 1).
method("TestRunner", "doRun", 3, 1).
calls("TestRunner", "doRun", "TestRunner", "doRun").
method("TestRunner", "doRun", 11, 1).
calls("TestRunner", "doRun", "TestResult", "addListener").
calls("TestRunner", "doRun", "Test", "run").
calls("TestRunner", "doRun", "ResultPrinter", "print").
calls("TestRunner", "doRun", "TestRunner", "pause").
method("TestRunner", "pause", 9, 3).
calls("TestRunner", "pause", "ResultPrinter", "printWaitPrompt").
calls("TestRunner", "pause", "System.in", "read").
method("TestRunner", "main", 12, 3).
calls("TestRunner", "main", "TestResult", "wasSuccessful").
calls("TestRunner", "main", "System", "exit").
calls("TestRunner", "main", "System", "exit").
calls("TestRunner", "main", "System.err", "println").
calls("TestRunner", "main", "System", "exit").
method("TestRunner", "start", 37, 9).
calls("TestRunner", "start", "System.err", "println").
calls("TestRunner", "start", "String", "equals").
calls("TestRunner", "start", "String", "equals").
calls("TestRunner", "start", "TestRunner", "runSingleMethod").
calls("TestRunner", "start", "TestRunner", "doRun").
method("TestRunner", "runSingleMethod", 5, 1).
calls("TestRunner", "runSingleMethod", "TestRunner", "doRun").
method("TestRunner", "runFailed", 4, 1).
calls("TestRunner", "runFailed", "System.err", "println").
calls("TestRunner", "runFailed", "System", "exit").
method("TestRunner", "setPrinter", 3, 1).
