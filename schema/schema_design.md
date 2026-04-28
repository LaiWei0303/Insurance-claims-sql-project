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
- Many policy belongs to one policy type (n to 1)

## My Understanding to this step
在这个项目的初期阶段，我理解到重点不在于立即编写 SQL 语句，而是在于先建立一个合理的数据架构。为了能够对保险理赔（claims）数据进行有效分析，必须先设计一个结构清晰、关系明确的数据库系统。这包括定义客户（Customers）、保单（Policies）、理赔（Claims）以及保单类型（PolicyTypes）等核心实体，并合理建立它们之间的关系。这一步是让我学习到如何通过规范化设计来保证数据的一致性、可扩展性和分析的准确性。
