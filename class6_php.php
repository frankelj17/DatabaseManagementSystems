<!DOCTYPE html>
<html>
    <head>
        <title>PHP Example</title>
    </head>
    <body>
        <h1>Simple PHP Example</h1>
        <?php
            echo "<p>PHP can echo static text that includes HTML code.</p>";
            $n = 55;
            echo "<p>You can also display variable values: n=$n.</p>";
            $p = "php";
            echo "<p>You can also display variable values: p=$p.</p>";
            $q = 3.14;
            echo "<p>You can also display variable values: q=$q.</p>";
        ?>

        <hr />
        <h2>Calculations and Conditionals</h2>
        <?php
            $x = 10 + 20;
            $y = $x * 10;
            $z = $x / $y;
            echo "<p> x=$x, y=$y, z=$z</p>";
            if ($x < $y) {
                echo "<p> Yo! </p>";
            }
            else {
                echo "<p> :( </p>";
            }
        ?>
        <hr />
        <h2>How about some looping?</h2>
        <?php
            echo "<p>";
            for ($i = 0; $i < 5; $i++) {
                echo "CS is awesome <br />";
            }
            echo "</p>";
        ?>
        <hr />
        <h2>Arrays!</h2>
        <?php
            $name = array('first'=>"James", 'middle'=>"Thomas", 'last'=>"Frankel");
            echo "<p>".$name['middle']."</p>";
            echo "<p>";
            print_r($name);
            echo "</p>";
            echo "<p>There are ".count($name)." elements in the array.</p>";
        ?>
        <hr />
        <h2>Strings!</h2>
        <?php
            $phrase="Department of Mathematics";
            $phrase=$phrase." and Computer Science";
            echo "<p>The string is: $phrase </p>";
        ?>
    </body>
</html>