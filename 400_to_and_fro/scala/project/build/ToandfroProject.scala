import sbt._

class ToandfroProject(info: ProjectInfo) extends DefaultProject(info)
{
	val scalatest = "org.scalatest" % "scalatest" % "1.0" % "test"
}