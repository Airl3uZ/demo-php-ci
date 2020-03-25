<?php
class HelloTest extends PHPUnit_Framework_TestCase {
    
    public function testXXX() {
        $expectedResult = "Hello, Airl3uZ";
        $hello = new Hello();

        $actualResult = $hello->sayHi("Airl3uZ");

        $this->assertEquals($expectedResult, $actualResult);
    }
}
?>