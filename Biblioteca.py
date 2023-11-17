import mysql.connector

banco = mysql.connector.connect(
    host="localhost",
    user="root",
    password="302302",
    database="academiaturmac"
)

def create(opcao):
    meucursor = banco.cursor()
    match opcao:

        case "1":
            print("-----ALUNOS-----")
            nome = input("Nome: ")
            cpf = input("CPF: ")
            telefone = input("Telefone: ")
            endereco = input("Endereço: ")
            comando = "INSERT INTO alunos (nome, cpf, telefone, endereco) values (%s,%s,%s,%s)"
            dados = (nome,cpf,telefone,endereco)
            meucursor.execute(comando, dados)
            banco.commit()
            userid = meucursor.lastrowid
            print("O dado foi inserido!")

        case "2":
            print("-----FUNCIONARIOS-----")
            nome = input("Nome: ")
            cpf = input("CPF: ")
            departamento = input("Departamento: ")
            salario = input("Salario: ")
            email = input("Email: ")
            comando = "INSERT INTO funcionarios (nome, cpf, departamento, salario, email) Values (%s,%s,%s,%s,%s)"
            dados = (nome,cpf,departamento,salario,email)
            meucursor.execute(comando,dados)
            banco.commit()
            userid= meucursor.lastrowid
            print("O dado foi inserido!")

        case "3":
            print("-----MODALIDADE-----")
            nome_modal = input("Nome: ")
            duracao = input("Duração: ")
            meucursor = banco.cursor()
            comando = "INSERT INTO modalidade (nome_modal,duracao) Values (%s,%s)"
            dados = (nome_modal,duracao)
            meucursor.execute(comando,dados)
            banco.commit()
            print("O dado foi inserido!")

        case "4":
            print("-----PERSONAL-----")
            nome = input("Nome: ")
            cpf = input("CPF: ")
            cref = input("CREF: ")
            email = input("Email: ")
            endereco = input("Endereço: ")
            telefone = input("Telefone: ")
            comando = "INSERT INTO personal (nome, cpf, cref,email,endereco,telefone) Values (%s,%s,%s,%s,%s,%s)"
            dados = (nome,cpf,cref,email,endereco,telefone)
            meucursor.execute(comando,dados)
            banco.commit()
            print("O dado foi inserido!")

        case _:
            print("opção invalida!")

def read(opcao):
    global tabela
    match opcao:

        case "1":
            tabela = "alunos"
        case "2":
            tabela = "funcionarios"
        case "3":
            tabela = "modalidade"
        case "4":
            tabela = "personal"
        case _:
            print("Opeção invalida!")

    meucursor = banco.cursor()
    pesquisa = f"Select * from {tabela};"
    meucursor.execute(pesquisa)
    restultado = meucursor.fetchall()

    for x in restultado:
        print(x)

# def descr(descricao):
#     global tabela
#     match descricao:
#
#         case "1":
#             tabela = "alunos"
#         case "2":
#             tabela = "funcionarios"
#         case "3":
#             tabela = "modalidade"
#         case "4":
#             tabela = "personal"
#         case _:
#             print("opção invalida!")
#
#     meucursor = banco.cursor()
#     pesquisa = f"desc {tabela};"
#     meucursor.execute(pesquisa)
#     resultado = meucursor.fetchall()

    # for x in resultado:
    #     print(x)


def delete(opcao):
    match opcao:

        case "1":
            print("-----ALUNOS-----")
            matricula = int(input("Matricula: "))
            meucursor = banco.cursor()
            comando = f'DELETE FROM alunos where matricula = {matricula};'
            meucursor.execute(comando)
            banco.commit()
            print("o dado foi deletado!")

        case "2":
            print("------FUNCIONÁRIOS------")
            id_funcionarios = int(input("ID: "))
            meucursor = banco.cursor()
            comando = f"DELETE FROM funcionarios WHERE id_funcionarios = {id_funcionarios};"
            meucursor.execute(comando)
            banco.commit()
            print("O dado foi deletado")
        case "3":
            print("------MODALIDADES------")
            ID_modalidade = int(input("ID MODALIDADE: "))
            meucursor = banco.cursor()
            comando = f"DELETE FROM modalidades WHERE ID_modalidade = {ID_modalidade};"
            meucursor.execute(comando)
            banco.commit()
            print("O dado foi deletado")
        case "4":
            print("------PERSONAL------")
            ID_personal = int(input("ID: "))
            meucursor = banco.cursor()
            comando = f"DELETE FROM personal WHERE ID_personal = {ID_personal};"
            meucursor.execute(comando)
            banco.commit()
            print("O dado foi deletado")
        case _:
            print("opção invalida!")