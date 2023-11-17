from Biblioteca import *

import mysql.connector

while True:
    opcao = input("---MENU---\n1-create\n2-Read\n3-Delete\nS-Sair\nEscolha uma opção: ").lower()
    match opcao:
        case "1":
            op = input("\n---Tabelas---\n1-alunos\n2-funcionarios\n3-modalidade\n4-personal\nescolha uma opção:")
            create(op)
        case "2":
            op = input("\n---Tabelas---\n1-alunos\n2-funcionarios\n3-modalidade\n4-personal\nescolha uma opção:")
            read(op)
        case "3":
            op =("\n---Tabelas---\n1-alunos\n2-funcionarios\n3-modalidade\n4-personal\nescolha uma opção:")
            delete(op)
        case "s":
            break
        case _:
            print("\nOpção invalida!")