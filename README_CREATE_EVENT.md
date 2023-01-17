# Create Event

## Create An Event - Steps

- Event Information
- Get Verified
- Create New Password / Authenticate Password
- Payment Option

---

## Step 1 | Event Information
---

| parameters | type | required |
|------------|------|----------|
| Country    | Dropdown (ISO2) | Yes         |
| State      | Dropdown (ISO2)     |     Yes     |
| City       | Dropdown (Id)     |     Yes     |
| Event Categories | Dropdown (Id)     |  Yes        |
| Event Sub Categories |  Dropdown (Id) | Yes        |
| No. Of Guests | Dropdown (Id) | Yes |
| Date of Event | DatePicker | Yes |
| Approx Budget |Dropdown (Id) |Yes |
| First Name | Text | Yes|
| Last Name | Text | Yes|
| Email | Email|Yes |
| Phone No. | Phone | Yes|
| Event Description | Long Text | Yes|

---

### Action - On Submitting , data recieved from the above fields , should  be hold on a local storage . Hence , No Data is passed to the server
---
## Step 2 | Get Verified
---

### Action - **Email Recieved from Step 1 , should recieve an OTP to authenticate. See API endpoint below :**

```
  POST /event-send-otp/
```

| parameters | type | required |
|------------|------|----------|
| email    |  email    |    Yes      |

---
## Response On Mail Sent
---

![](https://github.com/RownakM/eventinz/blob/master/readme_assets/carbon%20(3).png)

### The returned **auth_key** will be used to verify the entered OTP

### Verify OTP

```
  POST /event-verify-otp/{auth_key}
```

| parameters | type | required |
|------------|------|----------|
| auth_key    |  auth_key recieved    |    Yes      |
| otp    |  Input OTP    |    Yes      |

---

## Response on OTP Verified
---

### Once , the OTP is verified , next step is to check , whether the input **EMAIL** exists in the Database. If Not , the system will ask the user to **Create A New Password** >> Else **Verify Themselves with the existing password**

**SEE API ENDPOINT BELOW**


```
  GET /event-check-users/{email}

```

**The Above URL** will return *True* , if the User exists in the Database. Else Will return *False*

---
## Step 3 | Create New Password / Authenticate Password
---

- Case A ( **Create New Password** )
  - Depending upon the user status recieved , If the user does not exists , it will ask for **New & Confirm Password**

- Case B ( **Authenticate Existing Password** )
  - Depending upon the user status recieved , If the user exists , it will ask to **Authenticate Existing Password**


---
## Step 4 | Review & Payment
---
### Note : **No Event Data is passed to the server untill , payment made is successfull**.

### <ins>Payment Gateways</ins>
- <img src="https://cdn-icons-png.flaticon.com/512/174/174861.png" width="15" height="15"> Paypal (Available World-Wide - USD Currency Only )

- <img src="https://blog.ussd.directory/content/images/2022/07/MTN-1.jpg" width="15" height="15"> MoMo **( Available only in Benin - FCFA Currency Only )**
- <img src="https://play-lh.googleusercontent.com/abIwBzGTucbPNRDtFaovqR8bl39QznwWN6gCmBovKhNTLip0j6SmejSjAlTzg37BeE0" width="15" height="15"> Moove **( Available only in Benin - FCFA Currency Only )**


### Note : 
- For **Freemium** Events, No Payment is required
- For **Premium** Events , Payment is required only when no subscription is found. Can be checked with the **Endpoints** given below.

---

### Step 4.1 | Review 
---
**This Section is meant for the users to review the data they have input. So , at this stage , all the input should be fetched and displayed in correct format. They Should Have an Option to Edit at this stage**.

*At This Stage , User is required to select Package Type - Freemium or Premium and the vendor Category*

- For **Freemium** Packages
  - Only ONE (1) **Vendor Category** can be chosen
- For **Premium** Packages
  - Unlimited **Vendor Category** can be chosen as long as subscription is valid.


