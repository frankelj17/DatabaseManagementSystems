<!DOCTYPE html>
<html>
    <head>
        <title>Assignment #1</title>
        <style>
            body {font-family:"Verdana";}
            td, th {border: 1px solid black; padding:5px;}
            td#info {text-align:left; border: 0px}
            td {text-align:right;}
            table#order, table#output {border: 1px solid black;}
            h1 {text-align:center;}
        </style>
    </head>
    <body>
        <h1>Widget Ordering System</h1>
        <hr>
        <h2>Customer Information</h2>
        <form method="post" action="widget.php">
            <table>
                <tr>
                    <td id="info">Customer Type:</td>
                    <td id="info"><input type="radio" name="customer" value="Premier" />Premier
                    <input type="radio" name="customer" value="Elite" checked="checked" />Elite</td>
                </tr>
                <tr>
                    <td id="info">Customer First Name:</td>
                    <td id="info"><input type="text" name="fname" value="Joe" /></td>
                </tr>
                <tr>
                    <td id="info">Customer Last Name:</td>
                    <td id="info"><input type="text" name="lname" value="Smith" /></td>
                </tr>
                <tr>
                    <td id="info">Street:</td>
                    <td id="info"><input type="text" name="address" /></td>
                </tr>
                <tr>
                    <td id="info">City:</td>
                    <td id="info"><input type="text" name="city" /></td>
                </tr>
                <tr>
                    <td id="info">State:</td>
                    <td id="info">
                        <select name="state">
                            <option value="connecticut">Connecticut</option>
                            <option value="maine">Maine</option>
                            <option value="massachusetts">Massachusetts</option>
                            <option value="newHampshire">New Hampshire</option>
                            <option value="rhodeIsland" selected>Rhode Island</option>
                            <option value="vermont">Vermont</option>
                        </select>
                    </td>
                </tr>
                <tr>
                    <td id="info">Zip Code:</td>
                    <td id="info"><input type="number" name="zip" /></td>
                </tr>
            </table>
            <h2>Order Information</h2>
            <?php
                    $x1=5.71;
                    $x2=4.21;
                    $x3=2.51;
                    $x4=1.21;
                    $x5=8.51;
            ?>
            <table id="order">
                <tr>
                    <th>QTY</th>
                    <th>Item</th>
                    <th>Item Price</th>
                </tr>
                <tr>
                    <td><input type="number" name="value1" value=0></td>
                    <td>Widget #8493 - Extra Crunchy</td>
                    <td><?php echo "<p>$ $x1</p>";?></td>
                </tr>
                <tr>
                    <td><input type="number" name="value2" value=0></td>
                    <td>Widget #3423 - Super Slippery</td>
                    <td><?php echo "<p>$ $x2</p>";?></td>
                </tr>
                <tr>
                    <td><input type="number" name="value3" value=0></td>
                    <td>Widget #2382 - Very Wobbly</td>
                    <td><?php echo "<p>$ $x3</p>";?></td>
                </tr>
                <tr>
                    <td><input type="number" name="value4" value=0></td>
                    <td>Widget #4583 - Extremely Sticky</td>
                    <td><?php echo "<p>$ $x4</p>";?></td>
                </tr>
                <tr>
                    <td><input type="number" name="value5" value=0></td>
                    <td>Widget #6851 - Wonderfully Wacky</td>
                    <td><?php echo "<p>$ $x5</p>";?></td>
                </tr>
            </table>
            <br>
            <input type="submit" name="submit" />
            <input type="reset" name="reset" />
        </form>
        <hr>
        <h2>Order Summary</h2>
        <?php
            if ($_POST){
                $button = $_POST['customer'];
                $firstname = $_POST['fname'];
                $citycity = $_POST['city'];
                $val1 = $_POST['value1'];
                $val2 = $_POST['value2'];
                $val3 = $_POST['value3'];
                $val4 = $_POST['value4'];
                $val5 = $_POST['value5'];
                $val1x1 = $val1 * $x1;
                $val2x2 = $val2 * $x2;
                $val3x3 = $val3 * $x3;
                $val4x4 = $val4 * $x4;
                $val5x5 = $val5 * $x5;
                $total = $val1x1 + $val2x2 + $val3x3 + $val4x4 + $val5x5;

                if ($button == "Elite"){
                    $final = $total / 5;
                    $final = $total - $final;
                }
                else {
                    $final = $total;
                }

                echo "<p>Dear $firstname,</p>";
                echo "<p>";
                echo "<p>Thank you for placing an order. You can expect to receive your widgets in $citycity by the end of the week.</p>";
                echo "<h2>Order Statement</h2>";
            }
            else{
                die("<p>No Order Information supplied.</p>");
            }
        ?>
        <table id="output">
            <tr>
                <th>QTY</th>
                <th>Item</th>
                <th>Total Price</th>
            </tr>
            <tr>
                <td><?php echo $val1; ?></td>
                <td>Widget #8493 - Extra Crunchy</td>
                <td>$ <?php echo number_format($val1x1, 2); ?></td>
            </tr>
            <tr>
                <td><?php echo $val2; ?></td>
                <td>Widget #3423 - Super Slippery</td>
                <td>$ <?php echo number_format($val2x2, 2); ?></td>
            </tr>
            <tr>
                <td><?php echo $val3; ?></td>
                <td>Widget #2382 - Very Wobbly</td>
                <td>$ <?php echo number_format($val3x3,2); ?></td>
            </tr>
            <tr>
                <td><?php echo $val4; ?></td>
                <td>Widget #4583 - Extremely Sticky</td>
                <td>$ <?php echo number_format($val4x4,2); ?></td>
            </tr>
            <tr>
                <td><?php echo $val5; ?></td>
                <td>Widget #6851 - Wonderfully Wacky</td>
                <td>$ <?php echo number_format($val5x5,2); ?></td>
            </tr>
            <tr>
                <td colspan=2>Product Total</td>
                <td>$ <?php echo number_format($total,2); ?></td>
            </tr>
            <tr>
                <td colspan=2>Total Cost</td>
                <td>$ <?php echo number_format($final, 2); ?></td>
            </tr>
        </table>
    </body>
</html>