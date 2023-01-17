# Create Event - Create New User

## Create An Event - Steps

- Event Information
- Get Verified
- Generate Password / Authenticate Password
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
## Response
---

![](https://github.com/RownakM/eventinz/blob/master/readme_assets/carbon%20(3).png)

#### For Create An Event - Page , A New User is only created , only when the input email is not found in the Database

### Check Active Users

```
  GET /event-check-users/{email}/
```

| URL Parameter | Type     | Description                       |
| :-------- | :------- | :-------------------------------- |
| `email`      | `string` | **Required** |

#### Response

##### If User do not exist

![](https://github.com/RownakM/eventinz/blob/master/readme_assets/carbon%20(1).png)

##### If User Exist

![](https://github.com/RownakM/eventinz/blob/master/readme_assets/carbon%20(2).png)
---

### If User Exist
- App will ask user to verify themselves with the password

### If User Does Not Exist
- App will ask the user to create a New Password and then should allow the user to continue.

