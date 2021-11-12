<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet"
          href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css"
          integrity="sha384-zCbKRCUGaJDkqS1kPbPd7TveP5iyJE0EjAuZQTgFLD2ylzuqKfdKlfG/eSrtxUkn"
          crossorigin="anonymous">
    <title>Mobile by Price</title>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    <%@ page isELIgnored="false"%>
</head>
<body>
<div class="text-right">
<a href="/Mobiles" class="btn btn-primary">Back to home</a>
</div>
<div class="container">
    <form method="POST" action="update-price-by-model-number">
        <br><br>
        <h1><b>Update price by model number</b></h1>
        <br>

        <div class="form-row">
            <div class="form-group col-4">
                <label for="model_number_input">Model Number</label>
            </div>
            <div class="form-group col-8">
                <input type="text" name="modelNumber" class="form-control"
                       id="model_number_input" placeholder="Enter Model Number">
            </div>
        </div>

        <div class="form-row">
            <div class="form-group col-4">
                <label for="price_input">New price</label>
            </div>
            <div class="form-group col-8">
                <input type="text" name="price" class="form-control"
                       id="price_input" placeholder="Enter New Price">
            </div>
        </div>
        <div class="form-row">
            <div class="col-4 ">
                <button type="submit" class="btn btn-outline-primary" style="width:200px">
                    Update
                </button>
            </div>
            <div class="col-8">
                <button type="reset" class="btn btn-outline-primary" style="width:200px">
                    Reset
                </button>
            </div>
        </div>
    </form>
</div>


</body>
</html>