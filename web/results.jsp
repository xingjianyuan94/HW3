<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" type="text/css" href="style.css">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>User Information</title>
    </head>
    <%
        int totalhourworked =  Integer.parseInt(request.getParameter("hour"));
        double hourlyrate = Double.parseDouble(request.getParameter("rate"));
        int hoursovertime = totalhourworked - 40;///////////////
        double overtimerate = hourlyrate * 1.5;
        if (hoursovertime <0)
            hoursovertime = 0;
        double grosspay = hourlyrate * totalhourworked + hoursovertime * 0.5 * hourlyrate; // 
        double pretaxdeduct = Double.parseDouble(request.getParameter("pre"));
        double pretaxpay = grosspay - pretaxdeduct;
        double taxamout = 0.22 * pretaxpay; //
        if(grosspay<=500)
            taxamout = 0.18 * pretaxpay;
        double posttaxpay = pretaxpay - taxamout;
        double posttaxdeduct = Double.parseDouble(request.getParameter("post"));
        double netpay = posttaxpay - posttaxdeduct;
        
        double regularpay = totalhourworked * hourlyrate;
        double regulartax = 0.18 * pretaxpay;
    

        %>
    
    <body>
        <h1>Salary Info</h1>
        <hr>
        <table border="1" id="result">
            <tbody>
                <tr>
                    <td>Total Hours Worked:</td>
                    <td><%= totalhourworked %></td>
                </tr>
                 <tr>
                    <td>Hourly Rate:</td>
                    <td><%= hourlyrate %></td>
                </tr>
                
                 <tr>
                    <td># Hours Overtime:</td>
                    <td>
                        <%
                        if (totalhourworked <= 40)
                            out.println("0");
                        else
                            out.println("" + hoursovertime + "");
                        %>
                    </td>
                </tr>
                
                <tr>
                    <td>Overtime Hourly Rate:</td>
                    <td><%= overtimerate %></td>
                </tr>
                
                 <tr>
                    <td>Gross Pay:</td>
                    <td>
                        <%
                            if (totalhourworked <= 40)
                            
                            out.println("" + regularpay + "");
                            else
                            out.println("" + grosspay + "");
                        %>
                    </td>
                </tr>
                
                <tr>
                    <td>Pre-tax Deduct:</td>
                    <td><%= pretaxdeduct %></td>
                </tr>
                
                <tr>
                    <td>Pre-tax Pay:</td>
                    <td><%= pretaxpay %></td>
                </tr>
                
                <tr>
                    <td>Tax Amount:</td>
                    <td>
                        <%
                            if(grosspay <= 500)
                            out.println("" + regulartax + "");
                            else
                            out.println("" + taxamout + "");
                        %>
                    
                    </td>
                </tr>
                
                <tr>
                    <td>Post-tax Pay:</td>
                    <td><%= posttaxpay %></td>
                </tr>
                
                <tr>
                    <td>Post-tax Deduct:</td>
                    <td><%= posttaxdeduct %></td>
                </tr>
                
                <tr>
                    <td>Net Pay:</td>
                    <td><%= netpay %></td>
                </tr>
                </tbody>   
            
        </table>
                  
    </body>
</html>