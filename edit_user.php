<?php require_once './database/connection.php'; ?>

<?php
$form_input = file_get_contents("php://input");
$_POST = json_decode($form_input, true);

if (isset($_POST['submit'])) {
    $name = htmlspecialchars($_POST['name']);
    $email = htmlspecialchars($_POST['email']);
    $id = htmlspecialchars($_POST['id']);

    if (empty($name)) {
        echo json_encode(['emptyName' => 'Please enter your name!']);
    } elseif (empty($email)) {
        echo json_encode(['emptyEmail' => 'Please enter your email!']);
    } else {
        $sql = "SELECT * FROM `users` WHERE `email` = '${email}' AND `id` != ${id}";
        $result = $conn->query($sql);

        if ($result->num_rows == 0) {
            $sql = "UPDATE `users` SET `name` = '${name}',`email` = '${email}' WHERE `id` = ${id}";
            if ($conn->query($sql)) {
                echo json_encode(['success' => 'User has been successfully updated!']);
            } else {
                echo json_encode(['failed' => 'User has failed to update!']);
            }
        } else {
            echo json_encode(['emptyEmail' => 'Email already exists!']);
        }
    }
}
