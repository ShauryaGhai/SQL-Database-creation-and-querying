{
    "metadata": {
        "kernelspec": {
            "name": "SQL",
            "display_name": "SQL",
            "language": "sql"
        },
        "language_info": {
            "name": "sql",
            "version": ""
        }
    },
    "nbformat_minor": 2,
    "nbformat": 4,
    "cells": [
        {
            "cell_type": "code",
            "source": [
                "/Users/shauryaghai/Documents/products.csv\n",
                "Use MotorsCertificatiion;\n",
                "\n",
                "Bulk insert customers\n",
                "from '/Users/shauryaghai/Documents/customers.csv'\n",
                "with(format = 'csv',\n",
                "\tFirstrow = 2,\n",
                "\tFieldterminator = ',',\n",
                "\tRowterminator = '0x0a');\n",
                "\n",
                "select * from customers\n",
                "\n",
                "\n",
                "Bulk insert Employee\n",
                "from '/Users/shauryaghai/Documents/Employees.csv'\n",
                "with(format = 'csv',\n",
                "\tFirstRow = 2,\n",
                "\tFieldterminator = ',',\n",
                "\tRowterminator = '0x0a');\n",
                "\n",
                "select * from Employee\n",
                "\n",
                "\n",
                "Bulk insert offices\n",
                "from '/Users/shauryaghai/Documents/offices.csv'\n",
                "with(format = 'csv',\n",
                "\tFirstRow = 2,\n",
                "\tFieldterminator = ',',\n",
                "\tRowterminator = '0x0a');\n",
                "\n",
                "select * from offices\n",
                "\n",
                "\n",
                "Bulk insert orderdetails\n",
                "from '/Users/shauryaghai/Documents/orderdetails.csv'\n",
                "with(format = 'csv',\n",
                "\tFirstRow = 2,\n",
                "\tFieldterminator = ',',\n",
                "\tRowterminator = '0x0a');\n",
                "\n",
                "select * from orderdetails\n",
                "\n",
                "\n",
                "Bulk insert orders\n",
                "from '/Users/shauryaghai/Documents/orders.csv'\n",
                "with(format = 'csv',\n",
                "\tFirstrow = 2,\n",
                "\tFieldterminator = ',',\n",
                "\tRowterminator = '0x0a');\n",
                "\n",
                "select * from orders\n",
                "\n",
                "\n",
                "Bulk insert payments\n",
                "from '/Users/shauryaghai/Documents/payments.csv'\n",
                "with(format = 'csv',\n",
                "\tFirstRow = 2,\n",
                "\tFieldterminator = ',',\n",
                "\tRowterminator = '0x0a');\n",
                "\n",
                "select * from payments\n",
                "\n",
                "\n",
                "Bulk insert productlines\n",
                "from '/Users/shauryaghai/Documents/productlines.csv'\n",
                "with(format = 'csv',\n",
                "\tFirstRow = 2,\n",
                "\tFieldterminator = ',',\n",
                "\tRowterminator = '\\n',\n",
                "\tbatchsize = 1000\t\n",
                ");\n",
                "\n",
                "select * from productlines\n",
                "\n",
                "\n",
                "Bulk insert products\n",
                "from '/Users/shauryaghai/Documents/products.csv'\n",
                "with(format = 'csv',\n",
                "\tFirstRow  = 2,\n",
                "\tFieldterminator = ',',\n",
                "\tRowterminator = '0x0a');\n",
                "\n",
                "select * from products\t"
            ],
            "metadata": {
                "azdata_cell_guid": "f1068e0e-96b0-40f0-8c31-0470c536e55d",
                "language": "sql"
            },
            "outputs": [],
            "execution_count": null
        }
    ]
}