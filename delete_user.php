<?php require_once './database/connection.php'; ?>

<?php
$form_input = file_get_contents("php://input");
$_POST = json_decode($form_input, true);

if (isset($_POST['submit'])) {
    $id = htmlspecialchars($_POST['id']);
    $sql = "DELETE FROM `users` WHERE `id` = '${id}'";
    if ($conn->query($sql)) {
        echo json_encode(['success' => 'User has been successfully deleted!']);
    } else {
        echo json_encode(['failed' => 'User has failed to delete!']);
    }
}
