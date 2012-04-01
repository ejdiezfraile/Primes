package tools.math {
	/**
	 *

	By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13, we can see that the 6th prime is 13.
	What is the 10 001st prime number?
	 */
	import org.flexunit.Assert;
	public class FindPrimeTest {
		private var primes:Primes;
		[BeforeClass]
		// run for one time before all test cases
		public static function runBeforeClass():void { }
		[AfterClass]
		// run for one time after all test cases
		public static function runAfterClass():void {}
		[Before]
		// run before each test method
		public function runBeforeEveryTest():void {
			primes = new Primes();
		}
		[After]
		// run after each test method
		public function RunAfterEveryTest():void { }
		
		
		[Test]
		public function test1thPrime():void {
			var expected:Number = 2;
			var actual:Number = primes.findPrime(1);
			
			Assert.assertEquals(expected, actual);
		}

		[Test]
		public function test2ndPrime():void {
			var expected:Number = 3;
			var actual:Number = primes.findPrime(2);
			
			Assert.assertEquals(expected, actual);
		}
		
		[Test]
		public function test3rdPrime():void {
			var expected:Number = 5;
			var actual:Number = primes.findPrime(3);
			
			Assert.assertEquals(expected, actual);
		}
		
		[Test]
		public function test4thPrime():void {
			var expected:Number = 7;
			var actual:Number = primes.findPrime(4);
			
			Assert.assertEquals(expected, actual);
		}
		
		[Test]
		public function test5thPrime():void {
			var expected:Number = 11;
			var actual:Number = primes.findPrime(5);
			
			Assert.assertEquals(expected, actual);
		}
		
		[Test]
		public function test6thPrime():void {
			var expected:Number = 13;
			var actual:Number = primes.findPrime(6);
			
			Assert.assertEquals(expected, actual);
		}
		
		[Test]
		public function test10001thPrime():void {
			var expected:Number = 104743;
			var actual:Number = primes.findPrime(10001);
			
			Assert.assertEquals(expected, actual);
		}

	}

}