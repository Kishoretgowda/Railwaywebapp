<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%List<Train> list=(List<Train>)request.getAttribute("list"); %>

<table border="1">
<tr>
<th>Train Number</th>
<th>Train Name</th>
<th>From Station</th>
<th>To Station</th>
<th>Time of Departure</th>
<th>Time of Arrival</th>
<th>Ticket Price</th>
<th>Available Days</th>
<th>Book Ticket</th>

</tr>

<%for(Train train:list){ %>
<tr>
<th><%=train.getNumber() %></th>
<th><%=train.getName() %></th>
<th><%=train.getStations()[0] %></th>
<th><%=train.getStations()[train.getStations().length-1] %></th>

<th><%=train.getTime()[0] %></th>
<th><%=train.getTime()[train.getTime().length-1] %></th>

<th><%=Arrays.toString(train.getDays()) %></th>
<th><button>Book</button></th>
</tr>
<%} %>
</table>
</body>
</html>