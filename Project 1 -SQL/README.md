# Introduction to Database

## Description

Create database with PostgreSQL for Creating a Wide Table in a Logistics Company:

This project aims to assist a logistics company in optimizing their operational data management through the creation of a "wide table" using PostgreSQL. The wide table will merge essential information such as shipments, warehouses, available goods, delivery times, and customer data into a more integrated entity. This will facilitate data analysis, enable trend identification, and improve decision-making concerning operational efficiency and customer satisfaction.

The project will utilize PostgreSQL as the database management system, combining the strengths of a relational database system with the flexibility of handling complex wide tables. Query optimization and indexing will also be implemented to ensure the database's performance remains fast and responsive, even with large and intricate logistics data. As a result, the logistics company is expected to enhance operational efficiency and improve customer service quality while gaining better insights for timely and strategic decision-making. 

## Table of Contents

- [Create Table Location](#Table-Location)
- [Usage](#usage)
- [Features](#features)
- [Contributing](#contributing)
- [Tests](#tests)
- [License](#license)
- [Contact](#contact)

## Table-Location

1. I create CTE to take the province, city, and district code.
2. Since the data types were varchar, so I use left syntax to take the code for each province, city, and district code.
3. After that, I have join the CTE to make it more complete with the total data was 65 row. It based on the total of the district that have 65 distric.
4. Because this table will be used in the widetable, so I have to change the code that uses comma to space then make it to int in order have the same data type with the fact table.

## Usage

Explain how users can use your project, and provide examples or screenshots if applicable.

## Features

List the key features and functionalities of your project.

## Contributing

If you want other developers to contribute to your project, outline how they can do that.

## Tests

Describe how to run any tests you have created for your project.

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## Contact

If you have any questions or feedback regarding the project, you can reach me at:

- Email: your.email@example.com
- GitHub: [YourGitHubUsername](https://github.com/YourGitHubUsername)

