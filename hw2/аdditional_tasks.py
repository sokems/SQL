import pymysql
from config import host, user, password, db_name

try:
    connection = pymysql.connect(
        host=host,
        port=3306,
        user=user,
        password=password,
        database=db_name,
        cursorclass=pymysql.cursors.DictCursor
    )
    print('Successfully connected...')
    print('#' * 20)

    try:
        with connection.cursor() as cur:
            # ex1
            cur.execute("ALTER TABLE posts ADD FOREIGN KEY (user_id) REFERENCES users(id)")
            connection.commit()

            # ex2
            cur.execute("SELECT title, full_text, user_id, (SELECT login FROM clients "
                        "WHERE id = posts.user_id) AS login  FROM posts")
            connection.commit()
            print(cur.fetchall())
            
            # ex3
            cur.execute("SELECT title, full_text, user_id FROM posts WHERE user_id IN (SELECT id FROM clients WHERE login  = 'Mikle')")
            connection.commit()
            print(cur.fetchall())

    finally:
        connection.close()
except Exception as ex:
    print('Failed connected...')
    print(ex)

