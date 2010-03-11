// package org.spoj
object Toandfro {
	def decipher(col: Int, str: String): String = {
		def find(offset: Int, step: Int, accumulator: List[Char], stop: Int, inputStr: String): String = offset match {
			case _ if offset == stop => accumulator.mkString
			case _ => {
				def line(o:Int,s:String):List[Char]={
					var list_of_index = List[Int]()
					var index = o
					while (index < s.length) {
						list_of_index = list_of_index ::: List(index)
						val limit = step*2 + index - 1
						if (limit < s.length) { list_of_index = list_of_index ::: List(limit) }
						index = limit + o*2 + 1
					}
				
					list_of_index.map(inputStr(_))
				}
				
				find(offset+1, step-1, accumulator ::: line(offset,inputStr), stop, inputStr)
			}
		}
		find(0,col,List[Char](),col,str)
	}
	
	def main(args: Array[String]): Int = {
		var col = readInt
		while(col != 0){
			println(decipher(col,readLine))
			col = readInt
		}
		return 0
	}
	
}