<?php
include("config.php");

if (isset($_POST['submit'])) {
    if ($_SERVER["REQUEST_METHOD"] == "POST") {
        if (isset($_POST["items"], $_POST["id"]) && is_array($_POST["items"]) && is_array($_POST["id"])) {
            $items = $_POST["items"];
            $ids = $_POST["id"];
            $query = "INSERT INTO `items` (Choice_id, items) VALUES (?, ?)";
            
            $stmt = mysqli_prepare($connect, $query);
            mysqli_stmt_bind_param($stmt, 'is', $item_id, $item);
            
            for ($i = 0; $i < count($items); $i++) {
                $item_id = $ids[$i];
                $item = $items[$i];
                mysqli_stmt_execute($stmt);
            }
            
            if(mysqli_stmt_affected_rows($stmt) > 0){
                ?>
                <script>
                alert("Items inserted!");
                window.location.href='index.php';
                </script>
                <?php
            }
        }
    }
}
?>