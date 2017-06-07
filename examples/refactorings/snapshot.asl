
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
method("ComparisonFailure", "getMessage").
method("ComparisonFailure", "getActual").
method("ComparisonFailure", "getExpected").

# junit4/src/main/java/org/junit/TestCouldNotBeSkippedException.java

class("TestCouldNotBeSkippedException").

# junit4/src/main/java/org/junit/AfterClass.java


# junit4/src/main/java/org/junit/FixMethodOrder.java


# junit4/src/main/java/org/junit/Assert.java

class("Assert").
method("Assert", "assertTrue").
calls("Assert", "assertTrue", "Assert", "fail").
method("Assert", "assertTrue").
calls("Assert", "assertTrue", "Assert", "assertTrue").
method("Assert", "assertFalse").
calls("Assert", "assertFalse", "Assert", "assertTrue").
method("Assert", "assertFalse").
calls("Assert", "assertFalse", "Assert", "assertFalse").
method("Assert", "fail").
method("Assert", "fail").
calls("Assert", "fail", "Assert", "fail").
method("Assert", "assertEquals").
calls("Assert", "assertEquals", "Assert", "equalsRegardingNull").
calls("Assert", "assertEquals", "Assert", "failNotEquals").
method("Assert", "equalsRegardingNull").
calls("Assert", "equalsRegardingNull", "Assert", "isEquals").
method("Assert", "isEquals").
calls("Assert", "isEquals", "Object", "equals").
method("Assert", "assertEquals").
calls("Assert", "assertEquals", "Assert", "assertEquals").
method("Assert", "assertNotEquals").
calls("Assert", "assertNotEquals", "Assert", "equalsRegardingNull").
calls("Assert", "assertNotEquals", "Assert", "failEquals").
method("Assert", "assertNotEquals").
calls("Assert", "assertNotEquals", "Assert", "assertNotEquals").
method("Assert", "failEquals").
calls("Assert", "failEquals", "Assert", "fail").
method("Assert", "assertNotEquals").
calls("Assert", "assertNotEquals", "Assert", "failEquals").
method("Assert", "assertNotEquals").
calls("Assert", "assertNotEquals", "Assert", "assertNotEquals").
method("Assert", "assertNotEquals").
calls("Assert", "assertNotEquals", "Assert", "doubleIsDifferent").
calls("Assert", "assertNotEquals", "Assert", "failEquals").
method("Assert", "assertNotEquals").
calls("Assert", "assertNotEquals", "Assert", "assertNotEquals").
method("Assert", "assertNotEquals").
calls("Assert", "assertNotEquals", "Assert", "assertNotEquals").
method("Assert", "assertArrayEquals").
calls("Assert", "assertArrayEquals", "Assert", "internalArrayEquals").
method("Assert", "assertArrayEquals").
calls("Assert", "assertArrayEquals", "Assert", "assertArrayEquals").
method("Assert", "assertArrayEquals").
calls("Assert", "assertArrayEquals", "Assert", "internalArrayEquals").
method("Assert", "assertArrayEquals").
calls("Assert", "assertArrayEquals", "Assert", "assertArrayEquals").
method("Assert", "assertArrayEquals").
calls("Assert", "assertArrayEquals", "Assert", "internalArrayEquals").
method("Assert", "assertArrayEquals").
calls("Assert", "assertArrayEquals", "Assert", "assertArrayEquals").
method("Assert", "assertArrayEquals").
calls("Assert", "assertArrayEquals", "Assert", "internalArrayEquals").
method("Assert", "assertArrayEquals").
calls("Assert", "assertArrayEquals", "Assert", "assertArrayEquals").
method("Assert", "assertArrayEquals").
calls("Assert", "assertArrayEquals", "Assert", "internalArrayEquals").
method("Assert", "assertArrayEquals").
calls("Assert", "assertArrayEquals", "Assert", "assertArrayEquals").
method("Assert", "assertArrayEquals").
calls("Assert", "assertArrayEquals", "Assert", "internalArrayEquals").
method("Assert", "assertArrayEquals").
calls("Assert", "assertArrayEquals", "Assert", "assertArrayEquals").
method("Assert", "assertArrayEquals").
calls("Assert", "assertArrayEquals", "Assert", "internalArrayEquals").
method("Assert", "assertArrayEquals").
calls("Assert", "assertArrayEquals", "Assert", "assertArrayEquals").
method("Assert", "assertArrayEquals").
method("Assert", "assertArrayEquals").
calls("Assert", "assertArrayEquals", "Assert", "assertArrayEquals").
method("Assert", "assertArrayEquals").
method("Assert", "assertArrayEquals").
calls("Assert", "assertArrayEquals", "Assert", "assertArrayEquals").
method("Assert", "internalArrayEquals").
method("Assert", "assertEquals").
calls("Assert", "assertEquals", "Assert", "doubleIsDifferent").
calls("Assert", "assertEquals", "Assert", "failNotEquals").
method("Assert", "assertEquals").
calls("Assert", "assertEquals", "Assert", "floatIsDifferent").
calls("Assert", "assertEquals", "Assert", "failNotEquals").
method("Assert", "assertNotEquals").
calls("Assert", "assertNotEquals", "Assert", "floatIsDifferent").
calls("Assert", "assertNotEquals", "Assert", "failEquals").
method("Assert", "doubleIsDifferent").
method("Assert", "floatIsDifferent").
method("Assert", "assertEquals").
calls("Assert", "assertEquals", "Assert", "assertEquals").
method("Assert", "assertEquals").
calls("Assert", "assertEquals", "Assert", "failNotEquals").
method("Assert", "assertEquals").
calls("Assert", "assertEquals", "Assert", "assertEquals").
method("Assert", "assertEquals").
calls("Assert", "assertEquals", "Assert", "fail").
method("Assert", "assertEquals").
calls("Assert", "assertEquals", "Assert", "assertEquals").
method("Assert", "assertEquals").
calls("Assert", "assertEquals", "Assert", "assertEquals").
method("Assert", "assertNotNull").
calls("Assert", "assertNotNull", "Assert", "assertTrue").
method("Assert", "assertNotNull").
calls("Assert", "assertNotNull", "Assert", "assertNotNull").
method("Assert", "assertNull").
calls("Assert", "assertNull", "Assert", "failNotNull").
method("Assert", "assertNull").
calls("Assert", "assertNull", "Assert", "assertNull").
method("Assert", "failNotNull").
calls("Assert", "failNotNull", "Assert", "fail").
method("Assert", "assertSame").
calls("Assert", "assertSame", "Assert", "failNotSame").
method("Assert", "assertSame").
calls("Assert", "assertSame", "Assert", "assertSame").
method("Assert", "assertNotSame").
calls("Assert", "assertNotSame", "Assert", "failSame").
method("Assert", "assertNotSame").
calls("Assert", "assertNotSame", "Assert", "assertNotSame").
method("Assert", "failSame").
calls("Assert", "failSame", "Assert", "fail").
method("Assert", "failNotSame").
calls("Assert", "failNotSame", "Assert", "fail").
method("Assert", "failNotEquals").
calls("Assert", "failNotEquals", "Assert", "fail").
method("Assert", "format").
calls("Assert", "format", "Assert", "equalsRegardingNull").
method("Assert", "formatClass").
method("Assert", "formatClassAndValue").
method("Assert", "assertEquals").
calls("Assert", "assertEquals", "Assert", "assertArrayEquals").
method("Assert", "assertEquals").
calls("Assert", "assertEquals", "Assert", "assertArrayEquals").
method("Assert", "assertThat").
calls("Assert", "assertThat", "Assert", "assertThat").
method("Assert", "assertThat").
calls("Assert", "assertThat", "MatcherAssert", "assertThat").
method("Assert", "assertThrows").
calls("Assert", "assertThrows", "Assert", "expectThrows").
method("Assert", "expectThrows").
calls("Assert", "expectThrows", "ThrowingRunnable", "run").
calls("Assert", "expectThrows", "Class", "isInstance").
calls("Assert", "expectThrows", "String", "equals").
calls("Assert", "expectThrows", "AssertionError", "initCause").

# junit4/src/main/java/org/junit/Assume.java

class("Assume").
method("Assume", "assumeTrue").
calls("Assume", "assumeTrue", "Assume", "assumeThat").
method("Assume", "assumeFalse").
calls("Assume", "assumeFalse", "Assume", "assumeTrue").
method("Assume", "assumeTrue").
method("Assume", "assumeFalse").
calls("Assume", "assumeFalse", "Assume", "assumeTrue").
method("Assume", "assumeNotNull").
calls("Assume", "assumeNotNull", "Assume", "assumeThat").
calls("Assume", "assumeNotNull", "Assume", "assumeThat").
method("Assume", "assumeThat").
calls("Assume", "assumeThat", "Matcher", "matches").
method("Assume", "assumeThat").
calls("Assume", "assumeThat", "Matcher", "matches").
method("Assume", "assumeNoException").
calls("Assume", "assumeNoException", "Assume", "assumeThat").
method("Assume", "assumeNoException").
calls("Assume", "assumeNoException", "Assume", "assumeThat").

# junit4/src/main/java/org/junit/ClassRule.java


# junit4/src/main/java/org/junit/Before.java


# junit4/src/main/java/org/junit/internal/RealSystem.java

class("RealSystem").
method("RealSystem", "exit").
calls("RealSystem", "exit", "System", "exit").
method("RealSystem", "out").

# junit4/src/main/java/org/junit/internal/JUnitSystem.java


# junit4/src/main/java/org/junit/internal/AssumptionViolatedException.java

class("AssumptionViolatedException").
method("AssumptionViolatedException", "getMessage").
calls("AssumptionViolatedException", "getMessage", "StringDescription", "asString").
method("AssumptionViolatedException", "describeTo").
calls("AssumptionViolatedException", "describeTo", "Description", "appendText").
calls("AssumptionViolatedException", "describeTo", "Description", "appendText").
calls("AssumptionViolatedException", "describeTo", "Description", "appendText").
calls("AssumptionViolatedException", "describeTo", "Description", "appendValue").
calls("AssumptionViolatedException", "describeTo", "Description", "appendText").
calls("AssumptionViolatedException", "describeTo", "Description", "appendDescriptionOf").

# junit4/src/main/java/org/junit/internal/Checks.java

class("Checks").
method("Checks", "notNull").
method("Checks", "notNull").

# junit4/src/main/java/org/junit/internal/Classes.java

class("Classes").
method("Classes", "getClass").
calls("Classes", "getClass", "Classes", "getClass").
method("Classes", "getClass").
calls("Classes", "getClass", "Class", "forName").

# junit4/src/main/java/org/junit/internal/Throwables.java

class("Throwables").
method("Throwables", "rethrowAsException").
calls("Throwables", "rethrowAsException", "Throwables", "Throwables").
method("Throwables", "rethrow").
method("Throwables", "getStacktrace").
calls("Throwables", "getStacktrace", "Throwable", "printStackTrace").
calls("Throwables", "getStacktrace", "StringWriter", "toString").
method("Throwables", "getTrimmedStackTrace").
calls("Throwables", "getTrimmedStackTrace", "List", "isEmpty").
calls("Throwables", "getTrimmedStackTrace", "Throwables", "getFullStackTrace").
calls("Throwables", "getTrimmedStackTrace", "Throwables", "appendStackTraceLines").
calls("Throwables", "getTrimmedStackTrace", "Throwables", "appendStackTraceLines").
calls("Throwables", "getTrimmedStackTrace", "StringBuilder", "toString").
method("Throwables", "getTrimmedStackTraceLines").
calls("Throwables", "getTrimmedStackTraceLines", "List", "add").
calls("Throwables", "getTrimmedStackTraceLines", "List", "add").
calls("Throwables", "getTrimmedStackTraceLines", "List", "add").
calls("Throwables", "getTrimmedStackTraceLines", "Collections", "emptyList").
method("Throwables", "initGetSuppressed").
method("Throwables", "hasSuppressed").
method("Throwables", "getCauseStackTraceLines").
calls("Throwables", "getCauseStackTraceLines", "List", "add").
calls("Throwables", "getCauseStackTraceLines", "List", "add").
calls("Throwables", "getCauseStackTraceLines", "Collections", "emptyList").
method("Throwables", "getFullStackTrace").
calls("Throwables", "getFullStackTrace", "Throwable", "printStackTrace").
calls("Throwables", "getFullStackTrace", "StringWriter", "toString").
method("Throwables", "appendStackTraceLines").
calls("Throwables", "appendStackTraceLines", "StringBuilder", "append").
method("Throwables", "asReversedList").
method("Throwables", "isTestFrameworkMethod").
method("Throwables", "isReflectionMethod").
calls("Throwables", "isReflectionMethod", "Throwables", "isMatchingMethod").
method("Throwables", "isMatchingMethod").
calls("Throwables", "isMatchingMethod", "String", "startsWith").

# junit4/src/main/java/org/junit/internal/InexactComparisonCriteria.java

class("InexactComparisonCriteria").
method("InexactComparisonCriteria", "assertElementsEqual").
calls("InexactComparisonCriteria", "assertElementsEqual", "Assert", "assertEquals").
calls("InexactComparisonCriteria", "assertElementsEqual", "Assert", "assertEquals").

# junit4/src/main/java/org/junit/internal/ComparisonCriteria.java

class("ComparisonCriteria").
method("ComparisonCriteria", "arrayEquals").
calls("ComparisonCriteria", "arrayEquals", "ComparisonCriteria", "arrayEquals").
method("ComparisonCriteria", "arrayEquals").
calls("ComparisonCriteria", "arrayEquals", "Assert", "fail").
calls("ComparisonCriteria", "arrayEquals", "Assert", "fail").
calls("ComparisonCriteria", "arrayEquals", "ComparisonCriteria", "arrayEquals").
calls("ComparisonCriteria", "arrayEquals", "ArrayComparisonFailure", "addDimension").
calls("ComparisonCriteria", "arrayEquals", "ComparisonCriteria", "assertElementsEqual").
calls("ComparisonCriteria", "arrayEquals", "Assert", "assertEquals").
method("ComparisonCriteria", "getToStringableArrayElement").
calls("ComparisonCriteria", "getToStringableArrayElement", "ComparisonCriteria", "isArray").
calls("ComparisonCriteria", "getToStringableArrayElement", "ComparisonCriteria", "objectWithToString").
method("ComparisonCriteria", "objectWithToString").
method("ComparisonCriteria", "componentTypeName").
calls("ComparisonCriteria", "componentTypeName", "Class", "isArray").
calls("ComparisonCriteria", "componentTypeName", "Class", "getName").
method("ComparisonCriteria", "isArray").
method("ComparisonCriteria", "assertElementsEqual").

# junit4/src/main/java/org/junit/internal/ExactComparisonCriteria.java

class("ExactComparisonCriteria").
method("ExactComparisonCriteria", "assertElementsEqual").
calls("ExactComparisonCriteria", "assertElementsEqual", "Assert", "assertEquals").

# junit4/src/main/java/org/junit/internal/MethodSorter.java

class("MethodSorter").
method("MethodSorter", "getDeclaredMethods").
calls("MethodSorter", "getDeclaredMethods", "Arrays", "sort").
method("MethodSorter", "getSorter").
calls("MethodSorter", "getSorter", "FixMethodOrder", "value").

# junit4/src/main/java/org/junit/internal/ArrayComparisonFailure.java

class("ArrayComparisonFailure").
method("ArrayComparisonFailure", "addDimension").
calls("ArrayComparisonFailure", "addDimension", "List", "add").
method("ArrayComparisonFailure", "getCause").
method("ArrayComparisonFailure", "getMessage").
calls("ArrayComparisonFailure", "getMessage", "StringBuilder", "append").
calls("ArrayComparisonFailure", "getMessage", "StringBuilder", "append").
calls("ArrayComparisonFailure", "getMessage", "StringBuilder", "append").
calls("ArrayComparisonFailure", "getMessage", "StringBuilder", "append").
calls("ArrayComparisonFailure", "getMessage", "StringBuilder", "append").
calls("ArrayComparisonFailure", "getMessage", "StringBuilder", "append").
calls("ArrayComparisonFailure", "getMessage", "StringBuilder", "append").
calls("ArrayComparisonFailure", "getMessage", "StringBuilder", "toString").
method("ArrayComparisonFailure", "toString").
calls("ArrayComparisonFailure", "toString", "ArrayComparisonFailure", "getMessage").

# junit4/src/main/java/org/junit/internal/TextListener.java

class("TextListener").
method("TextListener", "testRunFinished").
calls("TextListener", "testRunFinished", "TextListener", "printHeader").
calls("TextListener", "testRunFinished", "TextListener", "printFailures").
calls("TextListener", "testRunFinished", "TextListener", "printFooter").
method("TextListener", "testStarted").
calls("TextListener", "testStarted", "PrintStream", "append").
method("TextListener", "testFailure").
calls("TextListener", "testFailure", "PrintStream", "append").
method("TextListener", "testIgnored").
calls("TextListener", "testIgnored", "PrintStream", "append").
method("TextListener", "getWriter").
method("TextListener", "printHeader").
calls("TextListener", "printHeader", "TextListener", "getWriter").
calls("TextListener", "printHeader", "TextListener", "getWriter").
method("TextListener", "printFailures").
calls("TextListener", "printFailures", "List", "isEmpty").
calls("TextListener", "printFailures", "TextListener", "getWriter").
calls("TextListener", "printFailures", "TextListener", "getWriter").
calls("TextListener", "printFailures", "TextListener", "printFailure").
method("TextListener", "printFailure").
calls("TextListener", "printFailure", "TextListener", "getWriter").
calls("TextListener", "printFailure", "TextListener", "getWriter").
method("TextListener", "printFooter").
calls("TextListener", "printFooter", "Result", "wasSuccessful").
calls("TextListener", "printFooter", "TextListener", "getWriter").
calls("TextListener", "printFooter", "TextListener", "getWriter").
calls("TextListener", "printFooter", "TextListener", "getWriter").
calls("TextListener", "printFooter", "TextListener", "getWriter").
calls("TextListener", "printFooter", "TextListener", "getWriter").
calls("TextListener", "printFooter", "TextListener", "getWriter").
calls("TextListener", "printFooter", "TextListener", "getWriter").
method("TextListener", "elapsedTimeAsString").
calls("TextListener", "elapsedTimeAsString", "NumberFormat", "getInstance").

# junit4/src/main/java/org/junit/experimental/ParallelComputer.java

class("ParallelComputer").
method("ParallelComputer", "classes").
method("ParallelComputer", "methods").
method("ParallelComputer", "parallelize").
method("ParallelComputer", "getSuite").
method("ParallelComputer", "getRunner").

# junit4/src/main/java/org/junit/runners/JUnit4.java

class("JUnit4").

# junit4/src/main/java/org/junit/runners/AllTests.java

class("AllTests").

# junit4/src/main/java/org/junit/runners/ParentRunner.java

class("ParentRunner").
method("ParentRunner", "createTestClass").
method("ParentRunner", "getChildren").
method("ParentRunner", "describeChild").
method("ParentRunner", "runChild").
method("ParentRunner", "collectInitializationErrors").
calls("ParentRunner", "collectInitializationErrors", "ParentRunner", "validatePublicVoidNoArgMethods").
calls("ParentRunner", "collectInitializationErrors", "ParentRunner", "validatePublicVoidNoArgMethods").
calls("ParentRunner", "collectInitializationErrors", "ParentRunner", "validateClassRules").
calls("ParentRunner", "collectInitializationErrors", "ParentRunner", "applyValidators").
method("ParentRunner", "applyValidators").
calls("ParentRunner", "applyValidators", "List", "addAll").
method("ParentRunner", "validatePublicVoidNoArgMethods").
calls("ParentRunner", "validatePublicVoidNoArgMethods", "FrameworkMethod", "validatePublicVoidNoArg").
method("ParentRunner", "validateClassRules").
calls("ParentRunner", "validateClassRules", "CLASS_RULE_VALIDATOR", "validate").
calls("ParentRunner", "validateClassRules", "CLASS_RULE_METHOD_VALIDATOR", "validate").
method("ParentRunner", "classBlock").
calls("ParentRunner", "classBlock", "ParentRunner", "areAllChildrenIgnored").
method("ParentRunner", "areAllChildrenIgnored").
calls("ParentRunner", "areAllChildrenIgnored", "ParentRunner", "isIgnored").
method("ParentRunner", "withBeforeClasses").
method("ParentRunner", "withAfterClasses").
method("ParentRunner", "withClassRules").
method("ParentRunner", "classRules").
calls("ParentRunner", "classRules", "List", "addAll").
method("ParentRunner", "childrenInvoker").
method("ParentRunner", "isIgnored").
method("ParentRunner", "runChildren").
calls("ParentRunner", "runChildren", "RunnerScheduler", "schedule").
calls("ParentRunner", "runChildren", "RunnerScheduler", "finished").
method("ParentRunner", "getName").
calls("ParentRunner", "getName", "TestClass", "getName").
method("ParentRunner", "getTestClass").
method("ParentRunner", "runLeaf").
calls("ParentRunner", "runLeaf", "EachTestNotifier", "fireTestStarted").
calls("ParentRunner", "runLeaf", "Statement", "evaluate").
calls("ParentRunner", "runLeaf", "EachTestNotifier", "addFailedAssumption").
calls("ParentRunner", "runLeaf", "EachTestNotifier", "addFailure").
calls("ParentRunner", "runLeaf", "EachTestNotifier", "fireTestFinished").
method("ParentRunner", "getRunnerAnnotations").
calls("ParentRunner", "getRunnerAnnotations", "TestClass", "getAnnotations").
method("ParentRunner", "getDescription").
calls("ParentRunner", "getDescription", "Description", "addChild").
method("ParentRunner", "run").
calls("ParentRunner", "run", "EachTestNotifier", "fireTestSuiteStarted").
calls("ParentRunner", "run", "Statement", "evaluate").
calls("ParentRunner", "run", "EachTestNotifier", "addFailedAssumption").
calls("ParentRunner", "run", "EachTestNotifier", "addFailure").
calls("ParentRunner", "run", "EachTestNotifier", "fireTestSuiteFinished").
method("ParentRunner", "filter").
calls("ParentRunner", "filter", "Lock", "lock").
calls("ParentRunner", "filter", "ParentRunner", "shouldRun").
calls("ParentRunner", "filter", "Filter", "apply").
calls("ParentRunner", "filter", "Iterator", "remove").
calls("ParentRunner", "filter", "Iterator", "remove").
calls("ParentRunner", "filter", "Collection", "isEmpty").
calls("ParentRunner", "filter", "Lock", "unlock").
method("ParentRunner", "sort").
calls("ParentRunner", "sort", "Lock", "lock").
calls("ParentRunner", "sort", "Sorter", "apply").
calls("ParentRunner", "sort", "Collections", "sort").
calls("ParentRunner", "sort", "Lock", "unlock").
method("ParentRunner", "validate").
calls("ParentRunner", "validate", "ParentRunner", "collectInitializationErrors").
calls("ParentRunner", "validate", "List", "isEmpty").
method("ParentRunner", "getFilteredChildren").
calls("ParentRunner", "getFilteredChildren", "Lock", "lock").
calls("ParentRunner", "getFilteredChildren", "Lock", "unlock").
method("ParentRunner", "shouldRun").
calls("ParentRunner", "shouldRun", "Filter", "shouldRun").
method("ParentRunner", "comparator").
method("ParentRunner", "setScheduler").

# junit4/src/main/java/org/junit/runners/package-info.java


# junit4/src/main/java/org/junit/runners/MethodSorters.java


# junit4/src/main/java/org/junit/runners/BlockJUnit4ClassRunner.java

class("BlockJUnit4ClassRunner").
method("BlockJUnit4ClassRunner", "runChild").
calls("BlockJUnit4ClassRunner", "runChild", "BlockJUnit4ClassRunner", "isIgnored").
calls("BlockJUnit4ClassRunner", "runChild", "RunNotifier", "fireTestIgnored").
calls("BlockJUnit4ClassRunner", "runChild", "BlockJUnit4ClassRunner", "runLeaf").
method("BlockJUnit4ClassRunner", "isIgnored").
method("BlockJUnit4ClassRunner", "describeChild").
calls("BlockJUnit4ClassRunner", "describeChild", "ConcurrentMap", "putIfAbsent").
method("BlockJUnit4ClassRunner", "getChildren").
calls("BlockJUnit4ClassRunner", "getChildren", "BlockJUnit4ClassRunner", "computeTestMethods").
method("BlockJUnit4ClassRunner", "computeTestMethods").
calls("BlockJUnit4ClassRunner", "computeTestMethods", "BlockJUnit4ClassRunner", "getTestClass").
method("BlockJUnit4ClassRunner", "collectInitializationErrors").
calls("BlockJUnit4ClassRunner", "collectInitializationErrors", "BlockJUnit4ClassRunner", "validatePublicConstructor").
calls("BlockJUnit4ClassRunner", "collectInitializationErrors", "BlockJUnit4ClassRunner", "validateNoNonStaticInnerClass").
calls("BlockJUnit4ClassRunner", "collectInitializationErrors", "BlockJUnit4ClassRunner", "validateConstructor").
calls("BlockJUnit4ClassRunner", "collectInitializationErrors", "BlockJUnit4ClassRunner", "validateInstanceMethods").
calls("BlockJUnit4ClassRunner", "collectInitializationErrors", "BlockJUnit4ClassRunner", "validateFields").
calls("BlockJUnit4ClassRunner", "collectInitializationErrors", "BlockJUnit4ClassRunner", "validateMethods").
method("BlockJUnit4ClassRunner", "validatePublicConstructor").
calls("BlockJUnit4ClassRunner", "validatePublicConstructor", "List", "addAll").
method("BlockJUnit4ClassRunner", "validateNoNonStaticInnerClass").
calls("BlockJUnit4ClassRunner", "validateNoNonStaticInnerClass", "BlockJUnit4ClassRunner", "getTestClass").
calls("BlockJUnit4ClassRunner", "validateNoNonStaticInnerClass", "List", "add").
method("BlockJUnit4ClassRunner", "validateConstructor").
calls("BlockJUnit4ClassRunner", "validateConstructor", "BlockJUnit4ClassRunner", "validateOnlyOneConstructor").
calls("BlockJUnit4ClassRunner", "validateConstructor", "BlockJUnit4ClassRunner", "validateZeroArgConstructor").
method("BlockJUnit4ClassRunner", "validateOnlyOneConstructor").
calls("BlockJUnit4ClassRunner", "validateOnlyOneConstructor", "BlockJUnit4ClassRunner", "hasOneConstructor").
calls("BlockJUnit4ClassRunner", "validateOnlyOneConstructor", "List", "add").
method("BlockJUnit4ClassRunner", "validateZeroArgConstructor").
calls("BlockJUnit4ClassRunner", "validateZeroArgConstructor", "List", "add").
method("BlockJUnit4ClassRunner", "hasOneConstructor").
method("BlockJUnit4ClassRunner", "validateInstanceMethods").
calls("BlockJUnit4ClassRunner", "validateInstanceMethods", "BlockJUnit4ClassRunner", "validatePublicVoidNoArgMethods").
calls("BlockJUnit4ClassRunner", "validateInstanceMethods", "BlockJUnit4ClassRunner", "validatePublicVoidNoArgMethods").
calls("BlockJUnit4ClassRunner", "validateInstanceMethods", "BlockJUnit4ClassRunner", "validateTestMethods").
calls("BlockJUnit4ClassRunner", "validateInstanceMethods", "BlockJUnit4ClassRunner", "computeTestMethods").
calls("BlockJUnit4ClassRunner", "validateInstanceMethods", "List", "add").
method("BlockJUnit4ClassRunner", "validateFields").
calls("BlockJUnit4ClassRunner", "validateFields", "RULE_VALIDATOR", "validate").
method("BlockJUnit4ClassRunner", "validateMethods").
calls("BlockJUnit4ClassRunner", "validateMethods", "RULE_METHOD_VALIDATOR", "validate").
method("BlockJUnit4ClassRunner", "validateTestMethods").
calls("BlockJUnit4ClassRunner", "validateTestMethods", "BlockJUnit4ClassRunner", "validatePublicVoidNoArgMethods").
method("BlockJUnit4ClassRunner", "createTest").
calls("BlockJUnit4ClassRunner", "createTest", "BlockJUnit4ClassRunner", "getTestClass").
method("BlockJUnit4ClassRunner", "createTest").
calls("BlockJUnit4ClassRunner", "createTest", "BlockJUnit4ClassRunner", "createTest").
method("BlockJUnit4ClassRunner", "testName").
calls("BlockJUnit4ClassRunner", "testName", "FrameworkMethod", "getName").
method("BlockJUnit4ClassRunner", "methodBlock").
method("BlockJUnit4ClassRunner", "methodInvoker").
method("BlockJUnit4ClassRunner", "possiblyExpectingExceptions").
method("BlockJUnit4ClassRunner", "withPotentialTimeout").
calls("BlockJUnit4ClassRunner", "withPotentialTimeout", "FailOnTimeout", "builder").
method("BlockJUnit4ClassRunner", "withBefores").
method("BlockJUnit4ClassRunner", "withAfters").
method("BlockJUnit4ClassRunner", "withRules").
method("BlockJUnit4ClassRunner", "withMethodRules").
method("BlockJUnit4ClassRunner", "getMethodRules").
calls("BlockJUnit4ClassRunner", "getMethodRules", "BlockJUnit4ClassRunner", "rules").
method("BlockJUnit4ClassRunner", "rules").
calls("BlockJUnit4ClassRunner", "rules", "List", "addAll").
method("BlockJUnit4ClassRunner", "withTestRules").
method("BlockJUnit4ClassRunner", "getTestRules").
calls("BlockJUnit4ClassRunner", "getTestRules", "List", "addAll").
method("BlockJUnit4ClassRunner", "getExpectedException").
calls("BlockJUnit4ClassRunner", "getExpectedException", "Test", "expected").
method("BlockJUnit4ClassRunner", "getTimeout").
calls("BlockJUnit4ClassRunner", "getTimeout", "Test", "timeout").

# junit4/src/main/java/org/junit/runners/Parameterized.java

class("Parameterized").
method("Parameterized", "validateBeforeParamAndAfterParamMethods").
calls("Parameterized", "validateBeforeParamAndAfterParamMethods", "Parameterized", "validatePublicStaticVoidMethods").
calls("Parameterized", "validateBeforeParamAndAfterParamMethods", "Parameterized", "validatePublicStaticVoidMethods").
calls("Parameterized", "validateBeforeParamAndAfterParamMethods", "List", "isEmpty").
method("Parameterized", "validatePublicStaticVoidMethods").
calls("Parameterized", "validatePublicStaticVoidMethods", "FrameworkMethod", "validatePublicVoid").
calls("Parameterized", "validatePublicStaticVoidMethods", "List", "add").

# junit4/src/main/java/org/junit/runners/Suite.java

class("Suite").
method("Suite", "emptySuite").
method("Suite", "getAnnotatedClasses").
calls("Suite", "getAnnotatedClasses", "SuiteClasses", "value").
method("Suite", "getChildren").
method("Suite", "describeChild").
calls("Suite", "describeChild", "Runner", "getDescription").
method("Suite", "runChild").
calls("Suite", "runChild", "Runner", "run").

# junit4/src/main/java/org/junit/function/ThrowingRunnable.java


# junit4/src/main/java/org/junit/rules/ExpectedException.java

class("ExpectedException").
method("ExpectedException", "none").
method("ExpectedException", "handleAssertionErrors").
method("ExpectedException", "handleAssumptionViolatedExceptions").
method("ExpectedException", "reportMissingExceptionWithMessage").
method("ExpectedException", "apply").
method("ExpectedException", "expect").
calls("ExpectedException", "expect", "ExpectedExceptionMatcherBuilder", "add").
method("ExpectedException", "expect").
calls("ExpectedException", "expect", "ExpectedException", "expect").
method("ExpectedException", "expectMessage").
calls("ExpectedException", "expectMessage", "ExpectedException", "expectMessage").
method("ExpectedException", "expectMessage").
calls("ExpectedException", "expectMessage", "ExpectedException", "expect").
method("ExpectedException", "expectCause").
calls("ExpectedException", "expectCause", "ExpectedException", "expect").
method("ExpectedException", "isAnyExceptionExpected").
calls("ExpectedException", "isAnyExceptionExpected", "ExpectedExceptionMatcherBuilder", "expectsThrowable").
method("ExpectedException", "handleException").
calls("ExpectedException", "handleException", "ExpectedException", "isAnyExceptionExpected").
calls("ExpectedException", "handleException", "ExpectedException", "assertThat").
method("ExpectedException", "failDueToMissingException").
calls("ExpectedException", "failDueToMissingException", "ExpectedException", "fail").
method("ExpectedException", "missingExceptionMessage").
calls("ExpectedException", "missingExceptionMessage", "ExpectedException", "format").

# junit4/src/main/java/org/junit/rules/RuleChain.java

class("RuleChain").
method("RuleChain", "emptyRuleChain").
method("RuleChain", "outerRule").
calls("RuleChain", "outerRule", "RuleChain", "emptyRuleChain").
method("RuleChain", "around").
calls("RuleChain", "around", "List", "add").
calls("RuleChain", "around", "List", "addAll").
method("RuleChain", "apply").

# junit4/src/main/java/org/junit/rules/ErrorCollector.java

class("ErrorCollector").
method("ErrorCollector", "verify").
calls("ErrorCollector", "verify", "MultipleFailureException", "assertEmpty").
method("ErrorCollector", "addError").
calls("ErrorCollector", "addError", "AssertionError", "initCause").
calls("ErrorCollector", "addError", "List", "add").
calls("ErrorCollector", "addError", "List", "add").
method("ErrorCollector", "checkThat").
calls("ErrorCollector", "checkThat", "ErrorCollector", "checkThat").
method("ErrorCollector", "checkThat").
calls("ErrorCollector", "checkThat", "ErrorCollector", "checkSucceeds").
method("ErrorCollector", "checkSucceeds").
calls("ErrorCollector", "checkSucceeds", "Callable", "call").
calls("ErrorCollector", "checkSucceeds", "AssertionError", "initCause").
calls("ErrorCollector", "checkSucceeds", "ErrorCollector", "addError").
calls("ErrorCollector", "checkSucceeds", "ErrorCollector", "addError").
method("ErrorCollector", "checkThrows").
calls("ErrorCollector", "checkThrows", "ErrorCollector", "assertThrows").
calls("ErrorCollector", "checkThrows", "ErrorCollector", "addError").

# junit4/src/main/java/org/junit/rules/Verifier.java

class("Verifier").
method("Verifier", "apply").
method("Verifier", "verify").

# junit4/src/main/java/org/junit/rules/TestWatcher.java

class("TestWatcher").
method("TestWatcher", "apply").
method("TestWatcher", "succeededQuietly").
calls("TestWatcher", "succeededQuietly", "TestWatcher", "succeeded").
calls("TestWatcher", "succeededQuietly", "List", "add").
method("TestWatcher", "failedQuietly").
calls("TestWatcher", "failedQuietly", "TestWatcher", "failed").
calls("TestWatcher", "failedQuietly", "List", "add").
method("TestWatcher", "skippedQuietly").
calls("TestWatcher", "skippedQuietly", "TestWatcher", "skipped").
calls("TestWatcher", "skippedQuietly", "TestWatcher", "skipped").
calls("TestWatcher", "skippedQuietly", "List", "add").
method("TestWatcher", "startingQuietly").
calls("TestWatcher", "startingQuietly", "TestWatcher", "starting").
calls("TestWatcher", "startingQuietly", "List", "add").
method("TestWatcher", "finishedQuietly").
calls("TestWatcher", "finishedQuietly", "TestWatcher", "finished").
calls("TestWatcher", "finishedQuietly", "List", "add").
method("TestWatcher", "succeeded").
method("TestWatcher", "failed").
method("TestWatcher", "skipped").
calls("TestWatcher", "skipped", "TestWatcher", "skipped").
method("TestWatcher", "skipped").
method("TestWatcher", "starting").
method("TestWatcher", "finished").

# junit4/src/main/java/org/junit/rules/TestWatchman.java

class("TestWatchman").
method("TestWatchman", "apply").
method("TestWatchman", "succeeded").
method("TestWatchman", "failed").
method("TestWatchman", "starting").
method("TestWatchman", "finished").

# junit4/src/main/java/org/junit/rules/TemporaryFolder.java

class("TemporaryFolder").
method("TemporaryFolder", "builder").
method("TemporaryFolder", "before").
calls("TemporaryFolder", "before", "TemporaryFolder", "create").
method("TemporaryFolder", "after").
calls("TemporaryFolder", "after", "TemporaryFolder", "delete").
method("TemporaryFolder", "create").
method("TemporaryFolder", "newFile").
calls("TemporaryFolder", "newFile", "File", "createNewFile").
method("TemporaryFolder", "newFile").
calls("TemporaryFolder", "newFile", "File", "createTempFile").
method("TemporaryFolder", "newFolder").
calls("TemporaryFolder", "newFolder", "TemporaryFolder", "newFolder").
method("TemporaryFolder", "newFolder").
method("TemporaryFolder", "newFolder").
calls("TemporaryFolder", "newFolder", "TemporaryFolder", "createTemporaryFolderIn").
method("TemporaryFolder", "createTemporaryFolderIn").
calls("TemporaryFolder", "createTemporaryFolderIn", "File", "mkdir").
calls("TemporaryFolder", "createTemporaryFolderIn", "File", "delete").
calls("TemporaryFolder", "createTemporaryFolderIn", "File", "delete").
method("TemporaryFolder", "getRoot").
method("TemporaryFolder", "delete").
calls("TemporaryFolder", "delete", "TemporaryFolder", "tryDelete").
calls("TemporaryFolder", "delete", "TemporaryFolder", "fail").
method("TemporaryFolder", "tryDelete").
calls("TemporaryFolder", "tryDelete", "TemporaryFolder", "recursiveDelete").
method("TemporaryFolder", "recursiveDelete").
calls("TemporaryFolder", "recursiveDelete", "File", "delete").

# junit4/src/main/java/org/junit/rules/RunRules.java

class("RunRules").
method("RunRules", "evaluate").
calls("RunRules", "evaluate", "Statement", "evaluate").
method("RunRules", "applyAll").

# junit4/src/main/java/org/junit/rules/MethodRule.java


# junit4/src/main/java/org/junit/rules/Stopwatch.java

class("Stopwatch").
method("Stopwatch", "runtime").
calls("Stopwatch", "runtime", "TimeUnit", "convert").
method("Stopwatch", "succeeded").
method("Stopwatch", "failed").
method("Stopwatch", "skipped").
method("Stopwatch", "finished").
method("Stopwatch", "getNanos").
method("Stopwatch", "starting").
method("Stopwatch", "stopping").
method("Stopwatch", "apply").

# junit4/src/main/java/org/junit/rules/ExpectedExceptionMatcherBuilder.java

class("ExpectedExceptionMatcherBuilder").
method("ExpectedExceptionMatcherBuilder", "add").
calls("ExpectedExceptionMatcherBuilder", "add", "List", "add").
method("ExpectedExceptionMatcherBuilder", "expectsThrowable").
calls("ExpectedExceptionMatcherBuilder", "expectsThrowable", "List", "isEmpty").
method("ExpectedExceptionMatcherBuilder", "build").
calls("ExpectedExceptionMatcherBuilder", "build", "ExpectedExceptionMatcherBuilder", "isThrowable").
method("ExpectedExceptionMatcherBuilder", "allOfTheMatchers").
calls("ExpectedExceptionMatcherBuilder", "allOfTheMatchers", "ExpectedExceptionMatcherBuilder", "cast").
calls("ExpectedExceptionMatcherBuilder", "allOfTheMatchers", "ExpectedExceptionMatcherBuilder", "allOf").
method("ExpectedExceptionMatcherBuilder", "castedMatchers").
method("ExpectedExceptionMatcherBuilder", "cast").

# junit4/src/main/java/org/junit/rules/Timeout.java

class("Timeout").
method("Timeout", "builder").
method("Timeout", "millis").
method("Timeout", "seconds").
method("Timeout", "getTimeout").
calls("Timeout", "getTimeout", "TimeUnit", "convert").
method("Timeout", "getLookingForStuckThread").
method("Timeout", "createFailOnTimeoutStatement").
calls("Timeout", "createFailOnTimeoutStatement", "FailOnTimeout", "builder").
method("Timeout", "apply").
calls("Timeout", "apply", "Timeout", "createFailOnTimeoutStatement").

# junit4/src/main/java/org/junit/rules/TestName.java

class("TestName").
method("TestName", "starting").
method("TestName", "getMethodName").

# junit4/src/main/java/org/junit/rules/TestRule.java


# junit4/src/main/java/org/junit/rules/ExternalResource.java

class("ExternalResource").
method("ExternalResource", "apply").
calls("ExternalResource", "apply", "ExternalResource", "statement").
method("ExternalResource", "statement").
method("ExternalResource", "before").
method("ExternalResource", "after").

# junit4/src/main/java/org/junit/rules/DisableOnDebug.java

class("DisableOnDebug").
method("DisableOnDebug", "apply").
calls("DisableOnDebug", "apply", "TestRule", "apply").
method("DisableOnDebug", "isDebugging").
calls("DisableOnDebug", "isDebugging", "String", "startsWith").
method("DisableOnDebug", "isDebugging").

# junit4/src/main/java/org/junit/runner/Result.java

class("Result").
method("Result", "getRunCount").
calls("Result", "getRunCount", "AtomicInteger", "get").
method("Result", "getFailureCount").
calls("Result", "getFailureCount", "CopyOnWriteArrayList", "size").
method("Result", "getRunTime").
calls("Result", "getRunTime", "AtomicLong", "get").
method("Result", "getFailures").
method("Result", "getIgnoreCount").
calls("Result", "getIgnoreCount", "AtomicInteger", "get").
method("Result", "wasSuccessful").
method("Result", "writeObject").
calls("Result", "writeObject", "SerializedForm", "serialize").
method("Result", "readObject").
method("Result", "readResolve").
method("Result", "createListener").

# junit4/src/main/java/org/junit/runner/FilterFactories.java

class("FilterFactories").
method("FilterFactories", "createFilterFromFilterSpec").
calls("FilterFactories", "createFilterFromFilterSpec", "String", "contains").
calls("FilterFactories", "createFilterFromFilterSpec", "FilterFactories", "createFilter").
method("FilterFactories", "createFilter").
calls("FilterFactories", "createFilter", "FilterFactory", "createFilter").
method("FilterFactories", "createFilter").
calls("FilterFactories", "createFilter", "FilterFactory", "createFilter").
method("FilterFactories", "createFilterFactory").
calls("FilterFactories", "createFilterFactory", "FilterFactories", "createFilterFactory").
method("FilterFactories", "createFilterFactory").
calls("FilterFactories", "createFilterFactory", "Class", "getConstructor").

# junit4/src/main/java/org/junit/runner/Computer.java

class("Computer").
method("Computer", "serial").
method("Computer", "getSuite").
method("Computer", "getRunner").
calls("Computer", "getRunner", "RunnerBuilder", "runnerForClass").

# junit4/src/main/java/org/junit/runner/Runner.java

class("Runner").
method("Runner", "getDescription").
method("Runner", "run").
method("Runner", "testCount").
calls("Runner", "testCount", "Runner", "getDescription").

# junit4/src/main/java/org/junit/runner/package-info.java


# junit4/src/main/java/org/junit/runner/Description.java

class("Description").
method("Description", "createSuiteDescription").
method("Description", "createSuiteDescription").
method("Description", "createTestDescription").
method("Description", "createTestDescription").
method("Description", "createTestDescription").
method("Description", "createTestDescription").
method("Description", "formatDisplayName").
calls("Description", "formatDisplayName", "String", "format").
method("Description", "createSuiteDescription").
method("Description", "createSuiteDescription").
method("Description", "getDisplayName").
method("Description", "addChild").
calls("Description", "addChild", "Collection", "add").
method("Description", "getChildren").
method("Description", "isSuite").
calls("Description", "isSuite", "Description", "isTest").
method("Description", "isTest").
calls("Description", "isTest", "Collection", "isEmpty").
method("Description", "testCount").
calls("Description", "testCount", "Description", "isTest").
method("Description", "hashCode").
calls("Description", "hashCode", "Serializable", "hashCode").
method("Description", "equals").
calls("Description", "equals", "Serializable", "equals").
method("Description", "toString").
calls("Description", "toString", "Description", "getDisplayName").
method("Description", "isEmpty").
calls("Description", "isEmpty", "Description", "equals").
method("Description", "childlessCopy").
method("Description", "getAnnotation").
calls("Description", "getAnnotation", "Annotation", "annotationType").
calls("Description", "getAnnotation", "Class", "cast").
method("Description", "getAnnotations").
calls("Description", "getAnnotations", "Arrays", "asList").
method("Description", "getTestClass").
method("Description", "getClassName").
method("Description", "getMethodName").
calls("Description", "getMethodName", "Description", "methodAndClassNamePatternGroupOrDefault").
method("Description", "methodAndClassNamePatternGroupOrDefault").

# junit4/src/main/java/org/junit/runner/Describable.java


# junit4/src/main/java/org/junit/runner/Request.java

class("Request").
method("Request", "method").
calls("Request", "method", "Request", "aClass").
method("Request", "aClass").
method("Request", "classWithoutSuiteMethod").
method("Request", "classes").
calls("Request", "classes", "Request", "runner").
calls("Request", "classes", "Request", "runner").
method("Request", "classes").
calls("Request", "classes", "Request", "classes").
method("Request", "errorReport").
calls("Request", "errorReport", "Request", "runner").
method("Request", "runner").
method("Request", "getRunner").
method("Request", "filterWith").
method("Request", "filterWith").
calls("Request", "filterWith", "Request", "filterWith").
method("Request", "sortWith").

# junit4/src/main/java/org/junit/runner/RunWith.java


# junit4/src/main/java/org/junit/runner/FilterFactory.java


# junit4/src/main/java/org/junit/runner/JUnitCore.java

class("JUnitCore").
method("JUnitCore", "main").
calls("JUnitCore", "main", "System", "exit").
method("JUnitCore", "runClasses").
calls("JUnitCore", "runClasses", "JUnitCore", "runClasses").
method("JUnitCore", "runClasses").
method("JUnitCore", "runMain").
calls("JUnitCore", "runMain", "JUnitSystem", "out").
calls("JUnitCore", "runMain", "JUnitCore", "addListener").
calls("JUnitCore", "runMain", "JUnitCore", "run").
method("JUnitCore", "getVersion").
calls("JUnitCore", "getVersion", "Version", "id").
method("JUnitCore", "run").
calls("JUnitCore", "run", "JUnitCore", "run").
method("JUnitCore", "run").
calls("JUnitCore", "run", "JUnitCore", "run").
method("JUnitCore", "run").
calls("JUnitCore", "run", "JUnitCore", "run").
method("JUnitCore", "run").
calls("JUnitCore", "run", "JUnitCore", "run").
method("JUnitCore", "run").
calls("JUnitCore", "run", "RunNotifier", "addFirstListener").
calls("JUnitCore", "run", "RunNotifier", "fireTestRunStarted").
calls("JUnitCore", "run", "Runner", "run").
calls("JUnitCore", "run", "RunNotifier", "fireTestRunFinished").
calls("JUnitCore", "run", "JUnitCore", "removeListener").
method("JUnitCore", "addListener").
calls("JUnitCore", "addListener", "RunNotifier", "addListener").
method("JUnitCore", "removeListener").
calls("JUnitCore", "removeListener", "RunNotifier", "removeListener").
method("JUnitCore", "defaultComputer").

# junit4/src/main/java/org/junit/runner/JUnitCommandLineParseResult.java

class("JUnitCommandLineParseResult").
method("JUnitCommandLineParseResult", "getFilterSpecs").
calls("JUnitCommandLineParseResult", "getFilterSpecs", "Collections", "unmodifiableList").
method("JUnitCommandLineParseResult", "getClasses").
calls("JUnitCommandLineParseResult", "getClasses", "Collections", "unmodifiableList").
method("JUnitCommandLineParseResult", "parse").
calls("JUnitCommandLineParseResult", "parse", "JUnitCommandLineParseResult", "parseArgs").
method("JUnitCommandLineParseResult", "parseArgs").
calls("JUnitCommandLineParseResult", "parseArgs", "JUnitCommandLineParseResult", "parseParameters").
method("JUnitCommandLineParseResult", "parseOptions").
calls("JUnitCommandLineParseResult", "parseOptions", "String", "equals").
calls("JUnitCommandLineParseResult", "parseOptions", "JUnitCommandLineParseResult", "copyArray").
calls("JUnitCommandLineParseResult", "parseOptions", "String", "startsWith").
calls("JUnitCommandLineParseResult", "parseOptions", "String", "equals").
calls("JUnitCommandLineParseResult", "parseOptions", "List", "add").
calls("JUnitCommandLineParseResult", "parseOptions", "List", "add").
calls("JUnitCommandLineParseResult", "parseOptions", "List", "add").
calls("JUnitCommandLineParseResult", "parseOptions", "JUnitCommandLineParseResult", "copyArray").
method("JUnitCommandLineParseResult", "copyArray").
method("JUnitCommandLineParseResult", "parseParameters").
calls("JUnitCommandLineParseResult", "parseParameters", "List", "add").
calls("JUnitCommandLineParseResult", "parseParameters", "List", "add").
method("JUnitCommandLineParseResult", "errorReport").
calls("JUnitCommandLineParseResult", "errorReport", "Request", "errorReport").
method("JUnitCommandLineParseResult", "createRequest").
calls("JUnitCommandLineParseResult", "createRequest", "List", "isEmpty").
calls("JUnitCommandLineParseResult", "createRequest", "JUnitCommandLineParseResult", "applyFilterSpecs").
calls("JUnitCommandLineParseResult", "createRequest", "JUnitCommandLineParseResult", "errorReport").
method("JUnitCommandLineParseResult", "applyFilterSpecs").
calls("JUnitCommandLineParseResult", "applyFilterSpecs", "JUnitCommandLineParseResult", "errorReport").

# junit4/src/main/java/org/junit/runner/FilterFactoryParams.java

class("FilterFactoryParams").
method("FilterFactoryParams", "getArgs").
method("FilterFactoryParams", "getTopLevelDescription").

# junit4/src/main/java/org/junit/validator/AnnotationValidator.java

class("AnnotationValidator").
method("AnnotationValidator", "validateAnnotatedClass").
method("AnnotationValidator", "validateAnnotatedField").
method("AnnotationValidator", "validateAnnotatedMethod").

# junit4/src/main/java/org/junit/validator/TestClassValidator.java


# junit4/src/main/java/org/junit/validator/AnnotationValidatorFactory.java

class("AnnotationValidatorFactory").
method("AnnotationValidatorFactory", "createAnnotationValidator").
calls("AnnotationValidatorFactory", "createAnnotationValidator", "VALIDATORS_FOR_ANNOTATION_TYPES", "putIfAbsent").
calls("AnnotationValidatorFactory", "createAnnotationValidator", "VALIDATORS_FOR_ANNOTATION_TYPES", "get").

# junit4/src/main/java/org/junit/validator/PublicClassValidator.java

class("PublicClassValidator").
method("PublicClassValidator", "validateTestClass").
calls("PublicClassValidator", "validateTestClass", "TestClass", "isPublic").
calls("PublicClassValidator", "validateTestClass", "PublicClassValidator", "singletonList").

# junit4/src/main/java/org/junit/validator/AnnotationsValidator.java

class("AnnotationsValidator").
method("AnnotationsValidator", "validateTestClass").
calls("AnnotationsValidator", "validateTestClass", "List", "addAll").

# junit4/src/main/java/org/junit/validator/ValidateWith.java


# junit4/src/main/java/org/junit/matchers/package-info.java


# junit4/src/main/java/org/junit/matchers/JUnitMatchers.java

class("JUnitMatchers").
method("JUnitMatchers", "hasItem").
calls("JUnitMatchers", "hasItem", "CoreMatchers", "hasItem").
method("JUnitMatchers", "hasItem").
calls("JUnitMatchers", "hasItem", "JUnitMatchers", "CoreMatchers").
method("JUnitMatchers", "hasItems").
calls("JUnitMatchers", "hasItems", "CoreMatchers", "hasItems").
method("JUnitMatchers", "hasItems").
calls("JUnitMatchers", "hasItems", "CoreMatchers", "hasItems").
method("JUnitMatchers", "everyItem").
calls("JUnitMatchers", "everyItem", "CoreMatchers", "everyItem").
method("JUnitMatchers", "containsString").
calls("JUnitMatchers", "containsString", "CoreMatchers", "containsString").
method("JUnitMatchers", "both").
calls("JUnitMatchers", "both", "CoreMatchers", "both").
method("JUnitMatchers", "either").
calls("JUnitMatchers", "either", "CoreMatchers", "either").
method("JUnitMatchers", "isThrowable").
calls("JUnitMatchers", "isThrowable", "StacktracePrintingMatcher", "isThrowable").
method("JUnitMatchers", "isException").
calls("JUnitMatchers", "isException", "StacktracePrintingMatcher", "isException").

# junit4/src/main/java/org/junit/internal/runners/MethodValidator.java

class("MethodValidator").
method("MethodValidator", "validateInstanceMethods").
calls("MethodValidator", "validateInstanceMethods", "MethodValidator", "validateTestMethods").
calls("MethodValidator", "validateInstanceMethods", "MethodValidator", "validateTestMethods").
calls("MethodValidator", "validateInstanceMethods", "MethodValidator", "validateTestMethods").
calls("MethodValidator", "validateInstanceMethods", "List", "add").
method("MethodValidator", "validateStaticMethods").
calls("MethodValidator", "validateStaticMethods", "MethodValidator", "validateTestMethods").
calls("MethodValidator", "validateStaticMethods", "MethodValidator", "validateTestMethods").
method("MethodValidator", "validateMethodsForDefaultRunner").
calls("MethodValidator", "validateMethodsForDefaultRunner", "MethodValidator", "validateNoArgConstructor").
calls("MethodValidator", "validateMethodsForDefaultRunner", "MethodValidator", "validateStaticMethods").
calls("MethodValidator", "validateMethodsForDefaultRunner", "MethodValidator", "validateInstanceMethods").
method("MethodValidator", "assertValid").
calls("MethodValidator", "assertValid", "List", "isEmpty").
method("MethodValidator", "validateNoArgConstructor").
calls("MethodValidator", "validateNoArgConstructor", "TestClass", "getConstructor").
calls("MethodValidator", "validateNoArgConstructor", "List", "add").
method("MethodValidator", "validateTestMethods").
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
method("TestClass", "getTestMethods").
calls("TestClass", "getTestMethods", "TestClass", "getAnnotatedMethods").
method("TestClass", "getBefores").
calls("TestClass", "getBefores", "TestClass", "getAnnotatedMethods").
method("TestClass", "getAfters").
calls("TestClass", "getAfters", "TestClass", "getAnnotatedMethods").
method("TestClass", "getAnnotatedMethods").
calls("TestClass", "getAnnotatedMethods", "List", "add").
calls("TestClass", "getAnnotatedMethods", "TestClass", "runsTopToBottom").
calls("TestClass", "getAnnotatedMethods", "Collections", "reverse").
method("TestClass", "runsTopToBottom").
method("TestClass", "isShadowed").
calls("TestClass", "isShadowed", "TestClass", "isShadowed").
method("TestClass", "isShadowed").
calls("TestClass", "isShadowed", "Method", "getName").
calls("TestClass", "isShadowed", "Method", "getParameterTypes").
method("TestClass", "getSuperClasses").
calls("TestClass", "getSuperClasses", "List", "add").
method("TestClass", "getConstructor").
calls("TestClass", "getConstructor", "Class", "getConstructor").
method("TestClass", "getJavaClass").
method("TestClass", "getName").
calls("TestClass", "getName", "Class", "getName").

# junit4/src/main/java/org/junit/internal/runners/SuiteMethod.java

class("SuiteMethod").
method("SuiteMethod", "testFromSuiteMethod").
calls("SuiteMethod", "testFromSuiteMethod", "Modifier", "isStatic").
calls("SuiteMethod", "testFromSuiteMethod", "InvocationTargetException", "getCause").

# junit4/src/main/java/org/junit/internal/runners/TestMethod.java

class("TestMethod").
method("TestMethod", "isIgnored").
method("TestMethod", "getTimeout").
method("TestMethod", "getExpectedException").
calls("TestMethod", "getExpectedException", "Test", "expected").
method("TestMethod", "isUnexpected").
calls("TestMethod", "isUnexpected", "TestMethod", "getExpectedException").
method("TestMethod", "expectsException").
method("TestMethod", "getBefores").
calls("TestMethod", "getBefores", "TestClass", "getAnnotatedMethods").
method("TestMethod", "getAfters").
calls("TestMethod", "getAfters", "TestClass", "getAnnotatedMethods").
method("TestMethod", "invoke").
calls("TestMethod", "invoke", "Method", "invoke").

# junit4/src/main/java/org/junit/internal/runners/package-info.java


# junit4/src/main/java/org/junit/internal/runners/MethodRoadie.java

class("MethodRoadie").
method("MethodRoadie", "run").
calls("MethodRoadie", "run", "TestMethod", "isIgnored").
calls("MethodRoadie", "run", "RunNotifier", "fireTestIgnored").
calls("MethodRoadie", "run", "RunNotifier", "fireTestStarted").
calls("MethodRoadie", "run", "MethodRoadie", "runWithTimeout").
calls("MethodRoadie", "run", "MethodRoadie", "runTest").
calls("MethodRoadie", "run", "RunNotifier", "fireTestFinished").
method("MethodRoadie", "runWithTimeout").
calls("MethodRoadie", "runWithTimeout", "MethodRoadie", "runBeforesThenTestThenAfters").
method("MethodRoadie", "runTest").
calls("MethodRoadie", "runTest", "MethodRoadie", "runBeforesThenTestThenAfters").
method("MethodRoadie", "runBeforesThenTestThenAfters").
calls("MethodRoadie", "runBeforesThenTestThenAfters", "MethodRoadie", "runBefores").
calls("MethodRoadie", "runBeforesThenTestThenAfters", "Runnable", "run").
calls("MethodRoadie", "runBeforesThenTestThenAfters", "MethodRoadie", "runAfters").
method("MethodRoadie", "runTestMethod").
calls("MethodRoadie", "runTestMethod", "TestMethod", "invoke").
calls("MethodRoadie", "runTestMethod", "TestMethod", "expectsException").
calls("MethodRoadie", "runTestMethod", "MethodRoadie", "addFailure").
calls("MethodRoadie", "runTestMethod", "TestMethod", "expectsException").
calls("MethodRoadie", "runTestMethod", "MethodRoadie", "addFailure").
calls("MethodRoadie", "runTestMethod", "TestMethod", "isUnexpected").
calls("MethodRoadie", "runTestMethod", "MethodRoadie", "addFailure").
calls("MethodRoadie", "runTestMethod", "MethodRoadie", "addFailure").
method("MethodRoadie", "runBefores").
calls("MethodRoadie", "runBefores", "Method", "invoke").
calls("MethodRoadie", "runBefores", "InvocationTargetException", "getTargetException").
calls("MethodRoadie", "runBefores", "MethodRoadie", "addFailure").
method("MethodRoadie", "runAfters").
calls("MethodRoadie", "runAfters", "Method", "invoke").
calls("MethodRoadie", "runAfters", "MethodRoadie", "addFailure").
calls("MethodRoadie", "runAfters", "MethodRoadie", "addFailure").
method("MethodRoadie", "addFailure").
calls("MethodRoadie", "addFailure", "RunNotifier", "fireTestFailure").

# junit4/src/main/java/org/junit/internal/runners/JUnit4ClassRunner.java

class("JUnit4ClassRunner").
method("JUnit4ClassRunner", "getTestMethods").
calls("JUnit4ClassRunner", "getTestMethods", "TestClass", "getTestMethods").
method("JUnit4ClassRunner", "validate").
calls("JUnit4ClassRunner", "validate", "MethodValidator", "validateMethodsForDefaultRunner").
calls("JUnit4ClassRunner", "validate", "MethodValidator", "assertValid").
method("JUnit4ClassRunner", "run").
method("JUnit4ClassRunner", "runMethods").
calls("JUnit4ClassRunner", "runMethods", "JUnit4ClassRunner", "invokeTestMethod").
method("JUnit4ClassRunner", "getDescription").
calls("JUnit4ClassRunner", "getDescription", "Description", "addChild").
method("JUnit4ClassRunner", "classAnnotations").
calls("JUnit4ClassRunner", "classAnnotations", "TestClass", "getJavaClass").
method("JUnit4ClassRunner", "getName").
calls("JUnit4ClassRunner", "getName", "JUnit4ClassRunner", "getTestClass").
method("JUnit4ClassRunner", "createTest").
calls("JUnit4ClassRunner", "createTest", "JUnit4ClassRunner", "getTestClass").
method("JUnit4ClassRunner", "invokeTestMethod").
calls("JUnit4ClassRunner", "invokeTestMethod", "JUnit4ClassRunner", "testAborted").
calls("JUnit4ClassRunner", "invokeTestMethod", "JUnit4ClassRunner", "testAborted").
method("JUnit4ClassRunner", "testAborted").
calls("JUnit4ClassRunner", "testAborted", "RunNotifier", "fireTestStarted").
calls("JUnit4ClassRunner", "testAborted", "RunNotifier", "fireTestFailure").
calls("JUnit4ClassRunner", "testAborted", "RunNotifier", "fireTestFinished").
method("JUnit4ClassRunner", "wrapMethod").
method("JUnit4ClassRunner", "testName").
calls("JUnit4ClassRunner", "testName", "Method", "getName").
method("JUnit4ClassRunner", "methodDescription").
calls("JUnit4ClassRunner", "methodDescription", "Description", "createTestDescription").
method("JUnit4ClassRunner", "testAnnotations").
calls("JUnit4ClassRunner", "testAnnotations", "Method", "getAnnotations").
method("JUnit4ClassRunner", "filter").
calls("JUnit4ClassRunner", "filter", "Filter", "shouldRun").
calls("JUnit4ClassRunner", "filter", "Iterator", "remove").
calls("JUnit4ClassRunner", "filter", "List", "isEmpty").
method("JUnit4ClassRunner", "sort").
calls("JUnit4ClassRunner", "sort", "Collections", "sort").
method("JUnit4ClassRunner", "getTestClass").

# junit4/src/main/java/org/junit/internal/runners/InitializationError.java

class("InitializationError").
method("InitializationError", "getCauses").

# junit4/src/main/java/org/junit/internal/runners/ClassRoadie.java

class("ClassRoadie").
method("ClassRoadie", "runUnprotected").
calls("ClassRoadie", "runUnprotected", "Runnable", "run").
method("ClassRoadie", "addFailure").
calls("ClassRoadie", "addFailure", "RunNotifier", "fireTestFailure").
method("ClassRoadie", "runProtected").
calls("ClassRoadie", "runProtected", "ClassRoadie", "runBefores").
calls("ClassRoadie", "runProtected", "ClassRoadie", "runUnprotected").
calls("ClassRoadie", "runProtected", "ClassRoadie", "runAfters").
method("ClassRoadie", "runBefores").
calls("ClassRoadie", "runBefores", "Method", "invoke").
calls("ClassRoadie", "runBefores", "InvocationTargetException", "getTargetException").
calls("ClassRoadie", "runBefores", "ClassRoadie", "addFailure").
method("ClassRoadie", "runAfters").
calls("ClassRoadie", "runAfters", "Method", "invoke").
calls("ClassRoadie", "runAfters", "ClassRoadie", "addFailure").
calls("ClassRoadie", "runAfters", "ClassRoadie", "addFailure").

# junit4/src/main/java/org/junit/internal/runners/JUnit38ClassRunner.java

class("JUnit38ClassRunner").
method("JUnit38ClassRunner", "run").
calls("JUnit38ClassRunner", "run", "TestResult", "addListener").
calls("JUnit38ClassRunner", "run", "JUnit38ClassRunner", "getTest").
method("JUnit38ClassRunner", "createAdaptingListener").
method("JUnit38ClassRunner", "getDescription").
calls("JUnit38ClassRunner", "getDescription", "JUnit38ClassRunner", "makeDescription").
method("JUnit38ClassRunner", "makeDescription").
calls("JUnit38ClassRunner", "makeDescription", "Description", "createTestDescription").
calls("JUnit38ClassRunner", "makeDescription", "Description", "addChild").
calls("JUnit38ClassRunner", "makeDescription", "Describable", "getDescription").
calls("JUnit38ClassRunner", "makeDescription", "JUnit38ClassRunner", "makeDescription").
calls("JUnit38ClassRunner", "makeDescription", "Description", "createSuiteDescription").
method("JUnit38ClassRunner", "getAnnotations").
calls("JUnit38ClassRunner", "getAnnotations", "Method", "getDeclaredAnnotations").
method("JUnit38ClassRunner", "createSuiteDescription").
calls("JUnit38ClassRunner", "createSuiteDescription", "String", "format").
method("JUnit38ClassRunner", "filter").
calls("JUnit38ClassRunner", "filter", "Filterable", "filter").
calls("JUnit38ClassRunner", "filter", "Filter", "shouldRun").
calls("JUnit38ClassRunner", "filter", "TestSuite", "addTest").
calls("JUnit38ClassRunner", "filter", "JUnit38ClassRunner", "setTest").
method("JUnit38ClassRunner", "sort").
calls("JUnit38ClassRunner", "sort", "Sortable", "sort").
method("JUnit38ClassRunner", "setTest").
method("JUnit38ClassRunner", "getTest").

# junit4/src/main/java/org/junit/internal/runners/ErrorReportingRunner.java

class("ErrorReportingRunner").
method("ErrorReportingRunner", "getDescription").
calls("ErrorReportingRunner", "getDescription", "Description", "addChild").
method("ErrorReportingRunner", "run").
calls("ErrorReportingRunner", "run", "ErrorReportingRunner", "runCause").
method("ErrorReportingRunner", "getClassNames").
calls("ErrorReportingRunner", "getClassNames", "StringBuilder", "append").
calls("ErrorReportingRunner", "getClassNames", "StringBuilder", "append").
calls("ErrorReportingRunner", "getClassNames", "StringBuilder", "toString").
method("ErrorReportingRunner", "getCauses").
calls("ErrorReportingRunner", "getCauses", "ErrorReportingRunner", "getCauses").
calls("ErrorReportingRunner", "getCauses", "ErrorReportingRunner", "singletonList").
calls("ErrorReportingRunner", "getCauses", "ErrorReportingRunner", "singletonList").
method("ErrorReportingRunner", "describeCause").
calls("ErrorReportingRunner", "describeCause", "Description", "createTestDescription").
method("ErrorReportingRunner", "runCause").
calls("ErrorReportingRunner", "runCause", "RunNotifier", "fireTestStarted").
calls("ErrorReportingRunner", "runCause", "RunNotifier", "fireTestFailure").
calls("ErrorReportingRunner", "runCause", "RunNotifier", "fireTestFinished").

# junit4/src/main/java/org/junit/internal/builders/AnnotatedBuilder.java

class("AnnotatedBuilder").
method("AnnotatedBuilder", "runnerForClass").
calls("AnnotatedBuilder", "runnerForClass", "AnnotatedBuilder", "buildRunner").
method("AnnotatedBuilder", "getEnclosingClassForNonStaticMemberClass").
calls("AnnotatedBuilder", "getEnclosingClassForNonStaticMemberClass", "Class", "getEnclosingClass").
method("AnnotatedBuilder", "buildRunner").
calls("AnnotatedBuilder", "buildRunner", "Class", "getConstructor").
calls("AnnotatedBuilder", "buildRunner", "Class", "getConstructor").

# junit4/src/main/java/org/junit/internal/builders/IgnoredClassRunner.java

class("IgnoredClassRunner").
method("IgnoredClassRunner", "run").
calls("IgnoredClassRunner", "run", "RunNotifier", "fireTestIgnored").
method("IgnoredClassRunner", "getDescription").
calls("IgnoredClassRunner", "getDescription", "Description", "createSuiteDescription").

# junit4/src/main/java/org/junit/internal/builders/JUnit3Builder.java

class("JUnit3Builder").
method("JUnit3Builder", "runnerForClass").
calls("JUnit3Builder", "runnerForClass", "JUnit3Builder", "isPre4Test").
method("JUnit3Builder", "isPre4Test").

# junit4/src/main/java/org/junit/internal/builders/SuiteMethodBuilder.java

class("SuiteMethodBuilder").
method("SuiteMethodBuilder", "runnerForClass").
calls("SuiteMethodBuilder", "runnerForClass", "SuiteMethodBuilder", "hasSuiteMethod").
method("SuiteMethodBuilder", "hasSuiteMethod").
calls("SuiteMethodBuilder", "hasSuiteMethod", "Class", "getMethod").

# junit4/src/main/java/org/junit/internal/builders/JUnit4Builder.java

class("JUnit4Builder").
method("JUnit4Builder", "runnerForClass").

# junit4/src/main/java/org/junit/internal/builders/AllDefaultPossibilitiesBuilder.java

class("AllDefaultPossibilitiesBuilder").
method("AllDefaultPossibilitiesBuilder", "runnerForClass").
method("AllDefaultPossibilitiesBuilder", "junit4Builder").
method("AllDefaultPossibilitiesBuilder", "junit3Builder").
method("AllDefaultPossibilitiesBuilder", "annotatedBuilder").
method("AllDefaultPossibilitiesBuilder", "ignoredBuilder").
method("AllDefaultPossibilitiesBuilder", "suiteMethodBuilder").

# junit4/src/main/java/org/junit/internal/builders/IgnoredBuilder.java

class("IgnoredBuilder").
method("IgnoredBuilder", "runnerForClass").

# junit4/src/main/java/org/junit/internal/builders/NullBuilder.java

class("NullBuilder").
method("NullBuilder", "runnerForClass").

# junit4/src/main/java/org/junit/internal/matchers/TypeSafeMatcher.java

class("TypeSafeMatcher").
method("TypeSafeMatcher", "matchesSafely").
method("TypeSafeMatcher", "findExpectedType").
calls("TypeSafeMatcher", "findExpectedType", "TypeSafeMatcher", "isMatchesSafelyMethod").
calls("TypeSafeMatcher", "findExpectedType", "Method", "getParameterTypes").
method("TypeSafeMatcher", "isMatchesSafelyMethod").
method("TypeSafeMatcher", "matches").

# junit4/src/main/java/org/junit/internal/matchers/ThrowableMessageMatcher.java

class("ThrowableMessageMatcher").
method("ThrowableMessageMatcher", "describeTo").
calls("ThrowableMessageMatcher", "describeTo", "Description", "appendText").
calls("ThrowableMessageMatcher", "describeTo", "Description", "appendDescriptionOf").
method("ThrowableMessageMatcher", "matchesSafely").
calls("ThrowableMessageMatcher", "matchesSafely", "Matcher", "matches").
method("ThrowableMessageMatcher", "describeMismatchSafely").
calls("ThrowableMessageMatcher", "describeMismatchSafely", "Description", "appendText").
calls("ThrowableMessageMatcher", "describeMismatchSafely", "Matcher", "describeMismatch").
method("ThrowableMessageMatcher", "hasMessage").

# junit4/src/main/java/org/junit/internal/matchers/ThrowableCauseMatcher.java

class("ThrowableCauseMatcher").
method("ThrowableCauseMatcher", "describeTo").
calls("ThrowableCauseMatcher", "describeTo", "Description", "appendText").
calls("ThrowableCauseMatcher", "describeTo", "Description", "appendDescriptionOf").
method("ThrowableCauseMatcher", "matchesSafely").
calls("ThrowableCauseMatcher", "matchesSafely", "Matcher", "matches").
method("ThrowableCauseMatcher", "describeMismatchSafely").
calls("ThrowableCauseMatcher", "describeMismatchSafely", "Description", "appendText").
calls("ThrowableCauseMatcher", "describeMismatchSafely", "Matcher", "describeMismatch").
method("ThrowableCauseMatcher", "hasCause").

# junit4/src/main/java/org/junit/internal/matchers/StacktracePrintingMatcher.java

class("StacktracePrintingMatcher").
method("StacktracePrintingMatcher", "describeTo").
calls("StacktracePrintingMatcher", "describeTo", "Matcher", "describeTo").
method("StacktracePrintingMatcher", "matchesSafely").
calls("StacktracePrintingMatcher", "matchesSafely", "Matcher", "matches").
method("StacktracePrintingMatcher", "describeMismatchSafely").
calls("StacktracePrintingMatcher", "describeMismatchSafely", "Matcher", "describeMismatch").
calls("StacktracePrintingMatcher", "describeMismatchSafely", "Description", "appendText").
calls("StacktracePrintingMatcher", "describeMismatchSafely", "Description", "appendText").
method("StacktracePrintingMatcher", "readStacktrace").
calls("StacktracePrintingMatcher", "readStacktrace", "Throwables", "getStacktrace").
method("StacktracePrintingMatcher", "isThrowable").
method("StacktracePrintingMatcher", "isException").

# junit4/src/main/java/org/junit/internal/requests/SortingRequest.java

class("SortingRequest").
method("SortingRequest", "getRunner").

# junit4/src/main/java/org/junit/internal/requests/ClassRequest.java

class("ClassRequest").
method("ClassRequest", "getRunner").
calls("ClassRequest", "getRunner", "Lock", "lock").
calls("ClassRequest", "getRunner", "Lock", "unlock").

# junit4/src/main/java/org/junit/internal/requests/package-info.java


# junit4/src/main/java/org/junit/internal/requests/FilterRequest.java

class("FilterRequest").
method("FilterRequest", "getRunner").
calls("FilterRequest", "getRunner", "Filter", "apply").

# junit4/src/main/java/org/junit/internal/management/FakeRuntimeMXBean.java

class("FakeRuntimeMXBean").
method("FakeRuntimeMXBean", "getInputArguments").
calls("FakeRuntimeMXBean", "getInputArguments", "Collections", "emptyList").

# junit4/src/main/java/org/junit/internal/management/ReflectiveRuntimeMXBean.java

class("ReflectiveRuntimeMXBean").
method("ReflectiveRuntimeMXBean", "getInputArguments").
calls("ReflectiveRuntimeMXBean", "getInputArguments", "Collections", "emptyList").

# junit4/src/main/java/org/junit/internal/management/ThreadMXBean.java


# junit4/src/main/java/org/junit/internal/management/ManagementFactory.java

class("ManagementFactory").
method("ManagementFactory", "getRuntimeMXBean").
method("ManagementFactory", "getThreadMXBean").

# junit4/src/main/java/org/junit/internal/management/RuntimeMXBean.java


# junit4/src/main/java/org/junit/internal/management/FakeThreadMXBean.java

class("FakeThreadMXBean").
method("FakeThreadMXBean", "getThreadCpuTime").
method("FakeThreadMXBean", "isThreadCpuTimeSupported").

# junit4/src/main/java/org/junit/internal/management/ReflectiveThreadMXBean.java

class("ReflectiveThreadMXBean").
method("ReflectiveThreadMXBean", "getThreadCpuTime").
method("ReflectiveThreadMXBean", "isThreadCpuTimeSupported").

# junit4/src/main/java/org/junit/internal/runners/statements/InvokeMethod.java

class("InvokeMethod").
method("InvokeMethod", "evaluate").
calls("InvokeMethod", "evaluate", "FrameworkMethod", "invokeExplosively").

# junit4/src/main/java/org/junit/internal/runners/statements/Fail.java

class("Fail").
method("Fail", "evaluate").

# junit4/src/main/java/org/junit/internal/runners/statements/FailOnTimeout.java

class("FailOnTimeout").
method("FailOnTimeout", "builder").
method("FailOnTimeout", "evaluate").
calls("FailOnTimeout", "evaluate", "Thread", "setDaemon").
calls("FailOnTimeout", "evaluate", "Thread", "start").
calls("FailOnTimeout", "evaluate", "CallableStatement", "awaitStarted").
method("FailOnTimeout", "getResult").
calls("FailOnTimeout", "getResult", "FutureTask", "get").
calls("FailOnTimeout", "getResult", "FutureTask", "get").
calls("FailOnTimeout", "getResult", "ExecutionException", "getCause").
calls("FailOnTimeout", "getResult", "FailOnTimeout", "createTimeoutException").
method("FailOnTimeout", "createTimeoutException").
calls("FailOnTimeout", "createTimeoutException", "Exception", "setStackTrace").
calls("FailOnTimeout", "createTimeoutException", "Thread", "interrupt").
calls("FailOnTimeout", "createTimeoutException", "Exception", "setStackTrace").
method("FailOnTimeout", "getStackTrace").
calls("FailOnTimeout", "getStackTrace", "Thread", "getStackTrace").
method("FailOnTimeout", "getStuckThread").
calls("FailOnTimeout", "getStuckThread", "List", "isEmpty").
method("FailOnTimeout", "getThreadsInGroup").
calls("FailOnTimeout", "getThreadsInGroup", "Arrays", "asList").
calls("FailOnTimeout", "getThreadsInGroup", "Collections", "emptyList").
method("FailOnTimeout", "cpuTime").
calls("FailOnTimeout", "cpuTime", "ThreadMXBean", "isThreadCpuTimeSupported").
calls("FailOnTimeout", "cpuTime", "ThreadMXBean", "getThreadCpuTime").

# junit4/src/main/java/org/junit/internal/runners/statements/ExpectException.java

class("ExpectException").
method("ExpectException", "evaluate").
calls("ExpectException", "evaluate", "Statement", "evaluate").
calls("ExpectException", "evaluate", "Class", "isAssignableFrom").
calls("ExpectException", "evaluate", "Class", "isAssignableFrom").

# junit4/src/main/java/org/junit/internal/runners/statements/RunAfters.java

class("RunAfters").
method("RunAfters", "evaluate").
calls("RunAfters", "evaluate", "Statement", "evaluate").
calls("RunAfters", "evaluate", "List", "add").
calls("RunAfters", "evaluate", "RunAfters", "invokeMethod").
calls("RunAfters", "evaluate", "List", "add").
calls("RunAfters", "evaluate", "MultipleFailureException", "assertEmpty").
method("RunAfters", "invokeMethod").
calls("RunAfters", "invokeMethod", "FrameworkMethod", "invokeExplosively").

# junit4/src/main/java/org/junit/internal/runners/statements/RunBefores.java

class("RunBefores").
method("RunBefores", "evaluate").
calls("RunBefores", "evaluate", "RunBefores", "invokeMethod").
calls("RunBefores", "evaluate", "Statement", "evaluate").
method("RunBefores", "invokeMethod").
calls("RunBefores", "invokeMethod", "FrameworkMethod", "invokeExplosively").

# junit4/src/main/java/org/junit/internal/runners/rules/RuleMemberValidator.java

class("RuleMemberValidator").
method("RuleMemberValidator", "validate").
calls("RuleMemberValidator", "validate", "RuleMemberValidator", "validateMember").
method("RuleMemberValidator", "validateMember").
calls("RuleMemberValidator", "validateMember", "RuleValidator", "validate").
method("RuleMemberValidator", "classRuleValidatorBuilder").
method("RuleMemberValidator", "testRuleValidatorBuilder").
method("RuleMemberValidator", "isRuleType").
method("RuleMemberValidator", "isTestRule").
method("RuleMemberValidator", "isMethodRule").

# junit4/src/main/java/org/junit/internal/runners/rules/ValidationError.java

class("ValidationError").

# junit4/src/main/java/org/junit/internal/runners/model/ReflectiveCallable.java

class("ReflectiveCallable").
method("ReflectiveCallable", "run").
calls("ReflectiveCallable", "run", "ReflectiveCallable", "runReflectiveCall").
calls("ReflectiveCallable", "run", "InvocationTargetException", "getTargetException").
method("ReflectiveCallable", "runReflectiveCall").

# junit4/src/main/java/org/junit/internal/runners/model/MultipleFailureException.java

class("MultipleFailureException").

# junit4/src/main/java/org/junit/internal/runners/model/EachTestNotifier.java

class("EachTestNotifier").
method("EachTestNotifier", "addFailure").
calls("EachTestNotifier", "addFailure", "EachTestNotifier", "addMultipleFailureException").
calls("EachTestNotifier", "addFailure", "RunNotifier", "fireTestFailure").
method("EachTestNotifier", "addMultipleFailureException").
calls("EachTestNotifier", "addMultipleFailureException", "EachTestNotifier", "addFailure").
method("EachTestNotifier", "addFailedAssumption").
calls("EachTestNotifier", "addFailedAssumption", "RunNotifier", "fireTestAssumptionFailed").
method("EachTestNotifier", "fireTestFinished").
calls("EachTestNotifier", "fireTestFinished", "RunNotifier", "fireTestFinished").
method("EachTestNotifier", "fireTestStarted").
calls("EachTestNotifier", "fireTestStarted", "RunNotifier", "fireTestStarted").
method("EachTestNotifier", "fireTestIgnored").
calls("EachTestNotifier", "fireTestIgnored", "RunNotifier", "fireTestIgnored").
method("EachTestNotifier", "fireTestSuiteStarted").
calls("EachTestNotifier", "fireTestSuiteStarted", "RunNotifier", "fireTestSuiteStarted").
method("EachTestNotifier", "fireTestSuiteFinished").
calls("EachTestNotifier", "fireTestSuiteFinished", "RunNotifier", "fireTestSuiteFinished").

# junit4/src/main/java/org/junit/experimental/max/MaxCore.java

class("MaxCore").
method("MaxCore", "forFolder").
calls("MaxCore", "forFolder", "MaxCore", "storedLocally").
method("MaxCore", "storedLocally").
method("MaxCore", "run").
calls("MaxCore", "run", "MaxCore", "run").
method("MaxCore", "run").
calls("MaxCore", "run", "MaxCore", "run").
method("MaxCore", "run").
calls("MaxCore", "run", "JUnitCore", "addListener").
calls("MaxCore", "run", "JUnitCore", "run").
method("MaxCore", "sortRequest").
calls("MaxCore", "sortRequest", "Collections", "sort").
calls("MaxCore", "sortRequest", "MaxCore", "constructLeafRequest").
method("MaxCore", "constructLeafRequest").
calls("MaxCore", "constructLeafRequest", "List", "add").
method("MaxCore", "buildRunner").
calls("MaxCore", "buildRunner", "Description", "toString").
calls("MaxCore", "buildRunner", "Suite", "emptySuite").
calls("MaxCore", "buildRunner", "Description", "toString").
calls("MaxCore", "buildRunner", "Request", "aClass").
calls("MaxCore", "buildRunner", "Request", "method").
method("MaxCore", "getMalformedTestClass").
calls("MaxCore", "getMalformedTestClass", "Class", "forName").
method("MaxCore", "sortedLeavesForTest").
calls("MaxCore", "sortedLeavesForTest", "MaxCore", "findLeaves").
method("MaxCore", "findLeaves").
calls("MaxCore", "findLeaves", "MaxCore", "findLeaves").
method("MaxCore", "findLeaves").
calls("MaxCore", "findLeaves", "Description", "getChildren").
calls("MaxCore", "findLeaves", "Description", "toString").
calls("MaxCore", "findLeaves", "List", "add").
calls("MaxCore", "findLeaves", "List", "add").
calls("MaxCore", "findLeaves", "MaxCore", "findLeaves").

# junit4/src/main/java/org/junit/experimental/max/CouldNotReadCoreException.java

class("CouldNotReadCoreException").

# junit4/src/main/java/org/junit/experimental/max/MaxHistory.java

class("MaxHistory").
method("MaxHistory", "forFolder").
calls("MaxHistory", "forFolder", "File", "exists").
calls("MaxHistory", "forFolder", "MaxHistory", "readHistory").
calls("MaxHistory", "forFolder", "CouldNotReadCoreException", "printStackTrace").
calls("MaxHistory", "forFolder", "File", "delete").
method("MaxHistory", "readHistory").
calls("MaxHistory", "readHistory", "ObjectInputStream", "close").
calls("MaxHistory", "readHistory", "FileInputStream", "close").
method("MaxHistory", "save").
calls("MaxHistory", "save", "ObjectOutputStream", "writeObject").
calls("MaxHistory", "save", "ObjectOutputStream", "close").
method("MaxHistory", "getFailureTimestamp").
calls("MaxHistory", "getFailureTimestamp", "Map", "get").
method("MaxHistory", "putTestFailureTimestamp").
calls("MaxHistory", "putTestFailureTimestamp", "Map", "put").
method("MaxHistory", "isNewTest").
calls("MaxHistory", "isNewTest", "Map", "containsKey").
method("MaxHistory", "getTestDuration").
calls("MaxHistory", "getTestDuration", "Map", "get").
method("MaxHistory", "putTestDuration").
calls("MaxHistory", "putTestDuration", "Map", "put").
method("MaxHistory", "listener").
method("MaxHistory", "testComparator").

# junit4/src/main/java/org/junit/experimental/runners/Enclosed.java

class("Enclosed").
method("Enclosed", "filterAbstractClasses").
calls("Enclosed", "filterAbstractClasses", "Modifier", "isAbstract").
calls("Enclosed", "filterAbstractClasses", "List", "add").
calls("Enclosed", "filterAbstractClasses", "List", "toArray").

# junit4/src/main/java/org/junit/experimental/categories/IncludeCategories.java

class("IncludeCategories").
method("IncludeCategories", "createFilter").

# junit4/src/main/java/org/junit/experimental/categories/CategoryFilterFactory.java

class("CategoryFilterFactory").
method("CategoryFilterFactory", "createFilter").
calls("CategoryFilterFactory", "createFilter", "CategoryFilterFactory", "createFilter").
method("CategoryFilterFactory", "createFilter").
method("CategoryFilterFactory", "parseCategories").
calls("CategoryFilterFactory", "parseCategories", "List", "add").

# junit4/src/main/java/org/junit/experimental/categories/ExcludeCategories.java

class("ExcludeCategories").
method("ExcludeCategories", "createFilter").

# junit4/src/main/java/org/junit/experimental/categories/Category.java


# junit4/src/main/java/org/junit/experimental/categories/CategoryValidator.java

class("CategoryValidator").
method("CategoryValidator", "validateAnnotatedMethod").
calls("CategoryValidator", "validateAnnotatedMethod", "Annotation", "annotationType").
calls("CategoryValidator", "validateAnnotatedMethod", "CategoryValidator", "addErrorMessage").
calls("CategoryValidator", "validateAnnotatedMethod", "CategoryValidator", "unmodifiableList").
method("CategoryValidator", "addErrorMessage").
calls("CategoryValidator", "addErrorMessage", "List", "add").

# junit4/src/main/java/org/junit/experimental/categories/Categories.java

class("Categories").
method("Categories", "getIncludedCategory").
calls("Categories", "getIncludedCategory", "Categories", "createSet").
method("Categories", "isAnyIncluded").
method("Categories", "getExcludedCategory").
calls("Categories", "getExcludedCategory", "Categories", "createSet").
method("Categories", "isAnyExcluded").
method("Categories", "hasAssignableTo").
calls("Categories", "hasAssignableTo", "Class", "isAssignableFrom").
method("Categories", "createSet").
calls("Categories", "createSet", "Collections", "emptySet").
method("Categories", "nullableClassToSet").

# junit4/src/main/java/org/junit/experimental/results/FailureList.java

class("FailureList").
method("FailureList", "result").
calls("FailureList", "result", "RunListener", "testFailure").

# junit4/src/main/java/org/junit/experimental/results/PrintableResult.java

class("PrintableResult").
method("PrintableResult", "testResult").
calls("PrintableResult", "testResult", "PrintableResult", "testResult").
method("PrintableResult", "testResult").
method("PrintableResult", "failureCount").
calls("PrintableResult", "failureCount", "Result", "getFailures").
method("PrintableResult", "failures").
calls("PrintableResult", "failures", "Result", "getFailures").
method("PrintableResult", "toString").
calls("PrintableResult", "toString", "ByteArrayOutputStream", "toString").

# junit4/src/main/java/org/junit/experimental/results/ResultMatchers.java

class("ResultMatchers").
method("ResultMatchers", "isSuccessful").
calls("ResultMatchers", "isSuccessful", "ResultMatchers", "failureCountIs").
method("ResultMatchers", "failureCountIs").
method("ResultMatchers", "hasSingleFailureContaining").
method("ResultMatchers", "hasSingleFailureMatching").
method("ResultMatchers", "hasFailureContaining").

# junit4/src/main/java/org/junit/experimental/theories/ParameterSupplier.java

class("ParameterSupplier").
method("ParameterSupplier", "getValueSources").

# junit4/src/main/java/org/junit/experimental/theories/Theory.java


# junit4/src/main/java/org/junit/experimental/theories/DataPoints.java


# junit4/src/main/java/org/junit/experimental/theories/DataPoint.java


# junit4/src/main/java/org/junit/experimental/theories/PotentialAssignment.java

class("PotentialAssignment").
method("PotentialAssignment", "forValue").
method("PotentialAssignment", "getValue").
method("PotentialAssignment", "getDescription").

# junit4/src/main/java/org/junit/experimental/theories/ParametersSuppliedBy.java


# junit4/src/main/java/org/junit/experimental/theories/FromDataPoints.java


# junit4/src/main/java/org/junit/experimental/theories/ParameterSignature.java

class("ParameterSignature").
method("ParameterSignature", "buildConvertableTypesMap").
calls("ParameterSignature", "buildConvertableTypesMap", "ParameterSignature", "putSymmetrically").
calls("ParameterSignature", "buildConvertableTypesMap", "ParameterSignature", "putSymmetrically").
calls("ParameterSignature", "buildConvertableTypesMap", "ParameterSignature", "putSymmetrically").
calls("ParameterSignature", "buildConvertableTypesMap", "ParameterSignature", "putSymmetrically").
calls("ParameterSignature", "buildConvertableTypesMap", "ParameterSignature", "putSymmetrically").
calls("ParameterSignature", "buildConvertableTypesMap", "ParameterSignature", "putSymmetrically").
calls("ParameterSignature", "buildConvertableTypesMap", "ParameterSignature", "putSymmetrically").
calls("ParameterSignature", "buildConvertableTypesMap", "ParameterSignature", "putSymmetrically").
calls("ParameterSignature", "buildConvertableTypesMap", "Collections", "unmodifiableMap").
method("ParameterSignature", "putSymmetrically").
calls("ParameterSignature", "putSymmetrically", "Map", "put").
calls("ParameterSignature", "putSymmetrically", "Map", "put").
method("ParameterSignature", "signatures").
calls("ParameterSignature", "signatures", "ParameterSignature", "signatures").
method("ParameterSignature", "signatures").
calls("ParameterSignature", "signatures", "ParameterSignature", "signatures").
method("ParameterSignature", "signatures").
calls("ParameterSignature", "signatures", "ArrayList", "add").
method("ParameterSignature", "canAcceptValue").
method("ParameterSignature", "canAcceptType").
method("ParameterSignature", "canPotentiallyAcceptType").
method("ParameterSignature", "isAssignableViaTypeConversion").
calls("ParameterSignature", "isAssignableViaTypeConversion", "CONVERTABLE_TYPES_MAP", "containsKey").
calls("ParameterSignature", "isAssignableViaTypeConversion", "Class", "isAssignableFrom").
method("ParameterSignature", "getType").
method("ParameterSignature", "getAnnotations").
calls("ParameterSignature", "getAnnotations", "Arrays", "asList").
method("ParameterSignature", "hasAnnotation").
method("ParameterSignature", "findDeepAnnotation").
calls("ParameterSignature", "findDeepAnnotation", "ParameterSignature", "findDeepAnnotation").
method("ParameterSignature", "findDeepAnnotation").
calls("ParameterSignature", "findDeepAnnotation", "Class", "isInstance").
calls("ParameterSignature", "findDeepAnnotation", "Class", "cast").
calls("ParameterSignature", "findDeepAnnotation", "Class", "cast").
method("ParameterSignature", "getAnnotation").
calls("ParameterSignature", "getAnnotation", "Class", "isInstance").
calls("ParameterSignature", "getAnnotation", "Class", "cast").

# junit4/src/main/java/org/junit/experimental/theories/Theories.java

class("Theories").
method("Theories", "collectInitializationErrors").
calls("Theories", "collectInitializationErrors", "Theories", "validateDataPointFields").
calls("Theories", "collectInitializationErrors", "Theories", "validateDataPointMethods").
method("Theories", "validateDataPointFields").
calls("Theories", "validateDataPointFields", "Modifier", "isStatic").
calls("Theories", "validateDataPointFields", "List", "add").
calls("Theories", "validateDataPointFields", "Modifier", "isPublic").
calls("Theories", "validateDataPointFields", "List", "add").
method("Theories", "validateDataPointMethods").
calls("Theories", "validateDataPointMethods", "Modifier", "isStatic").
calls("Theories", "validateDataPointMethods", "List", "add").
calls("Theories", "validateDataPointMethods", "Modifier", "isPublic").
calls("Theories", "validateDataPointMethods", "List", "add").
method("Theories", "validateConstructor").
calls("Theories", "validateConstructor", "Theories", "validateOnlyOneConstructor").
method("Theories", "validateTestMethods").
calls("Theories", "validateTestMethods", "FrameworkMethod", "validatePublicVoid").
calls("Theories", "validateTestMethods", "FrameworkMethod", "validateNoTypeParametersOnArgs").
calls("Theories", "validateTestMethods", "FrameworkMethod", "validatePublicVoidNoArg").
calls("Theories", "validateTestMethods", "Theories", "validateParameterSupplier").
method("Theories", "validateParameterSupplier").
calls("Theories", "validateParameterSupplier", "List", "add").
calls("Theories", "validateParameterSupplier", "List", "add").
method("Theories", "computeTestMethods").
calls("Theories", "computeTestMethods", "List", "removeAll").
calls("Theories", "computeTestMethods", "List", "addAll").
method("Theories", "methodBlock").

# junit4/src/main/java/org/junit/experimental/theories/internal/ParameterizedAssertionError.java

class("ParameterizedAssertionError").
method("ParameterizedAssertionError", "equals").
method("ParameterizedAssertionError", "hashCode").
calls("ParameterizedAssertionError", "hashCode", "ParameterizedAssertionError", "toString").
method("ParameterizedAssertionError", "join").
calls("ParameterizedAssertionError", "join", "ParameterizedAssertionError", "join").
method("ParameterizedAssertionError", "join").
calls("ParameterizedAssertionError", "join", "Iterator", "hasNext").
calls("ParameterizedAssertionError", "join", "StringBuilder", "append").
calls("ParameterizedAssertionError", "join", "Iterator", "hasNext").
calls("ParameterizedAssertionError", "join", "StringBuilder", "append").
calls("ParameterizedAssertionError", "join", "StringBuilder", "toString").
method("ParameterizedAssertionError", "stringValueOf").
calls("ParameterizedAssertionError", "stringValueOf", "String", "valueOf").

# junit4/src/main/java/org/junit/experimental/theories/internal/Assignments.java

class("Assignments").
method("Assignments", "allUnassigned").
calls("Assignments", "allUnassigned", "List", "addAll").
method("Assignments", "isComplete").
calls("Assignments", "isComplete", "List", "isEmpty").
method("Assignments", "nextUnassigned").
calls("Assignments", "nextUnassigned", "List", "get").
method("Assignments", "assignNext").
calls("Assignments", "assignNext", "List", "add").
method("Assignments", "getActualValues").
method("Assignments", "potentialsForNextUnassigned").
calls("Assignments", "potentialsForNextUnassigned", "List", "isEmpty").
method("Assignments", "generateAssignmentsFromTypeAlone").
calls("Assignments", "generateAssignmentsFromTypeAlone", "Class", "isEnum").
calls("Assignments", "generateAssignmentsFromTypeAlone", "Assignments", "emptyList").
method("Assignments", "getSupplier").
calls("Assignments", "getSupplier", "Assignments", "buildParameterSupplierFromClass").
method("Assignments", "buildParameterSupplierFromClass").
calls("Assignments", "buildParameterSupplierFromClass", "Class", "newInstance").
method("Assignments", "getConstructorArguments").
calls("Assignments", "getConstructorArguments", "Assignments", "getActualValues").
method("Assignments", "getMethodArguments").
calls("Assignments", "getMethodArguments", "Assignments", "getActualValues").
method("Assignments", "getAllArguments").
calls("Assignments", "getAllArguments", "Assignments", "getActualValues").
method("Assignments", "getConstructorParameterCount").
method("Assignments", "getArgumentStrings").

# junit4/src/main/java/org/junit/experimental/theories/internal/AllMembersSupplier.java

class("AllMembersSupplier").
method("AllMembersSupplier", "getValueSources").
calls("AllMembersSupplier", "getValueSources", "AllMembersSupplier", "addSinglePointFields").
calls("AllMembersSupplier", "getValueSources", "AllMembersSupplier", "addMultiPointFields").
calls("AllMembersSupplier", "getValueSources", "AllMembersSupplier", "addSinglePointMethods").
calls("AllMembersSupplier", "getValueSources", "AllMembersSupplier", "addMultiPointMethods").
method("AllMembersSupplier", "addMultiPointMethods").
calls("AllMembersSupplier", "addMultiPointMethods", "AllMembersSupplier", "addDataPointsValues").
method("AllMembersSupplier", "addSinglePointMethods").
calls("AllMembersSupplier", "addSinglePointMethods", "ParameterSignature", "canAcceptType").
calls("AllMembersSupplier", "addSinglePointMethods", "List", "add").
method("AllMembersSupplier", "addMultiPointFields").
calls("AllMembersSupplier", "addMultiPointFields", "AllMembersSupplier", "addDataPointsValues").
method("AllMembersSupplier", "addSinglePointFields").
calls("AllMembersSupplier", "addSinglePointFields", "ParameterSignature", "canAcceptValue").
calls("AllMembersSupplier", "addSinglePointFields", "List", "add").
method("AllMembersSupplier", "addDataPointsValues").
calls("AllMembersSupplier", "addDataPointsValues", "Class", "isArray").
calls("AllMembersSupplier", "addDataPointsValues", "AllMembersSupplier", "addArrayValues").
calls("AllMembersSupplier", "addDataPointsValues", "AllMembersSupplier", "addIterableValues").
method("AllMembersSupplier", "addArrayValues").
calls("AllMembersSupplier", "addArrayValues", "ParameterSignature", "canAcceptValue").
calls("AllMembersSupplier", "addArrayValues", "List", "add").
method("AllMembersSupplier", "addIterableValues").
calls("AllMembersSupplier", "addIterableValues", "Iterator", "hasNext").
calls("AllMembersSupplier", "addIterableValues", "ParameterSignature", "canAcceptValue").
calls("AllMembersSupplier", "addIterableValues", "List", "add").
method("AllMembersSupplier", "getStaticFieldValue").
calls("AllMembersSupplier", "getStaticFieldValue", "Field", "get").
method("AllMembersSupplier", "isAssignableToAnyOf").
calls("AllMembersSupplier", "isAssignableToAnyOf", "Class", "isAssignableFrom").
method("AllMembersSupplier", "getDataPointsMethods").
calls("AllMembersSupplier", "getDataPointsMethods", "TestClass", "getAnnotatedMethods").
method("AllMembersSupplier", "getSingleDataPointFields").
calls("AllMembersSupplier", "getSingleDataPointFields", "Collection", "add").
method("AllMembersSupplier", "getDataPointsFields").
calls("AllMembersSupplier", "getDataPointsFields", "Collection", "add").
method("AllMembersSupplier", "getSingleDataPointMethods").
calls("AllMembersSupplier", "getSingleDataPointMethods", "TestClass", "getAnnotatedMethods").

# junit4/src/main/java/org/junit/experimental/theories/internal/BooleanSupplier.java

class("BooleanSupplier").
method("BooleanSupplier", "getValueSources").
calls("BooleanSupplier", "getValueSources", "Arrays", "asList").

# junit4/src/main/java/org/junit/experimental/theories/internal/EnumSupplier.java

class("EnumSupplier").
method("EnumSupplier", "getValueSources").
calls("EnumSupplier", "getValueSources", "List", "add").

# junit4/src/main/java/org/junit/experimental/theories/internal/SpecificDataPointsSupplier.java

class("SpecificDataPointsSupplier").
method("SpecificDataPointsSupplier", "getSingleDataPointFields").
calls("SpecificDataPointsSupplier", "getSingleDataPointFields", "Arrays", "asList").
calls("SpecificDataPointsSupplier", "getSingleDataPointFields", "List", "add").
method("SpecificDataPointsSupplier", "getDataPointsFields").
calls("SpecificDataPointsSupplier", "getDataPointsFields", "Arrays", "asList").
calls("SpecificDataPointsSupplier", "getDataPointsFields", "List", "add").
method("SpecificDataPointsSupplier", "getSingleDataPointMethods").
calls("SpecificDataPointsSupplier", "getSingleDataPointMethods", "Arrays", "asList").
calls("SpecificDataPointsSupplier", "getSingleDataPointMethods", "List", "add").
method("SpecificDataPointsSupplier", "getDataPointsMethods").
calls("SpecificDataPointsSupplier", "getDataPointsMethods", "Arrays", "asList").
calls("SpecificDataPointsSupplier", "getDataPointsMethods", "List", "add").

# junit4/src/main/java/org/junit/experimental/theories/suppliers/TestedOnSupplier.java

class("TestedOnSupplier").
method("TestedOnSupplier", "getValueSources").
calls("TestedOnSupplier", "getValueSources", "List", "add").

# junit4/src/main/java/org/junit/experimental/theories/suppliers/TestedOn.java


# junit4/src/main/java/org/junit/runners/parameterized/ParametersRunnerFactory.java


# junit4/src/main/java/org/junit/runners/parameterized/TestWithParameters.java

class("TestWithParameters").
method("TestWithParameters", "getName").
method("TestWithParameters", "getTestClass").
method("TestWithParameters", "getParameters").
method("TestWithParameters", "hashCode").
method("TestWithParameters", "equals").
method("TestWithParameters", "toString").

# junit4/src/main/java/org/junit/runners/parameterized/BlockJUnit4ClassRunnerWithParametersFactory.java

class("BlockJUnit4ClassRunnerWithParametersFactory").
method("BlockJUnit4ClassRunnerWithParametersFactory", "createRunnerForTestWithParameters").

# junit4/src/main/java/org/junit/runners/parameterized/BlockJUnit4ClassRunnerWithParameters.java

class("BlockJUnit4ClassRunnerWithParameters").
method("BlockJUnit4ClassRunnerWithParameters", "createTest").
calls("BlockJUnit4ClassRunnerWithParameters", "createTest", "BlockJUnit4ClassRunnerWithParameters", "createTestUsingConstructorInjection").
calls("BlockJUnit4ClassRunnerWithParameters", "createTest", "BlockJUnit4ClassRunnerWithParameters", "createTestUsingFieldInjection").
method("BlockJUnit4ClassRunnerWithParameters", "createTestUsingConstructorInjection").
calls("BlockJUnit4ClassRunnerWithParameters", "createTestUsingConstructorInjection", "BlockJUnit4ClassRunnerWithParameters", "getTestClass").
method("BlockJUnit4ClassRunnerWithParameters", "createTestUsingFieldInjection").
calls("BlockJUnit4ClassRunnerWithParameters", "createTestUsingFieldInjection", "Field", "set").
method("BlockJUnit4ClassRunnerWithParameters", "getName").
method("BlockJUnit4ClassRunnerWithParameters", "testName").
method("BlockJUnit4ClassRunnerWithParameters", "validateConstructor").
calls("BlockJUnit4ClassRunnerWithParameters", "validateConstructor", "BlockJUnit4ClassRunnerWithParameters", "validateOnlyOneConstructor").
calls("BlockJUnit4ClassRunnerWithParameters", "validateConstructor", "BlockJUnit4ClassRunnerWithParameters", "validateZeroArgConstructor").
method("BlockJUnit4ClassRunnerWithParameters", "validateFields").
calls("BlockJUnit4ClassRunnerWithParameters", "validateFields", "List", "add").
calls("BlockJUnit4ClassRunnerWithParameters", "validateFields", "List", "add").
calls("BlockJUnit4ClassRunnerWithParameters", "validateFields", "List", "add").
method("BlockJUnit4ClassRunnerWithParameters", "classBlock").
method("BlockJUnit4ClassRunnerWithParameters", "withBeforeParams").
method("BlockJUnit4ClassRunnerWithParameters", "withAfterParams").
method("BlockJUnit4ClassRunnerWithParameters", "getRunnerAnnotations").
calls("BlockJUnit4ClassRunnerWithParameters", "getRunnerAnnotations", "Annotation", "annotationType").
method("BlockJUnit4ClassRunnerWithParameters", "getAnnotatedFieldsByParameter").
calls("BlockJUnit4ClassRunnerWithParameters", "getAnnotatedFieldsByParameter", "BlockJUnit4ClassRunnerWithParameters", "getTestClass").
method("BlockJUnit4ClassRunnerWithParameters", "getInjectionType").
calls("BlockJUnit4ClassRunnerWithParameters", "getInjectionType", "BlockJUnit4ClassRunnerWithParameters", "fieldsAreAnnotated").
method("BlockJUnit4ClassRunnerWithParameters", "fieldsAreAnnotated").
calls("BlockJUnit4ClassRunnerWithParameters", "fieldsAreAnnotated", "BlockJUnit4ClassRunnerWithParameters", "getAnnotatedFieldsByParameter").

# junit4/src/main/java/org/junit/runners/model/TestTimedOutException.java

class("TestTimedOutException").
method("TestTimedOutException", "getTimeout").
method("TestTimedOutException", "getTimeUnit").

# junit4/src/main/java/org/junit/runners/model/RunnerBuilder.java

class("RunnerBuilder").
method("RunnerBuilder", "runnerForClass").
method("RunnerBuilder", "safeRunnerForClass").
calls("RunnerBuilder", "safeRunnerForClass", "RunnerBuilder", "runnerForClass").
method("RunnerBuilder", "addParent").
calls("RunnerBuilder", "addParent", "Set", "add").
method("RunnerBuilder", "removeParent").
calls("RunnerBuilder", "removeParent", "Set", "remove").
method("RunnerBuilder", "runners").
calls("RunnerBuilder", "runners", "RunnerBuilder", "addParent").
calls("RunnerBuilder", "runners", "RunnerBuilder", "runners").
calls("RunnerBuilder", "runners", "RunnerBuilder", "removeParent").
method("RunnerBuilder", "runners").
calls("RunnerBuilder", "runners", "RunnerBuilder", "runners").
method("RunnerBuilder", "runners").
calls("RunnerBuilder", "runners", "List", "add").

# junit4/src/main/java/org/junit/runners/model/MultipleFailureException.java

class("MultipleFailureException").
method("MultipleFailureException", "getFailures").
calls("MultipleFailureException", "getFailures", "Collections", "unmodifiableList").
method("MultipleFailureException", "getMessage").
calls("MultipleFailureException", "getMessage", "StringBuilder", "append").
calls("MultipleFailureException", "getMessage", "StringBuilder", "toString").
method("MultipleFailureException", "printStackTrace").
calls("MultipleFailureException", "printStackTrace", "Throwable", "printStackTrace").
method("MultipleFailureException", "printStackTrace").
calls("MultipleFailureException", "printStackTrace", "Throwable", "printStackTrace").
method("MultipleFailureException", "printStackTrace").
calls("MultipleFailureException", "printStackTrace", "Throwable", "printStackTrace").
method("MultipleFailureException", "assertEmpty").
calls("MultipleFailureException", "assertEmpty", "List", "isEmpty").
calls("MultipleFailureException", "assertEmpty", "Throwables", "rethrowAsException").

# junit4/src/main/java/org/junit/runners/model/TestClass.java

class("TestClass").
method("TestClass", "scanAnnotatedMembers").
calls("TestClass", "scanAnnotatedMembers", "TestClass", "addToAnnotationLists").
calls("TestClass", "scanAnnotatedMembers", "TestClass", "addToAnnotationLists").
method("TestClass", "getSortedDeclaredFields").
calls("TestClass", "getSortedDeclaredFields", "Arrays", "sort").
method("TestClass", "addToAnnotationLists").
calls("TestClass", "addToAnnotationLists", "TestClass", "runsTopToBottom").
calls("TestClass", "addToAnnotationLists", "List", "add").
calls("TestClass", "addToAnnotationLists", "List", "add").
method("TestClass", "makeDeeplyUnmodifiable").
calls("TestClass", "makeDeeplyUnmodifiable", "Map", "put").
calls("TestClass", "makeDeeplyUnmodifiable", "Collections", "unmodifiableMap").
method("TestClass", "getAnnotatedMethods").
calls("TestClass", "getAnnotatedMethods", "Collections", "sort").
method("TestClass", "getAnnotatedMethods").
calls("TestClass", "getAnnotatedMethods", "Collections", "unmodifiableList").
method("TestClass", "getAnnotatedFields").
calls("TestClass", "getAnnotatedFields", "TestClass", "collectValues").
method("TestClass", "getAnnotatedFields").
calls("TestClass", "getAnnotatedFields", "Collections", "unmodifiableList").
method("TestClass", "collectValues").
calls("TestClass", "collectValues", "Set", "addAll").
method("TestClass", "getAnnotatedMembers").
calls("TestClass", "getAnnotatedMembers", "Map", "put").
method("TestClass", "runsTopToBottom").
method("TestClass", "getSuperClasses").
calls("TestClass", "getSuperClasses", "List", "add").
method("TestClass", "getJavaClass").
method("TestClass", "getName").
calls("TestClass", "getName", "Class", "getName").
method("TestClass", "getOnlyConstructor").
calls("TestClass", "getOnlyConstructor", "Assert", "assertEquals").
method("TestClass", "getAnnotations").
calls("TestClass", "getAnnotations", "Class", "getAnnotations").
method("TestClass", "getAnnotation").
calls("TestClass", "getAnnotation", "Class", "getAnnotation").
method("TestClass", "getAnnotatedFieldValues").
calls("TestClass", "getAnnotatedFieldValues", "Class", "isInstance").
calls("TestClass", "getAnnotatedFieldValues", "List", "add").
method("TestClass", "getAnnotatedMethodValues").
calls("TestClass", "getAnnotatedMethodValues", "Class", "isAssignableFrom").
calls("TestClass", "getAnnotatedMethodValues", "List", "add").
method("TestClass", "isPublic").
calls("TestClass", "isPublic", "Modifier", "isPublic").
method("TestClass", "isANonStaticInnerClass").
method("TestClass", "hashCode").
method("TestClass", "equals").

# junit4/src/main/java/org/junit/runners/model/FrameworkMethod.java

class("FrameworkMethod").
method("FrameworkMethod", "getMethod").
method("FrameworkMethod", "invokeExplosively").
method("FrameworkMethod", "getName").
calls("FrameworkMethod", "getName", "Method", "getName").
method("FrameworkMethod", "validatePublicVoidNoArg").
calls("FrameworkMethod", "validatePublicVoidNoArg", "FrameworkMethod", "validatePublicVoid").
calls("FrameworkMethod", "validatePublicVoidNoArg", "List", "add").
method("FrameworkMethod", "validatePublicVoid").
calls("FrameworkMethod", "validatePublicVoid", "List", "add").
calls("FrameworkMethod", "validatePublicVoid", "FrameworkMethod", "isPublic").
calls("FrameworkMethod", "validatePublicVoid", "List", "add").
calls("FrameworkMethod", "validatePublicVoid", "List", "add").
method("FrameworkMethod", "getModifiers").
calls("FrameworkMethod", "getModifiers", "Method", "getModifiers").
method("FrameworkMethod", "getReturnType").
calls("FrameworkMethod", "getReturnType", "Method", "getReturnType").
method("FrameworkMethod", "getType").
calls("FrameworkMethod", "getType", "FrameworkMethod", "getReturnType").
method("FrameworkMethod", "getDeclaringClass").
calls("FrameworkMethod", "getDeclaringClass", "Method", "getDeclaringClass").
method("FrameworkMethod", "validateNoTypeParametersOnArgs").
method("FrameworkMethod", "handlePossibleBridgeMethod").
calls("FrameworkMethod", "handlePossibleBridgeMethod", "FrameworkMethod", "isShadowedBy").
calls("FrameworkMethod", "handlePossibleBridgeMethod", "FrameworkMethod", "isBridgeMethod").
calls("FrameworkMethod", "handlePossibleBridgeMethod", "List", "remove").
method("FrameworkMethod", "isShadowedBy").
calls("FrameworkMethod", "isShadowedBy", "FrameworkMethod", "isStatic").
calls("FrameworkMethod", "isShadowedBy", "FrameworkMethod", "getName").
calls("FrameworkMethod", "isShadowedBy", "FrameworkMethod", "getParameterTypes").
method("FrameworkMethod", "isBridgeMethod").
calls("FrameworkMethod", "isBridgeMethod", "Method", "isBridge").
method("FrameworkMethod", "equals").
method("FrameworkMethod", "hashCode").
calls("FrameworkMethod", "hashCode", "Method", "hashCode").
method("FrameworkMethod", "producesType").
method("FrameworkMethod", "getParameterTypes").
calls("FrameworkMethod", "getParameterTypes", "Method", "getParameterTypes").
method("FrameworkMethod", "getAnnotations").
calls("FrameworkMethod", "getAnnotations", "Method", "getAnnotations").
method("FrameworkMethod", "getAnnotation").
calls("FrameworkMethod", "getAnnotation", "Method", "getAnnotation").
method("FrameworkMethod", "toString").
calls("FrameworkMethod", "toString", "Method", "toString").

# junit4/src/main/java/org/junit/runners/model/FrameworkField.java

class("FrameworkField").
method("FrameworkField", "getName").
calls("FrameworkField", "getName", "FrameworkField", "getField").
method("FrameworkField", "getAnnotations").
calls("FrameworkField", "getAnnotations", "Field", "getAnnotations").
method("FrameworkField", "getAnnotation").
calls("FrameworkField", "getAnnotation", "Field", "getAnnotation").
method("FrameworkField", "isShadowedBy").
method("FrameworkField", "handlePossibleBridgeMethod").
method("FrameworkField", "isBridgeMethod").
method("FrameworkField", "getModifiers").
calls("FrameworkField", "getModifiers", "Field", "getModifiers").
method("FrameworkField", "getField").
method("FrameworkField", "getType").
calls("FrameworkField", "getType", "Field", "getType").
method("FrameworkField", "getDeclaringClass").
calls("FrameworkField", "getDeclaringClass", "Field", "getDeclaringClass").
method("FrameworkField", "get").
calls("FrameworkField", "get", "Field", "get").
method("FrameworkField", "toString").
calls("FrameworkField", "toString", "Field", "toString").

# junit4/src/main/java/org/junit/runners/model/FrameworkMember.java

class("FrameworkMember").
method("FrameworkMember", "isShadowedBy").
method("FrameworkMember", "handlePossibleBridgeMethod").
method("FrameworkMember", "isBridgeMethod").
method("FrameworkMember", "getModifiers").
method("FrameworkMember", "isStatic").
calls("FrameworkMember", "isStatic", "Modifier", "isStatic").
method("FrameworkMember", "isPublic").
calls("FrameworkMember", "isPublic", "Modifier", "isPublic").
method("FrameworkMember", "getName").
method("FrameworkMember", "getType").
method("FrameworkMember", "getDeclaringClass").

# junit4/src/main/java/org/junit/runners/model/Statement.java

class("Statement").
method("Statement", "evaluate").

# junit4/src/main/java/org/junit/runners/model/InvalidTestClassError.java

class("InvalidTestClassError").
method("InvalidTestClassError", "createMessage").
calls("InvalidTestClassError", "createMessage", "StringBuilder", "append").
calls("InvalidTestClassError", "createMessage", "StringBuilder", "append").
calls("InvalidTestClassError", "createMessage", "StringBuilder", "toString").
method("InvalidTestClassError", "getMessage").

# junit4/src/main/java/org/junit/runners/model/Annotatable.java


# junit4/src/main/java/org/junit/runners/model/NoGenericTypeParametersValidator.java

class("NoGenericTypeParametersValidator").
method("NoGenericTypeParametersValidator", "validate").
calls("NoGenericTypeParametersValidator", "validate", "NoGenericTypeParametersValidator", "validateNoTypeParameterOnType").
method("NoGenericTypeParametersValidator", "validateNoTypeParameterOnType").
calls("NoGenericTypeParametersValidator", "validateNoTypeParameterOnType", "List", "add").
calls("NoGenericTypeParametersValidator", "validateNoTypeParameterOnType", "NoGenericTypeParametersValidator", "validateNoTypeParameterOnParameterizedType").
calls("NoGenericTypeParametersValidator", "validateNoTypeParameterOnType", "NoGenericTypeParametersValidator", "validateNoTypeParameterOnWildcardType").
calls("NoGenericTypeParametersValidator", "validateNoTypeParameterOnType", "NoGenericTypeParametersValidator", "validateNoTypeParameterOnGenericArrayType").
method("NoGenericTypeParametersValidator", "validateNoTypeParameterOnParameterizedType").
calls("NoGenericTypeParametersValidator", "validateNoTypeParameterOnParameterizedType", "NoGenericTypeParametersValidator", "validateNoTypeParameterOnType").
method("NoGenericTypeParametersValidator", "validateNoTypeParameterOnWildcardType").
calls("NoGenericTypeParametersValidator", "validateNoTypeParameterOnWildcardType", "NoGenericTypeParametersValidator", "validateNoTypeParameterOnType").
calls("NoGenericTypeParametersValidator", "validateNoTypeParameterOnWildcardType", "NoGenericTypeParametersValidator", "validateNoTypeParameterOnType").
method("NoGenericTypeParametersValidator", "validateNoTypeParameterOnGenericArrayType").
calls("NoGenericTypeParametersValidator", "validateNoTypeParameterOnGenericArrayType", "NoGenericTypeParametersValidator", "validateNoTypeParameterOnType").

# junit4/src/main/java/org/junit/runners/model/RunnerScheduler.java


# junit4/src/main/java/org/junit/runners/model/InitializationError.java

class("InitializationError").
method("InitializationError", "getCauses").

# junit4/src/main/java/org/junit/runner/notification/SynchronizedRunListener.java

class("SynchronizedRunListener").
method("SynchronizedRunListener", "testRunStarted").
calls("SynchronizedRunListener", "testRunStarted", "RunListener", "testRunStarted").
method("SynchronizedRunListener", "testRunFinished").
calls("SynchronizedRunListener", "testRunFinished", "RunListener", "testRunFinished").
method("SynchronizedRunListener", "testSuiteStarted").
calls("SynchronizedRunListener", "testSuiteStarted", "RunListener", "testSuiteStarted").
method("SynchronizedRunListener", "testSuiteFinished").
calls("SynchronizedRunListener", "testSuiteFinished", "RunListener", "testSuiteFinished").
method("SynchronizedRunListener", "testStarted").
calls("SynchronizedRunListener", "testStarted", "RunListener", "testStarted").
method("SynchronizedRunListener", "testFinished").
calls("SynchronizedRunListener", "testFinished", "RunListener", "testFinished").
method("SynchronizedRunListener", "testFailure").
calls("SynchronizedRunListener", "testFailure", "RunListener", "testFailure").
method("SynchronizedRunListener", "testAssumptionFailure").
calls("SynchronizedRunListener", "testAssumptionFailure", "RunListener", "testAssumptionFailure").
method("SynchronizedRunListener", "testIgnored").
calls("SynchronizedRunListener", "testIgnored", "RunListener", "testIgnored").
method("SynchronizedRunListener", "hashCode").
calls("SynchronizedRunListener", "hashCode", "RunListener", "hashCode").
method("SynchronizedRunListener", "equals").
calls("SynchronizedRunListener", "equals", "RunListener", "equals").
method("SynchronizedRunListener", "toString").

# junit4/src/main/java/org/junit/runner/notification/RunListener.java

class("RunListener").
method("RunListener", "testRunStarted").
method("RunListener", "testRunFinished").
method("RunListener", "testSuiteStarted").
method("RunListener", "testSuiteFinished").
method("RunListener", "testStarted").
method("RunListener", "testFinished").
method("RunListener", "testFailure").
method("RunListener", "testAssumptionFailure").
method("RunListener", "testIgnored").

# junit4/src/main/java/org/junit/runner/notification/RunNotifier.java

class("RunNotifier").
method("RunNotifier", "addListener").
calls("RunNotifier", "addListener", "List", "add").
method("RunNotifier", "removeListener").
calls("RunNotifier", "removeListener", "List", "remove").
method("RunNotifier", "wrapIfNotThreadSafe").
method("RunNotifier", "fireTestRunStarted").
method("RunNotifier", "fireTestRunFinished").
method("RunNotifier", "fireTestSuiteStarted").
method("RunNotifier", "fireTestSuiteFinished").
method("RunNotifier", "fireTestStarted").
method("RunNotifier", "fireTestFailure").
calls("RunNotifier", "fireTestFailure", "RunNotifier", "fireTestFailures").
method("RunNotifier", "fireTestFailures").
calls("RunNotifier", "fireTestFailures", "List", "isEmpty").
method("RunNotifier", "fireTestAssumptionFailed").
method("RunNotifier", "fireTestIgnored").
method("RunNotifier", "fireTestFinished").
method("RunNotifier", "pleaseStop").
method("RunNotifier", "addFirstListener").
calls("RunNotifier", "addFirstListener", "List", "add").

# junit4/src/main/java/org/junit/runner/notification/package-info.java


# junit4/src/main/java/org/junit/runner/notification/Failure.java

class("Failure").
method("Failure", "getTestHeader").
calls("Failure", "getTestHeader", "Description", "getDisplayName").
method("Failure", "getDescription").
method("Failure", "getException").
method("Failure", "toString").
method("Failure", "getTrace").
calls("Failure", "getTrace", "Throwables", "getStacktrace").
method("Failure", "getTrimmedTrace").
calls("Failure", "getTrimmedTrace", "Throwables", "getTrimmedStackTrace").
method("Failure", "getMessage").
calls("Failure", "getMessage", "Failure", "getException").

# junit4/src/main/java/org/junit/runner/notification/StoppedByUserException.java

class("StoppedByUserException").

# junit4/src/main/java/org/junit/runner/manipulation/Sorter.java

class("Sorter").
method("Sorter", "apply").
calls("Sorter", "apply", "Sortable", "sort").
method("Sorter", "compare").
calls("Sorter", "compare", "Comparator", "compare").

# junit4/src/main/java/org/junit/runner/manipulation/Filter.java

class("Filter").
method("Filter", "matchMethodDescription").
method("Filter", "shouldRun").
method("Filter", "describe").
method("Filter", "apply").
calls("Filter", "apply", "Filterable", "filter").
method("Filter", "intersect").

# junit4/src/main/java/org/junit/runner/manipulation/package-info.java


# junit4/src/main/java/org/junit/runner/manipulation/Sortable.java


# junit4/src/main/java/org/junit/runner/manipulation/Filterable.java


# junit4/src/main/java/org/junit/runner/manipulation/NoTestsRemainException.java

class("NoTestsRemainException").

# junit4/src/main/java/junit/extensions/TestSetup.java

class("TestSetup").
method("TestSetup", "run").
calls("TestSetup", "run", "TestResult", "runProtected").
method("TestSetup", "setUp").
method("TestSetup", "tearDown").

# junit4/src/main/java/junit/extensions/package-info.java


# junit4/src/main/java/junit/extensions/ActiveTestSuite.java

class("ActiveTestSuite").
method("ActiveTestSuite", "run").
calls("ActiveTestSuite", "run", "ActiveTestSuite", "waitUntilFinished").
method("ActiveTestSuite", "runTest").
calls("ActiveTestSuite", "runTest", "Thread", "start").
method("ActiveTestSuite", "waitUntilFinished").
calls("ActiveTestSuite", "waitUntilFinished", "ActiveTestSuite", "wait").
method("ActiveTestSuite", "runFinished").
calls("ActiveTestSuite", "runFinished", "ActiveTestSuite", "notifyAll").

# junit4/src/main/java/junit/extensions/TestDecorator.java

class("TestDecorator").
method("TestDecorator", "basicRun").
calls("TestDecorator", "basicRun", "Test", "run").
method("TestDecorator", "countTestCases").
calls("TestDecorator", "countTestCases", "Test", "countTestCases").
method("TestDecorator", "run").
calls("TestDecorator", "run", "TestDecorator", "basicRun").
method("TestDecorator", "toString").
calls("TestDecorator", "toString", "Test", "toString").
method("TestDecorator", "getTest").

# junit4/src/main/java/junit/extensions/RepeatedTest.java

class("RepeatedTest").
method("RepeatedTest", "countTestCases").
method("RepeatedTest", "run").
calls("RepeatedTest", "run", "TestResult", "shouldStop").
method("RepeatedTest", "toString").

# junit4/src/main/java/junit/runner/Version.java

class("Version").
method("Version", "id").
method("Version", "main").
calls("Version", "main", "System.out", "println").

# junit4/src/main/java/junit/runner/package-info.java


# junit4/src/main/java/junit/runner/TestRunListener.java


# junit4/src/main/java/junit/runner/BaseTestRunner.java

class("BaseTestRunner").
method("BaseTestRunner", "startTest").
calls("BaseTestRunner", "startTest", "BaseTestRunner", "testStarted").
method("BaseTestRunner", "setPreferences").
method("BaseTestRunner", "getPreferences").
calls("BaseTestRunner", "getPreferences", "Properties", "put").
calls("BaseTestRunner", "getPreferences", "Properties", "put").
calls("BaseTestRunner", "getPreferences", "BaseTestRunner", "readPreferences").
method("BaseTestRunner", "savePreferences").
calls("BaseTestRunner", "savePreferences", "BaseTestRunner", "getPreferences").
calls("BaseTestRunner", "savePreferences", "FileOutputStream", "close").
method("BaseTestRunner", "setPreference").
calls("BaseTestRunner", "setPreference", "BaseTestRunner", "getPreferences").
method("BaseTestRunner", "endTest").
calls("BaseTestRunner", "endTest", "BaseTestRunner", "testEnded").
method("BaseTestRunner", "addError").
calls("BaseTestRunner", "addError", "BaseTestRunner", "testFailed").
method("BaseTestRunner", "addFailure").
calls("BaseTestRunner", "addFailure", "BaseTestRunner", "testFailed").
method("BaseTestRunner", "testStarted").
method("BaseTestRunner", "testEnded").
method("BaseTestRunner", "testFailed").
method("BaseTestRunner", "getTest").
calls("BaseTestRunner", "getTest", "BaseTestRunner", "clearStatus").
calls("BaseTestRunner", "getTest", "BaseTestRunner", "runFailed").
calls("BaseTestRunner", "getTest", "BaseTestRunner", "runFailed").
calls("BaseTestRunner", "getTest", "BaseTestRunner", "clearStatus").
calls("BaseTestRunner", "getTest", "Modifier", "isStatic").
calls("BaseTestRunner", "getTest", "BaseTestRunner", "runFailed").
calls("BaseTestRunner", "getTest", "BaseTestRunner", "runFailed").
calls("BaseTestRunner", "getTest", "BaseTestRunner", "runFailed").
calls("BaseTestRunner", "getTest", "BaseTestRunner", "clearStatus").
method("BaseTestRunner", "elapsedTimeAsString").
calls("BaseTestRunner", "elapsedTimeAsString", "NumberFormat", "getInstance").
method("BaseTestRunner", "processArguments").
calls("BaseTestRunner", "processArguments", "BaseTestRunner", "setLoading").
calls("BaseTestRunner", "processArguments", "System.out", "println").
method("BaseTestRunner", "setLoading").
method("BaseTestRunner", "extractClassName").
calls("BaseTestRunner", "extractClassName", "String", "startsWith").
calls("BaseTestRunner", "extractClassName", "String", "substring").
method("BaseTestRunner", "truncate").
method("BaseTestRunner", "runFailed").
method("BaseTestRunner", "loadSuiteClass").
calls("BaseTestRunner", "loadSuiteClass", "Class", "forName").
method("BaseTestRunner", "clearStatus").
method("BaseTestRunner", "useReloadingTestSuiteLoader").
method("BaseTestRunner", "getPreferencesFile").
method("BaseTestRunner", "readPreferences").
calls("BaseTestRunner", "readPreferences", "BaseTestRunner", "setPreferences").
calls("BaseTestRunner", "readPreferences", "BaseTestRunner", "getPreferences").
calls("BaseTestRunner", "readPreferences", "InputStream", "close").
method("BaseTestRunner", "getPreference").
calls("BaseTestRunner", "getPreference", "BaseTestRunner", "getPreferences").
method("BaseTestRunner", "getPreference").
method("BaseTestRunner", "getFilteredTrace").
calls("BaseTestRunner", "getFilteredTrace", "BaseTestRunner", "getFilteredTrace").
method("BaseTestRunner", "getFilteredTrace").
calls("BaseTestRunner", "getFilteredTrace", "BaseTestRunner", "showStackRaw").
calls("BaseTestRunner", "getFilteredTrace", "BaseTestRunner", "filterLine").
calls("BaseTestRunner", "getFilteredTrace", "PrintWriter", "println").
calls("BaseTestRunner", "getFilteredTrace", "StringWriter", "toString").
method("BaseTestRunner", "showStackRaw").
method("BaseTestRunner", "filterLine").

# junit4/src/main/java/junit/framework/Test.java


# junit4/src/main/java/junit/framework/TestSuite.java

class("TestSuite").
method("TestSuite", "createTest").
calls("TestSuite", "createTest", "TestSuite", "warning").
calls("TestSuite", "createTest", "TestSuite", "warning").
calls("TestSuite", "createTest", "TestSuite", "warning").
calls("TestSuite", "createTest", "TestSuite", "warning").
method("TestSuite", "getTestConstructor").
calls("TestSuite", "getTestConstructor", "Class", "getConstructor").
calls("TestSuite", "getTestConstructor", "Class", "getConstructor").
method("TestSuite", "warning").
method("TestSuite", "addTestsFromTestCase").
calls("TestSuite", "addTestsFromTestCase", "TestSuite", "getTestConstructor").
calls("TestSuite", "addTestsFromTestCase", "TestSuite", "addTest").
calls("TestSuite", "addTestsFromTestCase", "Modifier", "isPublic").
calls("TestSuite", "addTestsFromTestCase", "TestSuite", "addTest").
calls("TestSuite", "addTestsFromTestCase", "TestSuite", "addTestMethod").
calls("TestSuite", "addTestsFromTestCase", "TestSuite", "addTest").
method("TestSuite", "testCaseForClass").
calls("TestSuite", "testCaseForClass", "TestSuite", "warning").
method("TestSuite", "addTest").
calls("TestSuite", "addTest", "Vector", "add").
method("TestSuite", "addTestSuite").
calls("TestSuite", "addTestSuite", "TestSuite", "addTest").
method("TestSuite", "countTestCases").
method("TestSuite", "getName").
method("TestSuite", "run").
calls("TestSuite", "run", "TestResult", "shouldStop").
calls("TestSuite", "run", "TestSuite", "runTest").
method("TestSuite", "runTest").
calls("TestSuite", "runTest", "Test", "run").
method("TestSuite", "setName").
method("TestSuite", "testAt").
calls("TestSuite", "testAt", "Vector", "get").
method("TestSuite", "testCount").
calls("TestSuite", "testCount", "Vector", "size").
method("TestSuite", "tests").
calls("TestSuite", "tests", "Vector", "elements").
method("TestSuite", "toString").
calls("TestSuite", "toString", "TestSuite", "getName").
method("TestSuite", "addTestMethod").
calls("TestSuite", "addTestMethod", "List", "contains").
calls("TestSuite", "addTestMethod", "TestSuite", "isPublicTestMethod").
calls("TestSuite", "addTestMethod", "TestSuite", "isTestMethod").
calls("TestSuite", "addTestMethod", "TestSuite", "addTest").
calls("TestSuite", "addTestMethod", "List", "add").
calls("TestSuite", "addTestMethod", "TestSuite", "addTest").
method("TestSuite", "isPublicTestMethod").
method("TestSuite", "isTestMethod").

# junit4/src/main/java/junit/framework/JUnit4TestAdapter.java

class("JUnit4TestAdapter").
method("JUnit4TestAdapter", "countTestCases").
calls("JUnit4TestAdapter", "countTestCases", "Runner", "testCount").
method("JUnit4TestAdapter", "run").
calls("JUnit4TestAdapter", "run", "Runner", "run").
method("JUnit4TestAdapter", "getTests").
calls("JUnit4TestAdapter", "getTests", "JUnit4TestAdapterCache", "asTestList").
method("JUnit4TestAdapter", "getTestClass").
method("JUnit4TestAdapter", "getDescription").
calls("JUnit4TestAdapter", "getDescription", "JUnit4TestAdapter", "removeIgnored").
method("JUnit4TestAdapter", "removeIgnored").
calls("JUnit4TestAdapter", "removeIgnored", "JUnit4TestAdapter", "isIgnored").
calls("JUnit4TestAdapter", "removeIgnored", "Description", "isEmpty").
calls("JUnit4TestAdapter", "removeIgnored", "Description", "addChild").
method("JUnit4TestAdapter", "isIgnored").
method("JUnit4TestAdapter", "toString").
calls("JUnit4TestAdapter", "toString", "Class", "getName").
method("JUnit4TestAdapter", "filter").
calls("JUnit4TestAdapter", "filter", "Filter", "apply").
method("JUnit4TestAdapter", "sort").
calls("JUnit4TestAdapter", "sort", "Sorter", "apply").

# junit4/src/main/java/junit/framework/TestCase.java

class("TestCase").
method("TestCase", "countTestCases").
method("TestCase", "createResult").
method("TestCase", "run").
calls("TestCase", "run", "TestCase", "run").
method("TestCase", "run").
calls("TestCase", "run", "TestResult", "run").
method("TestCase", "runBare").
calls("TestCase", "runBare", "TestCase", "setUp").
calls("TestCase", "runBare", "TestCase", "runTest").
calls("TestCase", "runBare", "TestCase", "tearDown").
method("TestCase", "runTest").
calls("TestCase", "runTest", "TestCase", "assertNotNull").
calls("TestCase", "runTest", "TestCase", "fail").
calls("TestCase", "runTest", "Modifier", "isPublic").
calls("TestCase", "runTest", "TestCase", "fail").
calls("TestCase", "runTest", "Method", "invoke").
calls("TestCase", "runTest", "InvocationTargetException", "fillInStackTrace").
calls("TestCase", "runTest", "InvocationTargetException", "getTargetException").
calls("TestCase", "runTest", "IllegalAccessException", "fillInStackTrace").
method("TestCase", "assertTrue").
calls("TestCase", "assertTrue", "Assert", "assertTrue").
method("TestCase", "assertTrue").
calls("TestCase", "assertTrue", "Assert", "assertTrue").
method("TestCase", "assertFalse").
calls("TestCase", "assertFalse", "Assert", "assertFalse").
method("TestCase", "assertFalse").
calls("TestCase", "assertFalse", "Assert", "assertFalse").
method("TestCase", "fail").
calls("TestCase", "fail", "Assert", "fail").
method("TestCase", "fail").
calls("TestCase", "fail", "Assert", "fail").
method("TestCase", "assertEquals").
calls("TestCase", "assertEquals", "Assert", "assertEquals").
method("TestCase", "assertEquals").
calls("TestCase", "assertEquals", "Assert", "assertEquals").
method("TestCase", "assertEquals").
calls("TestCase", "assertEquals", "Assert", "assertEquals").
method("TestCase", "assertEquals").
calls("TestCase", "assertEquals", "Assert", "assertEquals").
method("TestCase", "assertEquals").
calls("TestCase", "assertEquals", "Assert", "assertEquals").
method("TestCase", "assertEquals").
calls("TestCase", "assertEquals", "Assert", "assertEquals").
method("TestCase", "assertEquals").
calls("TestCase", "assertEquals", "Assert", "assertEquals").
method("TestCase", "assertEquals").
calls("TestCase", "assertEquals", "Assert", "assertEquals").
method("TestCase", "assertEquals").
calls("TestCase", "assertEquals", "Assert", "assertEquals").
method("TestCase", "assertEquals").
calls("TestCase", "assertEquals", "Assert", "assertEquals").
method("TestCase", "assertEquals").
calls("TestCase", "assertEquals", "Assert", "assertEquals").
method("TestCase", "assertEquals").
calls("TestCase", "assertEquals", "Assert", "assertEquals").
method("TestCase", "assertEquals").
calls("TestCase", "assertEquals", "Assert", "assertEquals").
method("TestCase", "assertEquals").
calls("TestCase", "assertEquals", "Assert", "assertEquals").
method("TestCase", "assertEquals").
calls("TestCase", "assertEquals", "Assert", "assertEquals").
method("TestCase", "assertEquals").
calls("TestCase", "assertEquals", "Assert", "assertEquals").
method("TestCase", "assertEquals").
calls("TestCase", "assertEquals", "Assert", "assertEquals").
method("TestCase", "assertEquals").
calls("TestCase", "assertEquals", "Assert", "assertEquals").
method("TestCase", "assertEquals").
calls("TestCase", "assertEquals", "Assert", "assertEquals").
method("TestCase", "assertEquals").
calls("TestCase", "assertEquals", "Assert", "assertEquals").
method("TestCase", "assertNotNull").
calls("TestCase", "assertNotNull", "Assert", "assertNotNull").
method("TestCase", "assertNotNull").
calls("TestCase", "assertNotNull", "Assert", "assertNotNull").
method("TestCase", "assertNull").
calls("TestCase", "assertNull", "Assert", "assertNull").
method("TestCase", "assertNull").
calls("TestCase", "assertNull", "Assert", "assertNull").
method("TestCase", "assertSame").
calls("TestCase", "assertSame", "Assert", "assertSame").
method("TestCase", "assertSame").
calls("TestCase", "assertSame", "Assert", "assertSame").
method("TestCase", "assertNotSame").
calls("TestCase", "assertNotSame", "Assert", "assertNotSame").
method("TestCase", "assertNotSame").
calls("TestCase", "assertNotSame", "Assert", "assertNotSame").
method("TestCase", "failSame").
calls("TestCase", "failSame", "Assert", "failSame").
method("TestCase", "failNotSame").
calls("TestCase", "failNotSame", "Assert", "failNotSame").
method("TestCase", "failNotEquals").
calls("TestCase", "failNotEquals", "Assert", "failNotEquals").
method("TestCase", "format").
calls("TestCase", "format", "Assert", "format").
method("TestCase", "setUp").
method("TestCase", "tearDown").
method("TestCase", "toString").
method("TestCase", "getName").
method("TestCase", "setName").

# junit4/src/main/java/junit/framework/ComparisonCompactor.java

class("ComparisonCompactor").
method("ComparisonCompactor", "compact").
calls("ComparisonCompactor", "compact", "Assert", "format").
calls("ComparisonCompactor", "compact", "ComparisonCompactor", "findCommonPrefix").
calls("ComparisonCompactor", "compact", "ComparisonCompactor", "findCommonSuffix").
calls("ComparisonCompactor", "compact", "Assert", "format").
method("ComparisonCompactor", "compactString").
method("ComparisonCompactor", "findCommonPrefix").
method("ComparisonCompactor", "findCommonSuffix").
method("ComparisonCompactor", "computeCommonPrefix").
method("ComparisonCompactor", "computeCommonSuffix").
method("ComparisonCompactor", "areStringsEqual").
calls("ComparisonCompactor", "areStringsEqual", "String", "equals").

# junit4/src/main/java/junit/framework/package-info.java


# junit4/src/main/java/junit/framework/TestResult.java

class("TestResult").
method("TestResult", "addError").
calls("TestResult", "addError", "List", "add").
calls("TestResult", "addError", "TestListener", "addError").
method("TestResult", "addFailure").
calls("TestResult", "addFailure", "List", "add").
calls("TestResult", "addFailure", "TestListener", "addFailure").
method("TestResult", "addListener").
calls("TestResult", "addListener", "List", "add").
method("TestResult", "removeListener").
calls("TestResult", "removeListener", "List", "remove").
method("TestResult", "cloneListeners").
calls("TestResult", "cloneListeners", "List", "addAll").
method("TestResult", "endTest").
calls("TestResult", "endTest", "TestListener", "endTest").
method("TestResult", "errorCount").
calls("TestResult", "errorCount", "List", "size").
method("TestResult", "errors").
calls("TestResult", "errors", "Collections", "enumeration").
method("TestResult", "failureCount").
calls("TestResult", "failureCount", "List", "size").
method("TestResult", "failures").
calls("TestResult", "failures", "Collections", "enumeration").
method("TestResult", "run").
calls("TestResult", "run", "TestResult", "startTest").
calls("TestResult", "run", "TestResult", "runProtected").
calls("TestResult", "run", "TestResult", "endTest").
method("TestResult", "runCount").
method("TestResult", "runProtected").
calls("TestResult", "runProtected", "Protectable", "protect").
calls("TestResult", "runProtected", "TestResult", "addFailure").
calls("TestResult", "runProtected", "TestResult", "addError").
method("TestResult", "shouldStop").
method("TestResult", "startTest").
calls("TestResult", "startTest", "TestListener", "startTest").
method("TestResult", "stop").
method("TestResult", "wasSuccessful").

# junit4/src/main/java/junit/framework/ComparisonFailure.java

class("ComparisonFailure").
method("ComparisonFailure", "getMessage").
method("ComparisonFailure", "getActual").
method("ComparisonFailure", "getExpected").

# junit4/src/main/java/junit/framework/Assert.java

class("Assert").
method("Assert", "assertTrue").
calls("Assert", "assertTrue", "Assert", "fail").
method("Assert", "assertTrue").
calls("Assert", "assertTrue", "Assert", "assertTrue").
method("Assert", "assertFalse").
calls("Assert", "assertFalse", "Assert", "assertTrue").
method("Assert", "assertFalse").
calls("Assert", "assertFalse", "Assert", "assertFalse").
method("Assert", "fail").
method("Assert", "fail").
calls("Assert", "fail", "Assert", "fail").
method("Assert", "assertEquals").
calls("Assert", "assertEquals", "Assert", "failNotEquals").
method("Assert", "assertEquals").
calls("Assert", "assertEquals", "Assert", "assertEquals").
method("Assert", "assertEquals").
method("Assert", "assertEquals").
calls("Assert", "assertEquals", "Assert", "assertEquals").
method("Assert", "assertEquals").
calls("Assert", "assertEquals", "Assert", "failNotEquals").
method("Assert", "assertEquals").
calls("Assert", "assertEquals", "Assert", "assertEquals").
method("Assert", "assertEquals").
calls("Assert", "assertEquals", "Assert", "failNotEquals").
method("Assert", "assertEquals").
calls("Assert", "assertEquals", "Assert", "assertEquals").
method("Assert", "assertEquals").
calls("Assert", "assertEquals", "Assert", "assertEquals").
method("Assert", "assertEquals").
calls("Assert", "assertEquals", "Assert", "assertEquals").
method("Assert", "assertEquals").
calls("Assert", "assertEquals", "Assert", "assertEquals").
method("Assert", "assertEquals").
calls("Assert", "assertEquals", "Assert", "assertEquals").
method("Assert", "assertEquals").
calls("Assert", "assertEquals", "Assert", "assertEquals").
method("Assert", "assertEquals").
calls("Assert", "assertEquals", "Assert", "assertEquals").
method("Assert", "assertEquals").
calls("Assert", "assertEquals", "Assert", "assertEquals").
method("Assert", "assertEquals").
calls("Assert", "assertEquals", "Assert", "assertEquals").
method("Assert", "assertEquals").
calls("Assert", "assertEquals", "Assert", "assertEquals").
method("Assert", "assertEquals").
calls("Assert", "assertEquals", "Assert", "assertEquals").
method("Assert", "assertEquals").
calls("Assert", "assertEquals", "Assert", "assertEquals").
method("Assert", "assertEquals").
calls("Assert", "assertEquals", "Assert", "assertEquals").
method("Assert", "assertNotNull").
calls("Assert", "assertNotNull", "Assert", "assertNotNull").
method("Assert", "assertNotNull").
calls("Assert", "assertNotNull", "Assert", "assertTrue").
method("Assert", "assertNull").
calls("Assert", "assertNull", "Assert", "assertNull").
method("Assert", "assertNull").
calls("Assert", "assertNull", "Assert", "assertTrue").
method("Assert", "assertSame").
calls("Assert", "assertSame", "Assert", "failNotSame").
method("Assert", "assertSame").
calls("Assert", "assertSame", "Assert", "assertSame").
method("Assert", "assertNotSame").
calls("Assert", "assertNotSame", "Assert", "failSame").
method("Assert", "assertNotSame").
calls("Assert", "assertNotSame", "Assert", "assertNotSame").
method("Assert", "failSame").
calls("Assert", "failSame", "Assert", "fail").
method("Assert", "failNotSame").
calls("Assert", "failNotSame", "Assert", "fail").
method("Assert", "failNotEquals").
calls("Assert", "failNotEquals", "Assert", "fail").
method("Assert", "format").

# junit4/src/main/java/junit/framework/TestFailure.java

class("TestFailure").
method("TestFailure", "failedTest").
method("TestFailure", "thrownException").
method("TestFailure", "toString").
method("TestFailure", "trace").
calls("TestFailure", "trace", "Throwables", "getStacktrace").
method("TestFailure", "exceptionMessage").
calls("TestFailure", "exceptionMessage", "TestFailure", "thrownException").
method("TestFailure", "isFailure").

# junit4/src/main/java/junit/framework/TestListener.java


# junit4/src/main/java/junit/framework/Protectable.java


# junit4/src/main/java/junit/framework/AssertionFailedError.java

class("AssertionFailedError").
method("AssertionFailedError", "defaultString").

# junit4/src/main/java/junit/framework/JUnit4TestAdapterCache.java

class("JUnit4TestAdapterCache").
method("JUnit4TestAdapterCache", "getDefault").
method("JUnit4TestAdapterCache", "asTest").
calls("JUnit4TestAdapterCache", "asTest", "Description", "isSuite").
calls("JUnit4TestAdapterCache", "asTest", "JUnit4TestAdapterCache", "createTest").
calls("JUnit4TestAdapterCache", "asTest", "JUnit4TestAdapterCache", "containsKey").
calls("JUnit4TestAdapterCache", "asTest", "JUnit4TestAdapterCache", "put").
calls("JUnit4TestAdapterCache", "asTest", "JUnit4TestAdapterCache", "get").
method("JUnit4TestAdapterCache", "createTest").
calls("JUnit4TestAdapterCache", "createTest", "Description", "isTest").
calls("JUnit4TestAdapterCache", "createTest", "TestSuite", "addTest").
method("JUnit4TestAdapterCache", "getNotifier").
calls("JUnit4TestAdapterCache", "getNotifier", "RunNotifier", "addListener").
method("JUnit4TestAdapterCache", "asTestList").
calls("JUnit4TestAdapterCache", "asTestList", "Description", "isTest").
calls("JUnit4TestAdapterCache", "asTestList", "Arrays", "asList").
calls("JUnit4TestAdapterCache", "asTestList", "List", "add").

# junit4/src/main/java/junit/framework/JUnit4TestCaseFacade.java

class("JUnit4TestCaseFacade").
method("JUnit4TestCaseFacade", "toString").
calls("JUnit4TestCaseFacade", "toString", "JUnit4TestCaseFacade", "getDescription").
method("JUnit4TestCaseFacade", "countTestCases").
method("JUnit4TestCaseFacade", "run").
method("JUnit4TestCaseFacade", "getDescription").

# junit4/src/main/java/junit/textui/ResultPrinter.java

class("ResultPrinter").
method("ResultPrinter", "print").
calls("ResultPrinter", "print", "ResultPrinter", "printHeader").
calls("ResultPrinter", "print", "ResultPrinter", "printErrors").
calls("ResultPrinter", "print", "ResultPrinter", "printFailures").
calls("ResultPrinter", "print", "ResultPrinter", "printFooter").
method("ResultPrinter", "printWaitPrompt").
calls("ResultPrinter", "printWaitPrompt", "ResultPrinter", "getWriter").
calls("ResultPrinter", "printWaitPrompt", "ResultPrinter", "getWriter").
method("ResultPrinter", "printHeader").
calls("ResultPrinter", "printHeader", "ResultPrinter", "getWriter").
calls("ResultPrinter", "printHeader", "ResultPrinter", "getWriter").
method("ResultPrinter", "printErrors").
calls("ResultPrinter", "printErrors", "ResultPrinter", "printDefects").
method("ResultPrinter", "printFailures").
calls("ResultPrinter", "printFailures", "ResultPrinter", "printDefects").
method("ResultPrinter", "printDefects").
calls("ResultPrinter", "printDefects", "ResultPrinter", "getWriter").
calls("ResultPrinter", "printDefects", "ResultPrinter", "getWriter").
calls("ResultPrinter", "printDefects", "ResultPrinter", "printDefect").
method("ResultPrinter", "printDefect").
calls("ResultPrinter", "printDefect", "ResultPrinter", "printDefectHeader").
calls("ResultPrinter", "printDefect", "ResultPrinter", "printDefectTrace").
method("ResultPrinter", "printDefectHeader").
calls("ResultPrinter", "printDefectHeader", "ResultPrinter", "getWriter").
method("ResultPrinter", "printDefectTrace").
calls("ResultPrinter", "printDefectTrace", "ResultPrinter", "getWriter").
method("ResultPrinter", "printFooter").
calls("ResultPrinter", "printFooter", "TestResult", "wasSuccessful").
calls("ResultPrinter", "printFooter", "ResultPrinter", "getWriter").
calls("ResultPrinter", "printFooter", "ResultPrinter", "getWriter").
calls("ResultPrinter", "printFooter", "ResultPrinter", "getWriter").
calls("ResultPrinter", "printFooter", "ResultPrinter", "getWriter").
calls("ResultPrinter", "printFooter", "ResultPrinter", "getWriter").
calls("ResultPrinter", "printFooter", "ResultPrinter", "getWriter").
calls("ResultPrinter", "printFooter", "ResultPrinter", "getWriter").
method("ResultPrinter", "elapsedTimeAsString").
calls("ResultPrinter", "elapsedTimeAsString", "NumberFormat", "getInstance").
method("ResultPrinter", "getWriter").
method("ResultPrinter", "addError").
calls("ResultPrinter", "addError", "ResultPrinter", "getWriter").
method("ResultPrinter", "addFailure").
calls("ResultPrinter", "addFailure", "ResultPrinter", "getWriter").
method("ResultPrinter", "endTest").
method("ResultPrinter", "startTest").
calls("ResultPrinter", "startTest", "ResultPrinter", "getWriter").
calls("ResultPrinter", "startTest", "ResultPrinter", "getWriter").

# junit4/src/main/java/junit/textui/package-info.java


# junit4/src/main/java/junit/textui/TestRunner.java

class("TestRunner").
method("TestRunner", "run").
calls("TestRunner", "run", "TestRunner", "run").
method("TestRunner", "run").
calls("TestRunner", "run", "TestRunner", "doRun").
method("TestRunner", "runAndWait").
calls("TestRunner", "runAndWait", "TestRunner", "doRun").
method("TestRunner", "testFailed").
method("TestRunner", "testStarted").
method("TestRunner", "testEnded").
method("TestRunner", "createTestResult").
method("TestRunner", "doRun").
calls("TestRunner", "doRun", "TestRunner", "doRun").
method("TestRunner", "doRun").
calls("TestRunner", "doRun", "TestResult", "addListener").
calls("TestRunner", "doRun", "Test", "run").
calls("TestRunner", "doRun", "ResultPrinter", "print").
calls("TestRunner", "doRun", "TestRunner", "pause").
method("TestRunner", "pause").
calls("TestRunner", "pause", "ResultPrinter", "printWaitPrompt").
calls("TestRunner", "pause", "System.in", "read").
method("TestRunner", "main").
calls("TestRunner", "main", "TestResult", "wasSuccessful").
calls("TestRunner", "main", "System", "exit").
calls("TestRunner", "main", "System", "exit").
calls("TestRunner", "main", "System.err", "println").
calls("TestRunner", "main", "System", "exit").
method("TestRunner", "start").
calls("TestRunner", "start", "System.err", "println").
calls("TestRunner", "start", "String", "equals").
calls("TestRunner", "start", "String", "equals").
calls("TestRunner", "start", "TestRunner", "runSingleMethod").
calls("TestRunner", "start", "TestRunner", "doRun").
method("TestRunner", "runSingleMethod").
calls("TestRunner", "runSingleMethod", "TestRunner", "doRun").
method("TestRunner", "runFailed").
calls("TestRunner", "runFailed", "System.err", "println").
calls("TestRunner", "runFailed", "System", "exit").
method("TestRunner", "setPrinter").
