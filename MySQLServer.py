import mysql.connector
from mysql.connector import Error

HOST = "::1"
USER = peter
PASSWORD = "peter7#negbom"

try:
  connection = mysql.connector.connect(
    host = HOST,
    user = USER,
    password = PASSWORD
  )

  if connection.is_connected():
    cursor = connection.cursor()

    # Create the database if does not exist 
    cursor.execute("CREATE DATABASE IF NOT EXISTS alx_book_store")
    # printing the output if it is created or connected successfully
    print("Database 'alx_book_store' created successfully!")

# Error handlin
except Error as e:
  print(f"Error: {e}")

finally:
  # close the database whether it ran successfully or not
  if "cursor" in locals() and cursor is not None:
    cursor.close()
  if "connection" in locals() and connection.is_connected():
    connection.close()