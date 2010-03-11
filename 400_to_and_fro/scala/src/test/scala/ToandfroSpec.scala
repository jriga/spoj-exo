import org.scalatest.Spec
import org.scalatest.matchers.ShouldMatchers._
// import org.spoj.Toandfro

class ToandfroSpec extends Spec {
	describe("Toandfro") {
		it("should decipher string"){
			Toandfro.decipher(5,"toioynnkpheleaigshareconhtomesnlewx") should equal ("theresnoplacelikehomeonasnowynightx")
			Toandfro.decipher(3,"ttyohhieneesiaabss") should equal ("thisistheeasyoneab")
		}
	}
}