package  {
	import org.flexunit.Assert;
	public class Template {
		[BeforeClass]
		// run for one time before all test cases
		public static function runBeforeClass():void { }
		[AfterClass]
		// run for one time after all test cases
		public static function runAfterClass():void {}
		[Before]
		// run before each test method
		public function runBeforeEveryTest():void { }
		[After]
		// run after each test method
		public function RunAfterEveryTest():void { }
		
		
		[Test (description = "test sample")]
		public function testSomething():void {
			//Assert.assertEquals(5, CalculatorUtil.add(2, 3));
		}
		
		
		// Exception Handling && Ignore
		[Ignore("Not Ready to Run")]
		[Test(expects = "TypeError")]
		public function testWithException():void { /*simpleMath.divide( 11, 0 );*/ }

	}

}