<!DOCTYPE html>
<html>
<head>
    <style>
        #customers {
            font-family: Arial, Helvetica, sans-serif;
            border-collapse: collapse;
            width: 100%;
        }

        #customers td, #customers th {
            border: 1px solid #ddd;
            padding: 8px;
        }

        #customers tr:nth-child(even){background-color: #f2f2f2;}

        #customers tr:hover {background-color: #ddd;}

        #customers th {
            padding-top: 12px;
            padding-bottom: 12px;
            text-align: left;
            background-color: #04AA6D;
            color: white;
        }
    </style>
</head>
<body>

<table id="customers">
    <tr>
        <td><h2>Asian It Inc.</h2></td>
        <td><h2>Asian School ERP</h2>
            <p>School Address</p>
            <p>Phone : +8801713194588</p>
            <p>Email : support@asianitinc.com</p>
        </td>
    </tr>
</table>

<table id="customers">
    <tr>
        <th width="10%">Sl</th>
        <th width="45%">Student Details</th>
        <th width="45%">Student Data</th>
    </tr>
    <tr>
        <td>01</td>
        <td>Student Name</td>
        <td>{{ $details['student']['name'] }}</td>
    </tr>
    <tr>
        <td>02</td>
        <td>Student ID</td>
        <td>{{ $details['student']['id_no'] }}</td>
    </tr>

    <tr>
        <td>03</td>
        <td>Student Roll</td>
        <td>{{ $details->roll }}</td>
    </tr>

    <tr>
        <td>04</td>
        <td>Father's Name</td>
        <td>{{ $details['student']['fname'] }}</td>
    </tr>
    <tr>
        <td>05</td>
        <td>Mother's Name</td>
        <td>{{ $details['student']['mname'] }}</td>
    </tr>
    <tr>
        <td>06</td>
        <td>Mobile Number</td>
        <td>{{ $details['student']['mobile'] }}</td>
    </tr>
    <tr>
        <td>07</td>
        <td>Address</td>
        <td>{{ $details['student']['address'] }}</td>
    </tr>
    <tr>
        <td>08</td>
        <td>Gender</td>
        <td>{{ $details['student']['gender'] }}</td>
    </tr>
    <tr>
        <td>09</td>
        <td>Religion</td>
        <td>{{ $details['student']['religion'] }}</td>
    </tr>
    <tr>
        <td>10</td>
        <td>Date of Birth</td>
        <td>{{ $details['student']['dob'] }}</td>
    </tr>

    <tr>
        <td>11</td>
        <td>Discount</td>
        <td>{{ $details['discount']['discount'] }}%</td>
    </tr>

    <tr>
        <td>12</td>
        <td>Year</td>
        <td>{{ $details['student_year']['name'] }}</td>
    </tr>

    <tr>
        <td>13</td>
        <td>Class</td>
        <td>{{ $details['student_class']['name'] }}</td>
    </tr>

    <tr>
        <td>14</td>
        <td>Group</td>
        <td>{{ $details['group']['name'] }}</td>
    </tr>

    <tr>
        <td>15</td>
        <td>Shift</td>
        <td>{{ $details['shift']['name'] }}</td>
    </tr>


</table>
<br><br>
<i style="font-size: 10px; float: right;">Print Date : {{ date('d M Y') }}</i>

</body>
</html>
