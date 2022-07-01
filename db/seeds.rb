Disciplina.create!(nome: "Fundamentos de Programação", codigo: "4611C-06", creditos: 6, nivel: 1)
Disciplina.create!(nome: "Cálculo I", codigo: "95300-04", creditos: 4, nivel: 1)
Disciplina.create!(nome: "Introdução a Sistemas de Informação", codigo: "4636U-04", creditos: 4, nivel: 1)
Disciplina.create!(nome: "Fundamentos Aplicados da Administraçào", codigo: "254PF-04", creditos: 4, nivel: 1)
Disciplina.create!(nome: "Programação Oreintada a Objetos", codigo: "4611F-04", creditos: 4, nivel: 2)
Disciplina.create!(nome: "Modelagem de Negócio", codigo: "4636X-04", creditos: 4, nivel: 2)
Disciplina.create!(nome: "Matemática Discreta", codigo: "4115L-02", creditos: 2, nivel: 2)
Disciplina.create!(nome: "Lógica para Computaçào", codigo: "4611E-04", creditos: 4, nivel: 2)
Disciplina.create!(nome: "Fundamentos de Desenvolvimento de Software", codigo: "4636H-04", creditos: 4, nivel: 3)
Disciplina.create!(nome: "Arquitetura de Computadores", codigo: "4637N-02", creditos: 2, nivel: 3)
Disciplina.create!(nome: "Engenharia de Requisitos", codigo: "46506-04", creditos: 4, nivel: 3)
Disciplina.create!(nome: "Disciplina Integradora I", codigo: "4636P-04", creditos: 4, nivel: 4)
Disciplina.create!(nome: "Sistemas Operacionais", codigo: "4647D-04", creditos: 4, nivel: 4)
Disciplina.create!(nome: "Projeto e Desenvolvimento de Software", codigo: "4637C-04", creditos: 4, nivel: 4)
Disciplina.create!(nome: "Programação de Software Aplicado", codigo: "4637B-04", creditos: 4, nivel: 5)
Disciplina.create!(nome: "Sistemas Distribuídos", codigo: "4637G-04", creditos: 4, nivel: 5)
Disciplina.create!(nome: "Gerëncia de Projetos de TI", codigo: "4636L-04", creditos: 4, nivel: 5)
Disciplina.create!(nome: "Inteligëncia de Negócio", codigo: "4636R-04", creditos: 4, nivel: 5)
Disciplina.create!(nome: "Infraestrutura de TI", codigo: "4636N-04", creditos: 4, nivel: 6)
Disciplina.create!(nome: "Governança Estratégica de TI", codigo: "254AU-04", creditos: 4, nivel: 6)
Disciplina.create!(nome: "Teoria da Computaçào", codigo: "4637J-02", creditos: 2, nivel: 6)
Disciplina.create!(nome: "qualidade de Produto", codigo: "4637E-02", creditos: 2, nivel: 7)
Disciplina.create!(nome: "Pr[atica Profissional", codigo: "4637A-02", creditos: 2, nivel: 7)
Disciplina.create!(nome: "Ética e Cidadania", codigo: "1501A-04", creditos: 4, nivel: 8)
Disciplina.create!(nome: "Qualidade de Processo", codigo: "4637D-04", creditos: 4, nivel: 8)
Disciplina.create!(nome: "Comportamento Organizacional", codigo: "254PG-02", creditos: 2, nivel: 8)
Disciplina.create!(nome: "Avaliação e Desempenho de Sistemas", codigo: "4636D-02", creditos: 2, nivel: 7)
Disciplina.create!(nome: "Tópicos Avançados em Gestão de Dados", codigo: "4637K-02", creditos: 2, nivel: 6)
Disciplina.create!(nome: "Gerência de Redes de Computadores", codigo: "4636M-02", creditos: 2, nivel: 5)
Disciplina.create!(nome: "Fundamentos de Redes de Computadores", codigo: "4636K-04", creditos: 4, nivel: 4)

User.create!(nome: "Alexandre Agustini", coordenador: true, password: "Alexandre")
User.create!(nome: "Daniel Morsch", coordenador: false, password: "Daniel")
User.create!(nome: "Brenda David", coordenador: false, password: "Brenda")
User.create!(nome: "Gabriel Franzoni", coordenador: false, password: "senha")
User.create!(nome: "Henrique Rosa", coordenador: false, password: "senha")
User.create!(nome: "Vinicius Sesti", coordenador: false, password: "senha")
User.create!(nome: "Gabriel Fanto", coordenador: false, password: "senha")
User.create!(nome: "Matheus Longhi", coordenador: false, password: "senha")
User.create!(nome: "Douglas Paz", coordenador: false, password: "senha")
User.create!(nome: "Douglas Dodö", coordenador: false, password: "senha")
User.create!(nome: "Gabriel Marques", coordenador: false, password: "senha")
User.create!(nome: "Valmo Trindade", coordenador: false, password: "senha")
User.create!(nome: "Gustavo Barreto", coordenador: false, password: "senha")
User.create!(nome: "Lucas Zannoni", coordenador: false, password: "senha")
User.create!(nome: "Pedro Mallet", coordenador: false, password: "senha")
User.create!(nome: "Rafael Seus", coordenador: false, password: "senha")
User.create!(nome: "Pedro Henrique", coordenador: false, password: "senha")
User.create!(nome: "Frank Sinatra", coordenador: false, password: "senha")
User.create!(nome: "Billie Eilish", coordenador: false, password: "senha")
User.create!(nome: "Britney Spears", coordenador: false, password: "senha")
User.create!(nome: "John Lennon", coordenador: false, password: "senha")
User.create!(nome: "Arnold Schwarzenegger", coordenador: false, password: "senha")
User.create!(nome: "Scarlett Johansson", coordenador: false, password: "senha")
User.create!(nome: "Jason Momoa", coordenador: false, password: "senha")
User.create!(nome: "Toby Maguire", coordenador: false, password: "senha")
User.create!(nome: "Morgan Freeman", coordenador: false, password: "senha")
User.create!(nome: "Elvis Presley", coordenador: false, password: "senha")
User.create!(nome: "Billy Joel", coordenador: false, password: "senha")
User.create!(nome: "David Bowie", coordenador: false, password: "senha")
User.create!(nome: "Elton John", coordenador: false, password: "senha")
User.create!(nome: "Bob Dylan", coordenador: false, password: "senha")

Turma.create!(disciplina_id: 51, vagas: 20, horario: "2LM4LM6LM", codigo: "107/2")
Turma.create!(disciplina_id: 52, vagas: 20, horario: "2LM4LM", codigo: "108/2")
Turma.create!(disciplina_id: 52, vagas: 15, horario: "2NP4NP", codigo: "108/3")
Turma.create!(disciplina_id: 53, vagas: 15, horario: "2NP4NP", codigo: "118/3")
Turma.create!(disciplina_id: 54, vagas: 15, horario: "6LMNP", codigo: "119/3")
Turma.create!(disciplina_id: 55, vagas: 20, horario: "3NP5NP", codigo: "109/3")
Turma.create!(disciplina_id: 55, vagas: 20, horario: "3LM5LM", codigo: "109/2")
Turma.create!(disciplina_id: 56, vagas: 20, horario: "3LM5LM", codigo: "120/2")
Turma.create!(disciplina_id: 57, vagas: 20, horario: "6LM", codigo: "110/2")
Turma.create!(disciplina_id: 58, vagas: 20, horario: "2LM4LM", codigo: "121/2")
Turma.create!(disciplina_id: 59, vagas: 15, horario: "2LM4LM", codigo: "111/2")
Turma.create!(disciplina_id: 59, vagas: 15, horario: "2NP4NP", codigo: "111/3")
Turma.create!(disciplina_id: 60, vagas: 15, horario: "4NP", codigo: "131/3")
Turma.create!(disciplina_id: 61, vagas: 20, horario: "2NP4NP", codigo: "132/3")
Turma.create!(disciplina_id: 62, vagas: 20, horario: "5LMNP", codigo: "133/3")
Turma.create!(disciplina_id: 63, vagas: 20, horario: "3NP5NP", codigo: "112/2")
Turma.create!(disciplina_id: 64, vagas: 15, horario: "3NP5NP", codigo: "142/2")
Turma.create!(disciplina_id: 65, vagas: 20, horario: "3NP5NP", codigo: "113/2")
Turma.create!(disciplina_id: 65, vagas: 20, horario: "3LM5LM", codigo: "113/3")
Turma.create!(disciplina_id: 66, vagas: 20, horario: "3LM5LM", codigo: "133/2")
Turma.create!(disciplina_id: 67, vagas: 20, horario: "3LM5LM", codigo: "233/2")
Turma.create!(disciplina_id: 68, vagas: 20, horario: "6LMNP", codigo: "114/2")
Turma.create!(disciplina_id: 69, vagas: 20, horario: "2LMNP", codigo: "214/2")
Turma.create!(disciplina_id: 70, vagas: 15, horario: "2LM4LM", codigo: "115/2")
Turma.create!(disciplina_id: 70, vagas: 15, horario: "3LM5LM", codigo: "115/3")
Turma.create!(disciplina_id: 70, vagas: 15, horario: "6LMNP", codigo: "115/4")
Turma.create!(disciplina_id: 71, vagas: 15, horario: "6LM", codigo: "215/4")
Turma.create!(disciplina_id: 72, vagas: 20, horario: "2NP", codigo: "116/2")
Turma.create!(disciplina_id: 73, vagas: 20, horario: "2LM", codigo: "117/2")
Turma.create!(disciplina_id: 73, vagas: 15, horario: "3NP", codigo: "117/3")
Turma.create!(disciplina_id: 74, vagas: 15, horario: "6LMNP", codigo: "118/3")
Turma.create!(disciplina_id: 75, vagas: 20, horario: "3LMNP", codigo: "218/3")
Turma.create!(disciplina_id: 80, vagas: 20, horario: "3NP6NP", codigo: "318/3")
Turma.create!(disciplina_id: 79, vagas: 15, horario: "2NP", codigo: "316/2")
Turma.create!(disciplina_id: 78, vagas: 15, horario: "4NP", codigo: "326/2")
Turma.create!(disciplina_id: 77, vagas: 15, horario: "2LM", codigo: "327/2")
Turma.create!(disciplina_id: 76, vagas: 15, horario: "3LM", codigo: "330/2")

Historico.create!(user_id: 33, disciplina_id: 52, nota: 8, aprovado: true, semestre: "2019/1")
Historico.create!(user_id: 33, disciplina_id: 55, nota: 9, aprovado: true, semestre: "2019/2")
Historico.create!(user_id: 33, disciplina_id: 56, nota: 7, aprovado: true, semestre: "2019/2")
Historico.create!(user_id: 33, disciplina_id: 51, nota: 5, aprovado: true, semestre: "2019/1")
Historico.create!(user_id: 33, disciplina_id: 60, nota: 6, aprovado: true, semestre: "2020/1")
Historico.create!(user_id: 33, disciplina_id: 61, nota: 7, aprovado: true, semestre: "2020/1")
Historico.create!(user_id: 33, disciplina_id: 54, nota: 3, aprovado: false, semestre: "2019/1")
Historico.create!(user_id: 33, disciplina_id: 57, nota: 2, aprovado: false, semestre: "2019/1")
Historico.create!(user_id: 33, disciplina_id: 62, nota: 8, aprovado: true, semestre: "2020/2")
Historico.create!(user_id: 33, disciplina_id: 63, nota: 8, aprovado: true, semestre: "2020/2")
Historico.create!(user_id: 33, disciplina_id: 64, nota: 6, aprovado: true, semestre: "2020/2")
Historico.create!(user_id: 34, disciplina_id: 52, nota: 5, aprovado: true, semestre: "2019/1")
Historico.create!(user_id: 34, disciplina_id: 53, nota: 3.5, aprovado: false, semestre: "2019/1")
Historico.create!(user_id: 34, disciplina_id: 51, nota: 7.3, aprovado: true, semestre: "2019/1")
Historico.create!(user_id: 34, disciplina_id: 54, nota: 6, aprovado: true, semestre: "2019/1")
Historico.create!(user_id: 34, disciplina_id: 55, nota: 9, aprovado: true, semestre: "2019/2")
Historico.create!(user_id: 34, disciplina_id: 56, nota: 10, aprovado: true, semestre: "2019/2")
Historico.create!(user_id: 35, disciplina_id: 51, nota: 7.8, aprovado: true, semestre: "2019/1")
Historico.create!(user_id: 35, disciplina_id: 52, nota: 10, aprovado: true, semestre: "2019/1")
Historico.create!(user_id: 35, disciplina_id: 56, nota: 1, aprovado: false, semestre: "2019/2")
Historico.create!(user_id: 36, disciplina_id: 56, nota: 10, aprovado: true, semestre: "2019/2")
Historico.create!(user_id: 36, disciplina_id: 58, nota: 10, aprovado: true, semestre: "2019/2")
Historico.create!(user_id: 36, disciplina_id: 52, nota: 10, aprovado: true, semestre: "2019/1")
Historico.create!(user_id: 36, disciplina_id: 53, nota: 10, aprovado: true, semestre: "2019/1")
Historico.create!(user_id: 37, disciplina_id: 53, nota: 8, aprovado: true, semestre: "2019/1")
Historico.create!(user_id: 37, disciplina_id: 51, nota: 1, aprovado: false, semestre: "2019/1")
Historico.create!(user_id: 37, disciplina_id: 51, nota: 4, aprovado: true, semestre: "2019/2")
Historico.create!(user_id: 37, disciplina_id: 52, nota: 6, aprovado: true, semestre: "2019/1")
Historico.create!(user_id: 37, disciplina_id: 53, nota: 5, aprovado: true, semestre: "2019/1")
Historico.create!(user_id: 38, disciplina_id: 53, nota: 6, aprovado: true, semestre: "2019/1")
Historico.create!(user_id: 39, disciplina_id: 55, nota: 6, aprovado: true, semestre: "2019/2")
Historico.create!(user_id: 40, disciplina_id: 55, nota: 2, aprovado: false, semestre: "2019/2")
Historico.create!(user_id: 41, disciplina_id: 52, nota: 7, aprovado: true, semestre: "2019/1")
Historico.create!(user_id: 42, disciplina_id: 52, nota: 7, aprovado: true, semestre: "2019/1")
Historico.create!(user_id: 43, disciplina_id: 52, nota: 7, aprovado: true, semestre: "2019/1")
Historico.create!(user_id: 44, disciplina_id: 52, nota: 7, aprovado: true, semestre: "2019/1")
Historico.create!(user_id: 33, disciplina_id: 53, nota: 8, aprovado: true, semestre: "2019/1")
Historico.create!(user_id: 34, disciplina_id: 60, nota: 3.5, aprovado: false, semestre: "2019/2")