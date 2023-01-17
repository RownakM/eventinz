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

**SEE API ENDPOINTS BELOW**


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