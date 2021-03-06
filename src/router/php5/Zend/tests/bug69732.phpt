--TEST--
Bug #69732 (can induce segmentation fault with basic php code)
--FILE--
<?php
class wpq {
    private $unreferenced;
 
    public function __get($name) {
        return $this->$name . "XXX";
    }
}
 
function ret_assoc() {
	$x = "XXX";
    return array('foo' => 'bar', $x);
}
 
$wpq = new wpq;
$wpq->interesting =& ret_assoc();
$x = $wpq->interesting;
printf("%s\n", $x);
--EXPECTF--
Notice: Undefined property: wpq::$interesting in %sbug69732.php on line 6

Notice: Indirect modification of overloaded property wpq::$interesting has no effect in %sbug69732.php on line 16

Strict Standards: Only variables should be assigned by reference in %sbug69732.php on line 16

Notice: Undefined property: wpq::$interesting in %sbug69732.php on line 6
XXX
