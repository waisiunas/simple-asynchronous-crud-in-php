<?php require_once './database/connection.php'; ?>

<?php
$form_input = file_get_contents("php://input");
$_POST = json_decode($form_input, true);
if (isset($_POST['submit'])) {
    $user_id = $_POST['id'];
    $sql = "SELECT * FROM `users` WHERE `id` = ${user_id}";
    $result = $conn->query($sql);
    $user = $result->fetch_assoc();
    echo json_encode($user);
}
