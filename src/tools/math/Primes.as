package tools.math {
	/**
	 * ...
	 * @author Emilio
	 */
	public class Primes {
		// Busca el siguiente primo a partir de una lista ordenada
		// de los números primos, usando esa lista para buscar
		// divisores
		private function findNextPrime(primes:Array):Number {
			var ini:Number = primes[primes.length - 1] +1;
			var limit:Number = Math.sqrt(ini);
			
			var isPrime:Boolean = false;
			while (!isPrime) {
				var discard:Boolean = false;
				for (var i:int = 0; i < primes.length; i++) {
					if (primes[i] > limit) {
						// Alcanzado el límite de búsqueda.
						// No puede tener divisores mayores que su raiz cuadrada
						break;
					}else if (ini % primes[i] == 0) {
						// Encontrado divisor
						discard = true;
						break;
					}
				}
				if (discard) {
					ini++;
					limit = Math.sqrt(ini);
				} else {
					isPrime = true;
				}
			}
			return ini;
		}

		// Construye una lista de números primos
		private function buildPrimes(size:int):Array {
			var primes:Array = [2];
			for (var j:int = 1; j < size; j++) {
				var nextPrime:Number = findNextPrime(primes);
				primes.push(nextPrime);
			}
			return primes;
		}
	
		// Busca el primo que ocupa el orden order:
		public function findPrime(order:int):Number {
			var primes:Array = buildPrimes(order);
			return primes[primes.length - 1];
		}
		
		public function Primes() {}
		
	}

}