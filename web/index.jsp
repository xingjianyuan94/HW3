<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" type="text/css" href="style.css">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
            <title>Salary Calculation</title>
    </head>
    <body>
        <h1>Salary Calculation</h1>
        <hr>
        <form name="demoForm" action="results.jsp" method="post">
            <table>
                <tbody>
                    <tr>
                        <td>Hours Worked:</td>
                        <td><input type="number" name="hour" value="" size="50" required></td>
                    </tr>
                    <tr>
                        <td> Hourly Pay:</td>
                        <td><input type="number" name="rate" value="" size="50" required></td>
                    </tr>
                    <tr>
                        <td>Pre-tax Deduct:</td>
                        <td><input type="number" name="pre" value="" size="50" required></td>
                    </tr>
                    <tr>
                        <td>Post-tax Deduct:</td>
                        <td><input type="number" name="post" value="" size="50" required ></td>
                    </tr>
                    
                    
                    
            </tbody>
            </table>
 <input type="reset" value="Clear" id="clear">
 <input type="submit" value="Submit" id="submit">
            
        </form>
    </body>
</html>