# 📊 Marketing Campaign Performance Dashboard
## 🛠️ Tools Used

- SQL Server
- Power BI
- DAX
## 📌 Executive Summary
This project analyzes marketing campaign performance using SQL, Power BI, and DAX to identify the most effective marketing channels, understand customer conversion behavior, and recommend budget optimization strategies.

The project is organized into three interactive dashboards:
- Marketing Performance Overview
- Customer Behavior Analysis
- Budget Optimization & Recommendations

## ❓ Business Problem

Marketing managers invest budgets across multiple campaign channels and campaign types, but it is often difficult to answer questions such as:
- Which marketing channel generates the highest conversion rate?
- Which campaign type delivers the best performance?
- Which customer segments are most likely to convert?
- Which customer behaviors influence conversion?
- How should marketing budgets be reallocated for better ROI?

## 📁 Dataset

The dataset contains approximately 8,000 customer records including:
- Customer Demographics
- Campaign Information
- Website Behavior
- Email Engagement
- Social Engagement
- Previous Purchase History
- Loyalty Points
- Marketing Spend
- Conversion Metrics

## 📊 Dashboard Architecture & Key Visuals
### 📊 Dashboard 1 - Marketing Performance Overview

![Dashboard 1](dashboard1.png)

**Key Insights**
- Referral và PPC là hai kênh marketing hiệu quả nhất, đạt Conversion Rate cao nhất (~88%) đồng thời đóng góp phần lớn lượng khách hàng chuyển đổi.
- Conversion Campaign là loại chiến dịch có hiệu suất vượt trội trên tất cả các kênh, với Conversion Rate luôn trên 92%, trong đó SEO – Conversion đạt mức cao nhất (94.03%).
- Social Media và Email tiêu tốn tỷ trọng ngân sách lớn nhưng mang lại hiệu quả chuyển đổi thấp hơn các kênh còn lại, cho thấy tiềm năng tối ưu phân bổ ngân sách.
- Phân tích tổng thể cho thấy ngân sách marketing hiện tại chưa được phân bổ hoàn toàn theo hiệu quả chuyển đổi, tạo cơ hội cải thiện ROI thông qua tái phân bổ đầu tư.

---
### 👥 Dashboard 2 – Customer Conversion Insights

![Dashboard 2](dashboard2.png)

**Key Insights**
- Website engagement là yếu tố quan trọng nhất ảnh hưởng đến chuyển đổi; khách hàng xem từ 5–6 trang và ở lại website 6–10 phút có Conversion Rate trên 91%.
- Nhóm khách hàng chuyển đổi có mức Website Visits, Email Engagement và Previous Purchases cao hơn đáng kể so với nhóm chưa chuyển đổi, cho thấy hành vi tương tác là chỉ báo mạnh cho khả năng mua hàng.
- Khách hàng 35–44 tuổi với thu nhập Medium là phân khúc mang lại Conversion Rate cao nhất, phù hợp để ưu tiên trong các chiến dịch marketing.
- Khách hàng quay lại (3–5 lần mua trước) có tỷ lệ chuyển đổi cao hơn khách hàng mới, khẳng định vai trò của chiến lược giữ chân khách hàng (Customer Retention).

---
### 💰 Dashboard 3 – Budget Optimization & Recommendations

![Dashboard 3](dashboard3.png)

**Key Insights**
- Referral, PPC và SEO là các kênh có hiệu quả đầu tư tốt nhất khi kết hợp Conversion Rate cao và Cost per Conversion thấp, phù hợp để ưu tiên tăng ngân sách.
- PPC & Conversion là tổ hợp chiến dịch có hiệu quả chi phí cao nhất, tạo nhiều khách hàng chuyển đổi với mức CAC thấp hơn trung bình.
- Email và Social Media có hiệu suất chuyển đổi thấp hoặc chi phí chuyển đổi cao hơn các kênh khác, cần được tối ưu hoặc giảm đầu tư.
- Marketing Action Matrix cho thấy việc tái phân bổ ngân sách từ các kênh kém hiệu quả sang Referral, PPC và SEO sẽ giúp nâng cao hiệu quả sử dụng ngân sách và tối đa hóa kết quả marketing.



## 🎯 Actionable Recommendations

Based on the analysis across the three dashboards, the following strategic recommendations are proposed to improve marketing performance and maximize budget efficiency.

### 💰 1. Optimize Marketing Budget Allocation

- Reallocate **10–15%** of the marketing budget from underperforming channels (**Social Media** and **Email**) to higher-performing channels.
- Increase investment in **Referral** and **PPC**, particularly for **Conversion** campaigns, which consistently achieved the highest conversion rates and lower customer acquisition costs (CAC).
- Continuously monitor Cost per Conversion (CAC) to ensure budget is allocated to the most efficient campaign-channel combinations.

---

### 🌐 2. Improve Website Engagement & Conversion Rate Optimization (CRO)

- Enhance website UI/UX to encourage visitors to:
  - Stay on the website for **more than 6 minutes**.
  - View **at least 5 pages per session**.
- Optimize landing pages, navigation, and call-to-action (CTA) placement to increase customer engagement and improve conversion rates.

---

### 👥 3. Strengthen Customer Targeting & Retention

- Prioritize marketing campaigns targeting customers aged **35–44 years** with **medium income**, the highest-converting customer segment identified in the analysis.
- Expand customer loyalty and retention programs for customers with **3–5 previous purchases**, as they demonstrate significantly higher conversion probabilities than first-time customers.
- Increase personalized email campaigns and remarketing efforts to maintain long-term customer relationships and encourage repeat purchases.

---

### 📈 Expected Business Impact

Implementing these recommendations is expected to:

- Improve overall marketing ROI.
- Reduce customer acquisition costs (CAC).
- Increase conversion rates through better customer targeting.
- Enhance long-term customer retention and lifetime value.
- Support data-driven marketing budget allocation decisions.
