<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <form action="insert.php" method="POST">
        <?php
        include("config.php");
                                                
        $query = "SELECT * FROM choices";  
        $result = mysqli_query($connect, $query); 

        while($row = mysqli_fetch_assoc($result)):?>

            <label for="item1"> <?php echo $row['Item_Choice']; ?></label>
            
            <input type="text" for="item1" name="id[]" value=" <?php echo $row['id']; ?>">
            <input type="checkbox" id="item1" name="items[]" value="<?php echo $row['Item_Choice']; ?>">
           
    

        <?php endwhile; ?>


        <input type="submit" name="submit" value="submit">
    </form> 
      
    
</body>
</html>