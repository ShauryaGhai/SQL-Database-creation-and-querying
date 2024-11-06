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
                "\n",
                "CREATE DATABASE Motors_Certification;\n",
                "USE Motors_Certification;\n",
                "\n",
                "\n",
                "\n",
                "\n",
                "CREATE TABLE offices (\n",
                "    OfficeCode VARCHAR(50) PRIMARY KEY,\n",
                "    city VARCHAR(50),\n",
                "    phone VARCHAR(50),\n",
                "    addressLine1 VARCHAR(50),\n",
                "    addressLine2 VARCHAR(50),\n",
                "    state VARCHAR(50),\n",
                "    country VARCHAR(50),\n",
                "    postalCode VARCHAR(50),\n",
                "    territory VARCHAR(50)\n",
                ");\n",
                "\n",
                "\n",
                "CREATE TABLE employee (\n",
                "    EmployeeNumber INT PRIMARY KEY,\n",
                "    LastName VARCHAR(50),\n",
                "    FirstName VARCHAR(50),\n",
                "    extension VARCHAR(50),\n",
                "    email VARCHAR(50),\n",
                "    OfficeCode VARCHAR(50),\n",
                "    ReportsTo INT,\n",
                "    JobTitle VARCHAR(50),\n",
                "    FOREIGN KEY (OfficeCode) REFERENCES offices(OfficeCode)\n",
                ");\n",
                "\n",
                "\n",
                "ALTER TABLE employee\n",
                "ADD CONSTRAINT FK_Employee_ReportsTo\n",
                "FOREIGN KEY (ReportsTo) REFERENCES employee(EmployeeNumber);\n",
                "\n",
                "\n",
                "CREATE TABLE customers (\n",
                "    CustomerNumber INT PRIMARY KEY,\n",
                "    CustomerName VARCHAR(50),\n",
                "    ContactLastName VARCHAR(50),\n",
                "    ContactFirstName VARCHAR(50),\n",
                "    phone VARCHAR(50),\n",
                "    addressLine1 VARCHAR(50),\n",
                "    addressLine2 VARCHAR(50),\n",
                "    city VARCHAR(50),\n",
                "    state VARCHAR(50),\n",
                "    PostalCode VARCHAR(15),\n",
                "    Country VARCHAR(50),\n",
                "    SalesRepEmployeeNumber INT,\n",
                "    CreditLimit FLOAT,\n",
                "    FOREIGN KEY (SalesRepEmployeeNumber) REFERENCES employee(EmployeeNumber)\n",
                ");\n",
                "\n",
                "\n",
                "CREATE TABLE orders (\n",
                "    orderNumber INT PRIMARY KEY,\n",
                "    orderDate DATE,\n",
                "    requiredDate DATE,\n",
                "    shippedDate DATE,\n",
                "    status VARCHAR(50),\n",
                "    comments TEXT,\n",
                "    CustomerNumber INT,\n",
                "    FOREIGN KEY (CustomerNumber) REFERENCES customers(CustomerNumber)\n",
                ");\n",
                "\n",
                "\n",
                "CREATE TABLE productlines (\n",
                "    productline VARCHAR(50) PRIMARY KEY,\n",
                "    textDescription VARCHAR(4000)\n",
                ");\n",
                "\n",
                "\n",
                "CREATE TABLE products (\n",
                "    ProductCode VARCHAR(50) PRIMARY KEY,\n",
                "    productName VARCHAR(50),\n",
                "    productLine VARCHAR(50),\n",
                "    productScale VARCHAR(50),\n",
                "    productVendor VARCHAR(50),\n",
                "    productDescription TEXT,\n",
                "    quantityInStock SMALLINT,\n",
                "    buyPrice FLOAT,\n",
                "    MSRP FLOAT,\n",
                "    FOREIGN KEY (productLine) REFERENCES productlines(productline)\n",
                ");\n",
                "\n",
                "\n",
                "CREATE TABLE orderdetails (\n",
                "    orderNumber INT,\n",
                "    ProductCode VARCHAR(50),\n",
                "    quantityOrdered INT,\n",
                "    priceEach FLOAT,\n",
                "    orderLineNumber SMALLINT,\n",
                "    PRIMARY KEY (orderNumber, ProductCode),\n",
                "    FOREIGN KEY (orderNumber) REFERENCES orders(orderNumber),\n",
                "    FOREIGN KEY (ProductCode) REFERENCES products(ProductCode) ON DELETE SET NULL\n",
                ");\n",
                "\n",
                ""
            ],
            "metadata": {
                "azdata_cell_guid": "12b72149-bf9a-4249-a0fa-bfb65b0942b0",
                "language": "sql"
            },
            "outputs": [
                {
                    "output_type": "error",
                    "ename": "",
                    "evalue": "Msg 1801, Level 16, State 3, Line 2\nDatabase 'Motors_Certification' already exists. Choose a different database name.",
                    "traceback": []
                },
                {
                    "output_type": "error",
                    "ename": "",
                    "evalue": "Msg 2714, Level 16, State 6, Line 8\nThere is already an object named 'offices' in the database.",
                    "traceback": []
                },
                {
                    "output_type": "display_data",
                    "data": {
                        "text/html": "Total execution time: 00:00:00.015"
                    },
                    "metadata": {}
                }
            ],
            "execution_count": 1
        },
        {
            "cell_type": "code",
            "source": [
                "CREATE TABLE payments (\n",
                "    CustomerNumber INT,\n",
                "    checkNumber VARCHAR(50),\n",
                "    paymentDate DATE,\n",
                "    amount FLOAT,\n",
                "    PRIMARY KEY (CustomerNumber, checkNumber),\n",
                "    FOREIGN KEY (CustomerNumber) REFERENCES customers(CustomerNumber)\n",
                ");"
            ],
            "metadata": {
                "language": "sql",
                "azdata_cell_guid": "c21b9bb7-76c9-45d6-a68a-7add00809287"
            },
            "outputs": [],
            "execution_count": null
        }
    ]
}