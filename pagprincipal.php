<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Evento Ciências na Praça </title>
    <link rel="stylesheet" href="styles.css"> <!-- Adicione seu arquivo de estilos CSS, se aplicável -->
</head>
<body>

    <header>
        <h1>Evento da Fatec Jundiai</h1>
        <p>Conheça todos os trabalhos do alunos da fatec  .</p>
    </header>

    <section id="programacao">
        <h2>Programação</h2>
        <ul>
            <li><strong>Data:</strong> 09/11/2023</li>
            <li><strong>Horário:</strong> 09:00 - 17:00</li>
            <li><strong>Local:</strong> Dentro do complexo do fepasa</li>
            <!-- Adicione mais informações sobre a programação -->
        </ul>
    </section>

    <section id="Curso">
        <h2>Cursos</h2>
        <div class="Curso">
            <img src="curso1.jpg" alt="foto do curso1">
            <h3>Curso1 </h3>
            <p>Descrição do curso e o que vai ter no evento para ver .</p>
        </div>
        <div class="Curso">
            <img src="curso2.jpg" alt="foto do curso2">
            <h3>Curso Logistica </h3>
            <p>Descrição do curso e o que vai ter no para ver .</p>
        </div>
        <!-- Adicione mais informações sobre os palestrantes -->
    </section>

    <section id="inscricao"        <p>Inscreva-se no nosso evento preenchendo o formulário abaixo:</p>
        <form action="processa_inscricao.php" method="post">            <input type="text" id="nome" name="nome" required>

            <label for="email">E-mail:</label>
            <input type="email" id="email" name="email" required>

            <input type="submit" value="Inscrever-se">
        </form>
    </section>

    <footer>
        <p>&copy; <?php echo date("Y"); ?> Evento da Faculdade. Todos os direitos reservados.</p>
    </footer>

</body>
</html>
