<!DOCTYPE html>
<html lang="en">

<?php require_once './includes/head.php'; ?>

<body>
	<div class="wrapper">

		<?php require_once './includes/sidebar.php'; ?>

		<div class="main">

			<?php require_once './includes/navbar.php'; ?>

			<main class="content">
				<div class="container-fluid p-0">
					<div class="row">
						<div class="col-6">
							<h1 class="h3 mb-3">Users</h1>
						</div>
						<div class="col-6 text-end">
							<button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#addUser" id="btn-add">
								Add User
							</button>
						</div>
					</div>


					<div class="row">
						<div class="col-12">
							<div class="card">
								<div class="card-body">
									<table class="table">
										<thead>
											<tr>
												<th>Name</th>
												<th>Email</th>
												<th>Created at</th>
												<th>Action</th>
											</tr>
										</thead>
										<tbody id="tbody">
										</tbody>
									</table>
								</div>
							</div>
						</div>
					</div>

				</div>
			</main>

			<?php require_once './includes/footer.php'; ?>

		</div>
	</div>

	<?php require_once './includes/modals.php'; ?>

	<?php require_once './includes/script.php'; ?>

	<script>
		const errorAdd = document.getElementById('error-add');
		const successAdd = document.getElementById('success-add');
		const addUserForm = document.getElementById('add-user-form');
		addUserForm.addEventListener('submit', function(e) {
			e.preventDefault();

			const nameElementAdd = document.getElementById('name-add');
			const emailElementAdd = document.getElementById('email-add');
			const nameValueAdd = nameElementAdd.value;
			const emailValueAdd = emailElementAdd.value;

			errorAdd.innerText = successAdd.innerText = '';
			nameElementAdd.classList.remove('is-invalid');
			emailElementAdd.classList.remove('is-invalid');

			if (nameValueAdd == "" || nameValueAdd === undefined) {
				errorAdd.innerText = "Please enter your name!";
				nameElementAdd.classList.add('is-invalid');
			} else if (emailValueAdd == "" || emailValueAdd === undefined) {
				errorAdd.innerText = "Please enter your email!";
				emailElementAdd.classList.add('is-invalid');
			} else {
				const data = {
					name: nameValueAdd,
					email: emailValueAdd,
					submit: 1
				}
				fetch('./add_user.php', {
					method: 'POST',
					body: JSON.stringify(data),
					headers: {
						'Content-Type': 'application.json'
					}
				}).then(function(response) {
					return response.json();
				}).then(function(result) {
					if (result.emptyName) {
						errorAdd.innerText = result.emptyName;
						nameElementAdd.classList.add('is-invalid');
					} else if (result.emptyEmail) {
						errorAdd.innerText = result.emptyEmail;
						emailElementAdd.classList.add('is-invalid');
					} else if (result.success) {
						successAdd.innerText = result.success;
						addUserForm.reset();
					} else if (result.failed) {
						errorAdd.innerText = result.failed;
					}
				})
			}
		});

		function showUsers() {
			fetch('./show_users.php', {
				headers: {
					'Content-Type': 'application.json'
				}
			}).then(function(response) {
				return response.json();
			}).then(function(result) {
				const tBodyElement = document.getElementById('tbody');
				let rows = "";
				result.forEach(function(value) {
					rows += `<tr><td>${value['name']}</td><td>${value['email']}</td><td>${value['created_at']}</td><td><button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#editUser" onclick="editUser(${value['id']})">Edit User</button> <button type="button" class="btn btn-danger" data-bs-toggle="modal" data-bs-target="#deleteUser"onclick="deleteUser(${value['id']})">Delete User</button></td></tr>`;
				});
				tBodyElement.innerHTML += rows;
			})
		}

		showUsers();

		function editUser(id) {
			const successEdit = document.getElementById('success-edit');
			successEdit.innerText = "WE ARE TIRED BRO!"  + id;
		}

		function deleteUser(id) {
			const successDelete = document.getElementById('success-delete');
			successDelete.innerText = "WE ARE TIRED BRO!" + id;
		}
	</script>

</body>

</html>