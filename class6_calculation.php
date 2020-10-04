<!DOCTYPE html>
<html>
    <head>
        <title>Example Web Form</title>
        <style type="text/css">
            h1 {text-align:center;}
        </style>
    </head>
    <body>
        <h1>PHP and Form Data</h1>
        <h2>Input: </h2>
        <form action="calculation.php" method="post">
            <p>Enter number: 
                <input type="text" name="inputvalue" />
                <input type="submit" name="submit" />
                <input type="reset" name="reset" />
            </p>
        </form>
        <hr />
        <h2>Output: </h2>
        <?php
            if($_POST) {
                echo "<p>There is form data input! It looks like this: <br />";
            }
            else {
                die("<p>No form data. So, there is nothing to do.</p>");
            }
            print_r($_POST);
            echo "</p>";
            $input = $_POST['inputvalue'];
            echo "<p>The user supplied a value of $input.</p>";
            $input = $input * $input;
            echo "<p>The squared value is " .input . ".</p>";
        ?>
    </body>
</html>