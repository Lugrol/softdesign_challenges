The following is a _ipsis litteris_ reproduction of the document specifying the technical challenges reformatted to Markdown, with the candidate's comments preposted by the the emojis ⚠️, 🔍 & 👉, signifying respectively, warnings, observations and indications.

Olá, pessoa candidata!
Estamos felizes de você ter avançado em mais uma etapa do nosso processo seletivo!  
Chegou o momento de você realizar o desafio técnico.

Lembrete: Esse desafio deve ser __respondido em inglês__

### Conhecimento Plano de testes 
Em um sistema hipotético, onde a tela de Login é composta dos campos “Login” e “Senha”. Ambos são de preenchimento obrigatório.

O campo “Login” identifica o usuário que tem acesso ao sistema e aceita caracteres alfanuméricos onde o primeiro caractere é obrigatoriamente uma letra. Não são permitidos caracteres especiais como aspas, asteriscos e etc. O tamanho máximo do campo é de 10 caracteres e o mínimo de 3 caracteres. Se o campo “Login” informado não atender estes critérios, então o sistema deve mostrar ao usuário a mensagem “Campo Login inválido!”.

O campo “Senha” valida o acesso do usuário ao sistema e permite a entrada de qualquer tipo de caractere e deve começar por um número. O seu tamanho máximo é de 10 caracteres e o mínimo de 5 caracteres. Se a regra de formação não for atendida no preenchimento, então o sistema deve mostrar ao usuário a seguinte mensagem “Campo Senha inválido!”.

O botão “Cancelar” faz com que a aplicação seja encerrada e a Tela de Login seja fechada.

O botão “Entrar” submete para validação de acesso ao sistema os campos “Login” e “Senha”. Se a operação de login for bem-sucedida então a tela principal do sistema é apresentada. Se a operação de login não for bem-sucedida, então a mensagem “Login e/ou Senha inválidos!” é exibida na tela.

Com base nas informações acima descritas:

1. Elabore dois cenários de teste, preferencialmente no formato BDD (um de sucesso e um de falha). 👉 [Answer](challenge-test_plan.feature)
2. Simule o registro de uma abertura de um erro hipotético. 👉 [Answer](challenge-bug_report.md)

### Conhecimento Estratégia de Testes 
Você é a nova pessoa responsável pela qualidade em um projeto para uma aplicação mobile que já estava em andamento. Seu time é responsável por desenvolver desde o back-end até o front-end, e utiliza algumas práticas ágeis para desenvolver o produto.

Após algumas sprints (nas quais o time não atingiu os objetivos propostos), em uma retrospectiva, o time identificou que o ciclo de testes está muito longo. Ou seja, há demora nos feedbacks sobre se os incrementos das funcionalidades estão corretos ou com bugs.

É observado que para executar os testes manuais você precisa aguardar o desenvolvimento do back e do front-end, que são realizados por desenvolvedores diferentes. Além disso, em muitas situações as inconsistências encontradas são de regras de negócios simples oriundas dos microsserviços, por alterações em regras que já existem ou por erros simples de interface.

Na situação narrada acima, indique pelo menos duas sugestões de melhorias que você daria para seu time com o objetivo de realizar feedbacks mais rápidos sobre a funcionalidade dos incrementos.

> 👉 [Answer](challenge-test_strategy.md)

### PRÁTICA. Evidencie as respostas a seguir utilizando prints. 
Utilizando a ferramenta Postman: Com base nas URLs:
- https://www.googleapis.com/books/v1/volumes
- https://www.googleapis.com/books/v1/volumes/volumeId 🔍 Because this is a variable path, it should be writen "/:volumeId"
- https://www.googleapis.com/books/v1/auth 

1. Faça uma nova chamada para buscar livros com o título Development, utilizando o parâmetro "q": "development". Indique o status e tempo de resposta da requisição; 👉 [Answer](postman/status_and_answer_time.png)
2. Faça uma requisição para buscar informações do livro com o id “68_lhPvoKS8C”. Indique qual o nome do livro e seu(s) autor(es); 👉 [Answer](postman/title_and_authors.png)
3. Faça uma requisição hipotética, no formato application/json, simulando o processo de login, passando no corpo da requisição os objetos e os atributos a baixo. Evidencie o método utilizado e o JSON criado (Importante: sabemos que está requisição irá falhar, pois o serviço não existe) {"username": "usuario.biblioteca","password": "teste123"} 👉 [Answer](postman/auth.png)
> ⚠️ All requests are documented [here](postman/google-books-challenge.postman_collection.json)

### PRÁTICA. Evidencie as respostas a seguir utilizando prints. 
Utilizando a ferramenta SOAP 🔍 The tool's name is SoapUi  
Com base no WSDL - http://stapi.co/api/v1/soap/comicSeries?wsdl 
1. Faça uma requisição filtrando as series publicadas entre os anos "2000" e "2015"; indique quantos elementos retornam na lista; 👉 [Answer](soapui/publishings_from_2000_to_2015.png)
2. Pesquise a série com o título "Star Trek: Deep Space Nine - The Maquis: Soldier of Peace", indique o ano em que foi publicada; 👉 [Answer](soapui/soldier_of_peace_publishing_year.png)
3. Pesquise as séries com o título "Star Trek", indique quantos elementos retornam na paginação e em quantas páginas ficou dividido. 👉 [Answer](soapui/star_trek_elements_and_pagination.png)
> ⚠️ [There's no SOAP API](soapui/no_soap.md).
