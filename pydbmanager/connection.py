import pyodbc
import logging
from pydbmanager.config import Config

# Configure logging
logging.basicConfig(level=logging.INFO, format="%(asctime)s - %(levelname)s - %(message)s")

class DatabaseConnection:
    """Handles database connection management."""

    def __init__(self):
        self.conn = None

    def create_connection(self):
        """Establishes a new database connection."""
        connection_string = f"""
            DRIVER={Config.DRIVER};
            SERVER={Config.SERVER};
            DATABASE={Config.DATABASE};
            UID={Config.USERNAME};
            PWD={Config.PASSWORD};
        """
        try:
            self.conn = pyodbc.connect(connection_string)
            logging.info("Database connection established successfully.")
            return self.conn
        except pyodbc.Error as e:
            logging.error(f"Database connection failed: {e}")
            return None

    def check_connection(self):
        """Checks if the connection is still alive and reconnects if needed."""
        try:
            if self.conn:
                self.conn.cursor().execute("SELECT 1")
        except pyodbc.Error:
            logging.warning("Connection lost. Reconnecting...")
            self.conn = self.create_connection()

    def close_connection(self):
        """Closes the database connection."""
        if self.conn:
            self.conn.close()
            logging.info("Database connection closed.")
