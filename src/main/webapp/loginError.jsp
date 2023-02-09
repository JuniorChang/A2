<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
  <title>Log In page</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">
</head>

<body>
<div style="text-align: center; margin-top: 5%;">
  <h1>
    Company ABC Log in
  </h1>
</div>

<div style="text-align: center; margin-top: 5%;">

  <div style="text-align: center; margin-top: 5%;">
    <form action="LoginServlet" method="post">
      <div>
        <label for="username">Username</label>
        <input type="text" name="username" id="username">
      </div>

      <div style=" margin-top: 2rem;">
        <label for="password">Password</label>
        <input type="password" name="password" id="password">
      </div>

      <div style="color: red; margin-top: 5px;">
        <p>Invalid userid or password </p>
      </div>

      <div style=" margin-top: 2rem;">
        <button type="submit" class="btn btn-success" > Submit</button>
      </div>
    </form>
  </div>
</div>

<div style="position: fixed; left: 0; bottom: 0; width: 100%; background-color: black; color: white">
  <p style="text-align: center; margin-top: 1rem; margin-bottom: 1rem;">&copy; Demo for Log in Done by Chang Jia Le</p>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js" integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN" crossorigin="anonymous"></script>

</body>
</html>