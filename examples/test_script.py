from pydbmanager.operations import DatabaseOperations

db_ops = DatabaseOperations()

# Fetch users (batch size 5)
df = db_ops.query_data("SELECT * FROM users", batch_size=5)
print(df)

# Insert a test record
insert_query = """
INSERT INTO users (name, email, age, gender, phone_number, address, city, country)
VALUES ('Test User', 'test.user@example.com', 30, 'Male', '123-456-7890', 'Test Address', 'Test City', 'Test Country')
"""
db_ops.execute_query(insert_query)

# Fetch the inserted record
df_new = db_ops.query_data("SELECT * FROM users WHERE email='test.user@example.com'")
print(df_new)

# Cleanup: Delete the test record
delete_query = "DELETE FROM users WHERE email='test.user@example.com'"
db_ops.execute_query(delete_query)

db_ops.close()
