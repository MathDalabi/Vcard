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
        <div class="container">
            <h1>Cadastro</h1>
            <form method="post" action="orgform.php">
            <div class="form-group">
                ID:
            </div>
            <div class="form-group">
                Usuário:
                <input type="text" id="nome" class="form-control" maxlength="50" name="nome" />
            </div>
            <div class="form-group">
                Senha:
                <input type="password" id="nome" class="form-control" maxlength="50" name="nome" />
            </div>
            <div class="form-group">
                Cidade:
                <input type="text" id="nome" class="form-control" maxlength="50" name="nome" />
            </div>
            <div class="form-group">
                E-mail:
                <input type="text" id="nome" class="form-control" maxlength="50" name="nome" />
            </div>
            <div class="form-group"> 
                Data de Nascimento:
                <input type="text" id="nasc" class="form-control" maxlength="10" placeholder="dd/mm/aaaa" name="data_nascimento" />
            </div>
            <button type="submit" class="btn btn-primary">Incluir</button>
            </form>     
        </div>
    </body>
</html>