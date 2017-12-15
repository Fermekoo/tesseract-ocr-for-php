<?php namespace thiagoalessio\TesseractOCR\Tests;

class TestCase
{
    public function __construct()
    {
        foreach (preg_grep('/^test/', get_class_methods($this)) as $test) {
            $this->{$test}();
        }
    }

    protected function assertEquals($expected, $actual)
    {
        if ($expected != $actual) {
            echo 'F', "Expected: $expected, got: $actual";
            exit(1);
        }
        echo '.';
    }
}
