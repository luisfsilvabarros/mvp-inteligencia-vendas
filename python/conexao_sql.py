import pyodbc

# Conexão com SQL Server
conn = pyodbc.connect(
    "DRIVER={SQL Server};"
    "SERVER=localhost;"
    "DATABASE=MVP_Vendas;"
    "Trusted_Connection=yes;"
)

cursor = conn.cursor()


