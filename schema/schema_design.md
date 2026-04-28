## Tables
- Customers
  Stores customer information
- Policies
  Stores insurance policies linked to customers
- Claims
  Stores claims made against policies
- PolicyTypes
  Defines types of policies

## Relationships

- One customer can have many policies (1 to n)
- One policy can have many claims (1 to n)
- Each policy belongs to one policy type (1 to 1)
