<!DOCTYPE html>
<html lang="pt-br">
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1.0" />
	<title>Spiral - {$PAGE_NAME}</title>

	<link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Inter:wght@400;600&display=swap">
	<link rel="stylesheet" href="{$WEBPATH}themes/{$THEMENAME}/css/bootstrap.css">

	<style>
		body {
			font-family: 'Inter', sans-serif;
			background: linear-gradient(135deg, #0a1931, #185adb);
			display: flex;
			align-items: center;
			justify-content: center;
			height: 100vh;
			margin: 0;
			color: #fff;
		}

		.login-container {
			background: rgba(255, 255, 255, 0.08);
			backdrop-filter: blur(12px);
			border-radius: 16px;
			box-shadow: 0 0 40px rgba(0,0,0,0.2);
			padding: 50px 40px;
			width: 360px;
			text-align: center;
			transition: all 0.3s ease;
		}

		.login-container:hover {
			box-shadow: 0 0 50px rgba(0,0,0,0.25);
		}

		.logo {
			width: 160px;
			height: auto;
			margin-bottom: 25px;
			filter: drop-shadow(0 0 6px rgba(0,0,0,0.3));
		}

		h3 {
			font-weight: 600;
			margin-bottom: 20px;
			color: #ffffff;
			font-size: 1.4rem;
		}

		.form-group {
			margin-bottom: 18px;
		}

		.form-control {
			background: rgba(255, 255, 255, 0.15);
			border: none;
			border-radius: 10px;
			color: #fff;
			height: 46px;
			font-size: 0.95rem;
			padding: 10px 15px;
		}

		.form-control:focus {
			outline: none;
			box-shadow: 0 0 0 2px #1e90ff;
			background: rgba(255, 255, 255, 0.25);
		}

		.btn-login {
			background: #1e90ff;
			border: none;
			border-radius: 10px;
			padding: 12px;
			font-weight: 600;
			font-size: 1rem;
			transition: background 0.3s ease;
		}

		.btn-login:hover {
			background: #166dd0;
		}

		.login-bottom-links {
			margin-top: 25px;
			font-size: 0.85rem;
			color: rgba(255,255,255,0.75);
		}

		.login-bottom-links a {
			color: #fff;
			text-decoration: none;
			font-weight: 500;
		}

		.form-login-error {
			background: rgba(255, 77, 77, 0.15);
			border-left: 4px solid #ff4d4d;
			padding: 10px;
			border-radius: 8px;
			margin-bottom: 15px;
			color: #ffcccc;
			font-size: 0.9rem;
		}
	</style>
</head>
<body>

<div class="login-container">

	<img src="{$WEBPATH}themes/{$THEMENAME}/images/logo_padrao.png" alt="Issabel Logo" class="logo">

	<h3>Bem-vindo ao Issabel</h3>

	{if !empty({$LOGIN_INCORRECT})}
		<div class="form-login-error"><h3>{$LOGIN_INCORRECT}</h3></div>
		<script>$('.form-login-error').show();</script>
	{/if}

	<form method="post">
		<div class="form-group">
			<input type="text" class="form-control" name="input_user" id="input_user" placeholder="{$USERNAME}" autocomplete="off" />
		</div>

		<div class="form-group">
			<input type="password" class="form-control" name="input_pass" placeholder="{$PASSWORD}" autocomplete="off" />
		</div>

		<button type="submit" class="btn btn-primary btn-block btn-login" name="submit_login">
			Entrar
		</button>
	</form>

	<div class="login-bottom-links">
		<a href="http://www.issabel.org" target="_blank">Issabel</a> {$ISSABEL_LICENSED}
		<a href="http://www.opensource.org/licenses/gpl-license.php" target="_blank">GPL</a>. 2006 - {$currentyear}.
	</div>
</div>

</body>
</html>
