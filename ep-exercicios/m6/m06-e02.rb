#!/usr/bin/env ruby

# Carrega as bibliotecas (gems) usadas no script.
require 'byebug'
require 'mysql2'
require 'pry'

class MySQLExercises2

  attr_reader :client

  def initialize
    @client = Mysql2::Client.new(
      host:     'localhost',
      database: 'ecommerce_sample',
      username: 'root'
    )
  end

  def q_categories_with_parent
    # O nosso e-commerce trabalha com o conceito de categoria e sub-categoria.
    # Por exemplo: a categoria "Roupas pra Surfar" é uma sub-categoria da
    # categoria "Surf". Toda sub-categoria tem uma categoria-pai, e portanto,
    # toda sub-categoria tem um valor não-nulo na coluna `parent_category_id`.
    #
    # [PERGUNTA] Quais são os nomes de todas as sub-categorias, juntamente com
    # o nome da sua categoria-pai? Ordenar o resultado por categoria-pai.
    #
    # Dica: faça um JOIN da tabela `categories` com ela mesma!
    #
    # Formato da resposta:
    # +-------------------------+------------------------+
    # | parent_name             | category_name          |
    # +-------------------------+------------------------+
    # | Artes Marciais          | Luvas                  |
    # | Artes Marciais          | Kimonos                |
    # | ...                     | ....                   |
    # | ...                     | ....                   |
    # | Tennis e Squash         | Antivibradores         |
    # | Tennis e Squash         | Grip e Overgrip        |
    # +-------------------------+------------------------+

    <<-SQL
      SELECT parent_name.name AS parent_name, category_name.name AS category_name
      FROM categories parent_name, categories category_name
      WHERE category_name.parent_category_id = parent_name.id
      ORDER BY parent_name ASC, category_name ASC;
    SQL
  end

  def q_avg_stars_per_user
    # Usuários podem fazer avaliação dos produtos, fornecendo um número de
    # estrelas (0 a 5) e uma avaliação em texto para um produto. Estas avaliações
    # ficam armazenadas na tabela `reviews`.
    #
    # [PERGUNTA] Quais são os usuários mais 'bonzinhos', isto é, usuários para
    # os quais a média de estrelas que ele/ela dá é maior que 4?
    #
    # Retornar id, nome e média de estrelas para cada usuário com média > 4,
    # conforme exemplo:
    #
    # +------+----------------------------+-----------+
    # | id   | name                       | avg_stars |
    # +------+----------------------------+-----------+
    # | 1987 | Eduarda Enzo Soares        |    4.1667 |
    # | 1224 | Helena Lopes               |    4.1667 |
    # | 1660 | Yasmin Paes Paiva          |    4.1538 |
    # +------+----------------------------+-----------+

    <<-SQL
      SELECT users.id, name, AVG(stars) AS avg_stars
      FROM reviews
      JOIN users ON reviews.user_id = users.id
      GROUP BY user_id HAVING avg_stars > 4
      ORDER BY avg_stars DESC, name;
    SQL
  end

  def q_buyers_that_are_also_sellers

    # [PERGUNTA] Quantos vendedores também já foram compradores? Em outras
    # palavras: quais valores de sales.seller_id também aparecem como valores
    # na coluna sales.buyer_id? Retorne os ids em uma coluna chamada
    # "buyer_seller_id", ordenada em ordem crescente, como abaixo:
    #
    # +-----------------+
    # | buyer_seller_id |
    # +-----------------+
    # |            1113 |
    # |            1114 |
    # |             ... |
    # |               9 |
    # +-----------------+

    <<-SQL
      SELECT a.seller_id AS buyer_seller_id
      FROM sales a, sales b
      WHERE a.seller_id = b.buyer_id
      GROUP BY buyer_seller_id
      ORDER BY buyer_seller_id ASC;
    SQL
  end

  def q_recently_sold_products_categories
    #
    # [PERGUNTA] Quais são as categorias (id e nome) de todos os produtos
    # vendidos em vendas com payment_method='Dinheiro'? Retorne um resultado
    # ordenado pelo nome da categoria, como abaixo:
    #
    # +------+-----------------------------------+
    # | id   | name                              |
    # +------+-----------------------------------+
    # | NULL | NULL                              |
    # | 1300 | Acessório                         |
    # | 1270 | Agasalhos                         |
    # | .... | ......                            |
    # | 1309 | Viseiras                          |
    # | 1373 | Waxy Maize                        |
    # | 1291 | Yoga e Pilates                    |
    # +------+-----------------------------------+
    #
    # Dica 1: lembre-se de que a categoria de um produto pode ser nula! JOINs com
    # em que as colunas podem ser nulas normalmente geram respostas inesperadas.
    # Lembre-se dos OUTER JOINs.
    #
    # Dica 2: não tente montar a query de uma única vez. Vá montando aos poucos
    # e sempre executando no MySQL para ver o que está acontecendo.

    <<-SQL
      SELECT categories.id, categories.name
      FROM categories
      RIGHT JOIN products ON products.category_id = categories.id
      JOIN sales_products ON sales_products.product_id = products.id
      JOIN sales ON sales.id = sales_products.sale_id
      WHERE payment_method = "Dinheiro"
      GROUP BY products.category_id
      ORDER BY categories.name;
    SQL
  end
end