
# Eventinz - An Event Management Platform

[Visit Eventinz](https://eventinz.com/staging/)

**Eventinz.com** is a global event resource planning platform.  
We help vendors and planners to find each other in a simple manner.  
We are obsessed with customer satisfaction; we make sure our vendors derive their intended business outcomes from using our platform.  
Through eventinz, a planner will be able to review and choose the best vendor to make their dream event come true, and as a vendor, you'll be able to find new clients. So, whether you're searching for vendors or as a vendor searching for new clients, Eventinz has all the answers!

## Tech Stack

**Client:** Flutter

**Server:** Django

**Database:** PostgreSQL

## Used By

This project is used by the following companies:

- **Eventinz - Benin**
    


## API Reference

### Dependency APIs 

For Loading of country , state , cities of the user , we have used the response from

**https://countrystatecity.in** 

For Usage , Refer to the details below

| Resource                      | Description                                              |
|---------------------------|----------------------------------------------------------|
| countrystatecity API Docs | https://countrystatecity.in/docs/                        |
| API Key                   | UktWSUFIa0VSazU1V1ZpZnRKN0IzNFVlWjRtWlR4bDl0Tm43RFcyNA== |

### API Variables : 

```http
  BASE_URL = https://api.eventinz.com
```
### API Headers (To Be Passed on each request)


| Header | Type     | Description                       |
| :-------- | :------- | :-------------------------------- |
| `Userid`      | `string` | **Required** (Test userID : 6a3b0dff-9496-4c82-a49f-0d688cb1c0c5	) |
| `apiKey`      | `string` | **Required** (Test API Key : af5ffb60-0e4d-4a67-9d0d-18e6e0a5679b	)|

---

#### Check Server Uptime

```http
  GET BASE_URL
```

---

#### Authenticate User Login

```http
  GET /auth-user/
```




| Parameter | Type     | Description                       |
| :-------- | :------- | :-------------------------------- |
| `email`      | `string` | **Required** |
| `password`      | `string` | **Required** |

---

#### Get User Data (Dashboard Purpose)

```http
  GET /userData/
```

| Parameter | Type     | Description                       |
| :-------- | :------- | :-------------------------------- |
| `email`      | `string` | **Required** |

---

### Get Event Data (My Event Screen)

```http

  GET /eventData/

```
| Parameter | Type     | Description                       |
| :-------- | :------- | :-------------------------------- |
| `email`      | `string` | **Required** |

---

### Currency Convert

```http

  POST /convert-currency/{amount}/{base_currency}/{final_currency}
```

| URL Parameter | Type     | Description                       |
| :-------- | :------- | :-------------------------------- |
| `amount`      | `string` | **Required** - Base Amount to be converted|
| `base_currency`      | `string` | **Required** - Currency ISO Format. Eg: USD |
| `final_currency`      | `string` | **Required** - Currency ISO Format. Eg: INR |


### Create Event - Create New User

#### For Create An Event - Page , A New User is only created , only when the input email is not found in the Database

### Check Active Users

```http
  GET /event-check-users/{email}/
```

| URL Parameter | Type     | Description                       |
| :-------- | :------- | :-------------------------------- |
| `email`      | `string` | **Required** |

#### Response

##### If User do not exist

![](https://i.ibb.co/WVv6f93/carbon-1.png)

##### If User Exist

![](https://i.ibb.co/pdHm9bx/carbon-2.png)
---

### If User Exist
- App will ask user to verify themselves with the password

### If User Does Not Exist
- App will ask the user to create a New Password and then should allow the user to continue.
