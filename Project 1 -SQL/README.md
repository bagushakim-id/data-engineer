# Introduction to Database

## Description

Membuat widetable untuk user berdasarkan dari berbagai sumber data

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

