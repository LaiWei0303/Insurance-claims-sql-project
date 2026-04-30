## Populate the Database
### From what tables do I have to what sample data do I put in 
#### Sample Data Plan
PolicyTypes:
- Auto
- Health
- Home
- Travel
- Life

Customers:
- 5 customers with different names and emails

Policies:
- Each customer has 1–3 policies
- Policies cover different policy types
- Some policies are Active, some Expired

Claims:
- Claims occur across at least 3 different months
- Some months have more claims than others (e.g., March has the highest)
- Claim amounts vary significantly (small, medium, large)
- Claim statuses include Pending, Approved, Rejected
- Some policies have multiple claims, some have none

### 感悟
这一步让我学如何设计出可分析的数据结构，我需要知道：数据必须长成这样才可以分析。通过这个搭建步骤我就能学会通过digest问题推导问题需要什么数据
