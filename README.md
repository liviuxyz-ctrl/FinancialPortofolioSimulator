## About

Welcome to the FinancialPortfolio project, your friendly companion for exploring and planning your financial future! 🚀

Are you curious about the performance of your investment strategies, eager to understand how taxes impact your portfolio, or simply looking to make more informed financial decisions? 

**Key Features**:

- 📊 Create and manage portfolios with multiple investment strategies.
- 📈 Calculate future values, net profits, and taxes paid for individual strategies and combined portfolios.
- 📉 Visualize portfolio growth, net profits, and tax implications over time.
- 🔍 Compare the performance of different portfolios across various investment horizons.

Whether you're a seasoned investor or new to the world of finance, the FinancialPortfolio project is here to assist you every step of the way. 

For comprehensive usage instructions and practical examples, please refer to the sections above. If you have any inquiries, ideas, or simply want to engage in discussions about finance, feel free to connect with us or become part of our welcoming community of contributors.



## Table of Contents
- [FinancialPortfolio Class](#financialportfolio-class)
  - [Example Portfolio Growth](#example-portfolio-growth)
  - [Example Portfolios Over Time](#example-portfolios-over-time)
  - [Installation](#installation)
  - [Running with Docker in DataSpell or PyCharm](#running-with-docker-in-dataspell-or-pycharm)
  - [Usage](#usage)
  - [Ideal example of how project setup should look like](#ideal-example-of-how-project-setup-should-look-like)
  - [Example Portfolios](#example-portfolios)
  - [Functions](#functions)
  - [Contributing](#contributing)
  - [License](#license)


## Example Portfolio Growth

Here's an example of the portfolio growth chart after 10 years of investment. The chart shows the performance of the "House Portfolio 1" portfolio with two investment strategies, "Strategy A" and "Strategy B."

![Portfolio Growth Example](Photos/Example1.png)

## Example Portfolios Over Time

You can use the `plot_portfolios_over_time` function to compare the performance of your portfolios over different timeframes. Below is an example of how to use it with the `example_portfolios`:

```python
plot_portfolios_over_time(example_portfolios, [8, 10, 12], use_default_size=True)
````

The above code will generate a plot that compares the portfolios' performance over 8, 10, and 12 years. You can customize the timeframes to suit your analysis.

![Portfolio Comparison Over Time](Photos/Example2.png)

In the example image above, you can see how the portfolios "House Portfolio 1" perform over different time horizons.

Feel free to use this function to analyze and visualize your portfolios' growth and compare their performance over various periods.

## Installation

To use the FinancialPortfolio class, you need to have Python and the required libraries installed. You can install the necessary libraries using pip:

```bash
pip install numpy matplotlib
```

## Running with Docker in DataSpell or PyCharm

This project is designed to run inside a Docker container. Follow these steps to set up and run the Docker container using JetBrains DataSpell or PyCharm:

1. **Ensure Docker Configuration**:
   - Ensure that `Run Docker.run.xml` is properly configured for your Docker environment. It should define the Docker image, volumes, ports, and the command to be executed.

2. **Open Your Project in DataSpell or PyCharm**:
   - Open the project containing the FinancialPortfolio class in DataSpell or PyCharm.

3. **Import Docker Configuration into DataSpell or PyCharm**:
   - Navigate to "Run" > "Edit Configurations".
   - Click the '+' button and select 'Import Configuration'.
   - Choose the `Run Docker.run.xml` file. This step imports the Docker configuration into your IDE.

4. **Run the Docker Container**:
   - Select the imported Docker configuration from the run configurations list.
   - Click the run button. This action builds (if necessary) and runs your Docker container.

5. **Access the Python Environment Inside the Docker Container**:
   - Once the Docker container is running, access its terminal through DataSpell or PyCharm.
   - Within this terminal, you can execute scripts that utilize the FinancialPortfolio class.

6. **Usage**:
   - Use the FinancialPortfolio class within the Docker environment as outlined in the usage section of this documentation.

Double-check that the paths and configuration names in your `Run Docker.run.xml` file are correctly set for your project’s needs.


## Ideal example of how project setup should look like
![{1323F8C1-E900-4112-A80A-B2ECE498FD6F}](https://github.com/user-attachments/assets/33114f68-73df-42e9-8b84-00be1b883c7c)


## Usage

To use the FinancialPortfolio class in your Python project, you can simply import it as follows:

```python
from financial_portfolio import FinancialPortfolio, plot_portfolios, display_initial_funds_and_contributions_table
```

Once imported, you can create instances of the `FinancialPortfolio` class and use its functions to analyze and visualize your investment strategies.

## Example Portfolios

In the provided code example, we have an example portfolio named "House Portfolio 1" with two investment strategies: "Strategy A" and "Strategy B." You can modify and expand these example portfolios to match your specific financial scenarios.

```python
example_portfolios = [
    {
        "name": "House Portfolio 1",
        "strategies": [
            {"name": "Strategy A", "initial_funds": 0, "monthly_contribution": 800, "annual_rate": 6, "variance": 1, "is_taxable": True, "tax_rate": 10, "compounding_frequency": 6},
            {"name": "Strategy B", "initial_funds": 0, "monthly_contribution": 200, "annual_rate": 8, "variance": 1.5, "is_taxable": True, "tax_rate": 10, "compounding_frequency": 6}
        ]
    }
    # Additional portfolios can be added here
]
```

## Functions

The `FinancialPortfolio` class provides several functions for simulating and visualizing investment strategies and portfolios. These functions include:

- `calculate_aggregated_future_value(years)`: Calculate the aggregated future value of all strategies in the portfolio over a specified number of years.
- `calculate_future_value(strategy, years)`: Calculate the future value of an individual investment strategy over a specified number of years.
- `plot_strategy(strategy, years, ax)`: Plot an individual investment strategy, showing its growth, net profit, and taxes paid over time.
- `plot_combined_portfolio(years, ax)`: Plot the combined value of all strategies in the portfolio, showing the overall portfolio growth, net profit, and total taxes paid.

You can use these functions to analyze and visualize your financial portfolios.

## Contributing

If you have any suggestions or improvements for the FinancialPortfolio class or its documentation, feel free to contribute. You can submit issues or pull requests to help make this class even more useful.

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.
