<?php
	$conexao = mysqli_connect("localhost",  "root", "","login") or die ("Falha na conexão");

	$tabela = mysqli_query($conexao, "SELECT * FROM organizadores");
?>
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
        <div class="table-responsive">
            <table  class="table table-bordered" class="table table-hover">
                <tr>
                    <th colspan=6>ORGANIZADORES</th>
                </tr>
                <tr>
                    <th>ID</th>
                    <th>Usuário</th>
                    <th>Senha</th>
                    <th>Nome</th>
                    <th>Email</th>
                    <th>Telefone**</th>
                </tr>
                <?php
                    while ($linha = mysqli_fetch_array($tabela))
                    {
                ?>		
                <tr>
                    <td align="center"><?php echo $linha["id"]; ?></td>
                    <td><?php echo $linha["usuario"]; ?></td>
                    <td><?php echo $linha["senha"]; ?></td>
                    <td><?php echo $linha["nome"]; ?></td>
                    <td><?php echo $linha["email"]; ?></td>
                    <td><?php echo $linha["telefone**"]; ?></td>
                    <td align="center">
                        <a href="dados.php?manut=A&id=<?php echo $linha["id"]; ?>">
                            <img src="imagens/alterar.png" alt="Alterar"/>
                        </a>
                    </td>
                    <td align="center">
                        <a href="dados.php?manut=E&id=<?php echo $linha["id"]; ?>">
                            <img src="imagens/excluir.png" alt="Excluir"/>
                        </a>
                    </td>
                </tr>		
                <?php
                    }
                ?>
		    </table>
        </div>
	</body>
</html>
<?php
	mysqli_free_result($tabela);
	mysqli_close($conexao);
?>