### Create Event - Create New User

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
