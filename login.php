<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Login</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="style.css">
</head>
<body>
    <div class="login"> 
        <div class="image">
            <img src="img/logoPortas-300x270.jpg" alt="Logo"></img>
        </div>
        <br>
        <h1>Login</h1>
        <div class="form-group">
            <select id="user"  class="form-control" name="user">
                <option value="vis">Visitante</option>
                <option value="part">Participante</option>
                <option value="org">Organizador</option>
                <option value="adm">Administrador</option>
            </select>
        </div>
        <div class="form-group">
            Usuário:
            <input type="text" id="nome" class="form-control" maxlength="50" name="nome" />
        </div>
        <div class="form-group">
            Senha:
            <input type="text" id="senha" class="form-control" maxlength="50" name="senha" />
        </div>
        <div class="botao">
            <a class="botao-login" href="#">Entrar</a>
            <br><br>
            <form method="post" action="">
                <p>Não possui cadastro?</p>
                <input type="submit" name="botao-cadastra" value="cadastra-se">
                <input type="button" name="botao-visitar-anonimo" value="visitar" onclick="location.href='pagprincipal.php';">
                </form>
                <br><br>> 
        </div>
    </div>

    <?php
    if(isset($_POST['botao-cadastra'])) {
        header("Location: cadastrovisitante.php");
        exit();
    }
    ?>
</body>
</html>
