def q_about_query_method
    result = @client.query("SELECT * FROM categories");
    result.entries.first.class;
    String
end

def q_how_many_tables
    # Quais são as tabelas que existem no DB (database) ecommerce_sample?
    # Retorne um Array contendo os nomes das tabelas como Strings.

    # Dica: experimente executar o comando `SHOW tables;` do MySQL.
    result = @client.query("SHOW TABLES FROM ecommerce_sample")
    i = 0
    array = []
    while (i < result.size)
      array << result.entries[i].values
      i += 1
    end
    array
    #[["categories"], ["products"], ["reviews"], ["sales"], ["sales_products"], ["users"]]
  end
  
  def q_title_data_type
    # Qual é o tipo completo (nome do tipo e tamanho máximo) da coluna `title`
    # da tabela `products`?
    # Retorne uma String com o nome do tipo.

    # Dica: experimente executar o comando `SHOW columns FROM products;` do MySQL.

    # Por exemplo, o tipo abaixo é o tipo comumente usado para colunas
    # que guardam números inteiros. "int" é o nome do tipo, e "11" é o tamanho
    # máximo permitido.
    # @client = Mysql2::Client.new(
    #   host:     'localhost',
    #   database: 'ecommerce_sample',
    #   username: 'root'
    # )
    # result = @client.query("SHOW columns FROM products WHERE Field = 'title' ")
    # result.entries[1]['Type']
    'varchar(255)'
  end
  
  